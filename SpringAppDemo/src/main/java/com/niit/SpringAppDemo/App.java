package com.niit.SpringAppDemo;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.niit.SpringAppDemo.*;
import com.niit.SpringAppDemo.Test.HelloWorld;

/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
       AbstractApplicationContext ctx=new AnnotationConfigApplicationContext(AppSample.class);
       HelloWorld h=(HelloWorld) ctx.getBean("helloworld");
       System.out.println(h.say());
    }
}
