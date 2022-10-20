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
	 * ��ȭ ��ü �ο��
	 */
	@Override
	public int getTotalCount() {
		return restaurantDao.totalCount();
	}
	
	/**
	 * ��ȭ ��ü ����Ʈ
	 */
	@Override
	public ArrayList<MangoRestVO> getList(int startCount, int endCount){
		return restaurantDao.select(startCount, endCount);
	}
	
	/**
	 * ��ȭ ���
	 */
	@Override
	public int getInsert(MangoRestVO vo) {
		return restaurantDao.insert(vo);
	}
	
	/**
	 * ��ȭ ��� �� mid ��������
	 */
	@Override
	public String getMid() {
		return restaurantDao.selectMid();
	}
	
	/**
	 * ��ȭ ���� ���
	 */
	@Override
	public int getInsertFile(MangoRestVO vo) {
		return restaurantDao.insert_file(vo);
	}
	
	/**
	 * ��ȭ �󼼺���
	 */
	@Override
	public MangoRestVO getContent(String mid) {
		return restaurantDao.select(mid);
	}

}









