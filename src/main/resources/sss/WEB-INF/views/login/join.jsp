<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<link rel="stylesheet" href="/style/style.css">
		<style>
		
		</style>
	</head>
	<body>
		<div id="wrap">
		   		<div id="headerLogo">
    			<a href="/">
    				<img src="/images/logo.png" alt="헤더로고이미지">
    				회원가입
    			</a>
    		
    		</div>
			<hr>
			
			<form method="post" id="joinForm">
				<div>
					<span>아이디</span>
					<input type="text" name="uid" id="uid">
					<span id="uidChk"></span>
				</div>
				
				<div>
					<span>비밀번호</span>
					<input type="text" name="upw" id="upw">
					<span id="upwChk"></span>
				</div>
				
				<div>
					<span>비밀번호 확인</span>
					<input type="text" id="upw_Re">
					<span id="pwChk"></span>
				</div>
				
				<div>
					<span>이름</span>
					<input type="text" name="uName" id="uName">
					<span id="nameChk"></span>
				</div>
				
				<div>
					<span>전화번호</span>
					<input type="text" name="phone" id="phone">
					<span id="phoneChk"></span>
				</div>
				
				<div> 
					<span>주소</span>
					<input type="text" name="address" id="address">
					<span id="addChk"></span>
				</div>
				
				<div>
					<span>이메일</span>
					<input type="text" name="Email1" id="Email1">
					<span>@</span>
					<input type="text" name="Email2" id="Email2">
					<select id="emailDomain" class="frmDropMenu">
						<option value="">직접입력</option>
						<option>naver.com</option>
						<option>daum.net</option>
					</select>
					<span id="emailChk"></span>
				</div>
				<hr>
				<div id="btnArea">
					<button type="submit" id="submit">회원가입</button>
					<button type="reset">다시쓰기</button>
				</div>
				
			</form>
		</div>	
		<!-- div#wrap -->
		<script src="/script/jquery-3.6.4.min.js"></script>
        <script src="/script/script.js"></script>	
        <script src="https://code.jquery.com/jquery-3.6.4.js" ></script>
        <script>
        	$(function(){ 
       // 아이디 입력 확인
       $("#uid").on("keyup click",function(){
    	   
    	   let uid = $("input#uid").val();
    	   
    	   if(uid == "" ){
    	   $("span#uidChk").text("*아이디를 입력해주세요.");
    	   }  else if (uid !== "") {
				$("span#uidChk").text("");
			}
    	   
       });
       //아이디 입력 끝
       
       //비밀번호 입력 확인
       $("#upw").on("keyup click", function(){
    	   let upw = $("input#upw").val();
    	   
    	   if (upw == ""){
    		   $("span#upwChk").text("*비밀번호를 입력해주세요.");
    	   } else {
    		   $("span#upwChk").text("");
    	   }
       });
       //비밀번호 입력 확인 끝
       
        		// 비밀번호 / 비밀번호 확인 동일성 검사   +  유효성검사(정규표현식)
        		$("#upw_Re").keyup(function(){ 
        			let upw = $("#upw").val();
        			let upw_Re = $("#upw_Re").val();
        			
        			if (upw !== upw_Re) {
        				$("span#pwChk").text("*비밀번호가 다릅니다.");
        			} else {
        				$("span#pwChk").text("");
        			}
        			
        		});
       //비밀번호 동일성 , 유효성검사 끝
       
         // 이름 입력 확인
       $("#uName").on("keyup click",function(){
    	   
    	   let uName = $("input#uName").val();
    	   
    	   if(uName == "" ){
    	   $("span#nameChk").text("*이름을 입력해주세요.");
    	   }  else if (uid !== "") {
				$("span#nameChk").text("");
			}
    	   
       });
    // 이름 입력 끝
       
    //이메일 자동선택 시작
    
    // 선택된 Email 도메인 자동입력  
	$("select#emailDomain").change(function(){
		// change 이벤트 핸들러 => value값이 변경되었을때 인식하는 이벤트
		let emailDomain = $(this).val().trim();
		$("input#Email2").val(emailDomain);
		if (emailDomain == "") {
			$("input#Email2").focus();
		} else {
			$("input#Email1").focus();
		}
	});
    //이메일 자동선택 끝
    
       // 최종 제출 버튼 시작
        		$("button#submit").click(function(){
        			
        			let uid = $("input#uid").val().trim(); 
        			let upw = $("input#upw").val().trim(); 
        			let upw_Re = $("input#upw_Re").val().trim(); 
        			let uName = $("input#uName").val().trim(); 
        			let phone = $("input#phone").val().trim(); 
        			let address = $("input#address").val().trim(); 
        			let Email1 = $("input#Email1").val().trim(); 
        			let Email2 = $("input#Email2").val().trim(); 
					if( uid == "") {
						alert("아이디를 입력해주세요.");
					} else if (upw == "") {
        				alert("비밀번호를 입력해주세요.");
        			} else if (upw !== upw_Re) {
        				alert("비밀번호가 다릅니다.");
        			} else if (uName == "") {
        				alert("이름을 입력해주세요");
        			} else if (phone == "") {
        				alert("전화번호를 입력해주세요");
        			} else if (Email1 =="") {
        				alert("이메일을 입력해주세요");
        			} else if (Email2 =="") {
        				alert("이메일을 입력해주세요.");
        			} else { 
        				let chkSbmTF = confirm("회원가입하시겠습니까?");
        				if (chkSbmTF) {
        					$("form#joinForm").attr("action", "/joinProc");
            				$("form#joinForm").submit();
        				}
        			}
        			
        		});
       //최종 제출 버튼 끝
       
 
         
    });
        </script>
	</body>
</html>