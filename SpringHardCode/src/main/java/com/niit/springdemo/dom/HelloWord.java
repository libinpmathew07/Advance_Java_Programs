package com.niit.springdemo.dom;

import org.springframework.stereotype.Component;

@Component("helloworld")
public class HelloWord implements HelloWorld 
{
  public String say()
  {
	  return "hello";
  }
}
