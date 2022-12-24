package com.ptit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class CartController {
	
	@RequestMapping("/giohang")
	public String cart(Model model, HttpSession session) {
//		System.out.println("gio hang");
//		model.addAttribute("cart", session);
		return "web/giohang";
	}

}
