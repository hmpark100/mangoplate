package com.mangoplate.dao;

import com.mangoplate.vo.MangoReviewVO;

public class MangoReviewDAO extends DBConn{
	
	/**
	 * insert : 게시글 등록
	 */
	public int insert(MangoReviewVO vo) {
		int result = 0;
		String sql = "insert into mango_review "
				+ " values('b_'||sequ_cgv_board.nextval, ?, ?, '', '', sysdate, 0, ?)";
		
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, vo.getKname());
			pstmt.setString(2, vo.getKcontent());
			pstmt.setInt(3, vo.getKrate());
			
			result = pstmt.executeUpdate();
			
			close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return result;
	}
}
