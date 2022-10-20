package com.team.service;

import java.util.ArrayList;

import com.mangoplate.vo.MangoRestVO;

public interface RestaurantService {
	int getTotalCount();				//영화 전체 로우수
	ArrayList<MangoRestVO> getList(int startCount, int endCount);  	//영화 전체 리스트
	int getInsert(MangoRestVO vo);		//영화 등록
	String getMid();					//영화 등록 시 mid 가져오기
	int getInsertFile(MangoRestVO vo);	//영화 등록
	MangoRestVO getContent(String mid);  //영화 상세보기
}
