package com.team.service;

import java.util.ArrayList;

import com.mangoplate.vo.MangoRestVO;

public interface RestaurantService {
	int getTotalCount();				//��ȭ ��ü �ο��
	ArrayList<MangoRestVO> getList(int startCount, int endCount);  	//��ȭ ��ü ����Ʈ
	int getInsert(MangoRestVO vo);		//��ȭ ���
	String getMid();					//��ȭ ��� �� mid ��������
	int getInsertFile(MangoRestVO vo);	//��ȭ ���
	MangoRestVO getContent(String mid);  //��ȭ �󼼺���
}
