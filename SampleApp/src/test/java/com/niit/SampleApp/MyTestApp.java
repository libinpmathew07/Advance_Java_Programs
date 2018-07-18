package com.niit.SampleApp;

import static org.junit.Assert.*;

import org.junit.After;
import org.junit.Before;
import org.junit.Test;

public class MyTestApp {

	int num1,num2;
	App g;
	@Before
	public void setUp() throws Exception 
	{
		 g=new App();
		num1=30;
		num2=10;
		
	}

	@After
	public void tearDown() throws Exception {
	}

	@Test
	public void test() {
		assertEquals("Sucess",60,g.get(num1,num2));
	}

}
