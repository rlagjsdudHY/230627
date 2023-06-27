<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
String uidSession_MLTmp = (String)session.getAttribute("uidSession");
request.setCharacterEncoding("UTF-8");

String gnbParam = "";
if (request.getParameter("gnbParam") != null) {
	gnbParam = request.getParameter("gnbParam");
}
%>    

	<nav id="mainLNB">
		<ul id="lnbMainMenu">
		
		<% if (uidSession_MLTmp == null) { %>
			<%if(gnbParam.equals("")){ %>
				<li class="lnbMainLi"><a href="#">menu1</a></li>
				<li class="lnbMainLi"><a href="#">menu2</a></li>
				<li class="lnbMainLi"><a href="#">menu3</a></li>
				<li class="lnbMainLi"><a href="#">menu4</a></li>
				<li class="lnbMainLi"><a href="#">menu5</a></li>
		
		<% 	}else if(gnbParam.equals("list")){ %>
				<li class="lnbMainLi"><a href="/bbs/list.jsp?gnbParam=list">자유게시판</a></li>
				<li class="lnbMainLi"><a href="/bbs/galleryList.jsp?gnbParam=list">갤러리게시판</a></li>
				<li class="lnbMainLi"><a href="#">menu3</a></li>
				<li class="lnbMainLi"><a href="#">menu4</a></li>
				<li class="lnbMainLi"><a href="#">menu5</a></li>
		<% 	}else{ %>
				<li class="lnbMainLi"><a href="#">menu1</a></li>
				<li class="lnbMainLi"><a href="#">menu2</a></li>
				<li class="lnbMainLi"><a href="#">menu3</a></li>
				<li class="lnbMainLi"><a href="#">menu4</a></li>
				<li class="lnbMainLi"><a href="#">menu5</a></li>
			
		<% 	} 
		} else { %>
		
			<% if(gnbParam.equals("myPage")) { %>
				<li class="lnbMainLi"><a href="/member/memberMod.jsp?gnbParam=myPage">회원정보수정</a></li>
				<li class="lnbMainLi"><a href="/member/memberPwChk.jsp?gnbParam=myPage">비밀번호변경</a></li>
				<li class="lnbMainLi"><a href="/member/myPage.jsp?gnbParam=myPage">접속내역</a></li>
				<li class="lnbMainLi"><a href="/member/memberQuit.jsp?gnbParam=myPage">회원탈퇴</a></li>
				<li class="lnbMainLi"><a href="#">menu5</a></li>
			<% } else if(gnbParam.equals("list")) { %>
				<li class="lnbMainLi"><a href="/bbs/list.jsp?gnbParam=list">자유게시판</a></li>
				<li class="lnbMainLi"><a href="/bbs/galleryList.jsp?gnbParam=list">갤러리게시판</a></li>
				<li class="lnbMainLi"><a href="#">menu3</a></li>
				<li class="lnbMainLi"><a href="#">menu4</a></li>
				<li class="lnbMainLi"><a href="#">menu5</a></li>
			<% } else {%>
				<li class="lnbMainLi"><a href="#">menu1</a></li>
				<li class="lnbMainLi"><a href="#">menu2</a></li>
				<li class="lnbMainLi"><a href="#">menu3</a></li>
				<li class="lnbMainLi"><a href="#">menu4</a></li>
				<li class="lnbMainLi"><a href="delete">회원탈퇴</a></li>
			<% } %>
		<% } %>
		
		</ul>
	</nav>