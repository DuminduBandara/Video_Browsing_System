package com.videoCtrl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class Player {
	
	private static Connection con = null;
	private static Statement ste = null;
	private static ResultSet rs = null;
	
	public static List<Vid1> getsv(int vidid){
		
		ArrayList<Vid1> profile = new ArrayList<>();
		
		
		try {
			con = DBConnection.getConnection();
			ste = con.createStatement();
			String ql = "select * from video where idvideo='"+vidid+"'";
			rs = ste.executeQuery(ql);
			
			if(rs.next()) {
				int vid = rs.getInt("idvideo");
				String vname = rs.getString("vname");
				String desc = rs.getString("description");
				String video = rs.getString("video");
				String user = rs.getString("UserName");
				String date = rs.getString("uplodedate");
				String category = rs.getString("category");
				
				
				
				Vid1 p = new Vid1(vid,vname, desc, video, user, date, category);
				profile.add(p);				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return profile;
	}
	
}
