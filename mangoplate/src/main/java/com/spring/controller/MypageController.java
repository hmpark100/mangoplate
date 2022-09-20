package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MypageController {
	/**
	 * mangoplate.do : 마이페이지 
	 */
	@RequestMapping(value="/mangoplate.do", method=RequestMethod.GET)
	public String mangoplate() {
		return "/mangoplate/mangoplate";
	}
}
