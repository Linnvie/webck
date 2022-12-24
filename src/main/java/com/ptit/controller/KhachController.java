package com.ptit.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

public class KhachController {
	
	@RequestMapping (value ="/trangchu", method=RequestMethod.GET)
	public String showIndex() {
		return "web/trangchu";
	}
	
	@RequestMapping("/giohang")
	public String cart() {
		return "web/giohang";
	}

}
