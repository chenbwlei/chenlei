package com.example.demo.dto;

import java.security.Timestamp;

public class Orders {

	private int oid;
	
	private String commitTime;
	
	private double amount;
	
	private int uid;

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public String getCommitTime() {
		return commitTime;
	}

	public void setCommitTime(String commitTime) {
		this.commitTime = commitTime;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public Orders(int oid, String commitTime, double amount, int uid) {
		super();
		this.oid = oid;
		this.commitTime = commitTime;
		this.amount = amount;
		this.uid = uid;
	}

	public Orders() {
		super();
	}

	@Override
	public String toString() {
		return "Orders [oid=" + oid + ", commitTime=" + commitTime + ", amount=" + amount + ", uid=" + uid + "]";
	}

	
	
}
