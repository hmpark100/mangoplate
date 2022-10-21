package com.mangoplate.dao;

import com.mangoplate.vo.MangoRestVO;

public class MangoReviewDAO extends DBConn{
	
	/**
	 * insert : �Խñ� ���
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
