<%@page import="java.util.List"%>
<%@page import="tes20180801.CarService"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
CarService cs = CarService.getCarService();
String searchStr = request.getParameter("searchStr");
String[] types = request.getParameterValues("type"); 
List<HashMap<String,String>> CarList = cs.getCarList(types,searchStr);
%>     
<!DOCTYPE html >
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/css/bt337/dist/css/bootstrap.css" />
<link rel="stylesheet" href="/css/bt337/dist/css/bootstrap-theme.css" />
<style>
thead>tr>th {
	text-align: center;
}

tbody td {
	text-align: center;
}
</style>
</head>
<body>
<div class="container">
</div>
<table class="table table-hover">
		<thead>
			<tr>
				<th>자동차 종류</th>
				<th>가격</th>
				<th>회사명</th>
			</tr>
		</thead>
		<tbody>
<%
for(int i=0;i<CarList.size();i++){
	HashMap<String,String> hm = CarList.get(i);
%>
			<tr>
				<td><a href="#"><%=hm.get("carName")%></a></td>
				<td><%=hm.get("deCode")%></td>
				<td><%=hm.get("deCnt")%></td>
			</tr>
<%
}
%>
		</tbody>
	</table>
</body>
</html>