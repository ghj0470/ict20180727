package tes20180801;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CarList {
	private static String url="C:\\Users\\koitt03-A\\git\\ict20180727\\Ict\\WebContent\\car_list.jsp";
public static void main(String[] args) {
	

	try {
		Connection con=DriverManager.getConnection(url);
		System.out.println("접속 완료");
		String sql = "select carNo, carName, carPrice, carVendor from car";
		PreparedStatement ps = con.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
		while(rs.next()) {
			System.out.println(rs.getString("carName"));
		}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
}

}
