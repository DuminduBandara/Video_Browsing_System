package com.videoCtrl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class DeleteProfile {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	
	public static boolean deleteUser(String user) {
		
		
		
		try {
			
			con = DBConnection.getConnection();
    		st = con.createStatement();
    		String sqlD = "delete from profile where UserName='"+user+"'";
    		int rc = st.executeUpdate(sqlD);
    		
    		if(rc > 0) {
    			isSuccess = true;
    		}else {
    			isSuccess = false;
    		}
    		
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return isSuccess;
		
		
	}
	
}
