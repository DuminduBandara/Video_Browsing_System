package com.videoCtrl;

import java.sql.Connection;
import java.sql.Statement;

public class uploadVideo {
	//private static boolean isSuccess;
		private static Connection con = null;
		private static Statement ste = null;

		public static boolean uploadvideo(String vname , String description, String category, String userName ) {
			boolean isTrue = false;
			
			try {
				con = DBConnection.getConnection();
				ste = con.createStatement();
				String insertQ =  "insert into vid2 values('"+vname+"', '"+description+"','"+category+"', '"+userName+"')";
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
