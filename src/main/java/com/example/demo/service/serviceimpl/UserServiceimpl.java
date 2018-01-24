package com.example.demo.service.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.dao.UserDao;
import com.example.demo.dto.Ticket;
import com.example.demo.dto.User;
import com.example.demo.service.UserService;
import com.example.demo.utils.PageUtil;

@Service
public class UserServiceimpl implements UserService {

	@Autowired
	private UserDao userDao;
	
	@Override
	public User login(User user) {
		// TODO Auto-generated method stub
		return userDao.login(user);
	}

	@Override
	public void sign(User user) {
		// TODO Auto-generated method stub
		userDao.sign(user);
	}

	@Override
	public List<Ticket> ticket(PageUtil page) {
		// TODO Auto-generated method stub
		return userDao.ticket(page);
	}

	@Override
	public void newup(User user) {
		// TODO Auto-generated method stub
		userDao.newup(user);
	}

	@Override
	public void mon(User user) {
		// TODO Auto-generated method stub
		userDao.mon(user);
	}

	@Override
	public int totalCount() {
		// TODO Auto-generated method stub
		return userDao.totalCount();
	}

	@Override
	public Ticket  cart(Ticket ticket) {
		// TODO Auto-generated method stub
		return userDao.cart(ticket);
	}

}
