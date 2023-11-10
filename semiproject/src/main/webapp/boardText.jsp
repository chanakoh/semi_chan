<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import = "semiproject.Board" %>
<%@ page import = "semiproject.BoardDAO" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>게시판 내용</h1>
<%
String boardTitle = request.getParameter("boardTitle");
BoardDAO boardDAO = new BoardDAO();
Board board = boardDAO.getBoardTitle(boardTitle);

%>
<p>제목:<%= board.getBoardTitle() %></p>
<p>내용:<%= board.getBoardText() %></p>

<button>수정</button>
</body>
</html>