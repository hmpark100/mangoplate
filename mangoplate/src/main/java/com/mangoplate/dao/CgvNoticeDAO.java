package com.mangoplate.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mangoplate.vo.CgvNoticeVO;

//Repository�� ���
@Repository
public class CgvNoticeDAO{
	
	//sqlSession ��ü ��������
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	/**
	 * totalCount : ��ü ī��Ʈ ��������(����¡ ó��)
	 */
	public int totalCount() {
		return sqlSession.selectOne("mapper.notice.totalcount");
	}
	
	/**
	 * delete : �������� ���� 
	 */
	public int delete(String nid) {
		return sqlSession.delete("mapper.notice.delete", nid);
	}
	/**
	 * update : �������� ������Ʈ 
	 */
	public int update(CgvNoticeVO vo) {
		return sqlSession.update("mapper.notice.update", vo);
	}
	
	/**
	 * updateHits : ��ȸ�� ������Ʈ 
	 */
	public void updateHits(String nid) {
		sqlSession.update("mapper.notice.updatehits", nid);
	}
	
	/**
	 * select : �������� �󼼺���
	 */
	public CgvNoticeVO select(String nid) {
		return sqlSession.selectOne("mapper.notice.content",nid);
	}
	
	
	/**
	 * select : ��ü �������� ����Ʈ
	 */
	public ArrayList<CgvNoticeVO> select(int startCount, int endCount){
		Map<String, Integer> param = new HashMap<String, Integer>();
		param.put("start", startCount);
		param.put("end", endCount);
		
		List<CgvNoticeVO> list = sqlSession.selectList("mapper.notice.list", param);
		return (ArrayList<CgvNoticeVO>)list;
	}
	
	
	/**
	 * insert : �������� ���
	 */
	public int insert(CgvNoticeVO vo) {
		return sqlSession.insert("mapper.notice.insert", vo);
	}
}