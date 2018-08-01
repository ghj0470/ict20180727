<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
<style>
* {
	padding: 0;
	margin: 0;
}

.container {
	width: 800%;
	height: 100% float:left;
	margin:0 auto;
	
}

.left, .right {
	width: 45%;
	border: 1px solid bluep;
}
</style>
</head>
<body>
	<div class="container">
		<div class="left">
		<jsp:include page="/include/left.jsp"/></div>
		<div class="right"><jsp:include page="/include/right.jsp"/></div>
	</div>

</body>
</html>