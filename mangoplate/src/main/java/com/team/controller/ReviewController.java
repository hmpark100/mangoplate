package com.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.dao.MangoReviewDAO;
import com.mangoplate.vo.MangoRestVO;
import com.mangoplate.vo.MangoReviewVO;

@Controller
public class ReviewController {
	
	
	@RequestMapping(value="/review_write_check.do", method = RequestMethod.POST)
	public String review_Write_check() {
		return "/restaurant/restaurant_list";
	}
	
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
	 * review_content.do : 리뷰 보기 화면
	 */
	@RequestMapping(value="/review_content.do", method = RequestMethod.GET)
	public String review_content() {
		return "/restaurant/review_content";
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
