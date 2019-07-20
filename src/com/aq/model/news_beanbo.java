package com.aq.model;
import java.sql.*;
import java.util.ArrayList;
public class news_beanbo {
	
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
			ps = ct.prepareStatement("select count(*) from test.news");
			
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

	
	public ArrayList getNewsByPage(int pageSize,int pageNow){
		ArrayList<news_bean> al = new ArrayList();
		try{
			int a = (pageNow-1)*pageSize;
			int b = pageSize;
			System.out.println("===a&b===");
			ct=new ConnDB().getConn();
			ps=ct.prepareStatement("select * from test.news limit "+a+","+b);
			
			rs=ps.executeQuery();
			System.out.println("111111111111111111");
			while(rs.next()){
				news_bean ndb = new news_bean();
				System.out.println("22222222222222222222");
				ndb.setNewsId(rs.getString(1));
				ndb.setNews_Em(rs.getString(5));
				ndb.setNews_Na(rs.getString(6));
				al.add(ndb);
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		return al;
		
	}
	
	
	public news_bean getNewsBean(long id){
		news_bean ndb = new news_bean();
		
		try{
			
			ct = new ConnDB().getConn();
			ps = ct.prepareStatement("select* from test.news where id=?");
			ps.setLong(1, id);
			rs = ps.executeQuery();
			
			if(rs.next()){
				
				
				ndb.setNewsId(rs.getString(1));
				ndb.setNews_Em(rs.getString(5));
				ndb.setNews_Na(rs.getString(6));
				
				
				
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
