<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta  charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String[] strs = {"qwe","asd","123","zxc"};
String[] strs1 = {"qwe","asd","123","zxc"};
String[] strs2 = {"qwe","asd","123","zxc"};
for(int i=0;i<strs.length;i++){
	System.out.println(strs[i]);
%>
<%=strs[i] %><br>
<%=strs[i] %><br>
<%=strs[i] %><br>
<%
}
%>

</body>
</html>