
<%@page import="java.sql.SQLException"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.List"%>
<%@page import="tes20180801.CarService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%! carservice = new CarService();
%>

<!DOCTYPE html>


<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap.css" />
<link rel="stylesheet" href="/css/bt-337/dist/css/bootstrap-theme.css" />

</head>
<body>

	<div class="container">
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>자동차</th>
					<th>자동차종류</th>
					<th>가격</th>
					<th>회사명</th>
				</tr>
			</thead>
			<tbody>
				<%
					List<Map<String, String>> carList = getCarList();
					for (Map<String, String> car : carList) {
				%>
				<tr>

					<td><%=car.get("name")%></td>
					<td><%=car.get("Price")%></td>
					<td><%=car.get("Vendor")%></td>

				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>
</body>
</html>