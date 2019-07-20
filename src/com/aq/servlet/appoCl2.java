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

public class appoCl2 extends HttpServlet {

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

		//response.setContentType("text/html");
		//PrintWriter out = response.getWriter();
		
		//check if user has been login
		//if has ,then jump to user information and appointment age
		//get info from session
		
		UserBean ub = (UserBean) request.getSession().getAttribute("userInfo");
		
		if(ub==null){
			
			//never login,jump to login.jsp
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
			
		}else{
			//have login
			
			MyAppointBO mab = new MyAppointBO();
			mab = (MyAppointBO)request.getSession().getAttribute("myappo");
			
			if(mab == null){
			ArrayList al = new ArrayList();
			request.setAttribute("myappoInfo", al);
			}else{
			ArrayList al = mab.showMyAppo();
			request.setAttribute("myappoInfo", al);
			}
			
			
			
			request.getRequestDispatcher("appo3.jsp").forward(request, response);
			
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
