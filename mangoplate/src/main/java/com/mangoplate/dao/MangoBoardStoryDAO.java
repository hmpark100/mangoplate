package com.mangoplate.dao;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mangoplate.vo.MangoBoardStoryVO;

public class MangoBoardStoryDAO extends DBConn {
	//sqlSession을 가져오세요.
	//private 데이터타입 객체명
	@Autowired
	private SqlSessionTemplate sqlSession;

	/**
	 * updateHits : 조회수 업데이트 - mapper.board.updatehits
	 */
	public int updateHits(String sid) {
		return sqlSession.update("mapper.boardstory.updatehits", sid);
	}
	
	/**
	 * insert : 게시글 등록 - mapper.boardstory.insert
	 */
	public int insert(MangoBoardStoryVO vo) {
		return sqlSession.insert("mapper.boardstory.insert", vo);
	}

	/**
	 * select : 게시글 상세 보기 - mapper.board.content
	 */
	public MangoBoardStoryVO select(String sid) {
		return sqlSession.selectOne("mapper.boardstory.content" ,sid);
	}
	
	/**
	 * select : 망고스토리 전체 리스트(페이징처리)
	 */
	public ArrayList<MangoBoardStoryVO> select(){
		//파라미터를 Map으로 정의하기
		//Map<String, Integer> param = new HashMap<String, Integer>();
		//param.put("start", startCount);
		//param.put("end", endCount);

		List<MangoBoardStoryVO> list = sqlSession.selectList("mapper.boardstory.list");
		return (ArrayList<MangoBoardStoryVO>)list;
	}
}
