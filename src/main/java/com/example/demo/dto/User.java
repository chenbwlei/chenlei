package com.example.demo.dto;

import java.security.Timestamp;

public class User {

	private int uid;
	
	private String username;
	
	private String password;
	
	private String name;
	
	private String gender;
	
	private String idCard;
	
	private String address;
	
	private String telno;
	
	private String regTime;
	
	private double balance;
	
	private int status;

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getIdCard() {
		return idCard;
	}

	public void setIdCard(String idCard) {
		this.idCard = idCard;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getTelno() {
		return telno;
	}

	public void setTelno(String telno) {
		this.telno = telno;
	}

	public String getRegTime() {
		return regTime;
	}

	public void setRegTime(String regTime) {
		this.regTime = regTime;
	}

	public double getBalance() {
		return balance;
	}

	public void setBalance(double balance) {
		this.balance = balance;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public User(int uid, String username, String password, String name, String gender, String idCard, String address,
			String telno, String regTime, double balance, int status) {
		super();
		this.uid = uid;
		this.username = username;
		this.password = password;
		this.name = name;
		this.gender = gender;
		this.idCard = idCard;
		this.address = address;
		this.telno = telno;
		this.regTime = regTime;
		this.balance = balance;
		this.status = status;
	}

	public User() {
		super();
	}

	@Override
	public String toString() {
		return "User [uid=" + uid + ", username=" + username + ", password=" + password + ", name=" + name + ", gender="
				+ gender + ", idCard=" + idCard + ", address=" + address + ", telno=" + telno + ", regTime=" + regTime
				+ ", balance=" + balance + ", status=" + status + "]";
	}


}
