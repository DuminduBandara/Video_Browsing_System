package com.videoCtrl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;


public class LoginCtrl {
	
	private static Connection con = null;
	private static Statement ste = null;
	private static ResultSet rs = null;
	
	public static List<Profile> validate(String username, String password){
		
		ArrayList<Profile> profile = new ArrayList<>();
		
		
		try {
			con = DBConnection.getConnection();
			ste = con.createStatement();
			String ql = "select * from profile where UserName='"+username+"' and password='"+password+"'";
			rs = ste.executeQuery(ql);
			
			if(rs.next()) {
				String user = rs.getString(1);
				String fn = rs.getString(2);
				String ln = rs.getString(3);
				String email = rs.getString(4);
				String pass = rs.getString(5);
				String pic = rs.getString(6);
				
				Profile p = new Profile(user, fn, ln, email,pass,pic);
				profile.add(p);				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return profile;
	}
	
}
