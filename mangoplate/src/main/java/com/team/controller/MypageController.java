package com.team.controller;

import javax.servlet.http.HttpSession;

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
	  @RequestMapping(value="/mypage.do", method=RequestMethod.GET) 
	  public ModelAndView mypage(HttpSession session) { 
		  ModelAndView mv = new ModelAndView();
		  String id = (String)session.getAttribute("sid");
		  MangoMemberVO vo = memberService.getMemberMypage(id);
		  mv.addObject("vo",vo);
		  mv.setViewName("/mypage/mypage");
		  //System.out.println(id);
		  return mv; 
	  }

}
