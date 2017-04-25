package test;

import java.io.IOException;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HomepageServlet extends HttpServlet{
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		System.out.println("Home Page Servlet !");
		resp.getWriter().print("Home Page Servlet !");
		resp.getWriter().close();
	}
}
