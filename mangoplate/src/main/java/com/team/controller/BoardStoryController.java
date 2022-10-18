package com.team.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.mangoplate.vo.MangoBoardStoryVO;
import com.team.service.BoardStoryServiceImpl;
import com.team.service.FileServiceImpl;

@Controller
public class BoardStoryController {
	@Autowired
	private BoardStoryServiceImpl boardStoryService;
	
	@Autowired
	private FileServiceImpl fileService;
	
	/**
	 * board_update_check.do : �Խ��� ���� ó��
	 */
	/*
	 * @RequestMapping(value="/board_update_check.do", method=RequestMethod.POST)
	 * public ModelAndView board_update_check(MangoBoardStoryVO vo,
	 * HttpServletRequest request) throws Exception { ModelAndView mv = new
	 * ModelAndView();
	 * 
	 * //���� ������ �����ϴ� ��� �̸��� ������ ���� String old_filename = vo.getSsimage();
	 * 
	 * //������ ���ο� ������ �����ߴ��� Ȯ�� vo = fileService.update_fileCheck(vo); int result =
	 * boardStoryService.getUpdate(vo);
	 * 
	 * if(result == 1){ //���ο� ������ upload ������ ���� fileService.update_filesave(vo,
	 * request, old_filename); mv.setViewName("redirect:/board_list.do"); }else{
	 * mv.setViewName("error_page"); }
	 * 
	 * return mv; }
	 */
	
	/**
	 * boardstory_write_check.do ȣ��
	 */
	@RequestMapping(value="/boardstory_write_check.do", method=RequestMethod.POST)
	public ModelAndView boardstory_write_check(MangoBoardStoryVO vo, HttpServletRequest request) throws Exception {
		ModelAndView mv = new ModelAndView();
		//MangoBoardStoryDAO dao = new MangoBoardStoryDAO();
		vo = fileService.fileCheck(vo);
		int result = boardStoryService.getWriteResult(vo);

		if(result == 1){
			fileService.fileSave(vo, request);
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
