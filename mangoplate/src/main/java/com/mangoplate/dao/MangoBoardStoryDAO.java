package com.mangoplate.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mangoplate.vo.MangoBoardStoryVO;

public class MangoBoardStoryDAO extends DBConn {
	//sqlSession을 가져오세요.
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * insert : 게시글 등록 - mapper.boardstory.insert
	 */
	public int insert(MangoBoardStoryVO vo) {
		return sqlSession.insert("mapper.boardstory.insert", vo);
	}
}
