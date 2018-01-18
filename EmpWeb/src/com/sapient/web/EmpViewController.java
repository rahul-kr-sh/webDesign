package com.sapient.web;

import java.io.IOException;
import java.util.List;

import javax.el.ELContextListener;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sapient.dao.DaoFactory;
import com.sapient.dao.IDao;
import com.sapient.exception.NotFoundException;
import com.sapient.vo.Emp;

/**
 * Servlet implementation class EmpViewController
 */
public class EmpViewController extends HttpServlet {
	private static final long serialVersionUID = 1L;
    private IDao dao=DaoFactory.getDaoInstance();
	
    public EmpViewController() {
        super();
        // TODO Auto-generated constructor stub
    }

    public void init(){
    	ServletContext ctx=getServletContext();
    	ctx.setAttribute("elist", dao.viewEmployee());
    	ctx.setAttribute("dlist", dao.getDepts());
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uri=request.getRequestURI();
//		System.out.println("========="+ uri);
		RequestDispatcher rd=null;
		String view=null;
		ServletContext ctx=getServletContext();
		switch(uri){
		case "/EmpWeb/viewall":
			view=viewAll(request);	
			break;
		case "/EmpWeb/update":
				view=UpdateEmp(request);
				break;
		case "/EmpWeb/viewbydept":
			view=viewByDept(request);
			break;
		}
		
		rd=request.getRequestDispatcher(response.encodeURL(view));
		rd.forward(request, response);
	}
	
	private String viewByDept(HttpServletRequest request){
		int did=Integer.parseInt(request.getParameter("txtdid"));
		
		List<Emp> list=dao.viewEmployeeByDept(did);
		request.setAttribute("emplist", list);
		return "EmpView.jsp";
		
	}
	private String UpdateEmp(HttpServletRequest request){
		String view=null;
		int pgno=1;
		if(request.getParameter("requri").startsWith("txtdid"))
			view= "viewbydept?"+request.getParameter("requri");
		else
			view= "viewall?pg="+pgno;
		
		
		int eid=Integer.parseInt(request.getParameter("hideid"));
		double sal=Double.parseDouble(request.getParameter("txtsal"));
		ServletContext ctx=getServletContext();
		
		try {
			dao.updateEmployee(eid, sal);
			request.setAttribute("msg", "employee salary for" + eid + "is updated");
			ctx.setAttribute("elist", dao.viewEmployee());
		} catch (NotFoundException e) {
			request.setAttribute("msg", "employee salary for" + eid + "is updated");
			e.printStackTrace();
		}
		
		return view;
		
	}
	private String viewAll(HttpServletRequest request){
		ServletContext ctx=getServletContext();
		String view=null;
		String strpg=request.getParameter("pg");
		int pgno=0;
		if(strpg == null)
			pgno=1;
		else
			pgno=Integer.parseInt(strpg);
		int end=pgno * 3;
		int start=end - 3;
		List<Emp> list=(List<Emp>)ctx.getAttribute("elist");
		if(end >=list.size())
			end=list.size();
		List<Emp> sublist=list.subList(start, end);
		request.setAttribute("emplist", sublist);
		request.setAttribute("pgno", pgno);
		ctx.setAttribute("esize", Math.ceil(list.size()/4));
		view="EmpView.jsp";
		return view;
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
