package com.videoCtrl;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import com.mysql.fabric.Response;

/**
 * Servlet implementation class PlayerLoad
 */
public class PlayerLoad extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String vidid = request.getParameter("vid");
		int convid = Integer.parseInt(vidid);
		String getTime = request.getParameter("wTime");	
		HttpSession session = request.getSession(true);
		
		try {
			
			List<Vid1> vids = Player.getsv(convid);
			request.setAttribute("vids", vids);
			RequestDispatcher dis = request.getRequestDispatcher("videoPlayer.jsp");
			dis.forward(request, response);
			
			List<Vid1> hisDis = History.getHis(convid, getTime);
			session.setAttribute("hisDis", hisDis);
			
			response.sendRedirect("watchHistory.jsp");
			
		}catch(Exception e) {
				e.printStackTrace();
			}
			
			
	}

}
