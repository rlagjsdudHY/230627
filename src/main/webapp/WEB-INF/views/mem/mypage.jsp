<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

 
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>Document</title>
		<link rel="stylesheet" href="/style/style.css">
		<link rel="stylesheet" href="/style/style_Template.css">
		<style>
		main#main {	text-align: center;	margin: 20px;}
		table {margin: 10px;	border: 1px solid #eee;}
		tr:nth-child(1) td {	font-weight: bold;	font-size: 25px;	padding: 20px 30px;}
		td {	border: 1px solid #eee;}
		td:nth-child(1) {		font-weight: bold;	font-size: 23px;	
							padding: 20px 30px; background-color: rgba(0, 109, 41, 0.2);
							color: #006a26;	}
		td:nth-child(2) {		font-size: 20px;	
							padding: 20px 30px;}					
		#btnArea {	margin: 20px;	text-align: center;}
		#btnArea button {	font-size: 20px;	padding: 10px 15px;	border-radius: 6px;	border: 1px solid #eee;
							background-color: rgba(0, 109, 41, 0.1);	color: #006a26;	margin: 10px;}
		</style>
	</head>
	<body>
		<div id="wrap">
		
			<!--  헤더템플릿 시작 -->
			<%@ include file="/WEB-INF/views/ind/headerTmp.jsp" %>
	    	<!--  헤더템플릿 끝 -->   
	    	
	    	<main id="main" class="dFlex">
	    	
	    		<div id="lnb">
		    		<!--  메인 LNB 템플릿 시작 -->
					<%@ include file="/WEB-INF/views/ind/mainLnbTmp.jsp" %>
		    		<!--  메인 LNB 템플릿 끝 -->    	
    			</div>
   <c:forEach var="mypage" items="${mypageInfo}">
    <table>
        <tbody>
            <tr>
                <td colspan="2">회원정보</td>
            </tr>
            <tr>
                <td>아이디</td>
                <td>${mypage.uid}</td>
            </tr>
            <tr>
                <td>이름</td>
                <td> ${mypage.uname}</td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><c:out value="${mypage.phone}" /></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><c:out value="${mypage.address}" /></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><c:out value="${mypage.email}" /></td>
            </tr>
        </tbody>
    </table>
    <input type="hidden" name="num" form="modifyFrm" value="${mypage.num}">
</c:forEach>
	    	</main>
	    	<!-- main#main -->
	    	<div id="btnArea">
    			<button id="modify" form="modifyFrm">수정하기</button>
    			<button onclick="/">메인페이지</button>
    		</div>
    		<form action="" id="modifyFrm" method="post"></form>
	    	
	    	<!--  푸터템플릿 시작 -->
	    	<%@ include file="/WEB-INF/views/ind/footerTmp.jsp" %>
	    	<!--  푸터템플릿 끝 --> 
				
	
		</div>
		<!-- #wrap -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
		<script src="/script/script.js"></script>
		<script>
		$(function(){
			$("#modify").click(function(){
				$("#modifyFrm").attr("action","memModifyProc")
				$("#modifyFrm").submit();
			});
		});
		</script>
	</body>
</html>