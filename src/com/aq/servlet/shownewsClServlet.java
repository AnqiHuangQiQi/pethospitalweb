package com.aq.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aq.model.news_beanbo;
import com.aq.model.news_bean;

public class shownewsClServlet extends HttpServlet {

	//get type which tells which one the users want(showDe,fenye)
	
	
	
	
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
		System.out.println("ShowDetail==="+type);
		
		if(type.equals("showDetail")){
			
		
		
		
		//get the doctors id required
		
		String news_id = request.getParameter("id");
		
		//call doctors bean bo
		news_beanbo ndbb = new news_beanbo();
		news_bean ndb = ndbb.getNewsBean(Long.parseLong(news_id));
		request.setAttribute("doctorsinfo", ndb);
		
		request.getRequestDispatcher("showDetail.jsp").forward(request, response);
		
		}else if(type.equals("fenye")){
			
			//get pageNow
			
			String pageNow = request.getParameter("pageNow");
			//jump back to the home page
			//put pageNow into request
			request.setAttribute("abc", pageNow);
			
			request.getRequestDispatcher("index.jsp").forward(request, response);
			
			
		}
	}

	
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

	
		this.doGet(request, response);
	}

}
