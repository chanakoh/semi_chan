package semiproject;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BoardDAO {
	String url ="jdbc:oracle:thin:@localhost:1521:xe";
	String user ="thirties";
	String pw = "3030";
	
	public BoardDAO() {
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	public List<Board> getAllBoard(){
		List<Board> boards = new ArrayList<>();
		try {
			Connection connection = DriverManager.getConnection(url, user, pw);
			String sql = "SELECT * FROM BOARDONE";
			PreparedStatement ps = connection.prepareStatement(sql);
			ResultSet resultSet = ps.executeQuery();
			
			while(resultSet.next()) {
				int boardno = resultSet.getInt("BOARD_NO");
				String boardTitle = resultSet.getString("BOARD_TITLE");
				Date boardtime = resultSet.getDate("BOARD_TIME");
				String bid = resultSet.getString("ACCOUNT_ID");
				Board board = new Board(boardno,boardTitle,boardtime,bid);
				boards.add(board);
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return boards;
	}
	
	
	public Board getBoardTitle(String boardTitle ) {
		Board board = null;
		try {
			Connection connection = DriverManager.getConnection(url, user, pw);
			String sql = "SELECT * FROM BOARDONE WHERE BOARD_TITLE=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setString(1,boardTitle);
			ResultSet resultSet = ps.executeQuery();
			
			if(resultSet.next()) {
				boardTitle = resultSet.getString("BOARD_TITLE");
				String boardText= resultSet.getString("BOARD_TEXT");
			board = new Board(boardTitle,boardText);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return board;
	}
	
	public String image(int boardno) {
		
		try {
			Connection connection = DriverManager.getConnection(url, user, pw);
			String sql = "SELECT BOARD_FILE FROM BOARDONE WHERE BOARD_NO=?";
			PreparedStatement ps = connection.prepareStatement(sql);
			ps.setInt(1,boardno);
			ResultSet resultSet = ps.executeQuery();
			
			if(resultSet.next()) {
				Blob blob = resultSet.getBlob("BOARD_FILE");
                byte[] imageBytes = blob.getBytes(1, (int) blob.length());
                String imageBase64 = java.util.Base64.getEncoder().encodeToString(imageBytes);
                String imageUrl = "data:image/jpeg;base64, " + imageBase64;
                return imageUrl;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}return null;
	}

	
	
}

