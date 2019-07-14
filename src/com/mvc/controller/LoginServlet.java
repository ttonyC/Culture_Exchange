package com.mvc.controller;

import java.io.IOException;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mvc.utill.DBConnection;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public LoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		//String password = request.getParameter("password");
				DBConnection db = new DBConnection();
				Connection con = db.getCon();
				
				String username = request.getParameter("username");
				
				try
				{
					Statement stmt = con.createStatement();
					ResultSet rs = stmt.executeQuery("select * from user where username = '"+username+"'");
					if(rs.next())
					{
						Cookie loginCookie = new Cookie("username", username);
						loginCookie.setMaxAge(15); //cookie expiration
						response.addCookie(loginCookie);
						HttpSession session = request.getSession(true);
						String user = request.getParameter("username");
						session.setAttribute("username", user);
						response.sendRedirect("index.jsp");
					}
					else
					{
						request.setAttribute("errorLogin", "Invalid username and/or password");
						request.getRequestDispatcher("/signin.jsp").forward(request, response);
					}
				} catch (SQLException ex)
				{
					Logger.getLogger(LoginServlet.class.getName(), null).log(Level.SEVERE, null, ex);
				}
		}
		
	}


