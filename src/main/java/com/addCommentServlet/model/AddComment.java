package com.addCommentServlet.model;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


@WebServlet("/gets")
/**
 * Servlet implementation class AddComment
 */
public class AddComment extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String insert_query = "insert into comments(Comments) values(?)";
    private static final String select_query = "select * from comments";   
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddComment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.getWriter().append("Served at: ").append(req.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter pw = resp.getWriter();
		resp.setContentType("text/jsp");
		String comment = req.getParameter("comment");
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		try{
			
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/videoBrowser","root", "1234");
			PreparedStatement ps = con.prepareStatement(insert_query);
			
//			set values
			ps.setString(1, comment);
			
			
//			execute query
			int count  = ps.executeUpdate();
			if(count != 0) {
				RequestDispatcher rd = req.getRequestDispatcher("videoPlayer.jsp");
				rd.forward(req, resp);
			}
			
		}
		catch(SQLException se) {
			pw.println(se.getMessage());
			se.printStackTrace();
		}
		catch (Exception e) {
			pw.print(e.getMessage());
			e.printStackTrace();
		}
		
		pw.close();
	}

}
