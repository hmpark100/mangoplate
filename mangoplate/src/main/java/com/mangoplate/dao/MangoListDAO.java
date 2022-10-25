package com.mangoplate.dao;

import java.util.ArrayList;

import com.mangoplate.vo.MangoRestVO;

public class MangoListDAO extends DBConn{

	/**
	 * select(String rcategory) : 상세리스트 출력
	 */
	public ArrayList<MangoRestVO> select(String rcategory) {
		ArrayList<MangoRestVO> list = new ArrayList<MangoRestVO>();
		
		String sql = "select rownum rno, rid, rname, raddr, rcontact, rprice, rcategory, rdate, rhits, rimage, rsimage from mg_restaurant where rcategory = ?";
				
		try {
			getPreparedStatement(sql);
			pstmt.setString(1, rcategory);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MangoRestVO vo = new MangoRestVO();
				vo.setRno(rs.getInt(1));
				vo.setRid(rs.getString(2));
				vo.setRname(rs.getString(3));
				vo.setRaddr(rs.getString(4));
				vo.setRcontact(rs.getString(5));
				vo.setRprice(rs.getString(6));
				vo.setRcategory(rs.getString(7));
				vo.setRdate(rs.getString(8));
				vo.setRhits(rs.getInt(9));
				vo.setRimage(rs.getString(10));
				vo.setRsimage(rs.getString(11));
				
				list.add(vo);
				
			}
			close(); 
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
}
