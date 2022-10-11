package com.team.service;

import java.util.ArrayList;

import com.mangoplate.vo.CgvBoardVO;
import com.mangoplate.vo.MangoBoardStoryVO;

public interface BoardStoryService {

	/**
	 * 게시글 쓰기
	 */
	int getWriteResult(MangoBoardStoryVO vo);

}
