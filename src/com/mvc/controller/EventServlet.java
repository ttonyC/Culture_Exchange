package com.mvc.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mvc.utill.DBConnection;

/**
 * Servlet implementation class EventServlet
 */
@WebServlet("/EventServlet")
public class EventServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EventServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		try 
		{
			
	    // forum_id auto increments
		String username = "qwerty"; // Posters username  Use sessions to store name in forum post table to display with forum post
		String event_title = request.getParameter("event_title"); //Forum Title
		String event_cat = request.getParameter("event_cat");  // Forum Category 
		String event_content = request.getParameter("event_content");
		String event_date = request.getParameter("event_date");
		String event_time = request.getParameter("event_time");
		String event_location = request.getParameter("event_location");
		
		
		
				
		DBConnection db = new DBConnection();
		Connection con = db.getCon();
		
		PreparedStatement ps = con.prepareStatement("INSERT INTO event(username, event_title, event_cat,event_content, event_date,event_time,event_location)values(?,?,?,?,?,?,?)");
        ps.setString(1, username);
		ps.setString(2, event_title);
        ps.setString(3, event_cat);
        ps.setString(4, event_content);
        ps.setString(5, event_date);
        ps.setString(6, event_time);
        ps.setString(7, event_location);
        ps.executeUpdate();
		
		System.out.println("data inserted sucessfully");
		response.sendRedirect("index.jsp");
		
			
		
		
	} catch (SQLException e)
	{
		e.printStackTrace();
	}		
	}

}


