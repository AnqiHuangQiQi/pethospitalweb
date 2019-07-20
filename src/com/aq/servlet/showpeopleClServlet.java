package com.aq.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aq.model.people_bean;
import com.aq.model.people_beanbo;

public class showpeopleClServlet extends HttpServlet {


	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		
		
		PrintWriter out = response.getWriter();

		String type=request.getParameter("type");
		System.out.println("ShowDetail==="+type);
		
		if(type.equals("showDetail")){
			
		
		
		
		//get the doctors id required
		
		String people_id = request.getParameter("id");
		
		//call doctors bean bo
		people_beanbo ndbb = new people_beanbo();
		people_bean ndb = ndbb.getPeopleBean(Long.parseLong(people_id));
		request.setAttribute("doctorsinfo", ndb);
		
		request.getRequestDispatcher("showDetail.jsp").forward(request, response);
		
		}else if(type.equals("fenye")){
			
			//get pageNow
			
			String pageNow = request.getParameter("pageNow");
			//jump back to the home page
			//put pageNow into request
			request.setAttribute("abc", pageNow);
			
			request.getRequestDispatcher("AboutUs.jsp").forward(request, response);
			
			
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
