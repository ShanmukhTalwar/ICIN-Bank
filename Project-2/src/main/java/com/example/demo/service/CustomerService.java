package com.example.demo.service;

import java.util.List;

import com.example.demo.Customer;

public interface CustomerService {

	public List<Customer> getCustomer();

	public Customer addCustomer(Customer customer);

	public Customer check(int id, String password);
	
	public Customer checkToId(int userId);

}
