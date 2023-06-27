<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@	taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>Document</title>
<link rel="stylesheet" href="/style/style.css">
<link rel="stylesheet" href="/style/style_Template.css">
</head>
<body>
	<div id="wrap">
		<header>
			<!--  헤더템플릿 시작 -->
			<%@ include file="/WEB-INF/views/ind/headerTmp.jsp"%>
			<!--  헤더템플릿 끝 -->
<!-- 회원정보 목록 -->
<%-- 			<c:forEach var="list" items="${memberList}">
				<div class="listRow listColumn dFlex" data-link="${list.num}">
					<span>${list.num}</span>&nbsp;
					<span>${list.uid}</span>&nbsp;
					<span>${list.UName}</span>&nbsp;
					<span>${list.phone}</span>&nbsp;
					<span>${list.address}</span>&nbsp;
					<span>${list.email}</span>&nbsp;
					<fmt:formatDate var="regTM" value="${list.regTM}" pattern="yyyy-MM-dd"/>
					<span>${regTM}</span>&nbsp;&nbsp;
					<span class="delIcon">&times;</span>
				</div>
			</c:forEach> --%>
			</header>
			<!-- 회원정보 목록 -->

			<!-- 			<div class="user-actions">
				<a href="로그인페이지주소">로그인</a> 
				<a href="회원가입페이지주소">회원가입</a> 
				<a href="장바구니페이지주소">장바구니</a>
			</div> 

		<div class="logo-search">
				<div class="logo">
					<img src="/images/logo.jpg" alt="로고">
				</div> -->

			<div class="search">
				<input type="text" placeholder="검색어를 입력해주세요.">
				<button type="submit">
					<img src="/images/search-icon.png" alt="검색">
				</button>
			</div>
			<div class="slider">
				<div class="slide active">
					<img src="/images/image1.jpg" alt="이미지1">
				</div>
				<div class="slide">
					<img src="/images/image2.jpg" alt="이미지2">
				</div>
				<div class="slide">
					<img src="/images/image3.jpg" alt="이미지3">
				</div>
				<div class="slide">
					<img src="/images/image4.jpg" alt="이미지4">
				</div>
				<div class="slide">
					<img src="/images/image5.jpg" alt="이미지5">
				</div>
				<div class="slide">
					<img src="/images/image6.jpg" alt="이미지6">
				</div>
			</div>
						<div class="board">
				<div class="post" onclick="redirectToPostDetails('1')">
					<img src="/images/image1.jpg" alt="이미지1">
					<h3>게시글 제목1</h3>
						<p>게시글 내용1</p>
				</div>
				<div class="post" onclick="redirectToPostDetails('2')">
					<img src="/images/image2.jpg" alt="이미지2">
					<h3>게시글 제목2</h3>
					<p>게시글 내용2</p>
				</div>
				<div class="post" onclick="redirectToPostDetails('3')">
					<img src="/images/image3.jpg" alt="이미지3">
					<h3>게시글 제목3</h3>
					<p>게시글 내용3</p>
				</div>
				<div class="post" onclick="redirectToPostDetails('4')">
					<img src="/images/image4.jpg" alt="이미지4">
					<h3>게시글 제목4</h3>
					<p>게시글 내용4</p>
				</div>
				<div class="post" onclick="redirectToPostDetails('5')">
					<img src="/images/image5.jpg" alt="이미지5">
					<h3>게시글 제목5</h3>
					<p>게시글 내용5</p>
				</div>
				<div class="post" onclick="redirectToPostDetails('6')">
					<img src="/images/image6.jpg" alt="이미지6">
					<h3>게시글 제목6</h3>
					<p>게시글 내용6</p>
				</div>
			</div>

			<!--  푸터템플릿 시작 -->
			<%@ include file="/WEB-INF/views/ind/footerTmp.jsp"%>
			<!--  푸터템플릿 끝 -->
	</div>
	<!-- div#wrap -->
	<script src="/script/jquery-3.6.4.min.js"></script>
	<script src="/script/script.js"></script>
</body>
</html>