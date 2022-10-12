package com.spring.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminController {

	
	//admin_member
	/**
	 * admin_member_content.do
	 */
	@RequestMapping(value = "/admin_member_content.do", method = RequestMethod.GET)
	public String admin_member_content() {
		return "/admin/admin_member/admin_member_content";
	}
	
	/**
	 * admin_member_list.do
	 */
	@RequestMapping(value = "/admin_member_list.do", method = RequestMethod.GET)
	public String admin_member_list() {
		return "/admin/admin_member/admin_member_list";
	}
	
	/**
	 * admin.do : ������ ������ 
	 */
	@RequestMapping(value="/admin.do", method=RequestMethod.GET)
	public String admin() {
		return "/admin/admin";
	}
}
