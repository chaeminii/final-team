<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Document</title>
        <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/user/findPass.css"/>"> 
    </head>
    <body>
    <c:import url="/WEB-INF/jsp/include/header.jsp" />
       <div class="ForgotPassword">
			<a class="ForgotEmail__title" href="<c:url value="/user/findEmailForm.do" />">
			
				이메일 찾기
			
			</a>
			<a class="ForgotPassword__title" >
			
				비밀번호 찾기
			
			</a>
			<div class="ForgotPassword__inputWrapper">
				<input type="text" placeholder="번호" class="ForgotPassword__inputWrapper__input ForgotPassword__inputWrapper__input--error">
			</div>
			<div id="emailCheck" class="ForgotPassword__error">옳바른 메일 형식을 입력하세요</div>
			<div id="numberCheck" class="ForgotPassword__upperError">가입된 메일이 아닙니다</div>
			<div class="ForgotPassword__inputWrapper">
				<input type="text" placeholder="johnsmith@rapid.com" class="ForgotPassword__inputWrapper__input ForgotPassword__inputWrapper__input--error">
			</div>
			<div class="ForgotPassword__button">전송</div>
			<div class="ForgotPassword__cancel">
			<a href="<c:url value="/user/loginForm.do" />">취소</a>
			</div>
		</div>
		<%-- <c:import url="/WEB-INF/jsp/include/footer.jsp" /> --%>
    </body>
    </html>