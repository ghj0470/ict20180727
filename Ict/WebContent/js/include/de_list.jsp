<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	DepartService ds = DepartService.getDepartService();
	String searchStr = request.getParameter("searchStr");
	List<HashMap<String,String>> departList = ds
	%>
<!DOCTYPE html >
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="" method="get">
		부서명:<input type="text" name="searchStr">
		<button>검색</button>
	</form>

</body>
</html>