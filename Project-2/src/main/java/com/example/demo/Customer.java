package com.example.demo;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Customer {

	@Id
	private int userId;

	private String firstName;
	private String password;
	private String secondName;
	private String lastName;
	private String dateOfBirth;
	private String address;
	private String panNo;
	private String adharNo;
	private long amount;

	public Customer() {
		super();
	}

	public Customer(int userId, String firstName, String password, String secondName, String lastName,
			String dateOfBirth, String address, String panNo, String adharNo, long amount) {
		super();
		this.userId = userId;
		this.firstName = firstName;
		this.password = password;
		this.secondName = secondName;
		this.lastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.address = address;
		this.panNo = panNo;
		this.adharNo = adharNo;
		this.amount = amount;
	}

	public long getAmount() {
		return amount;
	}

	public void setAmount(long amount) {
		this.amount = amount;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getFirstName() {
		return firstName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getSecondName() {
		return secondName;
	}

	public void setSecondName(String secondName) {
		this.secondName = secondName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPanNo() {
		return panNo;
	}

	public void setPanNo(String panNo) {
		this.panNo = panNo;
	}

	public String getAdharNo() {
		return adharNo;
	}

	public void setAdharNo(String adharNo) {
		this.adharNo = adharNo;
	}

	@Override
	public String toString() {
		return "Customer [userId=" + userId + ", firstName=" + firstName + ", secondName=" + secondName + ", lastName="
				+ lastName + ", dateOfBirth=" + dateOfBirth + ", address=" + address + ", panNo=" + panNo + ", adharNo="
				+ adharNo + "]";
	}

}
