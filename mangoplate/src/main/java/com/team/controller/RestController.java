package com.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class RestController {

	@RequestMapping(value="/restaurant_list.do", method = RequestMethod.GET)
	public String list() {
		return "/restaurant/restaurant_list";
	}
	
	@RequestMapping(value="/restaurant_content.do", method = RequestMethod.GET)
	public String content() {
		return "/restaurant/restaurant_content";
	}
	
	@RequestMapping(value="/restaurant_detail.do", method = RequestMethod.GET)
	public String content3() {
		return "/restaurant/restaurant_detail";
	}
	
	@RequestMapping(value="/review.do", method = RequestMethod.GET)
	public String company3() {
		return "/restaurant/review";
	}
	
	@RequestMapping(value="/company.do", method = RequestMethod.GET)
	public String company() {
		return "/company/company";
	}
	
}
