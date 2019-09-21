package user;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAO {
	
	//db에 접근하는 하나의 객체
	private Connection conn;
	
	//sql injection 대비책 중 하나
	private PreparedStatement pstmt;
	
	//정보를 담을수 있는 객체
	private ResultSet rs;
	
	
	//생성자
	//mysql 접근
	public UserDAO() {
		try {
			//3306포트 :  mysql 서버 자체 
			String dbURL = "jdbc:mysql://localhost:3307/BBS";
			String dbID = "root";
			String dbPassword ="tjdwo7595";
			
			//sql 드라이버 찾는다.
			Class.forName("com.mysql.jdbc.Driver");
			conn =  DriverManager.getConnection(dbURL, dbID, dbPassword);
			
		}catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int login(String userID, String userPassword)
	{
		String SQL = "SELECT userPassword FROM USER WHERE userID = ?";
		
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, userID);//존나중요 sql 보안
			rs = pstmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1).equals(userPassword)) {
					return 1;// 로그인 성공
				}
				else
					return 0; //비밀번호 불일치 
			}
			return -1; //id 없슴
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		return -2; //데이터베이스 오류를 의미.
	}
	
	public int join(User user) {
		String SQL="INSERT INTO USER VALUES (?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserID());
			pstmt.setString(3, user.getUserName());
			pstmt.setString(4, user.getUserGender());
			pstmt.setString(5, user.getUserEmail());
			return pstmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		return -1;// DB 오류
	}

}












