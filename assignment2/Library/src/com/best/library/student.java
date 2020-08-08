package com.best.library;

public class student {
	public int id;
	
	public student(int id, String name, String class_name, String address, String phone) {
		super();
		this.id = id;
		this.name = name;
		this.class_name = class_name;
		this.address = address;
		this.phone = phone;
	}
	public String name;
	public String class_name;
	public String address;
	public String phone;


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getClass_name() {
	return class_name;
}
public void setClass_name(String class_name) {
	this.class_name = class_name;
}
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}


}
