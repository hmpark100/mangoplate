package com.spring.service;

import java.util.ArrayList;

import com.mangoplate.vo.CgvMemberVO;
import com.mangoplate.vo.SessionVO;

public interface MemberService {	
	SessionVO getLoginResult(CgvMemberVO vo);  //�α��� ó�� �޼ҵ�
	int getJoinResult(CgvMemberVO vo);	 //ȸ������ ó�� �޼ҵ�
	int getTotalCount();	//��ü ȸ���� 
	ArrayList<CgvMemberVO> getMemberList(int startCount, int endCount);  //ȸ�� ��ü ����Ʈ
	CgvMemberVO getMemberContent(String id);	//ȸ�� ������
	
}