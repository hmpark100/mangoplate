package com.mangoplate.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mangoplate.vo.MangoBoardStoryVO;

public class MangoBoardStoryDAO extends DBConn {
	//sqlSession�� ����������.
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * insert : �Խñ� ��� - mapper.boardstory.insert
	 */
	public int insert(MangoBoardStoryVO vo) {
		return sqlSession.insert("mapper.boardstory.insert", vo);
	}
}
