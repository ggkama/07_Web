package com.kh.burgerking.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// Controller 역할

@WebServlet("/order")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L; //버전확인
       

    public OrderServlet() {
        super(); // 기본생성자

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		//System.out.println("/bk/order doGet메서드 호출됨");
		// 메서도가 호출되어 요청이 실행
		
		// 사용자가 입력한 수령 * 500을 해야함
		
		// 데이터를 받아 가공해서 Service로 넘겨주는 역할
		// 응답받은 데이터를 View로 받기
		/* 
		 * VIEW에서 GET방식으로 요청 시 doGet()메서드가 호출됨
		 * 
		 * 두 개의 매개변수가 존재함
		 * 
		 * 첫번째 매개변수인 HttpServletRequest -> 요청 시 전달된 내용이 담김
		 * ==> 요청 전송방식(GET), 요청한 사용자의 IP주소,
		 * ==> 어떤 URL을 통해서 왔는지에 대한 정보, 사용자가 입력한 값 등등...
		 * 
		 * 
		 * 두번째 매개변수인 HttpServletResponse => 요청 처리 후 응답할 때 사용
		 * 
		 */
		
		// String queryString = request.getQueryString();
		// System.out.println(queryString);
		
		
		int num = Integer.parseInt(request.getParameter("num")); // 값 뽑아서 확인
		System.out.println(num);
		String productName = request.getParameter("product-name");
		System.out.println(productName);
		
		/*
		 * 자주보는 문제 상황
		 * 
		 * 404 : 파일이나 요청을 받아주는 서블릿을 찾지 못했을 때 발생
		 * 		=> 오타일 확률이 높음
		 * 
		 * 500 : 자바 소스코드상의 오류(예외발생)
		 */
		
		// 잘 다녀옴 -> Insert 했다고 침
		/*
		 * 요청처리(Service의 메서드를 호출해서 DB와의 상호작용까지 끝난 상태)
		 */
		
		int totalPrice = num * 500;
		
		/*
		 * XXX(사용자가 입력한 제품명)의 총 가격은 OOO(총 결제해야하는 금액)원 입니다.
		 * 
		 */
		
		// 1단계) 응답데이터 형식 지정 -> 문서형태의 HTML / 인코딩방식 -> UTF-8
		response.setContentType("text/html;"
				+ "charset=UTF-8");
		
		// 2단계) 출력스트림 생성
		PrintWriter writer = response.getWriter();
		
		// 3단계) 스트림을 통해 HTML 출력
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<title> GET방식 응답 </title>");
		writer.println("</head>");
		
		writer.println("<script>");
		writer.println("alert('계산완료')");
		writer.println("</script>");
		
		writer.printf("%s의 총 가격은 %d원입니다.",productName,totalPrice);
		
		writer.println("</html>"); // presentation log 
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("/bk/order doPost메서드 호출됨");
		
		
	}

}
