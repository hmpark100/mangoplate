package com.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.dao.MangoReviewDAO;
import com.mangoplate.vo.MangoReviewVO;

@Controller
public class RestController {

	/**
	 * restaurant_list.do : ��������Ʈ ȭ��
	 */
	@RequestMapping(value="/restaurant_list.do", method = RequestMethod.GET)
	public String restaurant_list() {
		return "/restaurant/restaurant_list";
	}
	
	/**
	 * restaurant_content.do : ���� ���θ���Ʈ ȭ��
	 */
	@RequestMapping(value="/restaurant_content.do", method = RequestMethod.GET)
	public String restaurant_content() {
		return "/restaurant/restaurant_content";
	}
	
	/**
	 * restaurant_detail.do : �Ĵ� �������� ȭ��
	 */
	@RequestMapping(value="/restaurant_detail.do", method = RequestMethod.GET)
	public String restaurant_detail() {
		return "/restaurant/restaurant_detail";
	}
	
	/**
	 * review_write.do : ���� �ۼ� ������ ȭ��
	 */
	@RequestMapping(value="/review_write.do", method = RequestMethod.GET)
	public String review_write() {
		return "/restaurant/review_write";
	}
	
	/**
	 * review_content.do : ���� ���� ȭ��
	 */
	@RequestMapping(value="/review_content.do", method = RequestMethod.GET)
	public String review_content() {
		return "/restaurant/review_content";
	}
	
	/**
	 * company.do : ȸ�� �Ұ� ȭ��
	 */
	@RequestMapping(value="/company.do", method = RequestMethod.GET)
	public String company() {
		return "/company/company";
	}
	
	/**
	 * review_write_check.do : ���� �ۼ��ϱ�
	 */
	@RequestMapping(value="/review_write_check.do", method = RequestMethod.POST)
	public ModelAndView review_write_check(MangoReviewVO vo) {
		ModelAndView mv = new ModelAndView();
		MangoReviewDAO dao = new MangoReviewDAO();
		int result = dao.insert(vo);
		
		if(result == 1){
			mv.setViewName("redirect:/review_content.do"); //DB������ Controller���� �����ϹǷ�, ���ο� ������ ����!!
		}else{
			mv.setViewName("error_page");
		}
		
		return mv;
		
	}//review-write-check-end
	
}