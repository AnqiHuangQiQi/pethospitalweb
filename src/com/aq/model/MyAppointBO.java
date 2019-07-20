package com.aq.model;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
//this is used for handling the action about making an appointment
import java.util.*;
public class MyAppointBO {
	
	//add Appo
	//cancel
	//cancel all
	//change time
	//show detail
	
	//HashMap
	
	//define a hashmap for storing Id and Time
	
	HashMap <String,String> hm = new HashMap <String,String>();
	
	private ResultSet rs=null;
	private Connection ct=null;
	private PreparedStatement ps=null;
	
	/**
	 * acording to the id,return the time of appo
	 * @param doctorsId
	 * @return newTime
	 */
	
	public String getAppoTimeById(String doctorsId){
		
		return (String)hm.get(doctorsId);
	}
	
	
	public void addAppo(String doctorsId, String appoTime){
		//System.out.println("BO------"+doctorsId);
		hm.put(doctorsId, appoTime);
		
		
	}
	
	public void delAppo(String doctorsId){
		hm.remove(doctorsId);
	}
	
	public void clearAppo(){
		hm.clear();
	}
	
	public void updateTime(String doctorsId,String newTime){
		hm.put(doctorsId, newTime);
	}
	
	public ArrayList showMyAppo(){
		ArrayList <doctors_bean> al=new ArrayList <doctors_bean>();
		
		try{
			//arrange sql
			
			
			
			//use recursion
			//get doctorsID from hashmap
			
			Iterator it = hm.keySet().iterator();
			String sub="(";
			while(it.hasNext()){
				//get Id
				String doctorsId = (String)it.next();
				//check if it is the last Id
				System.out.println("Id-----"+doctorsId);
				if(it.hasNext()){
				
				sub += doctorsId+",";
				}else{
					
				sub += doctorsId+")";
				}
			}
			
			
			String sql="select * from test.pet_doctors where doc_id in "+sub;
			System.out.println(sub+",");
			
			ct = new ConnDB().getConn();
			ps = ct.prepareStatement(sql);
			rs = ps.executeQuery();
			
			while(rs.next()){
				doctors_bean db = new doctors_bean();
				System.out.println(""+rs.getInt(1));
				db.setDoctorId(rs.getInt(1));
				db.setDoctor_Na(rs.getString(2));
				db.setDoctor_Ma(rs.getString(3));
				db.setDoctor_Wo(rs.getString(4));
				db.setDoctor_Em(rs.getString(5));
				db.setDoctor_No(rs.getString(6));
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
