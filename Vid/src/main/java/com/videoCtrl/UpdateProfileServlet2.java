package com.videoCtrl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


public class UpdateProfileServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String user = request.getParameter("user");
		String em = request.getParameter("em");
		boolean isTrue = UpdateProfile.updateEmail(em, user);
		
		if(isTrue == true) {			
			RequestDispatcher dis = request.getRequestDispatcher("profile.jsp");
			dis.forward(request, response);
		}
	}

}
