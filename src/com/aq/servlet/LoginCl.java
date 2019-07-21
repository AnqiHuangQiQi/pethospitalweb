package com.aq.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aq.model.MyAppointBO;
import com.aq.model.UserBean;
import com.aq.model.UserBeanBO;

public class LoginCl extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		//get username and password and check the user 
		
		String u = request.getParameter("username");
		String p = request.getParameter("password");
		String symbol = request.getParameter("symbol");
		
		UserBeanBO ubb = new UserBeanBO();
		
		if(ubb.checkUser(u, p)){
			//System.out.println("loginCl,u="+u);
			UserBean ub = ubb.getUserBean(u);
			String fff = "0";
			request.getSession().setAttribute("userInfo", ub);
			request.setAttribute("fff", fff);
			//get appointment information and prepare for the next page
			
			
			MyAppointBO mab = (MyAppointBO)request.getSession().getAttribute("myappo");
			
			ArrayList al = new ArrayList();
			if(mab != null)
			{al = mab.showMyAppo();
			}
			
			request.setAttribute("myappoInfo", al);
			

			if(symbol.equals("null"))
			{

				request.getRequestDispatcher("appo3.jsp").forward(request, response);

			}else if(symbol.equals("luck")){
				request.getRequestDispatcher("NoteClServlet?flag=decide").forward(request, response);
			}
			
			//if login successful , then put the information of the user into the session
			
			
			
		}else{
			
			
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
		
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			this.doGet(request, response);
	}

}
