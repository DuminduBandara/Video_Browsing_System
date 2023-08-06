package com.videoCtrl;

public class VideoInheritance extends Vid1{

	private String dateTime;

	public String getDateTime() {
		return dateTime;
	}

	public VideoInheritance(int vid, String vname, String desc, String video, String user, String date, String category,
			String dateTime) {
		super(vid, vname, desc, video, user, date, category);
		this.dateTime = dateTime;
	}
	
	
	
}
