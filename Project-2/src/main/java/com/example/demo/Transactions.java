package com.example.demo;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Transactions {

	@Id
	private int transactionId;
	private int toTransactionId;
	private int fromTrasactionId;
	private String date;
	private long fromIdAmount;
	private long toIdAmmount;
	public Transactions(int transactionId, int toTransactionId, int fromTrasactionId, String date, long fromIdAmount,
			long toIdAmmount) {
		super();
		this.transactionId = transactionId;
		this.toTransactionId = toTransactionId;
		this.fromTrasactionId = fromTrasactionId;
		this.date = date;
		this.fromIdAmount = fromIdAmount;
		this.toIdAmmount = toIdAmmount;
	}
	public Transactions() {
		super();
	}
	public int getTransactionId() {
		return transactionId;
	}
	public void setTransactionId(int transactionId) {
		this.transactionId = transactionId;
	}
	public int getToTransactionId() {
		return toTransactionId;
	}
	public void setToTransactionId(int toTransactionId) {
		this.toTransactionId = toTransactionId;
	}
	public int getFromTrasactionId() {
		return fromTrasactionId;
	}
	public void setFromTrasactionId(int fromTrasactionId) {
		this.fromTrasactionId = fromTrasactionId;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public long getFromIdAmount() {
		return fromIdAmount;
	}
	public void setFromIdAmount(long fromIdAmount) {
		this.fromIdAmount = fromIdAmount;
	}
	public long getToIdAmmount() {
		return toIdAmmount;
	}
	public void setToIdAmmount(long toIdAmmount) {
		this.toIdAmmount = toIdAmmount;
	}
	
	

}
