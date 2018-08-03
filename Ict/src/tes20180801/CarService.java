package tes20180801;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.lang3.StringUtils;

public class CarService {

	private static String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private static String id = "ictu";
	private static String pwd = "	12345678";
	private static String driver = "oracle.jdbc.driver.OracleDriver";
        
	public List<Map<String, String>> getCarList() {
		List<Map<String, String>> carList = new ArrayList<Map<String, String>>();
		Connection con = null;
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("접속 완료");
			String sql = "select carNo, carName, carPrice, carVendor from car";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();

			Map<String, String> car;
			while (rs.next()) {
				car = new HashMap<String, String>();
				car.put("name", rs.getString("carName"));
				car.put("Price", rs.getString("carPrice"));
				car.put("Vendor", rs.getString("carVendor"));
				carList.add(car);
			}
		} catch (ClassNotFoundException e) {

			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (con != null) {
				try {
					con.close();
				} catch (SQLException se) {
					se.printStackTrace();
				}
			}con = null;
		}

		return carList;
	}
	private static CarService cs;
	private List<HashMap<String, String>> carList;

	public static CarService getCarService() {
		if (cs == null) {
			cs = new CarService();
		}
		return cs;
	}

	}
