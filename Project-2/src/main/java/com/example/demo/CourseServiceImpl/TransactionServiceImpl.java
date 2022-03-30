package com.example.demo.CourseServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Transactions;
import com.example.demo.dao.TransactionDao;
import com.example.demo.service.TransactionService;

import java.util.List;

@Service
public class TransactionServiceImpl implements TransactionService {

	@Autowired
	private TransactionDao transactionDao;

	@Override
	public Transactions addTransaction(Transactions transaction) {

		return this.transactionDao.save(transaction);
	}

	@Override
	public List<Transactions> findTransactions() {
		return this.transactionDao.findAll();
	}

	@Override
	public List<Transactions> findCreditAndDebit(int toId, int fromId) {
		return this.transactionDao.findByToTransactionIdAndFromTrasactionId(toId, fromId);
	}

}
