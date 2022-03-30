package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Customer;
import com.example.demo.Transactions;
import com.example.demo.dao.CustomerDao;
import com.example.demo.service.CustomerService;
import com.example.demo.service.TransactionService;

@Controller
public class UserController {
	@Autowired
	public CustomerService service;

	@Autowired
	private TransactionService tservice;

	@Autowired
	public CustomerDao dao;

	private Customer dummycustomer;

	private Customer dummycustomer2;

	@RequestMapping("userLogin")
	public String loginPage() {
		return "userLogin";
	}

	@RequestMapping("adminLogin")
	public String adminLogin() {
		return "adminLogin";
	}

	@RequestMapping("adminCheck")
	public String adminCheck(Model modle, @RequestParam("adminId") int adminId,
			@RequestParam("password") int password) {
		if (adminId == 100 && password == 123)
			return "adminPage";
		else {
			return "incorrectAdmin";
		}
	}

	@RequestMapping("newUser")
	public String newUser() {
		return "newUserPage";
	}

	public void update(int id, String password) {
		Customer customer = this.service.check(id, password);
		customer.setAmount(dummycustomer.getAmount());
		this.service.addCustomer(customer);
	}

	public void update1(int id, String password) {
		Customer customer = this.service.check(id, password);
		customer.setAmount(dummycustomer2.getAmount());
		this.service.addCustomer(customer);
	}

	@RequestMapping(path = "AddUser", method = RequestMethod.GET)
	public String AddedSuccessful(Customer customer, Model model) {
		this.service.addCustomer(customer);
		return "Added";
	}

	@RequestMapping(path = "userLogin1")
	public String login(@RequestParam("userId") int userId, @RequestParam("password") String password, Model model) {
		Customer customer = this.service.check(userId, password);
		if (customer != null) {
			model.addAttribute("customer", customer);
			dummycustomer = customer;
			return "loginSuccess";
		} else {
			return "no";
		}
	}

	@RequestMapping("checkToId")
	public String checkToId(@RequestParam("toId") int toId, Model model) {
		Customer customer = this.service.checkToId(toId);
		if (customer != null) {
			dummycustomer2 = customer;
			model.addAttribute("customer", customer);
			model.addAttribute("dummycustomer", dummycustomer);
			return "sendmoneyform";
		}

		return "nouserid";
	}

	@RequestMapping("transactionform")
	public String transactionform(Transactions transaction, Model model, @RequestParam("amount") long amount) {
		transaction.setFromTrasactionId(dummycustomer.getUserId());
		transaction.setToTransactionId(dummycustomer2.getUserId());
		dummycustomer.setAmount(dummycustomer2.getAmount() - amount);
		dummycustomer2.setAmount(dummycustomer.getAmount() + amount);
		transaction.setFromIdAmount(dummycustomer2.getAmount());
		transaction.setToIdAmmount(dummycustomer.getAmount());
		this.tservice.addTransaction(transaction);
		this.service.addCustomer(dummycustomer);
		this.service.addCustomer(dummycustomer2);
		return "transactiondone";
	}

	@RequestMapping("transactionpage")
	public String transactionpage1(@RequestParam("trans") String trans, Model model) {
		if (trans.equalsIgnoreCase("debit")) {
			return "depositpage1";
		} else if (trans.equalsIgnoreCase("credit")) {
			return "creditpage";
		} else if (trans.equalsIgnoreCase("transactiondetails")) {
			List<Transactions> transactions = new ArrayList<Transactions>();
			transactions = this.tservice.findCreditAndDebit(dummycustomer.getUserId(), dummycustomer.getUserId());
			model.addAttribute("transactions", transactions);
			return "transactiondetails";
		}
		return "";
	}

	@RequestMapping("deposit")
	public String deposit1(@RequestParam("depoAmmount") long depoAmmount, Transactions transaction) {
		transaction.setFromTrasactionId(dummycustomer.getUserId());
		transaction.setFromIdAmount(dummycustomer.getAmount() + depoAmmount);
		this.update(dummycustomer.getUserId(), dummycustomer.getPassword());
		this.tservice.addTransaction(transaction);
		this.service.addCustomer(dummycustomer);
		return "depositSuccess";
	}

	@RequestMapping("debit")
	public String debit1(@RequestParam("debiAmmount") long debiAmmount, Transactions transaction) {
		transaction.setFromTrasactionId(dummycustomer.getUserId());
		transaction.setFromIdAmount(dummycustomer.getAmount() + debiAmmount);
		this.tservice.addTransaction(transaction);
		this.service.addCustomer(dummycustomer);
		return "depositSuccess";
	}

}