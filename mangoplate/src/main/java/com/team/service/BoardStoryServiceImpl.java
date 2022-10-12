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
	 * ��ȸ�� ������Ʈ
	 */
	@Override
	public void getUpdateHits(String sid) {
		//CgvBoardDAO dao = new CgvBoardDAO();
		boardStoryDao.updateHits(sid);
	}
	
	/**
	 * �Խñ� �󼼺���
	 */
	@Override
	public MangoBoardStoryVO getContent(String sid) {
		//CgvBoardDAO dao = new CgvBoardDAO();
		//CgvBoardVO vo = boardDao.select(bid);
		return boardStoryDao.select(sid);
	}
	
	/**
	 * �Խñ� ��ü ����Ʈ
	 */
	@Override
	public ArrayList<MangoBoardStoryVO> getList(){
		//CgvBoardDAO dao = new CgvBoardDAO();
		ArrayList<MangoBoardStoryVO> list = boardStoryDao.select();
		return list;
	}
	
	/**
	 * �Խñ� ����
	 */
	@Override
	public int getWriteResult(MangoBoardStoryVO vo) {
		//CgvBoardDAO dao = new CgvBoardDAO();
		//int result = dao.insert(vo);
		return boardStoryDao.insert(vo);
	}
}
