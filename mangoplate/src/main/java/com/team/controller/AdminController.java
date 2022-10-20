package com.team.controller;

import java.util.ArrayList;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.vo.MangoMemberVO;
import com.mangoplate.vo.MangoRestVO;
import com.team.service.MemberServiceImpl;
import com.team.service.PageServiceImpl;

@Controller
public class AdminController {

	@Autowired
	private PageServiceImpl fileService;
	
	@Autowired
	private PageServiceImpl pageService;
	
	@Autowired
	private MemberServiceImpl memberService;
	
	@Autowired
	private MemberServiceImpl restaurantService;
	
	//admin_restaurant
		/**
		 * admin_restaurant_regist_check.do : ��ȭ ��� ó��
		 */

		/*
		 * @RequestMapping(value="/admin_restaurant_regist_check.do",
		 * method=RequestMethod.POST) public ModelAndView
		 * admin_restaurant_regist_check(MangoRestVO vo, HttpServletRequest request)
		 * throws Exception { ModelAndView mv = new ModelAndView();
		 * 
		 * //������ �����ߴ��� üũ vo = fileService.multiFileCheck(vo);
		 * 
		 * //DB ���� //1. mg_detail ���̺� ���� --> mid ���� int result =
		 * restaurantService.getInsert(vo);
		 * 
		 * if(result == 1) { //2. mid���� �������� String mid = restaurantService.getMid();
		 * 
		 * //3. mid�� ���۷����ϴ� cgv_movie_file ���̺� ���� vo.setMid(mid); int result2 =
		 * restaurantService.getInsertFile(vo);
		 * 
		 * if(result2 ==1) { //������ upload�� ���� fileService.multiFileSave(vo, request); }
		 * 
		 * }
		 * 
		 * mv.setViewName("redirect:/admin_restaurant_list.do");
		 * 
		 * return mv; }
		 */
		/**
		 * admin_restaurant_regist.do
		 */
		@RequestMapping(value = "/admin_restaurant_regist.do", method = RequestMethod.GET)
		public ModelAndView admin_restaurant_regist() {
			ModelAndView mv = new ModelAndView();
			
			mv.setViewName("/admin/admin_restaurant/admin_restaurant_regist");
			return mv;
		}
		
		/**
		 * admin_restaurant_list.do
		 */
		@RequestMapping(value = "/admin_restaurant_list.do", method = RequestMethod.GET)
		public ModelAndView admin_restaurant_list() {
			ModelAndView mv = new ModelAndView();
			
			mv.setViewName("/admin/admin_restaurant/admin_restaurant_list");
			return mv;
		}
		
	//admin_member
	/**
	 * admin_member_content.do
	 */
	@RequestMapping(value = "/admin_member_content.do", method = RequestMethod.GET)
	public ModelAndView admin_member_content(String id) {
	ModelAndView mv = new ModelAndView();
	MangoMemberVO vo =memberService.getMemberContent(id);
	String address = vo.getAddr1()+" "+ vo.getAddr2();
	String email = vo.getEmail1()+"@"+ vo.getEmail2();
	mv.addObject("vo", vo);
	mv.addObject("address", address);
	mv.addObject("email", email);
	mv.setViewName("/admin/admin_member/admin_member_content");
	return mv;
	}
	
	/**
	 * admin_member_list.do : ȸ�� ��ü ����Ʈ
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
	 * admin.do : ������ ������ 
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
