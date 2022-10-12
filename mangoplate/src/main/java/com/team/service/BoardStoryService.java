package com.team.service;

import java.util.ArrayList;

import com.mangoplate.vo.CgvBoardVO;
import com.mangoplate.vo.MangoBoardStoryVO;

public interface BoardStoryService {

	/**
	 * �Խñ� ����
	 */
	int getWriteResult(MangoBoardStoryVO vo);

	/**
	 * �Խñ� ��ü ����Ʈ
	 */
	ArrayList<MangoBoardStoryVO> getList();

	/**
	 * ��ȸ�� ������Ʈ
	 */
	void getUpdateHits(String sid);

	/**
	 * �Խñ� �󼼺���
	 */
	MangoBoardStoryVO getContent(String sid);

}
