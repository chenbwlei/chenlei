package com.example.demo.dto;

public class OrderList {

	private int lid;
	
	private String desc;
	
	private double price;
	
	private int quantity;
	
	private double amount;
	
	private int oid;

	public int getLid() {
		return lid;
	}

	public void setLid(int lid) {
		this.lid = lid;
	}

	public String getDesc() {
		return desc;
	}

	public void setDesc(String desc) {
		this.desc = desc;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public int getOid() {
		return oid;
	}

	public void setOid(int oid) {
		this.oid = oid;
	}

	public OrderList(int lid, String desc, double price, int quantity, double amount, int oid) {
		super();
		this.lid = lid;
		this.desc = desc;
		this.price = price;
		this.quantity = quantity;
		this.amount = amount;
		this.oid = oid;
	}

	public OrderList() {
		super();
	}

	@Override
	public String toString() {
		return "OrderList [lid=" + lid + ", desc=" + desc + ", price=" + price + ", quantity=" + quantity + ", amount="
				+ amount + ", oid=" + oid + "]";
	}
	
	
}
