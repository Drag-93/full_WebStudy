package org.web.connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnect {

	// -> 커넥션풀(DBCP) 사용
	public static Connection getConnection() {
		// DB-> 연동 객체
		Connection conn = null;

		// Mysql,MariaDB
		String driver = "com.mysql.cj.jdbc.Driver";			// 1.driver
		String url = "jdbc:mysql://localhost:3306/mysql04";//2. DB url
		String user = "root"; 								// 3. 계정 아이디
		String password = "1234"; 							// 4. 계정 비빌번호

		try {
			// 1.드라이버 연결
			Class.forName(driver);
			System.out.println("Driver OK!");
			// 2.DB연동
			conn = DriverManager.getConnection(url, user, password);
			System.out.println("DB연동 OK!");

		} catch (ClassNotFoundException e) {
			System.out.println("Driver Fail!");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("DB연동 Fail!");
			e.printStackTrace();
		}

		return conn;
	}
	
}
