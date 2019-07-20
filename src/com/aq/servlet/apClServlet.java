package com.aq.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.aq.model.*;

public class apClServlet extends HttpServlet {

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
		
		String flag = request.getParameter("flag");
		String userName = request.getParameter("userNa");
		
		if(flag.equals("modifyUser")){
			//modify user's information by users
			String userId = request.getParameter("userId");
			String userNa = request.getParameter("userName");
			String userPh = request.getParameter("userPhon");
			String userEm = request.getParameter("userEmai");
			String pettTy = request.getParameter("petType");
			String pettAg = request.getParameter("petAgee");
			String pettCo = request.getParameter("petCond");
			//System.out.println("-09999990-"+userId);
			
			UserBeanBO ubb = new UserBeanBO();
			if(ubb.modifyUser(userId,userNa,userPh,userEm,pettTy,pettAg,pettCo)){
				
				
				MyAppointBO mab = (MyAppointBO)request.getSession().getAttribute("myappo");
				
				UserBean ub = ubb.getUserBean(userNa);
				request.getSession().setAttribute("userInfo", ub);
				ArrayList al = mab.showMyAppo();
				String fff = "1";
				request.setAttribute("myappoInfo", al);
				request.setAttribute("fff", fff);
				request.getRequestDispatcher("appo3.jsp").forward(request, response);
			}

			
			
		}else if(flag.equals("appointsave")){
			UserBeanBO ubb = new UserBeanBO();
			UserBean ub = ubb.getUserBean(userName);
			
			String userNam = ub.getUsername();
			String userPho = ub.getPhone_num();
			String userEma = ub.getEmail();
			String petType = ub.getPet_type();
			String petAgee = ub.getPet_age();
			String petCond = ub.getPet_cond();
			MyAppointBO mbo = (MyAppointBO)request.getSession().getAttribute("myappo");
			//System.out.println("==save=="+userNam);
			ArrayList al = mbo.showMyAppo();
			
			
			
	
			for(int i = 0; i<al.size();i++){
				doctors_bean db = (doctors_bean)al.get(i);
				AppoSaveBO asb = new AppoSaveBO();
				
				int rowCount = asb.getNeId();
				
				//long globApp = 2000+i;
				long appoId = rowCount+1;
				long doctorsId = db.getDoctorId();
				String doctorsNa = db.getDoctor_Na();
				//System.out.println("&&&&"+doctorsNa);
				String appoTime = mbo.getAppoTimeById(doctorsId+"");
				asb.addAppo(appoId,doctorsId,doctorsNa,userNam,userPho,userEma,petType,petAgee,petCond,appoTime);
				
				//request.getSession().setAttribute("appoGlo", globApp);
			}
			
			request.getRequestDispatcher("appoFinish.jsp").forward(request, response);
			
		}else if(flag.equals("logout")){
			try{
				request.getSession().removeAttribute("userInfo");
				request.getSession().removeAttribute("myappo");
				request.getRequestDispatcher("index.jsp").forward(request, response);
			}catch(Exception e){
				e.printStackTrace();
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
