<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="styles.css">
<title>가지마켓</title>

</head>
<header>
	<p class="login-join-link">로그인 회원가입</p> <!-- 로그인 페이지, 회원가입 링크페이지 만들기-->
            <p class="logo">가지마켓</p>
            <p class="slogan">가지고 싶은 물건, 가지 가지 다 있다!</p>
</header>
        <div>
            <p class="category">카테고리 게시판1 게시판2 게시판3 찜(장바구니) 마이페이지</p> <!-- 나중에 링크로 연결 : <a>태그로 줄바꿈 없이 -->
        </div>
<body>
<h1>게시판</h1>
<form action="semiServlet" method="post">
	<label for="ACCOUNT_ID">ID :</label>
	<input type = "text" id="ACCOUNT_ID" name="ACCOUNT_ID" required><br>
	<label for="BOARD_TITLE">제목 :</label>
	<input type = "text" id="BOARD_TITLE" name="BOARD_TITLE" required><br>
	<label for="BOARD_TEXT">내용 :</label>
	<input type = "text" id="BOARD_TEXT" name="BOARD_TEXT" required><br>
	<input type = "submit" value="글쓰기">
	
</form>
</body>
</html>