<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.mangoplate.vo.CgvNoticeVO"  %>
<%@ page import="com.mangoplate.dao.CgvNoticeDAO"  %>
<%
	String nid = request.getParameter("nid");
	CgvNoticeDAO dao = new CgvNoticeDAO();
	int result = dao.delete(nid);
	if(result == 1){
		response.sendRedirect("admin_notice_list.jsp");
	}else{
		response.sendRedirect("../errorPage.jsp");
	}

%>