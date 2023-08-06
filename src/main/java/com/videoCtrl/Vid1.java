package com.videoCtrl;

public class Vid1 {
	
	private  int vid;
	private String vname;
	private String desc;
	private String video;
	private String user;
	private String date;
	private String category;
	
	public String getVname() {
		return vname;
	}
	public String getDesc() {
		return desc;
	}
	public int getVid() {
		return vid;
	}
	public String getUser() {
		return user;
	}

	public Vid1(int vid, String vname, String desc, String video, String user, String date, String category) {
		super();
		this.vid = vid;
		this.vname = vname;
		this.desc = desc;
		this.video = video;
		this.user = user;
		this.date = date;
		this.category = category;
	}
	public String getVideo() {
		return video;
	}
	public String getDate() {
		return date;
	}
	public String getCategory() {
		return category;
	}

	
	
	
	
	
}
