package com.example.demo.service;

import java.util.List;

import com.example.demo.dto.Ticket;
import com.example.demo.dto.User;
import com.example.demo.utils.PageUtil;

public interface UserService {

	User login(User user);

	void sign(User user);

	List<Ticket> ticket(PageUtil page);

	void newup(User user);

	void mon(User user);

	int totalCount();

	Ticket cart(Ticket ticket);



}
