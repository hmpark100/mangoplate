package com.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.dao.MangoRestDAO;
import com.mangoplate.vo.MangoRestVO;

@Controller
public class RestController {

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
	public String restaurant_content() {
		return "/restaurant/restaurant_content";
	}
	
	/**
	 * restaurant_detail.do : 식당 상세페이지 화면
	 */
	@RequestMapping(value="/restaurant_detail.do", method = RequestMethod.GET)
	public String restaurant_detail() {
		return "/restaurant/restaurant_detail";
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
	public ModelAndView review_write_check(MangoRestVO vo) {
		ModelAndView mv = new ModelAndView();
		MangoRestDAO dao = new MangoRestDAO();
		int result = dao.insert(vo);
		
		if(result == 1){
			mv.setViewName("redirect:/review_content.do"); //DB연동을 Controller에서 진행하므로, 새로운 연결을 수행!!
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
	}
	
}
