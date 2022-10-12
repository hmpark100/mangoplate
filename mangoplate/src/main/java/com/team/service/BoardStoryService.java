package com.team.service;

import java.util.ArrayList;

import com.mangoplate.vo.CgvBoardVO;
import com.mangoplate.vo.MangoBoardStoryVO;

public interface BoardStoryService {

	/**
	 * 게시글 쓰기
	 */
	int getWriteResult(MangoBoardStoryVO vo);

	/**
	 * 게시글 전체 리스트
	 */
	ArrayList<MangoBoardStoryVO> getList();

	/**
	 * 조회수 업데이트
	 */
	void getUpdateHits(String sid);

	/**
	 * 게시글 상세보기
	 */
	MangoBoardStoryVO getContent(String sid);

}
