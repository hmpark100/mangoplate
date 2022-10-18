package com.team.controller;

import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.vo.MangoMemberVO;
import com.team.service.MemberServiceImpl;
import com.team.service.PageServiceImpl;

@Controller
public class AdminController {

	@Autowired
	private PageServiceImpl pageService;
	
	@Autowired
	private MemberServiceImpl memberService;
	
	//admin_member
	/**
	 * admin_member_content.do
	 */
	@RequestMapping(value = "/admin_member_content.do", method = RequestMethod.GET)
	public ModelAndView admin_member_content(String id) {
	ModelAndView mv = new ModelAndView();
	MangoMemberVO vo =memberService.getMemberContent(id);
	String address = vo.getAddr1()+" "+ vo.getAddr2();
	
	mv.addObject("vo", vo);
	mv.addObject("address", address);
	mv.setViewName("/admin/admin_member/admin_member_content");
	return mv;
	}
	
	/**
	 * admin_member_list.do : 회원 전체 리스트
	 */
	@RequestMapping(value = "/admin_member_list.do", method = RequestMethod.GET)
	public ModelAndView admin_member_list(String rpage) {
		ModelAndView mv = new ModelAndView();
		
		Map<String, Integer> param = pageService.getPageResult(rpage, "member", memberService);
		ArrayList<MangoMemberVO> list = memberService.getMemberList(param.get("startCount"),param.get("endCount"));
		
		mv.addObject("list",list);
		mv.addObject("dbCount",param.get("dbCount"));
		mv.addObject("pageSize",param.get("pageSize"));
		mv.addObject("rpage",param.get("rpage"));
		mv.setViewName("/admin/admin_member/admin_member_list");
		
		return mv;
	}
	
	/**
	 * admin.do : 관리자 페이지 
	 */
	@RequestMapping(value="/admin.do", method=RequestMethod.GET)
	public String admin() {
		return "/admin/admin";
	}
	
	
	/////////////////////////////////////////////////////////////////////////
	//            notice         /        eatdeal
	/////////////////////////////////////////////////////////////////////////
	
	//admin_notice
	/**
	 * admin_notice_content.do
	 */
	@RequestMapping(value = "/admin_notice_content.do", method = RequestMethod.GET)
	public String admin_notice_content() {
		return "/admin/admin_notice/admin_notice_content";
	}
	
	//admin_eatdeal
}
