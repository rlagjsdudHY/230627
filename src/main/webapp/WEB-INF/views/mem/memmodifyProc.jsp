<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>Document</title>
		<link rel="stylesheet" href="/style/style.css">
		<style>
		
		</style>
	</head>
	<body>
		<div id="wrap">
			<h1>회원정보수정페이지</h1>
			<hr>
			<form action="" id="frmproc" method="post">
			<c:forEach var="mypage" items="${modifyList}">
    <table>
        <tbody>
            <tr>
                <td colspan="2">회원정보</td>
            </tr>
            <tr>
                <td>아이디</td>
                <td> ${mypage.uid}</td>
            </tr>
            <tr>
                <td>이름</td>
                <td><input type="text" value="${mypage.uname}" name="uname"></td>
            </tr>
            <tr>
                <td>전화번호</td>
                <td><input type="text" value="${mypage.phone}" name="phone"></td>
            </tr>
            <tr>
                <td>주소</td>
                <td><input type="text" value="${mypage.address}" name="address"></td>
            </tr>
            <tr>
                <td>이메일</td>
                <td><input type="text" value="${mypage.email}" name="email"></td>
            </tr>
        </tbody>
    </table>
    <input type="hidden" name="uid"  value="${mypage.uid}">
    <input type="hidden" name="num" form="modifyFrm" value="${mypage.num}">
</c:forEach>
		<button type="submit" id="frmprocsubmit">수정하기</button>
		<button type="reset">다시쓰기</button>
			</form>
		</div>	
		<!-- div#wrap -->
		<script src="/script/jquery-3.6.4.min.js"></script>
        <script src="/script/script.js"></script>
        <script>
    	$(function(){
			$("#frmprocsubmit").click(function(){
				$("#frmproc").attr("action","memModifyProcProc")
				$("#frmproc").submit();
			});
		});
        </script>	
	</body>
</html>
   
 