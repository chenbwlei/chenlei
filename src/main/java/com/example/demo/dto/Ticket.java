package com.example.demo.dto;

import java.security.Timestamp;

public class Ticket {

	private int tid;
	
	private String desc;
	
	private String startTime;
	
	private int amount;
	
	private int balance;
	
	private double price;
	
	private int status;

	public int getTid() {
		return tid;
	}

	public void setTid(int tid) {
		this.tid = tid;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public String getStartTime() {
		return startTime;
	}

	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}

	public int getAmount() {
		return amount;
	}

	public void setAmount(int amount) {
		this.amount = amount;
	}

	public int getBalance() {
		return balance;
	}

	public void setBalance(int balance) {
		this.balance = balance;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public Ticket(int tid, String desc, String startTime, int amount, int balance, double price, int status) {
		super();
		this.tid = tid;
		this.desc = desc;
		this.startTime = startTime;
		this.amount = amount;
		this.balance = balance;
		this.price = price;
		this.status = status;
	}

	public Ticket() {
		super();
	}

	@Override
	public String toString() {
		return "Ticket [tid=" + tid + ", desc=" + desc + ", startTime=" + startTime + ", amount=" + amount
				+ ", balance=" + balance + ", price=" + price + ", status=" + status + "]";
	}

	
}
