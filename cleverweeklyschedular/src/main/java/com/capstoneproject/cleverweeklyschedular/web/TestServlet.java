package com.capstoneproject.cleverweeklyschedular.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID= 1L;

	
	public TestServlet() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String user = "root";
		String pass = "cancer98";
		String jdbcUrl = "jdbc:mysql://localhost:3306/cws?useSSL=false&serverTimezone=UTC";
		String driver = "com.mysql.cj.jdbc.Driver";
		
		try{
			PrintWriter out = response.getWriter();
			
		    out.println("\n\nConnecting to db :) "+ jdbcUrl);
		    
		    Class.forName(driver);
		    
			Connection myConn = DriverManager.getConnection(jdbcUrl,user,pass);
			
			out.println("CONNECTION SUCCESFUL\n");
			
			myConn.close();
            
        }catch (ClassNotFoundException e) {
        	System.out.println("EXCEPTION");
        	e.printStackTrace();
            throw new ServletException(e);
        }	
        catch (SQLException exc){
        	System.out.println("EXCEPTION 2");
            exc.printStackTrace();
            throw new ServletException(exc);
        }
	
	}

}






