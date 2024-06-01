<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 RequestDispatcher rd = request.getRequestDispatcher("/videofind.action?videoid=0&id=1"); 
 rd.forward(request,response); 
%>
