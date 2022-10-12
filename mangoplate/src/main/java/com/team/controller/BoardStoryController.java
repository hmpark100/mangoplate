package com.team.controller;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.vo.MangoBoardStoryVO;
import com.team.service.BoardStoryServiceImpl;

@Controller
public class BoardStoryController {
	@Autowired
	private BoardStoryServiceImpl boardStoryService;
	/**
	 * boardstory_write_check.do ȣ��
	 */
	@RequestMapping(value="/boardstory_write_check.do", method=RequestMethod.POST)
	public ModelAndView boardstory_write_check(MangoBoardStoryVO vo) {
		ModelAndView mv = new ModelAndView();
		//MangoBoardStoryDAO dao = new MangoBoardStoryDAO();
		int result = boardStoryService.getWriteResult(vo);

		if(result == 1){
			//mv.setViewName("/board/board_list"); //����X, �ƹ��� �Խñ� ��µ��� X
			mv.setViewName("redirect:/boardstory_list.do"); //DB������ Controller���� �����ϹǷ�, ���ο� ������ ����!!
		}else{
			mv.setViewName("error_page");
		}
		return mv;
	}
	
	/**
	 * boardstory_write.do ȣ��
	 */
	@RequestMapping(value="/boardstory_write.do", method=RequestMethod.GET)
	public String boardstory_write() {
		return "/boardstory/boardstory_write";
	}
	
	/**
	 * boardstory_content.do ȣ��
	 */
	@RequestMapping(value = "/boardstory_content.do", method = RequestMethod.GET)
	public String boardstory_content() {
		return "/boardstory/boardstory_content";
	}
	
	/**
	 * boardstory_list.do ȣ��
	 */
	@RequestMapping(value = "/boardstory_list.do", method = RequestMethod.GET)
	public ModelAndView boardstory_list() {
		ArrayList<MangoBoardStoryVO> list = boardStoryService.getList();
		ModelAndView mv = new ModelAndView();
		mv.addObject("list", list);
		mv.setViewName("/boardstory/boardstory_list");
		return mv;
	}
	
	@RequestMapping(value="/board_detail2.do", method = RequestMethod.GET)
	public String footer2() {
		return "/board/board_detail2";
	}
	
}
