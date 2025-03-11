<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String brand = (String)request.getAttribute("brand");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>*** print.jsp ***</title>
</head>
<body>
	<br/>
	${ brand } <!-- << EL구문 참 쉬움 참 편함 --> <br/>
	${ bestSeller }
	
	<ul>
		<li> 브랜드 : ${ bestSeller.brand } </li>
		<li> 버거 : ${ bestSeller.name } </li>
		<li> 가격 : ${ bestSeller.price }원 </li>
	</ul>
	
	두 개 이상의 Scope에 같은 키값으로 값을 담은 경우 <br/>
	
	<!--  
		page => request => session => application 순으로 키값을 검색
	 -->
	 
	Scope에 직접 접근하는 방법 <br/>
	
	requestScope : ${ requestScope.brand } <br/>
	sessionScope : ${ sessionScope.brand } <br/><br/>
	
	만약에 없는키값을 el구문으로 출력하려고하면 어떻게될까? <br/>
	없는값 : ${ sessionScope.abc } (공백출력)
	
	<hr />
	연산은 어디서하는게 제일 좋음?<br/>
	1. SQL문 DB단 <br/>
	2. Java => Service단(validation/transaction)<br/>
	3. View (보이는부문 -> 연산 최대한 자제)<br/>
	
	<hr>
	
	<h3>1. 산술연산</h3>
	
	<p>
		* EL 구문을 이용한 산술연산
		
		big + small = ${ big + small } <br/>
		big - small = ${ big - small } <br/>
		big * small = ${ big * small } <br/>
		big / small = ${ big / small } 또는 ${big div small }<br/>
		big % small = ${ big % small } 또는 ${big mod small }<br>

	</p>
	
	<h3>2. 논리연산</h3>
	
	<p>
		AND : ${ true && true } 또는 ${ true and true } <br>
		OR : ${ true || true } 또는 ${ true or true } <br>
	</p>
	
	비교연산 == 조건식으로 많이 사용 
	<h4> 숫자끼리 비교 -> 값은 항상 boolean타입으로 </h4>
	<p>
		big이 small보다 작니? : ${ big < small } 또는 ${big lt small }<br>
		lt = less than <br>
		big이 small보다 크니? : ${ big > small } 또는 ${big gt small }<br>
		big이 small보다 작거나 같니? : ${ big le small} <br>
		big이 small보다 크거나 같니? : ${ big ge small } <br>

	</p>
	
	<h4> 동등비교 </h4>
	
	<p>
		big이 small과 같음? : ${ big == small } or ${ big eq small } <br>
		big이 10과 같음? : ${ big eq 10 } <br>
		str과 "아아아아"가 일치함? : ${ str == "아아아아" } or ${ str eq '아아아아'}<br>
		big이 10과 일치하지 않음? : ${ big != 10 } or ${big ne 10}<br>
		
	</p>
	
	<h4>비어있는지 체크</h4>
	<p>
		bestSeller가 null과 일치함? <br>
		${bestSeller == null } or ${ bestSeller eq null } or ${empty bestSeller } <br>
		
		list가 비어있지 않니? -> ${ !empty list }
		
		
		
	</p>
	
	
	
	
	
	<br><br><br><br><br><br><br><br><br><br>
	
</body>
</html>