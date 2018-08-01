<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="/WEB-INF/common.jsp/rPath" %>
<%
//localhost/js/test08.jsp?id=mama&pwd=1234  // 보낼려는 주소 ? id=mama => key=value
String str = "123";
str = request.getParameter("id");  //이거 자바~ request는 변수인데 변수 선언안 해도 나중에 자바파일로 바뀔때 나온다.
str += "," + request.getParameter("pwd");
out.println(str); //연결되있는 id pwd 가없으명 리턴이 null로나온다
%>
<%!%>
<%="dls"%>
