package tes20180801;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class DBCon {
	private static String url="jdbc:oracle:thin:@localhost:1521:xe";
	private static String id = "ictu";
	private static String pwd = "12345678";
	private static String driver = "oracle.jdbc.driver.OracleDriver";
	public static void main(String[] args) {
		public List<Map<String,String>> carList = new ArrayList<Map<String,String>>();
		Conntion con = new Conntion;
		try {
			Class.forName(driver);
			Connection con=DriverManager.getConnection(url,id,pwd);
			System.out.println("접속 완료");
			if(carName!=null) {
				sql+="where carName like'%'|| ? || '%'";
			}
			PreparedStatement ps = con.prepareStatement(sql);
			if(carName!=null) {
				ps.setString(1, carName);
			}
			String sql = "select carNo, carName, carPrice, carVendor from car";
			PreparedStatement ps = con.prepareStatement(sql);
					ResultSet rs = ps.executeQuery();
			while(rs.next()) {
				System.out.println(rs.getString("carName"));
			}
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
