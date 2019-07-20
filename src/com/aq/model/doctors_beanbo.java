package com.aq.model;
import java.sql.*;
import java.util.ArrayList;
public class doctors_beanbo {
	
	//handle the logic with the table
	private ResultSet rs=null;
	private Connection ct=null;
	private PreparedStatement ps=null;
	
	/**
	 * return how many pages in total
	 */
	public int getPageCount(int pageSize){
		int pageCount=0;
		int rowCount=0;
		try{
			ct = new ConnDB().getConn();
			ps = ct.prepareStatement("SELECT count(*) FROM test.pet_doctors;");
			
			rs = ps.executeQuery();
			
			if(rs.next()){
				
				rowCount = rs.getInt(1);
			}
			
			if(rowCount%pageSize==0){
				pageCount = rowCount/pageSize;
			}
			else{
				pageCount = rowCount/pageSize+1;
			}
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		return pageCount;
	}
	
	
	//different pages
	/**
	 * 
	 * @param pageSize:the number of pieces in each page
	 * 
	 * @param pageNow:current page
	 * @return ArrayList collect the information for doctors
	 * ctrl+shift+m: quote package
	 */
	
	public ArrayList getDoctorsByPage(int pageSize,int pageNow){
		ArrayList<doctors_bean> al = new ArrayList();
		try{
			int a = (pageNow-1)*pageSize;
			int b = pageSize;

			ct=new ConnDB().getConn();
			ps=ct.prepareStatement("select * from test.pet_doctors limit "+a+","+b);
			
			rs=ps.executeQuery();

			while(rs.next()){
				doctors_bean db = new doctors_bean();

				db.setDoctorId(rs.getInt(1));
				db.setDoctor_Na(rs.getString(2));
				db.setDoctor_Ma(rs.getString(3));
				db.setDoctor_Wo(rs.getString(4));

				db.setDoctor_Em(rs.getString(5));
				
				db.setDoctor_No(rs.getString(6));
				System.out.println("++++++++++");
				db.setDoctor_Ph(rs.getString(7));
				
				al.add(db);
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		return al;
		
	}
	
	
	public doctors_bean getDocBean(long id){
		doctors_bean db = new doctors_bean();
		
		try{
			
			
			ct = new ConnDB().getConn();
			ps = ct.prepareStatement("select* from test.pet_doctors where doc_id=?");
			ps.setLong(1, id);
			rs = ps.executeQuery();
			
			if(rs.next()){
				
				
				db.setDoctorId(rs.getInt(1));
				db.setDoctor_Na(rs.getString(2));
				db.setDoctor_Ma(rs.getString(3));
				db.setDoctor_Wo(rs.getString(4));
				db.setDoctor_Em(rs.getString(5));
				db.setDoctor_No(rs.getString(6));
				db.setDoctor_Ph(rs.getString(7));
				
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		
		return db;
	}
	
	public void close(){
		
		
		try{
			
			if(rs!=null){
				rs.close();
				rs=null;
			}
			
			if(ps!=null){
				ps.close();
				ps=null;
			}
			
			if(!ct.isClosed()){
				ct.close();
				//ct=null;
			}
		}catch(Exception e){
			e.printStackTrace();
		}
	}
}
