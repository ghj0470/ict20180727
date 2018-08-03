package tes20180801;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class user_info {
	private static String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private static String id = "ictu";
	private static String pwd = "12345678";
	private static String driver = "oracle.jdbc.driver.OracleDriver";

	public static void main(String[] args) {
		try {
			Class.forName(driver);
			Connection con = DriverManager.getConnection(url, id, pwd);
			System.out.println("접속완료");
			String sql = "select uiNum, uiName, uiId, uiPwd from user_info";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				System.out.println(rs.getString("uiName"));
			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
