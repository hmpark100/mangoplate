package com.team.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.vo.MangoMemberVO;
import com.team.service.MemberServiceImpl;

@Controller
public class MypageController {
	
	@Autowired
	private MemberServiceImpl memberService;
	
	/**
	 * mypage.do : 마이페이지 
	 */
	/*
	 * @RequestMapping(value="/mypage.do", method=RequestMethod.GET) public String
	 * mypage() { return "/mypage/mypage"; }
	 */
	
	/**
	 * mypage.do : 마이페이지
	 */
	@RequestMapping(value = "/mypage.do", method = RequestMethod.GET)
	public ModelAndView mypage(String id) {
		ModelAndView mv = new ModelAndView();
		MangoMemberVO vo = memberService.getMemberContent(id);
		if (vo != null) {
			mv.addObject("vo", vo);
		}
		mv.setViewName("/mypage/mypage");
		return mv;
	}
	

}
