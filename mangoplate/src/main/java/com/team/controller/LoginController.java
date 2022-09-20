package com.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class LoginController {

	/**
	 * loginCheck.do : �α��� ó��
	 *//*
		 * @RequestMapping(value="/loginCheck.do", method=RequestMethod.POST) public
		 * ModelAndView loginCheck(CgvMemberVO vo) { ModelAndView mv = new
		 * ModelAndView();
		 * 
		 * int result = memberService.getLoginResult(vo);
		 * 
		 * if(result == 1){ //�α��� ���� --> session��ü�� key,value �߰� �� index �������� �̵�
		 * mv.addObject("login_result","ok"); mv.setViewName("index"); }else{
		 * mv.addObject("login_result","fail"); mv.setViewName("/login/login"); }
		 * 
		 * return mv; }
		 */

	/**
	 * login.do : �α��� ��
	 */
	@RequestMapping(value = "/login.do", method = RequestMethod.GET)
	public String login() {
		return "/login/login";
	}
}
