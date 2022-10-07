package com.spring.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;

import com.mangoplate.vo.CgvMemberVO;
import com.mangoplate.vo.SessionVO;
import com.mangoplate.dao.CgvMemberDAO;

public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private CgvMemberDAO memberDao;
	
	/**
	 * ���̵� �ߺ� üũ
	 */
	public int getIdCheck(String id) {
		return memberDao.idCheck(id);
	}
	
	/**
	 * ȸ�� �� ����
	 */
	@Override
	public CgvMemberVO getMemberContent(String id) {
		return memberDao.selectContent(id);
	}
	
	/**
	 * ȸ�� ��ü��
	 */
	@Override
	public int getTotalCount() {
		return memberDao.totalCount();
	}
	
	/**
	 * ȸ�� ��ü ����Ʈ
	 */
	@Override
	public ArrayList<CgvMemberVO> getMemberList(int startCount, int endCount){	
		ArrayList<CgvMemberVO> list = memberDao.selectAll(startCount, endCount);
		return list;
	}
	
	/** 
	 * ȸ������ ó��
	 */
	@Override
	public int getJoinResult(CgvMemberVO vo) {	
		return memberDao.insert(vo);
	}
	
	/**
	 * �α��� ó��
	 */
	@Override
	public SessionVO getLoginResult(CgvMemberVO vo) {	
		return memberDao.select(vo);
	}
}
