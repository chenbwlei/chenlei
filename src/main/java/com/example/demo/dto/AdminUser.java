package com.example.demo.dto;

public class AdminUser {

	private String username;
	
	private String password;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public AdminUser(String username, String password) {
		super();
		this.username = username;
		this.password = password;
	}

	public AdminUser() {
		super();
	}

	@Override
	public String toString() {
		return "AdminUser [username=" + username + ", password=" + password + "]";
	}
	
}