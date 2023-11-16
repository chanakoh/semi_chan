<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.ArrayList" %>
<%@ page import = "java.util.List" %>
 <%@ page import = "semiproject.Board" %>
 <%@ page import = "semiproject.BoardDAO" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="./css/boardList-styles.css">
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
               <h1>자유게시판</h1>
	<table class="table">
		<tr>
			<th>번호</th>
			<th>섬네일</th>
			<th>글제목</th>
			<th>작성일</th>
			<th>작성자</th>
			<th>조회수</th>
		</tr>
		<%
		BoardDAO boardDAO = new BoardDAO();
		List<Board> boards = boardDAO.getAllBoard();
		for(Board b : boards){
			%>
			<tr>
			<td><%=b.getBoardno() %></td>
			<td><img src="<%=boardDAO.image(b.getBoardno())%>" class="img"></td>
			<td><a href="BoardDetail.jsp?boardno=<%=b.getBoardno() %>">
			<%=b.getBoardTitle()%>
			</a>
			</td>
			<td><%=b.getBoardtime()%></td>
			<td><%=b.getBid()%></td>
			<td><%=b.getBoardhit()%></td>
		<%} %>	
	</table>
			<button><a href="BoardPost.jsp">글쓰기</a></button>
	            </div>
            </div>
        <footer>
        
        </footer>
        </div>
    </div>
</body>
</html>

