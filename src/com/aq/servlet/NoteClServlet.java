package com.aq.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aq.model.*;

public class NoteClServlet extends HttpServlet {

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
		String flag = request.getParameter("flag"); 
		
		if(flag.equals("decide")){
			
		
		UserBean ub = (UserBean) request.getSession().getAttribute("userInfo");
		
		if(ub == null){
			
			request.setAttribute("symbol", "luck");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		}else{
			
		
			//request.setAttribute("user", ub);
			long userid = ub.getUserid();
			String username = ub.getUsername();
			NoteCon nc = new NoteCon();
			nc.setUserid(userid);
			nc.setUsername(username);
			NotepadBO npb = new NotepadBO();
			nc = npb.getNotebyId(userid);
			System.out.println(nc.getNoteconte());
			request.setAttribute("notecon", nc);
			request.getRequestDispatcher("notepad.jsp").forward(request, response);
			
		}
		}
		if(flag.equals("save")){
			boolean a = false;
			NotepadBO npb = new NotepadBO();
			
			String usercon = request.getParameter("usercon");
			long userid = Integer.parseInt(request.getParameter("userid")+"");
			
			a = npb.saveNote(usercon, userid);
			
			if(a == true){
				
				request.getRequestDispatcher("notesuccess.jsp").forward(request, response);
				
			}else{
				
			}
			
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
