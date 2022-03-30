package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.Transactions;
import com.example.demo.service.TransactionService;

@Controller
public class TransactionController {
	
	@Autowired
	private TransactionService service;
	
	
	@RequestMapping("getTransactions")
	public String getTransactions(Model model) {
		List<Transactions> transactionList = new ArrayList<>();
		transactionList = this.service.findTransactions();
		model.addAttribute("transactionList",transactionList);
		return "getTransactions";
	}
	
	@RequestMapping("sendMoney")
	public String addTransaction(Transactions transaction,Model model) {
		this.service.addTransaction(transaction);
		return "hello";
	}

}
