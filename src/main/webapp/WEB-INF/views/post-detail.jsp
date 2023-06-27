<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Post Details</title>
    <link rel="stylesheet" href="/style/style.css">
    <link rel="stylesheet" href="/style/style_Template.css">
    <link rel="stylesheet" href="/style/post-details.css">
</head>
<body>
<div id="wrap">
    <header>
        <!-- 헤더템플릿 시작 -->
        <%@ include file="/WEB-INF/views/ind/headerTmp.jsp"%>
        <!-- 헤더템플릿 끝 -->

        <div class="search">
            <input type="text" placeholder="검색어를 입력해주세요.">
            <button type="submit">
                <img src="/images/search-icon.png" alt="검색">
            </button>
        </div>
    </header>

    <div class="post-details">
        <%-- Retrieve post ID from URL query parameter --%>
        <% String postId = request.getParameter("postId"); %>
        
        <%-- TODO: Fetch post details (image and description) based on postId --%>
        <%-- Replace the placeholders with the actual post details --%>
        <% String imageUrl = ""; %>
        <% String postTitle = ""; %>
        <% String postDescription = ""; %>
        
        <%-- Check if postId is not null --%>
        <% if (postId != null && !postId.isEmpty()) { %>
            <%-- Determine the post details based on the postId --%>
            <% if (postId.equals("1")) { %>
                <%-- Set the post details for postId 1 --%>
                <% imageUrl = "/images/image1.jpg"; %>
                <% postTitle = "게시글 제목1"; %>
                <% postDescription = "게시글 내용1"; %>
            <% } else if (postId.equals("2")) { %>
                <%-- Set the post details for postId 2 --%>
                <% imageUrl = "/images/image2.jpg"; %>
                <% postTitle = "게시글 제목2"; %>
                <% postDescription = "게시글 내용2"; %>
            <% } else if (postId.equals("3")) { %>
                <%-- Set the post details for postId 3 --%>
                <% imageUrl = "/images/image3.jpg"; %>
                <% postTitle = "게시글 제목3"; %>
                <% postDescription = "게시글 내용3"; %>
            <% } else if (postId.equals("4")) { %>
                <%-- Set the post details for postId 4 --%>
                <% imageUrl = "/images/image4.jpg"; %>
                <% postTitle = "게시글 제목4"; %>
                <% postDescription = "게시글 내용4"; %>
            <% } else if (postId.equals("5")) { %>
                <%-- Set the post details for postId 5 --%>
                <% imageUrl = "/images/image5.jpg"; %>
                <% postTitle = "게시글 제목5"; %>
                <% postDescription = "게시글 내용5"; %>
            <% } else if (postId.equals("6")) { %>
                <%-- Set the post details for postId 6 --%>
                <% imageUrl = "/images/image6.jpg"; %>
                <% postTitle = "게시글 제목6"; %>
                <% postDescription = "게시글 내용6"; %>
            <% } %>
        <% } %>
        
        <div class="post">
            <img src="<c:out value="${imageUrl}" />" alt="Post Image">
            <h3><c:out value="${postTitle}" /></h3>
            <p><c:out value="${postDescription}" /></p>
        </div>
    </div>

    <!-- 푸터템플릿 시작 -->
    <%@ include file="/WEB-INF/views/ind/footerTmp.jsp"%>
    <!-- 푸터템플릿 끝 -->
</div>
<!-- div#wrap -->

<script src="/script/jquery-3.6.4.min.js"></script>
<script src="/script/script.js"></script>
</body>
</html>