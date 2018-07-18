package com.niit.SpringAppDemo;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

import com.niit.SpringAppDemo.*;
import com.niit.SpringAppDemo.Test.HelloWorld;

@Configuration
@ComponentScan("com.niit.SpringAppDemo")
public class AppSample
{
	

	@Bean(name="helloworld")
  public HelloWorld getHelloworld()
  {
	 return new HelloWorld() {
		
		public String say() {
			// TODO Auto-generated method stub
			return "welcome" ;
		}
	};
	  
  }
}
