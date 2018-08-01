<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="color" id="cl" onchange="checkColor(this)">
	<div id="rDiv">내색상은 유동적이지
	<button type="button" onclick="chColor()">제출</button>
	</div>
	<script>
function checkColor(clObj){
	alert(clObj.value);
	var rDivObj = document.querySelector('#rDiv');
	rDivObj.style.border='1px solid'+clobj.value;	/*rDivObj.style.color=clObj.value;*/
}
function chColor(){
	var rDivObj = document.querySelector('#rDiv');
	var rRan =Math.floor(Math.random()*256);
	var gRan =Math.floor(Math.random()*256);
	var bRan =Math.floor(Math.random()*256);
	
	rDivObj.style.color='rgb('+rRan+','+gRan+','+bRan+')';
}
</script>
</body>
</html>