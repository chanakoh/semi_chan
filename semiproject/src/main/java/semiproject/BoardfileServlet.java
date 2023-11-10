package semiproject;

import java.io.IOException;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BoardfileServlet
 */
@WebServlet("/BoardfileServlet")
public class BoardfileServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url ="jdbc:oracle:thin:@localhost:1521:xe";
		String user ="thirties";
		String pw = "3030";
		
		try {
			Class.forName("oracle.jdbc.OracleDriver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			Connection conn = DriverManager.getConnection(url, user, pw);
			
			
			String sql = "SELECT BOARD_FILE FROM BOARDONE ";
			PreparedStatement ps = conn.prepareStatement(sql);
			
			ResultSet rs = ps.executeQuery();
			
				while (rs.next()) {
                  Blob blob = rs.getBlob("BOARD_FILE");
                  byte[] imageBytes = blob.getBytes(1, (int) blob.length());
                  String imageBase64 = java.util.Base64.getEncoder().encodeToString(imageBytes);
                  String imageUrl = "data:image/jpeg;base64, " + imageBase64;
                /*if(rs.next()) {
				Blob blob = rs.getBlob("BOARD_FILE");
				byte[] bdate = blob.getBytes(1,(int)blob.length());*/
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}



}
