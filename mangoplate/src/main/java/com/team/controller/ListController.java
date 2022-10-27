package com.team.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.dao.MangoReviewDAO;
import com.mangoplate.vo.MangoRestVO;
import com.mangoplate.vo.MangoReviewVO;
import com.team.service.ListServiceImpl;

@Controller
public class ListController {

	@Autowired
	private ListServiceImpl listService;
	
	/**
	 * restaurant_list.do : 맛집리스트 화면
	 */
	@RequestMapping(value="/restaurant_list.do", method = RequestMethod.GET)
	public String restaurant_list() {
		return "/restaurant/restaurant_list";
	}
	
	/**
	 * restaurant_content.do : 맛집 세부리스트 화면
	 */
	@RequestMapping(value="/restaurant_content.do", method = RequestMethod.GET)
	public ModelAndView restaurant_content(String rcategory) {
		ModelAndView mv = new ModelAndView();
		ArrayList<MangoRestVO> list = listService.getList(rcategory);
		
		mv.addObject("rcategory", rcategory);
		mv.addObject("list", list);
		mv.setViewName("/restaurant/restaurant_content");
		
		return mv;
	}
	
	/**
	 * restaurant_detail.do : 식당 상세페이지 화면
	 */
	@RequestMapping(value="/restaurant_detail.do", method = RequestMethod.GET)
	public ModelAndView restaurant_detail(String rid) {
		ModelAndView mv = new ModelAndView();
		MangoRestVO vo = listService.getContent(rid);
		System.out.println(vo.getRname());
		
		mv.addObject("vo", vo);
		mv.setViewName("/restaurant/restaurant_detail");
		
		return mv;
	}
	
	/**
	 * review_write.do : 리뷰 작성 페이지 화면
	 */
	@RequestMapping(value="/review_write.do", method = RequestMethod.GET)
	public String review_write() {
		return "/restaurant/review_write";
	}
	
	/**
	 * review_content.do : 리뷰 보기 화면
	 */
	@RequestMapping(value="/review_content.do", method = RequestMethod.GET)
	public String review_content() {
		return "/restaurant/review_content";
	}
	
	/**
	 * company.do : 회사 소개 화면
	 */
	@RequestMapping(value="/company.do", method = RequestMethod.GET)
	public String company() {
		return "/company/company";
	}
	
	/**
	 * review_write_check.do : 리뷰 작성하기
	 */
	@RequestMapping(value="/review_write_check.do", method = RequestMethod.POST)
	public ModelAndView review_write_check(MangoReviewVO vo) {
		ModelAndView mv = new ModelAndView();
		MangoReviewDAO dao = new MangoReviewDAO();
		int result = dao.insert(vo);
		
		if(result == 1){
			mv.setViewName("redirect:/review_content.do"); //DB연동을 Controller에서 진행하므로, 새로운 연결을 수행!!
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
		
	}//review-write-check-end
	
}
