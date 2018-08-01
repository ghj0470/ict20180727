<%@page import="tes20180801.UserService"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
public
	List<HashMap<String, String>> userList = new ArrayList<HashMap<String, String>>();

	public List<HashMap<String, String>> getUserList() {
		List<HashMap<String, String>> userList = new ArrayList<HashMap<String, String>>();
		for (int i = 1; i <= 20; i++) {
	HashMap<String, String> hm = new HashMap<String, String>();
	int rNum = (int) (Math.random() * 100);
	hm.put("DeName", "홍길동" + i);
	hm.put("DeCode", i + "");
	hm.put("DeCnt", rNum + "명");
	userList.add(hm);
		}
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
		<table class="table table-hover">
			<thead>
				<tr>
					<th>부서명</th>
					<th>부서코드</th>
					<th>부서인원</th>

				</tr>
			</thead>
			<tbody>


				<%
					for (int i = 0; i < 20; i++) {
					HashMap<String, String> hm = userList.get(i);
				%>
				<tr>
					<td><a href="#"><%=hm.get("DeName")%></a></td>
					<td><%=hm.get("DeCode")%></td>
					<td><%=hm.get("DeCnt")%> 명</td>
				</tr>
				<%
					}
				%>
			</tbody>
		</table>
	</div>

</body>
</html>