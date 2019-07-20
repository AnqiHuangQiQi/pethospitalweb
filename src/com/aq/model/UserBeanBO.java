package com.aq.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.aq.model.*;

/**
 * handle the logic about use's table
 * @author Administrator
 *
 */
public class UserBeanBO {
	
	private ResultSet rs=null;
	private Connection ct=null;
	private PreparedStatement ps=null;
	private Statement sm = null;

	/**
	 * according to the username , return all information of the user
	 * @param pettCo 
	 * @param pettAg 
	 * @param pettTy 
	 * @param userEm 
	 * @param userPh 
	 * @param userNa 
	 * @param userId 
	 * @param u: username
	 * @return userbean
	 */
	
	public boolean modifyUser(String userId, String userNa, String userPh, String userEm, String pettTy, String pettAg, String pettCo){
		boolean sym = false;
		
		try{
			ct = new ConnDB().getConn();
			sm = ct.createStatement();
			long userid = Integer.parseInt(userId);
			int a = sm.executeUpdate("UPDATE `test`.`users_cus` SET `username`='"+userNa+"', `email`='"+userEm+"', `phone_num`='"+userPh+"', `pet_type`='"+pettTy+"', `pet_age`='"+pettAg+"', `pet_cond`='"+pettCo+"' WHERE `userid`='"+userId+"' and`username`='"+userNa+"';");
			if(a == 1){
				sym = true;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		
		return sym;
	}
	
	
	public UserBean getUserBean(String u){
		
		UserBean ub = new UserBean();
		try{
			ct = new ConnDB().getConn();
			ps = ct.prepareStatement("select * from test.users_cus where username=?");
			ps.setString(1, u);
			rs = ps.executeQuery();
			
			
			if(rs.next()){
				ub.setUserid(rs.getLong(1));
				//System.out.println("=="+rs.getLong(1)+"");
				ub.setUsername(rs.getString(2));
				//System.out.println("=="+rs.getString(2)+"");
				ub.setTruename(rs.getString(3));
				ub.setPasswd(rs.getString(4));
				ub.setEmail(rs.getString(5));
				ub.setPhone_num(rs.getString(6));
				ub.setAddress(rs.getString(7));
				ub.setGrade(rs.getString(8));
				ub.setPet_name(rs.getString(9));
				ub.setPet_type(rs.getString(10));
				ub.setPet_age(rs.getString(11));
				ub.setPet_cond(rs.getString(12));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			this.close();
		}
		
		
		return ub;
	}
	
	
	/**
	 * 
	 * @param u
	 * @param p
	 * @return
	 */
	public boolean checkUser(String u,String p){
		boolean b = false;
		
		try{
			//
			
			ct = new ConnDB().getConn();
			
			ps = ct.prepareStatement("select passwd from test.users_cus where username=?");
			
			
			ps.setString(1, u);
			rs = ps.executeQuery();
			if(rs.next()){
				//receive the passwd
				
				String dbPasswd = rs.getString(1);
				if(dbPasswd.equals(p)){
					b = true;
				}
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			//close the source
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
