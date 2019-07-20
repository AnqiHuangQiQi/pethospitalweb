package com.aq.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.aq.model.*;
public class appoClServlet extends HttpServlet {

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
		String type=request.getParameter("type");
		//get required Id for doctors
		
		MyAppointBO mbo = (MyAppointBO)request.getSession().getAttribute("myappo");
		
		if(mbo==null){
			mbo = new MyAppointBO();
			request.getSession().setAttribute("myappo", mbo);
		}
		
		
		if(type.equals("addAppo")){
		
		String doctorsId = request.getParameter("doctorsId");
		
		//get type value and know what the user wanna do
		
		//call BO
		
		//MyAppointBO mbo = new MyAppointBO();
		
		
		//default each appointment is at Mon-10a.m.
		//it can be fxixed
		//System.out.println("-----"+doctorsId);
		mbo.addAppo(doctorsId, "Mon-00a.m.");
		
		
		
		}else if(type.equals("delAppo")){
			//get the id to cancel
			
			String doctorsId = request.getParameter("doctorsId");
			
			mbo.delAppo(doctorsId);
			

			
		}else if(type.equals("show")){
			//do nothing
		}else if(type.equals("cancelAll")){
			mbo.clearAppo();
		}else if(type.equals("updateTime")){
			
			//user change the appointment time
			//get newTime and Id in servlet
			//reveive Id
			String doctorsId[] = request.getParameterValues("doctorsId");
			String newTime[] = request.getParameterValues("newTime");
			//check if it gets the newTime
			
			for(int i=0;i<doctorsId.length;i++){
			
				//System.out.println("T id=="+doctorsId[i]+"Time=="+newTime[i]);
			mbo.updateTime(doctorsId[i], newTime[i]);
			}
		}
		
		
		
		
		ArrayList al = mbo.showMyAppo();
		
		//put it into request
		request.setAttribute("myAppoInfo", al);
		
		//jump into showMyAppoint,jsp
		request.getRequestDispatcher("showMyAppoint.jsp").forward(request, response);
		
		
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
