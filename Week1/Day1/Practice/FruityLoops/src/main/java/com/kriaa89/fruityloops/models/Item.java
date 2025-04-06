package com.kriaa89.fruityloops.models;

public class Item {
	public String name;
	public double price;
	public Item(String name, double price) {
		this.name = name;
		this.price = price;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPrice() {
		return price;
	}
}
