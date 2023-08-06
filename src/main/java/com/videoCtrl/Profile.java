package com.videoCtrl;

public class Profile {
	
	private String userName;
	private String fname;
	private String lname;
	private String email;
	private String password;
	private String pic;
	
	public Profile(String userName, String fname, String lname, String email, String password, String pic) {
		super();
		this.userName = userName;
		this.fname = fname;
		this.lname = lname;
		this.email = email;
		this.password = password;
		this.pic = pic;
	}

	public String getUserName() {
		return userName;
	}

	public String getFname() {
		return fname;
	}

	public String getLname() {
		return lname;
	}

	public String getEmail() {
		return email;
	}

	public String getPassword() {
		return password;
	}

	public String getPic() {
		return pic;
	}
	
	
	

}
