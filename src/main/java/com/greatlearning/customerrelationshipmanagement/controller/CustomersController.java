package com.greatlearning.customerrelationshipmanagement.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.greatlearning.customerrelationshipmanagement.entity.Customer;
import com.greatlearning.customerrelationshipmanagement.service.CustomerService;

@Controller
@RequestMapping("/customers")
public class CustomersController {

	@Autowired
	private CustomerService customerService;

	@RequestMapping("/list")
	public String handleListCustomers(Model theModel) {

		List<Customer> customers = customerService.findAll();

		theModel.addAttribute("customers", customers);

		return "customers-lister";
	}

}
