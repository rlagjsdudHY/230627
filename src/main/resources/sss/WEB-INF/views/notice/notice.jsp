<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
    <%
request.setCharacterEncoding("UTF-8");
String uidSession = (String)session.getAttribute("uidSession"); 
%>
 
    <!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>공지사항 게시판</title>
		<link rel="stylesheet" href="/style/style.css">
		<style>
				div#wrap { margin: 0 auto; width: 1000px; text-align: center;}
				table { border-collapse: collapse;  width:900px; margin: 0 auto; }
				table th { border: 1px solid #000;  background-color: #78b9e0; }
				table td { border: 1px solid #000;  }
/* 				div#submitLine { margin-top: 30px; float:right; }	 */
				table#listHeader tbody tr th:nth-child(1) { width: 180px; }
				table#listHeader tbody tr th:nth-child(2) { width: 530px; }
				table#listHeader tbody tr th:nth-child(3) { width: 220px; }
				table#listHeader tbody tr th:nth-child(4) { width: 150px; }
				table#listHeader tbody tr th:nth-child(5) { width: 220px; }
				div#search { text-align:center; }
				div#nWrite { float:right; }
				input#searchText { width: 300px; height: 30px;   }
				button { padding: 10px 15px; }
		</style>
	</head>
	<body>
		<div id="wrap">
			<h1>공지사항 게시판</h1>
			<hr>
			
			<table id="listHeader">
				<tbody>
					<tr>
						<th>번호</th>
						<th>제목</th>
						<th>글쓴이</th>
						<th>조회</th>
						<th>날짜</th>
					</tr>
				</tbody>
				<tbody id="listInner">
				<c:forEach var="list" items="${NoticeList}">
					 <tr onclick="location.href='result?num=${list.num}'">  
						<td>${list.num }</td>
						<td>${list.title }</td>
						<td>${list.writer }</td>
						<td>${list.readcnt }</td>
						<td>
                            <fmt:formatDate value="${list.regTM}" pattern="yyyy-MM-dd" />
                        </td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div id="nWrite">
			<%if ((uidSession != null && "admin".equals(uidSession))) { %>
			<button type="button"   id="noticeWrite">글쓰기</button>
			<% } else{ %>
				<span></span>
			<% }%>
			</div>
			
			<div id="search" >
			<br><br>
			<input type="text" id="searchText">
			<button type="submit">검색</button>
			</div>
<!-- 			footer 삽입 -->
		</div>	
		<!-- div#wrap -->
		<script src="/script/jquery-3.6.4.min.js"></script>
        <script src="/script/script.js"></script>
        <script>
       	$(function(){
       		$("#noticeWrite").click(function(){
       			location.href="/write"
       		});
       		
       	});
        </script>	
	</body>
</html>
   
 