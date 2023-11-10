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
<title>게시글 목록</title>
</head>
<body>
	<h1>자유게시판</h1>
	<table border="1">
		<tr>
			<th>번호</th>
			<th>섬네일</th>
			<th>글제목</th>
			<th>작성일</th>
			<th>작성자</th>
		</tr>
		<%
		BoardDAO boardDAO = new BoardDAO();
		List<Board> boards = boardDAO.getAllBoard();
		for(Board b : boards){
			%>
			<tr>
			
			<td><%=b.getBoardno() %></td>
			<td><img src="<%=boardDAO.image(b.getBoardno())%>"></td>
			<td><a href="boardText.jsp?boardTitle=<%=b.getBoardTitle() %>">
			<%=b.getBoardTitle()%>
			</a>
			</td>
			<td><%=b.getBoardtime()%></td>
			<td><%=b.getBid()%></td>
		
		<%} %>	
	
	</table>
</body>
</html>