package com.example.demo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.example.demo.dto.Ticket;
import com.example.demo.dto.User;
import com.example.demo.service.UserService;
import com.example.demo.utils.PageUtil;

@Controller
@RequestMapping("/user")
public class UserController {

	@Autowired
	private UserService userService;
	
	@RequestMapping("/tolist")
	public String tolist() {
		return "list";
	}
	
	@RequestMapping("/login")
	public String login(HttpServletRequest request,User user) {
		
		User us = userService.login(user);
		if(user==null) {
			return "error";
		}
		HttpSession session = request.getSession();
		session.setAttribute("us", us);
		return "list";
	}
	
	@RequestMapping("/loginoff")
	public String loginoff(HttpServletRequest request) {
		request.getSession().removeAttribute("us");
		return "list";
	}
	
	@RequestMapping("/sign")
	public String sign(HttpServletRequest request,User user) {
		 java.util.Calendar c=java.util.Calendar.getInstance();      
	        java.text.SimpleDateFormat f=new java.text.SimpleDateFormat("yyyy年MM月dd日hh时mm分ss秒");      
	        user.setRegTime(f.format(c.getTime()));
	        System.out.println(user);
		userService.sign(user);
		HttpSession session = request.getSession();
		session.setAttribute("us", user);
		return "list";
	}
	@RequestMapping("/ticket")
	public String ticket(HttpServletRequest request,String startTime,String currentPage,PageUtil page) {
		int totalcount = userService.totalCount();
		page = new PageUtil(currentPage,totalcount, 4);
		List <Ticket> ticket = userService.ticket(page);
		request.setAttribute("ticket", ticket);
		request.setAttribute("page", page);
		return "tick";
	}
	@RequestMapping("/ti")
	public String ti() {
		return "list";
	}
	
	@RequestMapping("/xi")
	public String xi() {
		return "xi";
	}
	
	@RequestMapping("/shop")
	public String shop() {
		return "shop";
	}
	
	@RequestMapping("/newup")
	public String newup(User user,HttpServletRequest request) {
		userService.newup(user);
		HttpSession session = request.getSession();
		session.setAttribute("us", user);
		return "xi";
	}
	
	@RequestMapping("/mon")
	public String mon(User user,Double mon,HttpServletRequest request) {
		double b = user.getBalance();
			user.setBalance(b+mon);
			userService.mon(user);
			HttpSession session = request.getSession();
			 User us = (User) session.getAttribute("us");
			 us.setBalance(user.getBalance());
			 session.setAttribute("us", us);
			return "xi";
	}
	
	
	@RequestMapping("/cart")
	public String cart(Ticket ticket, int b,HttpServletRequest request) {
		int random = 1+(int) (Math.random()*50);
		 String id = random+"";                                                             
		Ticket ti = userService.cart(ticket);
		HttpSession session = request.getSession();
		ti.setBalance(b);
		ArrayList<Ticket> list = new ArrayList<Ticket>();
		list.add(ti);
		session.setAttribute("cart", list);
		return "redirect:ticket";
	}
	
	@RequestMapping("/aaa")
	public String aaa(HttpServletRequest request) {
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("cart"));
		return "redirect:ticket";
	}
}
