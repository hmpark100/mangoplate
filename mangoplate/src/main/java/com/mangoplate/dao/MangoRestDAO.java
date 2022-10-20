package com.mangoplate.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mangoplate.vo.MangoRestVO;


public class MangoRestDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * select : 영화 상세 정보
	 */
	public MangoRestVO select(String mid) {
		return sqlSession.selectOne("mapper.restaurant.content",mid);
	}
	
	/**
	 * select : 전체 영화 리스트
	 **/
	public ArrayList<MangoRestVO> select(int startCount, int endCount) {
		Map<String,Integer> param = new HashMap<String,Integer>();
		param.put("start", startCount);
		param.put("end",endCount);
		
		List<MangoRestVO> list = sqlSession.selectList("mapper.restaurant.list",param);
		return (ArrayList<MangoRestVO>)list;
	}
	
	/**
	 * totalCount : 전체 카운트 가져오기(페이징처리)
	 **/
	public int totalCount() {
		return sqlSession.selectOne("mapper.restaurant.totalcount");
	}
	
	/**
	 * insert_file(vo) : 필요없어어~~
	 */
	public int insert_file(MangoRestVO vo) {
		return sqlSession.insert("mapper.restaurant.insertfile",vo);
	}
	
	/**
	 * selectMid() : 
	 */
	public String selectMid() {
		return sqlSession.selectOne("mapper.restaurant.select");
	}
	
	/**
	 * insert(vo) : 식당등록
	 */
	public int insert(MangoRestVO vo) {		
		return sqlSession.insert("mapper.restaurant.insert",vo);
	}

}
