<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<%@ page import="bean.articles.*" %>
<jsp:useBean id="title" scope="session" class="bean.articles.IndexBean"></jsp:useBean>
<jsp:useBean id="text" scope="session" class="bean.articles.IndexBean"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>記事詳細画面</title>
</head>
<body>
	<h1>記事詳細</h1>
	
	<p>
		<strong>タイトル：</strong>
		<%= request.getAttribute("title") %>
	</p>
	<p>
		<strong>本文：</strong>
		<%= request.getAttribute("text") %>
	</p>
</body>
</html>