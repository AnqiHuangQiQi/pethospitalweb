package com.aq.model;

import java.util.ArrayList;

import org.hamcrest.Matcher;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

import com.aq.model.*;;

public class Testdoctors_beanbo {
	ArrayList a;
	doctors_bean c;
	doctors_beanbo dbb;
	
	
	@Before
	public void setUp(){
		dbb = new doctors_beanbo();
	}
	
	@Test 
	public void testgpc(){
		int b = dbb.getPageCount(6);
		//ArrayList *b = NULL;
		Assert.assertEquals("there is problem with",b,2);
	}
	
	@Test
	public void testgdbp(){
		a = dbb.getDoctorsByPage(3,1);
		//ArrayList *b = NULL;
		Assert.assertNotSame("there is problem with",a,(null));
    }
	
	@Test
	public void testgdb(){
		c = dbb.getDocBean(1001);
	
		Assert.assertEquals("there is problem with",c.getDoctorId(),1001);
    }
	
//	@Test
//	public void testHamcrest(){
//		Assert.assertThat(50,greaterThan(0));
//	}


	}

	
	
