<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mangoplate.vo.CgvNoticeVO"  %>
<%@ page import="com.mangoplate.dao.CgvNoticeDAO"  %>
<jsp:useBean id="vo" class="com.mangoplate.vo.CgvNoticeVO"/>
<jsp:setProperty name="vo" property="*" />

<%
	CgvNoticeDAO dao = new CgvNoticeDAO();
	int result = dao.update(vo);
	if(result ==1){
		response.sendRedirect("admin_notice_list.jsp");
	}else{
		response.sendRedirect("../errorPage.jsp");
	}
%>