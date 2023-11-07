

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/semiServlet")
public class semiServlet extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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
			Connection connection = DriverManager.getConnection(url, user, pw);
			int bno = Integer.parseInt(request.getParameter("BOARD_NO"));
			String btitle = request.getParameter("BOARD_TITLE");
			String btext = request.getParameter("BOARD_TEXT");
			String bID = request.getParameter("ACCOUNT_ID");
			String bdate = request.getParameter("BOARD_DATE");
			
			//ȸ������ \insert
			
			String sql = "INSERT INTO BOARDTEST(BOARD_NO,BOARD_TITLE,BOARD_TEXT,ACCOUNT_ID,BOARD_DATE) VALUES(?,?,?,?,?)";
			PreparedStatement preparedStatement = connection.prepareStatement(sql);
			preparedStatement.setInt(1,bno);
			preparedStatement.setString(2,btitle);
			preparedStatement.setString(3,btext);
			preparedStatement.setString(4,bID);
			preparedStatement.setDate(5,Date.valueOf(bdate));
			
			preparedStatement.executeUpdate();
			
			request.getSession().setAttribute("BOARD_NO",bno);
			request.getSession().setAttribute("BOARD_TITLE",btitle);
			request.getSession().setAttribute("BOARD_TEXT", btext);
			request.getSession().setAttribute("ACCOUNT_ID", bID);
			request.getSession().setAttribute("BOARD_DATE", bdate);
			response.sendRedirect("register_sucess.jsp");
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			response.sendRedirect("register_error.jsp");
			e.printStackTrace();
		}
		
	}

}
