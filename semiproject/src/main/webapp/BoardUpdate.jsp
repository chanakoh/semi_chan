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
	            <div class="main">
                	<!-- 우측 페이지 --> 
                	<h1>게시글 작성</h1>
<%

String boardNoValue = (String)request.getParameter("boardno");

int boardno = Integer.parseInt(boardNoValue);
BoardDAO boardDao = new BoardDAO();
Board board = boardDao.getBoardno(boardno);
%>

<form action="BoardUpdateServlet" method = "post">

<input type="hidden" name ="boardno" value="<%=boardno%>"><br>
<table border="1">

<tr>
<td>제목<td>
<td><input type="text" name="boardTitle" value="<%=board.getBoardTitle() %>"></td>
</tr>
<tr>
<th>내용</th>
<td><textarea rows="20" cols="60" name="boardText"><%=board.getBoardText() %></textarea></td>
</tr>
<tr>
	<td colspan="2">
<input type="submit" id="update" value="수정">
	</td>
</tr>
</table>
</form>
	            </div>
            </div>
        <footer>
        </footer>
        </div>
    </div>
    </body>
</body>

<!-- value="< %= board.getBoardText() %>" -->