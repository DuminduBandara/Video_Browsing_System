package com.videoCtrl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * Servlet implementation class UpdateCommentServlet
 */
public class UpdateCommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String comment = request.getParameter("commentE");
		String commentID = request.getParameter("commentC");
		String user = request.getParameter("userC");
		
		boolean isTrue = UpdateComment.updateComment(comment, commentID, user);
		
		if(isTrue == true) {			
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		}
	}

}
