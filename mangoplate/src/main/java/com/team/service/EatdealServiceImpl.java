package com.team.service;

import java.util.ArrayList;

import com.mangoplate.dao.MangoEatdealDAO;
import com.mangoplate.vo.MangoEatdealVO;

public class EatdealServiceImpl implements EatdealService {
	/**
	 * 공지사항 전체 로우수
	 */
	public int getTotalCount() {
		MangoEatdealDAO dao = new MangoEatdealDAO();
		int dbCount = dao.totalCount();
		
		return dbCount;
	}
	
	/**
	 * 공지사항 전체 리스트
	 */
	public ArrayList<MangoEatdealVO> getList(){
		MangoEatdealDAO dao = new MangoEatdealDAO();
		ArrayList<MangoEatdealVO> list = dao.select();
		
		return list;
	}
	
	
	/**
	 * 공지사항 상세보기
	 */
	public MangoEatdealVO getContent(String nid) {
		MangoEatdealDAO dao = new MangoEatdealDAO();
		MangoEatdealVO vo = dao.select(nid);
		
		return vo;
	}
	
	/**
	 * 공지사항 글쓰기
	 */
	public int getWriteResult(MangoEatdealVO vo) {
		MangoEatdealDAO dao = new MangoEatdealDAO();
		int result = dao.insert(vo);
		
		return result;
	}
	
	
	/**
	 * 공지사항 수정하기
	 */
	public int getUpdateResult(MangoEatdealVO vo) {
		MangoEatdealDAO dao = new MangoEatdealDAO();
		int result = dao.update(vo);
		
		return result;
	}
	
	
	/**
	 * 공지사항 삭제하기
	 */
	public int getDeleteResult(String nid) {
		MangoEatdealDAO dao = new MangoEatdealDAO();
		int result = dao.delete(nid);
		
		return  result;
	}
}
