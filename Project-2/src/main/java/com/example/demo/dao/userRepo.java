package com.example.demo.dao;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.Customer;

public interface userRepo extends CrudRepository<Customer, Integer>{
	

}
