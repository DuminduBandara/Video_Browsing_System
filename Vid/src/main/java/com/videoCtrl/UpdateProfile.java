package com.videoCtrl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class UpdateProfile {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement st = null;
	private static ResultSet rs = null;
	
	public static boolean updateFname(String fname, String user) {
		
		
		try {
    		
    		con = DBConnection.getConnection();
    		st = con.createStatement();
    		String sqlU = "update profile set fName='"+fname+"' where UserName='"+user+"'";
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
	
	public static boolean updateLname(String lname, String user) {
		
		
		try {
    		
    		con = DBConnection.getConnection();
    		st = con.createStatement();
    		String sqlU = "update profile set lName='"+lname+"' where UserName='"+user+"'";
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
	
	public static boolean updateEmail(String email, String user) {
		
		
		try {
    		
    		con = DBConnection.getConnection();
    		st = con.createStatement();
    		String sqlU = "update profile set email='"+email+"' where UserName='"+user+"'";
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
