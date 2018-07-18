/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package a;

import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.io.StringWriter;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

/**
 *
 * @author Asar
 */
public class MyFilter implements Filter 
{
    
      public void doFilter(ServletRequest req, ServletResponse resp,
            FilterChain chain)
            throws IOException, ServletException 
            {
                PrintWriter out=resp.getWriter();
		out.print("filter is invoked before");
		
		chain.doFilter(req, resp);//sends request to next resource
		
		out.print("filter is invoked after");
            }
       
    public void destroy() {        
    }

   
    public void init(FilterConfig filterConfig) {        
      
    }
}
