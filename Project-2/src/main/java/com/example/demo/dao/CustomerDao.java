package com.example.demo.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.Customer;

public interface CustomerDao extends JpaRepository<Customer, Integer> {

	public Customer findByUserIdAndPassword(int id, String password);
	
	public Customer findByUserId(int userId);

}
