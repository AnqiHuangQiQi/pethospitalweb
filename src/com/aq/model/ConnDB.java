package com.aq.model;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnDB {
	private Connection ct = null;
	
	public Connection getConn(){
		
		try{
			
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		  	ct = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/","root","root");
		  	
		}catch(Exception e){
			System.out.println("Fail to Connect with the Database");
			e.printStackTrace();	//necessary sentence
		}
		
		return ct;
	}
	

}
