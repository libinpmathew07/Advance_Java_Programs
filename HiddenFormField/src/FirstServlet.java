

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FirstServlet
 */
@WebServlet("/FirstServlet")
public class FirstServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		PrintWriter out=response.getWriter();
		String n=request.getParameter("uname");
		//out.println("welcome to niit"+n);
		out.println("<html>");
		out.println("<form action='SecondServlet'>");
		out.println("<input type='hidden' name='uname' value="+n+">"
				+ "<input type='submit' value='Login'/>");
		out.println("</form>");
		out.println("</html>");
	}

}
