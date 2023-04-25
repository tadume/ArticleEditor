<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@page import="bean.articles.*" %>
<jsp:useBean id="idto" class="bean.articles.IndexDTO" scope="request"></jsp:useBean>
<jsp:useBean id="msg" class="java.lang.String" scope="request"></jsp:useBean>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>記事一覧画面</title>
</head>
<body>
	<h1>記事一覧画面</h1>
	<h2><%= msg %></h2>
	<button type="button">サインアップ</button>
	<button type="button">ログイン</button>
	
	<table>
		<thead>
    		<tr>
      			<th>タイトル</th>
      			<th>本文</th>
      			<th colspan="3"></th>
    		</tr>
  		</thead>
  		<tbody>
  			<% 
  				for(int i = 0; i < idto.size(); i++){ 
  					IndexBean ib = idto.get(i); 
			%>
  			<tr>
  				<td><%= ib.getTitle() %></td>
  				<td><%= ib.getText() %></td>
  				<td>
  					<% request.setAttribute("title", ib.getTitle()); %>
  					<% request.setAttribute("text", ib.getText()); %>
  					<%-- <% RequestDispatcher rd = null; %>
  					<% rd = request.getRequestDispatcher("/ArticleWeb/articles/show.jsp"); %> --%>
  					<a href="/ArticleWeb/articles/show.jsp">詳細</a>
  				</td>
  			</tr>
  			<% } %>
  		</tbody>
	</table>
</body>
</html>