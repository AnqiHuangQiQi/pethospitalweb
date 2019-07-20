package com.aq.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.aq.model.ConnDB;

public class AppoSaveBO {

	private ResultSet rs=null;
	private Connection ct=null;
	private PreparedStatement ps=null;
	private Statement sm = null;
	
	int rowCount = 0;
	
	public boolean addAppo(long appoId, long doctorsId, String doctorsNam, String userNam, String userPho, String userEma, String petType, String petAgee, String petCond,String appoTime){
		boolean b = false;
		try{
			ct = new ConnDB().getConn();
			sm = ct.createStatement();
			//long appoId = Integer.parseInt();
			//long doctorsId = Integer.parseInt();
			int a = sm.executeUpdate("INSERT INTO `test`.`new_table` ( `doctorsid`, `doctorsNa`, `userNa`, `userPhon`, `userEmail`, `petType`, `petAge`, `petCond`, `note`, `reserve`) VALUES ('"+doctorsId+"', '"+doctorsNam+"', '"+userNam+"', '"+userPho+"', '"+userEma+"', '"+petType+"', '"+petAgee+"', '"+petCond+"', '"+appoTime+"', 'reserve')");
			if(a == 1){
				b = true;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		
		
		return b;
	}
	
	public int getNeId(){
		long a = 0;
		try{
			ct = new ConnDB().getConn();
			sm = ct.createStatement();
			
			rs=sm.executeQuery("select max(appoid) from test.new_table");    
		    
		    if(rs.next()){
		    	rowCount=rs.getInt(1);   //rs 
		    }
		   
			//System.out.println("a ="+a);
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		return rowCount;
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
