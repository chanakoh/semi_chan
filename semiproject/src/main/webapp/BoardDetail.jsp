<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "semiproject.Board" %>
<%@ page import = "semiproject.BoardDAO" %>    
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
		           <button onclick="location.href='BoardList.jsp'">돌아가기</button>  
	            </div>
	            <div class="main">
                	<!-- 우측 페이지 --> 
                	              	<h1>게시판 내용</h1>
<%
String boardIdValue = request.getParameter("boardno");
int boardno = Integer.parseInt(boardIdValue);

BoardDAO boardDAO = new BoardDAO();
Board board = boardDAO.getBoardno(boardno);
%>
<table border="1">

<input type="hidden" name ="boardno" value="<%=boardno %>"><br>
<tr>
<th><%= board.getBoardTitle() %></th>
</tr>
<tr>
<td><img src="<%=boardDAO.image(boardno)%>" class="img"></td>
<td><%= board.getBoardText() %></td>

</tr>

</table>

<button type="button" onclick="location.href='BoardUpdate.jsp?boardno=<%=boardno %>'">수정</button>

	<form action="BoardDelete.jsp?boardno=<%=boardno%>" method="post">
	<button type="submit" id="deleteButton" onclick="Location.href='BoardDelete.jsp?boardno=<%=boardno%>'">삭제</button>
	</form>
		
	            </div>
	          
            </div>
        <footer>
        </footer>
        </div>
    </div>
</body>
</html>

  