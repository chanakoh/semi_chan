<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>내 작성 게시글</h1>
<p>제목 : <%= session.getAttribute("BOARD_TITLE") %></p>
<p>본문 : <%= session.getAttribute("BOARD_TEXT") %></p>
<p>글쓴날짜 : <%= session.getAttribute("BOARD_DATE") %></p>
</body>
</html>