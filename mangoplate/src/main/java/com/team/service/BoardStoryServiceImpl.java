package com.team.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mangoplate.dao.MangoBoardStoryDAO;
import com.mangoplate.vo.MangoBoardStoryVO;

@Service
public class BoardStoryServiceImpl implements BoardStoryService{
	@Autowired
	private MangoBoardStoryDAO boardstoryDao;
	
	/**
	 * 게시글 쓰기
	 */
	@Override
	public int getWriteResult(MangoBoardStoryVO vo) {
		//CgvBoardDAO dao = new CgvBoardDAO();
		//int result = dao.insert(vo);
		return boardstoryDao.insert(vo);
	}
	
}
