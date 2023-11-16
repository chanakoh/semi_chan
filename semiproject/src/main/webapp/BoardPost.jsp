<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="./css/board-styles.css">
	<title>가지고 싶은 물건, 가지가지 다~ 있다! 가지마켓</title>
	<script src="https://kit.fontawesome.com/def66b134a.js" crossorigin="anonymous"></script>
	</head>

	<body>
		<div class="wrap">
	        <div class="inner">
		        <div>
				<%
			        if (session.getAttribute("USER_NAME") != null) {
			    %>
			        
			    <%-- 세션에서 사용자 이름 가져오기 --%>
			    <% String user_name = (String)session.getAttribute("USER_NAME"); %>
			    
			    <p class="sessionState"><%= user_name %>님 환영합니다! &nbsp;&nbsp;<a href="logout.jsp">로그아웃</a></p>
			    <%
			        } else {
			    %>
				<p class="sessionState"><a href="login.jsp">로그인</a> &nbsp;&nbsp; <a href="register.jsp">회원가입</a></p>
			    <%
			        }
			    %>
	                <header>
	                    <div class="logo">
	                        <a href="mainpage.jsp" style="text-decoration: none;"><p class="gajimarket">가지마켓</p></a>
	                    </div>
	                    <div class="mascot">
	                        <a href="mainpage.jsp"><img src="./img/gajidori.png" alt="gajidori" class="gajidori"></a>
	                    </div>
	                </header>
	                <nav>
	                    <ul>
	                        <li><a>자유게시판</a></li>
	                        <li><a>리뷰게시판</a></li>
	                        <li><a href="QnAList.jsp">문의게시판</a></li>
	                        <li><a href="productRetrieve.jsp">마이페이지</a></li>
	                    </ul>
	                </nav>
		        </div>
            <div class="contents">
	            <div class="sidebar">
	            	<!-- 좌측 메뉴 -->
		          
	            </div>
	            <div class="main">
                	<!-- 우측 페이지 --> 
                	<h1>게시글 작성</h1>
<form action="BoardPostServlet" method="post" enctype="multipart/form-data">
	<label for="BOARD_TITLE">제목 :</label>
	<input type = "text" id="BOARD_TITLE" name="BOARD_TITLE" required><br>
	<label for="BOARD_TEXT">내용 :</label>
	<input type = "text" id="BOARD_TEXT" name="BOARD_TEXT" required><br>
	<label for = "ACCOUNT_ID">아이디:</label>
	<input type = "text" id="ACCOUNT_ID" name="ACCOUNT_ID" required><br>
	<input type = "submit" value="글쓰기">
	<label for = "BOARD_FILE">파일 :</label>
	<input type="file" name="BOARD_FILE" id="BOARD_FILE" required><br>
	
	<button><a href="BoardList.jsp">취소</a></button>
	
</form>
	            </div>
            </div>
        <footer>
        </footer>
        </div>
    </div>
    </body>

</body>
