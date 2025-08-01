package com.skilljobbie.bankformjsp;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class ConfigServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response)
	        throws ServletException, IOException {

	        response.setContentType("text/html");
	        PrintWriter out = response.getWriter();
	        
	        ServletConfig cfg = getServletConfig();
	        String greeting = cfg.getInitParameter("Greeting");

	        String name = request.getParameter("name");
	        String password = request.getParameter("password");

	        if (name != null && password != null && !name.isEmpty() && !password.isEmpty()) {
	        	HttpSession session = request.getSession();
	            session.setAttribute("name", name);
	            session.setAttribute("password", password);
	        }

	        request.setAttribute("greeting", greeting);

	        RequestDispatcher rd = request.getRequestDispatcher("config.jsp");
	        rd.forward(request, response);
	    }

}
