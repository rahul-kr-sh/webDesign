package com.sapient.service;

import java.util.HashMap;
import java.util.Map;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.QueryParam;
import javax.ws.rs.core.MediaType;

@Path("/")
public class LoanServices {
	
	
	@Path("/loan")
	@GET
	@Produces(MediaType.TEXT_PLAIN)
	public double calcTax(@QueryParam("txtincome") double income){
		double tax=0;
		
		if(income > 1000000)
			tax=(750000 * 0.1) + (income - 1000000) * 0.15;
		else if(income > 250000)
			tax=(income- 250000) * 0.1;
		return tax;
	}
	
	@Path("/loanhtml")
	@GET
	@Produces(MediaType.TEXT_HTML)
	public String calcTax2(@QueryParam("txtincome") double income){
		String html=null;
		double tax=0;
		
		if(income > 1000000)
			tax=(750000 * 0.1) + (income - 1000000) * 0.15;
		else if(income > 250000)
			tax=(income- 250000) * 0.1;
		html="<table cellpadding='10' bgcolor='aqua'>";
		html+="<tr><td>Income</td><td>"+ income + "</td></tr>";
		html+="<tr><td>Tax</td><td>"+ tax + "</td></tr>";
		return html;
	}
	
	@Path("/loanxml")
	@GET
	@Produces(MediaType.TEXT_XML)
	public String calcTax3(@QueryParam("txtincome") double income){
		String xml=null;
		double tax=0;
		
		if(income > 1000000)
			tax=(750000 * 0.1) + (income - 1000000) * 0.15;
		else if(income > 250000)
			tax=(income- 250000) * 0.1;
		xml="<result>";
		xml="<income>" + income + "</income>";
		xml="<tax>" + income + "</tax>";
		xml="</result>";
		
		return xml;
	}
	
	@Path("/loanjson")
	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public Map calcTax4(@QueryParam("txtincome") double income){
		String xml=null;
		double tax=0;
		
		if(income > 1000000)
			tax=(750000 * 0.1) + (income - 1000000) * 0.15;
		else if(income > 250000)
			tax=(income- 250000) * 0.1;
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("income", income);
		map.put("tax", tax);
		return map;
	}
}
