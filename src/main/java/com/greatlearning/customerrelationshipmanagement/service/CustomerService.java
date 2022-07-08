package com.greatlearning.customerrelationshipmanagement.service;

import java.util.List;

import com.greatlearning.customerrelationshipmanagement.entity.Customer;




public interface CustomerService {

	List<Customer> findAll();

	Customer findById(int theId);

	void save(Customer thecustomer);

	void deleteById(int theId);


}
