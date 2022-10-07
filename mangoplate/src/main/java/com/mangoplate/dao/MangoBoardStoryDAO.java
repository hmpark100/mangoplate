package com.mangoplate.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mangoplate.vo.MangoBoardVO;

public class MangoBoardStoryDAO extends DBConn {
	//sqlSession�� ����������.
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * insert : �Խñ� ��� - mapper.board.insert
	 */
	public int insert(MangoBoardVO vo) {
		return sqlSession.insert("mapper.boardstory.insert", vo);
	}
}
