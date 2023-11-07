<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="NewFile.css">
</head>
<body>
<h1>게시판</h1>
<form action="semiServlet" method="post">
	<label for="BOARD_NO">등록번호 :</label>
	<input type = "text" id="BOARD_NO" name="BOARD_NO" required><br>
	<label for="BOARD_TITLE">제목 :</label>
	<input type = "text" id="BOARD_TITLE" name="BOARD_TITLE" required><br>
	<label for="btext">내용 :</label>
	<input type = "text" id="BOARD_TEXT" name="BOARD_TEXT" required><br>
	<label for="bID">ID :</label>
	<input type = "text" id="ACCOUNT_ID" name="ACCOUNT_ID" required><br>
	<label for="BOARD_DATE">작성일</label>
	<input type = "date" id="BOARD_DATE" name="BOARD_DATE" required><br>
	
	<input type = "submit" value="게시">
	
</form>
</body>
</html>