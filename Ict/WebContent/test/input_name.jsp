<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style>
td {
	text-align: center;
}

table {
	border: 1px solid blue;
}
</style>
</head>
<body>
	<form action="input.jsp">
		<table border ="1">
			<tr>
				<th>이름</th>
				<th>별명</th>
				<th>나이</th>
			</tr>
			<tr>
				<td><input type="text" name="name"></td>
				<td><input type="text" name="nickname"></td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td><input type="text" name="name"></td>
				<td><input type="text" name="nickname"></td>
				<td><input type="text" name="age"></td>
			</tr>
			
			<tr>
				<td><input type="text" name="name"></td>
				<td><input type="text" name="nickname"></td>
				<td><input type="text" name="age"></td>
			</tr>
			

			<tr>
				<td colspan="3" align = "center" ><button>제출</button></td>
			</tr>
		</table>
	</form>

</body>
</html>