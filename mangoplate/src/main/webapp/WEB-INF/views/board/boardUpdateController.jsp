<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "com.mangoplate.vo.CgvBoardVO" %>
<%@ page import = "com.mangoplate.dao.CgvBoardDAO" %>
<jsp:useBean id="vo"  class="com.mangoplate.vo.CgvBoardVO"/>
<jsp:setProperty name="vo" property="*"  />

<%
	CgvBoardDAO dao = new CgvBoardDAO();
	int result = dao.update(vo);
	if(result == 1){
		response.sendRedirect("board_list.jsp");
	}else{
		response.sendRedirect("../errorPage.jsp");
	}

%>

