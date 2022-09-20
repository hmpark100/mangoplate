package com.team.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class BoardStoryController {
	/**
	 * boardstory_write.do 호출
	 */
	@RequestMapping(value="/boardstory_write.do", method=RequestMethod.GET)
	public String boardstory_write() {
		return "/boardstory/boardstory_write";
	}
	
	/**
	 * boardstory_content.do 호출
	 */
	@RequestMapping(value = "/boardstory_content.do", method = RequestMethod.GET)
	public String boardstory_content() {
		return "/boardstory/boardstory_content";
	}
	
	/**
	 * boardstory_list.do 호출
	 */
	@RequestMapping(value = "/boardstory_list.do", method = RequestMethod.GET)
	public String boardstory_list() {
		return "/boardstory/boardstory_list";
	}

}
