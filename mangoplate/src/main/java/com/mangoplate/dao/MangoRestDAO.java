package com.mangoplate.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.mangoplate.vo.MangoRestVO;


public class MangoRestDAO extends DBConn{
	
	/**
	 * insert : 게시글 등록
	 */
	public int insert(MangoRestVO vo) {
		int result = 0;
		String sql = "insert into mango_review "
				+ " values('b_'||sequ_cgv_board.nextval, ?)";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getVcontent());
			
			result = pstmt.executeUpdate();
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
}
