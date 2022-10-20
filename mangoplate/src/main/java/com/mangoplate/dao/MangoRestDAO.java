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
	 * select : ��ȭ �� ����
	 */
	public MangoRestVO select(String mid) {
		return sqlSession.selectOne("mapper.restaurant.content",mid);
	}
	
	/**
	 * select : ��ü ��ȭ ����Ʈ
	 **/
	public ArrayList<MangoRestVO> select(int startCount, int endCount) {
		Map<String,Integer> param = new HashMap<String,Integer>();
		param.put("start", startCount);
		param.put("end",endCount);
		
		List<MangoRestVO> list = sqlSession.selectList("mapper.restaurant.list",param);
		return (ArrayList<MangoRestVO>)list;
	}
	
	/**
	 * totalCount : ��ü ī��Ʈ ��������(����¡ó��)
	 **/
	public int totalCount() {
		return sqlSession.selectOne("mapper.restaurant.totalcount");
	}
	
	/**
	 * insert_file(vo) : �ʿ�����~~
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
	 * insert(vo) : �Ĵ���
	 */
	public int insert(MangoRestVO vo) {		
		return sqlSession.insert("mapper.restaurant.insert",vo);
	}

}
