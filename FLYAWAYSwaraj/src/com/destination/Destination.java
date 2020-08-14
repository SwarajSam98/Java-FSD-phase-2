package com.destination;

public class Destination {
	private int id;
	private String Country;
	public Destination(int id, String country) {
		super();
		this.id = id;
		Country = country;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getCountry() {
		return Country;
	}
	public void setCountry(String country) {
		Country = country;
	}
	

}
