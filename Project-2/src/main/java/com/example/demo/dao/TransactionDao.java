package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Transactions;


public interface TransactionDao extends JpaRepository<Transactions, Integer> {
	
	public List<Transactions> findByToTransactionIdAndFromTrasactionId(int toTransactionId,int fromTrasactionId);
	
}
