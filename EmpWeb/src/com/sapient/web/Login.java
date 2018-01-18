package com.sapient.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sapient.dao.DaoFactory;
import com.sapient.dao.IDao;
import com.sapient.exception.NotFoundException;
import com.sapient.vo.Emp;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IDao dao=DaoFactory.getDaoInstance();  
    
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session=request.getSession(false);
		if(session!=null)
			session.invalidate();
		response.sendRedirect("LoginFrm.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int uid=Integer.parseInt(request.getParameter("txtid"));
		String pwd=request.getParameter("txtpass");
		HttpSession session=request.getSession();
		String view="LoginFrm.jsp";
		try {
			Emp emp=dao.viewEmployee(uid);
			if(emp !=null && emp.getPwd()!=pwd){
				session.setAttribute("semp", emp);
				view="Main.jsp";
			}
			else{
				request.setAttribute("msg", "Login Failed");
			}
		} catch (NotFoundException e) {
			request.setAttribute("msg", "Login Failed");
			e.printStackTrace();
		}
		RequestDispatcher rd=request.getRequestDispatcher(response.encodeRedirectURL(view));
		rd.forward(request, response);
	}

}
