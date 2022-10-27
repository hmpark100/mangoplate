package com.mangoplate.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mangoplate.vo.MangoReviewVO;

public class MangoReviewDAO{
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * insert : �Խñ� ���
	 */
	public int insert(MangoReviewVO vo) {
	
		return sqlSession.insert("mapper.review.regist", vo);
	}
}
