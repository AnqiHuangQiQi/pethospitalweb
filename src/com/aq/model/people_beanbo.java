package com.aq.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class people_beanbo {

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
			ps = ct.prepareStatement("select count(*) from test.people");
			
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

	
	public ArrayList getPeopleByPage(int pageSize,int pageNow){
		ArrayList<people_bean> al = new ArrayList();
		try{
			int a = (pageNow-1)*pageSize;
			int b = pageSize;
			System.out.println("===a&b===");
			ct=new ConnDB().getConn();
			ps=ct.prepareStatement("select * from test.people limit "+a+","+b);
			
			rs=ps.executeQuery();
			System.out.println("111111111111111111");
			while(rs.next()){
				people_bean ndb = new people_bean();
				System.out.println("22222222222222222222");
				ndb.setPeopleId(rs.getString(1));
				ndb.setPeople_Na(rs.getString(3));
				ndb.setPeople_Wo(rs.getString(5));
				ndb.setPeople_Em(rs.getString(4));
			
				al.add(ndb);
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		return al;
		
	}
	
	
	public people_bean getPeopleBean(long id){
		people_bean ndb = new people_bean();
		
		try{
			
			ct = new ConnDB().getConn();
			ps = ct.prepareStatement("select* from test.people where id=?");
			ps.setLong(1, id);
			rs = ps.executeQuery();
			
			if(rs.next()){
				
				
				ndb.setPeopleId(rs.getString(1));
				ndb.setPeople_Na(rs.getString(3));
				ndb.setPeople_Wo(rs.getString(5));
				ndb.setPeople_Em(rs.getString(4));
			
				
				
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		
		return ndb;
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
