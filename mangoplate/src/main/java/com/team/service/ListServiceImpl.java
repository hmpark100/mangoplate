package com.team.service;

import java.util.ArrayList;

import com.mangoplate.dao.MangoListDAO;
import com.mangoplate.vo.MangoRestVO;

public class ListServiceImpl implements ListService{

	public ArrayList<MangoRestVO> getContent(String rcategory){
		MangoListDAO dao = new MangoListDAO();
		ArrayList<MangoRestVO> list = dao.select(rcategory);
		
		return list;
	}
}
