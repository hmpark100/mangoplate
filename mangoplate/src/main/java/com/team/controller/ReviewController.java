package com.team.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.vo.MangoRestVO;
import com.mangoplate.vo.MangoReviewVO;
import com.team.service.ListServiceImpl;
import com.team.service.ReviewServiceImpl;

@Controller
public class ReviewController {
	
	@Autowired
	private ListServiceImpl listService;
	
	@Autowired
	private ReviewServiceImpl reviewService;
	
	/**
	 * review_write.do : ���� �ۼ� ������ ȭ��
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
	 * review_write_check.do : ���� �ۼ��ϱ�
	 */
	@RequestMapping(value="/review_write_check.do", method = RequestMethod.POST)
	public ModelAndView review_write_check(MangoReviewVO vo, HttpServletRequest request) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		int result = reviewService.getReview(vid);
		
		if(result==1) {
			mv.setViewName("/restaurant/review_content");
		}else {
			mv.setViewName("error_page");
		}
		
		return mv;
	}//review-write-check-end
	
	/**
	 * review_content.do : ���� ���� ȭ��
	 */
	@RequestMapping(value="/review_content.do", method = RequestMethod.GET)
	public String review_content() {
		return "/restaurant/review_content";
	}
}
