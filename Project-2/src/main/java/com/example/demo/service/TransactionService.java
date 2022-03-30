package com.example.demo.service;

import java.util.List;

import com.example.demo.Transactions;

public interface TransactionService {
	
	public Transactions addTransaction(Transactions transaction);
	
	public List<Transactions> findTransactions();
	
	public List<Transactions> findCreditAndDebit(int toId,int fromId);

}
