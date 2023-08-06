package com.videoCtrl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class InsertComments {
	//private static boolean isSuccess;
	private static Connection con = null;
	private static Statement ste = null;

	public static boolean inserComment(String comment, int vidID, String userName) {
		boolean isTrue = false;
		
		try {
			con = DBConnection.getConnection();
			ste = con.createStatement();
			String insertQ =  "insert into comment(comment,videoID,user) values('"+comment+"', '"+vidID+"', '"+userName+"')";
			int rs = ste.executeUpdate(insertQ);
			
			if(rs > 0) {
				isTrue = true;
			}else {
				isTrue = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isTrue;
	}
	
}
