package com.videoCtrl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class UpdateComment {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	
	public static boolean updateComment(String comment, String commentID, String user) {
		
		int conID = Integer.parseInt(commentID);
		
		try {
    		
    		con = DBConnection.getConnection();
    		st = con.createStatement();
    		String sqlU = "update comment set comment='"+comment+"' where commentID='"+conID+"' and user='"+user+"'";
    		int rq = st.executeUpdate(sqlU);
    		
    		if(rq > 0) {
    			isSuccess = true;
    		}
    		else {
    			isSuccess = false;
    		}
    		
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
    	
    	return isSuccess;
		
	}
	
}
