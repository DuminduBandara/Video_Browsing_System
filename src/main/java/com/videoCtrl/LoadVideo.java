package com.videoCtrl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.videoCtrl.Video;

public class LoadVideo {
	
	private static Connection con = null;
	private static Statement ste = null;
	
	public ArrayList<Video> getVideo(){
		
		ArrayList<Video> vr = new ArrayList<Video>();
		
		try {
			con = DBConnection.getConnection();
			ste = con.createStatement();
			String ql = "select * from video";
			ResultSet rs = ste.executeQuery(ql);
			while(rs.next()) {
				
				Video vid = new Video();
				
				vid.setVideoID(rs.getInt("idvideo"));
				vid.setVname(rs.getString("vname"));
				vid.setDesc(rs.getString("description"));
				vid.setVideo(rs.getString("video"));
				vid.setUploadDate(rs.getString("uplodedate"));
				vid.setCategory(rs.getString("category"));
				vid.setUsername(rs.getString("UserName"));
				
				vr.add(vid);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return vr;
		
	}

}
