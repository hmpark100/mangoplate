package com.mangoplate.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mangoplate.vo.MangoBoardStoryVO;
import com.mangoplate.vo.MangoRestVO;

public class MangoListDAO extends DBConn{
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * select(String rcategory) : 상세리스트 출력
	 */
	public ArrayList<MangoRestVO> select(String rcategory) {
		List<MangoRestVO> list = sqlSession.selectList("mapper.list.listAll");
		return (ArrayList<MangoRestVO>)list;
	}
}
