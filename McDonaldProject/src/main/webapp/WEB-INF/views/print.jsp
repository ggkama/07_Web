<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String brand = (String)request.getAttribute("brand");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>굉장히 중요</title>
</head>
<body>
	<br/>
	${ brand } <!-- << EL구문 참 쉬움 참 편함 --> <br/>
	${ bestSeller }
</body>
</html>