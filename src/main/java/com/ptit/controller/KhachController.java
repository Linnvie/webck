package com.ptit.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class KhachController {
	
	@RequestMapping (value ="/trangchu", method=RequestMethod.GET)
	public String showIndex() {
//		System.out.println("trang chu");
		return "web/trangchu";
	}

}
