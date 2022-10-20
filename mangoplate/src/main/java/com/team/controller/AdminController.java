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
		 * admin_restaurant_regist_check.do : 영화 등록 처리
		 */

		/*
		 * @RequestMapping(value="/admin_restaurant_regist_check.do",
		 * method=RequestMethod.POST) public ModelAndView
		 * admin_restaurant_regist_check(MangoRestVO vo, HttpServletRequest request)
		 * throws Exception { ModelAndView mv = new ModelAndView();
		 * 
		 * //파일을 선택했는지 체크 vo = fileService.multiFileCheck(vo);
		 * 
		 * //DB 연동 //1. mg_detail 테이블 저장 --> mid 생성 int result =
		 * restaurantService.getInsert(vo);
		 * 
		 * if(result == 1) { //2. mid값을 가져오기 String mid = restaurantService.getMid();
		 * 
		 * //3. mid를 레퍼런스하는 cgv_movie_file 테이블 저장 vo.setMid(mid); int result2 =
		 * restaurantService.getInsertFile(vo);
		 * 
		 * if(result2 ==1) { //파일을 upload에 저장 fileService.multiFileSave(vo, request); }
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
