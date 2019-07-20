package com.aq.model;

import java.util.ArrayList;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class TestMyAppointBO {

	ArrayList a;
	MyAppointBO mabo;
	
	
	@Before
	public void setUp(){
		mabo = new MyAppointBO();
	}
	
	@Test 
	public void testsma(){
		a = mabo.showMyAppo();
		//ArrayList *b = NULL;
		Assert.assertNotSame("wrong showmyappo",a,(null));
	}
	
	
	
}
