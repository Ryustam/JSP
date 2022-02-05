package com.jsp.model;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class MemberIdCheckAction {
	
	    public void execute(HttpServletRequest request,
	            HttpServletResponse response) throws Exception {
	 
			String id=request.getParameter("id");
			System.out.println("execute!");
			response.setContentType("text/html;charset=euc-kr");
			boolean result=true;
			PrintWriter out = response.getWriter();
			if(result==true){
				out.println("1");
			} else {
				out.println("0");
			}
	    }


}
