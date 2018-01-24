package com.example.demo.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.example.demo.dto.Ticket;
import com.example.demo.dto.User;
import com.example.demo.utils.PageUtil;
@Mapper
public interface UserDao {

	User login(User user);

	void sign(User user);

	List<Ticket> ticket(@Param("page")PageUtil page);

	void newup(User user);

	void mon(User user);

	int totalCount();

	Ticket cart(Ticket ticket);

}
