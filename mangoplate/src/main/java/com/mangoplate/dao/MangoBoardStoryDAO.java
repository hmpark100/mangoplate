package com.mangoplate.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mangoplate.vo.MangoBoardVO;

public class MangoBoardStoryDAO extends DBConn {
	//sqlSession을 가져오세요.
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * insert : 게시글 등록 - mapper.board.insert
	 */
	public int insert(MangoBoardVO vo) {
		return sqlSession.insert("mapper.boardstory.insert", vo);
	}
}
