<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.burgerking.model.dto.UserDTO" %>
    <%
     // 자바코드 작성 가능
    String message = (String)request.getAttribute("message");
    
    UserDTO user = (UserDTO)request.getAttribute("user");
    String userId = user.getUserId();
    String userName = user.getUserName();
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>응답 페이지</title>
</head>
<body>
	
	<!-- 
		"사용자가 입력한 userName"님
		회원가입 성공
		가입한 아이디 : userId
	 -->
	 <h1>짱구님</h1>
	
	<p>
		<!-- request.getAttribute("message") -->
		<%= message %> <br/>
		회원가입 성공 <br/><br/>
		
		
		가입에 성공한 아이디 : <%= userId %>
	</p>
	
	
	
</body>
</html>