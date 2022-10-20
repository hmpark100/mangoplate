package com.team.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mangoplate.dao.MangoRestDAO;
import com.mangoplate.vo.MangoRestVO;


@Service
public class RestaurantServiceImpl implements RestaurantService{
	
	@Autowired
	private MangoRestDAO restaurantDao;
	
	/**
	 * 영화 전체 로우수
	 */
	@Override
	public int getTotalCount() {
		return restaurantDao.totalCount();
	}
	
	/**
	 * 영화 전체 리스트
	 */
	@Override
	public ArrayList<MangoRestVO> getList(int startCount, int endCount){
		return restaurantDao.select(startCount, endCount);
	}
	
	/**
	 * 영화 등록
	 */
	@Override
	public int getInsert(MangoRestVO vo) {
		return restaurantDao.insert(vo);
	}
	
	/**
	 * 영화 등록 후 mid 가져오기
	 */
	@Override
	public String getMid() {
		return restaurantDao.selectMid();
	}
	
	/**
	 * 영화 파일 등록
	 */
	@Override
	public int getInsertFile(MangoRestVO vo) {
		return restaurantDao.insert_file(vo);
	}
	
	/**
	 * 영화 상세보기
	 */
	@Override
	public MangoRestVO getContent(String mid) {
		return restaurantDao.select(mid);
	}

}









