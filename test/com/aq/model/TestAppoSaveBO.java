package com.aq.model;

import java.util.ArrayList;

import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;

public class TestAppoSaveBO {

	boolean a;
	
	AppoSaveBO asbo;
	
	
	@Before
	public void setUp(){
		asbo = new AppoSaveBO();
	}
	
	@Test 
	public void testaa(){
		a = asbo.addAppo(2003,1006, "Dumbledore", "anqi", "22699845", "anqilai@foxmail.com", "Satsuma", "4", "cat_cough","Sat-11a.m.");
		
		Assert.assertEquals("Wrong modifyUser",a,true);
     }
}
