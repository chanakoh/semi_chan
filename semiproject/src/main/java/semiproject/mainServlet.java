package semiproject;


import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class mainServlet
*//* 
@WebServlet("/mainServlet")
public class mainServlet extends HttpServlet {
	String url ="jdbc:oracle:thin:@localhost:1521:xe";
	String user ="thirties";
	String pw = "3030";
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection connection = null;
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection(url, user, pw);
			String sql = "SELECT * FROM BOARDONE";
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet resultSet = ps.executeQuery();
			ArrayList<Board> boardtList = new ArrayList<>();
			while(resultSet.next()) {
				
				int boardno = resultSet.getInt("BOARD_NO");
				String boardTitle = resultSet.getString("BOARD_TITLE");
				String boardText = resultSet.getString("BOARD_TEXT");
				Date boardtime = resultSet.getDate("BOARD_TIME");
				String bid = resultSet.getString("ACCOUNT_ID");
				Board board = new Board(boardno,boardTitle,boardText,boardtime,bid);
				boardtList.add(board);
			}
			
			request.setAttribute("boardtList", boardtList);
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}*/
