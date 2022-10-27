package com.team.controller;

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
public class ReviewController {
	
	@Autowired
	private ListServiceImpl listService;
	
	
	/**
	 * review_write.do : 리뷰 작성 페이지 화면
	 */
	@RequestMapping(value="/review_write.do", method = RequestMethod.GET)
	public ModelAndView review_write(String rid) {
		
		/* System.out.println(rid); */
		ModelAndView mv = new ModelAndView();
		MangoRestVO vo = listService.getContent(rid);
		
		mv.addObject("vo", vo);
		mv.setViewName("/restaurant/review_write");
		
		return mv;
	}
	
	/**
	 * review_write_check.do : 리뷰 작성하기
	 */
	@RequestMapping(value="/review_write_check.do", method = RequestMethod.POST)
	public ModelAndView review_write_check(MangoReviewVO vo) {
		ModelAndView mv = new ModelAndView();
		
		
	}//review-write-check-end
	
	/**
	 * review_content.do : 리뷰 보기 화면
	 */
	@RequestMapping(value="/review_content.do", method = RequestMethod.GET)
	public String review_content() {
		return "/restaurant/review_content";
	}
}
