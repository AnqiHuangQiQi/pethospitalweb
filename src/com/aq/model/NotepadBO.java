package com.aq.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class NotepadBO {

	private ResultSet rs=null;
	private Connection ct=null;
	private PreparedStatement ps=null;
	private Statement sm = null;
	
	public NoteCon getNotebyId(long userid){
		NoteCon nc = new NoteCon(); 
		
		try{
			
			ct = new ConnDB().getConn();
			sm = ct.createStatement();
			
			rs=sm.executeQuery("select * from test.notepad");
			
			if(rs.next()){
				nc.setUserid(rs.getInt(1));
				nc.setUsername(rs.getString(2));
				nc.setNoteconte(rs.getString(3));
				nc.setDoctormes(rs.getString(4));
				nc.setReserve(rs.getString(5));
				nc.setReserve2(rs.getString(6));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		
		return nc;
	}
	
	public boolean saveNote(java.lang.String notecon,long userid){
		boolean b = false;
		try{
			ct = new ConnDB().getConn();
			sm = ct.createStatement();
			
			int a = sm.executeUpdate("UPDATE `test`.`notepad` SET `notedetail`='"+notecon+"' WHERE `userid`='"+userid+"'"
);
			if(a == 1){
				b = true;
			}
		}catch(Exception e){
			
		}finally{
			this.close();
		}
		
		return b;
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
