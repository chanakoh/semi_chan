<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>가지고 싶은 물건, 가지가지 다~ 있다! 가지마켓</title>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="styles.css">
<title>가지마켓</title>

</head>
<body>
    <p id="login-join-link">로그인 회원가입</p>
        <header>
            <div id="logo">
                <p id="gajimarket">가지마켓</p>
            </div>
            <div id="mascot">
                  <img src="img/gajidori.png" alt="gajidori" id="gajidori">
            </div>
          
        </header>
        <nav>
            <ul>
                <li>자유게시판</li>
                <li>리뷰게시판</li>
                <li>문의게시판</li>
                <li>마이페이지</li>
            </ul>
        </nav>
    </body>
<h1>게시글 작성</h1>
<form action="semiServlet" method="post" enctype="multipart/form-data">
	<label for="BOARD_TITLE">제목 :</label>
	<input type = "text" id="BOARD_TITLE" name="BOARD_TITLE" required><br>
	<label for="BOARD_TEXT">내용 :</label>
	<input type = "text" id="BOARD_TEXT" name="BOARD_TEXT" required><br>
	<input type = "submit" value="글쓰기">
	<label for = "ACCOUNT_ID">아이디:</label>
	<input type = "text" id="ACCOUNT_ID" name="ACCOUNT_ID" required><br>
	<label for = "BOARD_FILE">파일 :</label>
	<input type="file" name="BOARD_FILE" id="BOARD_FILE" required><br>
	<button type="submit">업로드</button>
	<button><a href="register_sucess">취소</a></button>
	
</form>
</body>
