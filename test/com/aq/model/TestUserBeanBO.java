package com.aq.model;

import java.util.ArrayList;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class TestUserBeanBO {
	boolean a;
	
	UserBeanBO ubbo;
	UserBean b;
	boolean c;
	
	
	@Before
	public void setUp(){
		ubbo = new UserBeanBO();
	}
	
	@Test 
	public void testmu(){
		a = ubbo.modifyUser("1","panpan","12345","haoyue@gmail.com","cat","5","good");
		
		Assert.assertEquals("Wrong modifyUser",a,true);
     }
	
	@Test 
	public void testgub(){
		b = ubbo.getUserBean("panpan");
		
		Assert.assertEquals("Wrong getUserBean",b.getPasswd(),"12345");
     }
	
	@Test 
	public void testcu(){
		c = ubbo.checkUser("panpan","12345");
		
		Assert.assertEquals("Wrong checkUser",c,true);
     }
}
