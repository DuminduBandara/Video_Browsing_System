package com.videoCtrl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/videoControl")
public class VideoControl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String comment = request.getParameter("comment");
		String vidID = request.getParameter("vidID");
		int convid = Integer.parseInt(vidID);
		String user = request.getParameter("userID");
		
		boolean isTrue;
		
		try {
			isTrue = InsertComments.inserComment(comment, convid, user);
			
			if(isTrue == true) {
				RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
				dis.forward(request, response);
			}else {
				RequestDispatcher dis1 = request.getRequestDispatcher("accounts.jsp");
				dis1.forward(request, response);
			}
		} catch (Exception e) {
			RequestDispatcher dis2 = request.getRequestDispatcher("index.jsp");
			dis2.forward(request, response);
		}
		
	}

}
