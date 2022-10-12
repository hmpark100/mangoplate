package com.team.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mangoplate.dao.MangoBoardStoryDAO;
import com.mangoplate.vo.MangoBoardStoryVO;

@Service
public class BoardStoryServiceImpl implements BoardStoryService{
	@Autowired
	private MangoBoardStoryDAO boardStoryDao;
	/**
	 * 조회수 업데이트
	 */
	@Override
	public void getUpdateHits(String sid) {
		//CgvBoardDAO dao = new CgvBoardDAO();
		boardStoryDao.updateHits(sid);
	}
	
	/**
	 * 게시글 상세보기
	 */
	@Override
	public MangoBoardStoryVO getContent(String sid) {
		//CgvBoardDAO dao = new CgvBoardDAO();
		//CgvBoardVO vo = boardDao.select(bid);
		return boardStoryDao.select(sid);
	}
	
	/**
	 * 게시글 전체 리스트
	 */
	@Override
	public ArrayList<MangoBoardStoryVO> getList(){
		//CgvBoardDAO dao = new CgvBoardDAO();
		ArrayList<MangoBoardStoryVO> list = boardStoryDao.select();
		return list;
	}
	
	/**
	 * 게시글 쓰기
	 */
	@Override
	public int getWriteResult(MangoBoardStoryVO vo) {
		//CgvBoardDAO dao = new CgvBoardDAO();
		//int result = dao.insert(vo);
		return boardStoryDao.insert(vo);
	}
}
