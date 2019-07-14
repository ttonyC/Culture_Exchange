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
 * Servlet implementation class ForumServlet
 */
@WebServlet("/ForumServlet")
public class ForumServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForumServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		try 
		{
			
	    // forum_id auto increments
		String username_fk = "qwerty"; // Posters username  Use sessions to store name in forum post table to display with forum post
		String f_title = request.getParameter("f_title"); //Forum Title
		String f_cat = request.getParameter("f_cat");  // Forum Category 
		String f_lang = request.getParameter("f_lang");
		String f_content = request.getParameter("f_content");// Forum Content
		//Add time posted later
				
		DBConnection db = new DBConnection();
		Connection con = db.getCon();
		
		PreparedStatement ps = con.prepareStatement("INSERT INTO forum_entries(username, f_title, f_cat,f_lang, f_content)values(?,?,?,?,?)");
        ps.setString(1, username_fk);
        ps.setString(2, f_title);
        ps.setString(3, f_cat);
        ps.setString(4, f_lang);
        ps.setString(5, f_content);
        ps.executeUpdate();
		
		System.out.println("data inserted sucessfully");
		response.sendRedirect("index.jsp");
		
			
		
		
	} catch (SQLException e)
	{
		e.printStackTrace();
	}		
	}

}
