<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@	taglib	prefix="c"	uri="http://java.sun.com/jsp/jstl/core"	%>    
<!DOCTYPE html>
<html lang ="ko">
	<head>
		<meta charset="UTF-8">
		<title>회원가입동의</title>
		<link rel="stylesheet" href="/style/style.css">
		<link rel="stylesheet" href="/style/style_Template.css">
		<style>
		/*////////////////////////////////////////////////////////////////////*/
/*////////// 회원가입 사용권 동의 시작 /member/joinAgreement ////////// */
/*////////////////////////////////////////////////////////////////////*/

div#wrap>main>div.joinAgree>div#chkAllArea {
	font-size: 18px;
	margin: 20px 20px 40px;
}
div#wrap>main>div.joinAgree>div#chkAllArea input {
	width: 22px;
	height: 22px;
	transform: translateY(6px);
}

/*
div#wrap>main>div.joinAgree>div#licenseArea {
	border: 1px solid #08f;
}
*/

div#wrap>main>div.joinAgree>div#licenseArea>div.termArea {
	margin-bottom: 40px;
}
#wrap>main>.joinAgree>#licenseArea>.termArea>h3 {
	width: 940px;
	margin: 5px 20px;
}
#wrap>main>.joinAgree>#licenseArea>.termArea>iframe {
	width: 940px;
	border: 1px solid #aaa;
	margin: 5px 20px;
}
#wrap>main>div.joinAgree>#licenseArea>.termArea>label {
	margin-left: 20px;
}
#wrap>main>div.joinAgree>#licenseArea>.termArea>label>input[type=checkbox] {
	width: 18px;
	height: 18px;
	transform: translateY(3px);
}


#wrap>form#joinFrm {
	text-align: center;
	/*border: 1px solid #000;*/
}

div#headerLogo {text-align: center;}
#wrap>#joinFrm>div#formArea>button {
	font-size: 20px;	padding: 10px 15px;	border-radius: 6px;	border: 1px solid #eee;
							background-color: rgba(0, 109, 41, 0.1);	color: #006a26;	margin: 10px;
}

#wrap>#joinFrm>#formArea>button:hover {
	font-weight: bold;
}
/*////////////////////////////////////////////////////////////////////*/
/*////// 회원가입 사용권 동의 끝 /member/joinAgreement.jsp /////// */
/*////////////////////////////////////////////////////////////////////*/
		
		</style>
	</head>
	<body>
		<div id="wrap">
			
			<div id="headerLogo">
    			<a href="/">
    				<img src="/images/logo.png" alt="헤더로고이미지">
    			</a>
    		</div> 
			
			<main id="main" class="dFlex">
	    	
	    		<!-- 실제 작업 영역 시작 -->
	    		<div id="contents" class="joinAgree">
	    		
	    			<div id="chkAllArea">
	    				<label>
	    					<input type="checkbox" id="chkAll">
	    					이용약관 및 개인정보수집 및 이용, 쇼핑정보 수신(선택)에 모두 동의합니다.
	    				</label>
	    			</div>
	    			
	    			<div id="licenseArea">
	    			    			
		    			<div class="termArea">
			    			<h3>[필수] 이용약관 동의</h3>
			    			<!--  iframe, textarea, div 중 선택하여 제작한다. -->
			    			
			    			<iframe src="/ind/usingAgree" class="usingAgree"></iframe>
			    			<label>
				    			이용약관에 동의하십니까?
				    			<input type="checkbox" class="usingAgreeChk chkRequired"
				    			data-link="0"> 동의함 (필수)
			    			</label> 
		    			</div>
		    			    			    			    		
		    			<div class="termArea">	    			
			    			<h3>[필수] 개인정보 수집 및 이용 동의</h3>
			    			<iframe src="/ind/personalInfoAgree" class="usingAgree"></iframe>
			    			<label>
				    			개인정보 수집 및 이용에 동의하십니까?
				    			<input type="checkbox" class="usingAgreeChk chkRequired"
				    			data-link="1"> 동의함 (필수)
			    			</label> 
			    		</div>	    			    		
		    			    		
		    			<div class="termArea">    			
			    			<h3>[선택] 쇼핑정보 수신 동의</h3>
			    			<iframe src="/ind/shopInfoAgree" class="usingAgree"></iframe>
			    			<label>
				    			쇼핑정보 수신에 동의하십니까?
				    			<input type="checkbox" class="usingAgreeChk"
				    			data-link="2"> 동의함 (선택)
			    			</label> 
		    			</div>
	    			
	    			</div>  <!--  div#licenseArea -->
	    		
	    		
	    		</div>
	    		<!-- 실제 작업 영역 끝 -->
	    		    	
	    	</main>
	    	<!--  main#main  -->
	    	
	    	<form id="joinFrm" method="post" action="/join">	    	
	   			<input type="hidden" name="vCode" value="chkOK1234">  <!-- 참고. 비정상접속 제한용 난수값으로 처리함 -->
	    	<div id="formArea">
	    		<button type="button" >회원가입</button>
	    	</div>
    	
    		</form>  <!--  form#joinFrm -->
    
        	   	
    	<!--  푸터템플릿 시작 -->
    	<%@ include file="/WEB-INF/views/ind/footerTmp.jsp" %>
    	<!--  푸터템플릿 끝 -->  
		
		</div>
		<!-- #wrap -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
  		<script src="/script/script.js"></script>
  		<script>

  		$(function(){
  			
  			///////////////////////////////////////////////////////////////////////////
  			/*///////   회원가입(/member/joinAgreement.jsp) 동의 시작   //////*/
  			///////////////////////////////////////////////////////////////////////////
  			
  			/* 회원가입 동의 체크박스 전체 선택 시작   /member/joinAgreement.jsp 	 */
  				
  			// 정방향 전체 체크 적용		
  			$(".joinAgree input#chkAll").click(function(){
  				
  				let boolChk = $(this).prop("checked");
  				//alert("boolChk : " + boolChk);
  				// boolean => true/false
  				// attr => attribute, 애트리뷰트, 속성
  				// prop => property, 프라퍼티, 속성		
  				$(".joinAgree  div.termArea input[type=checkbox]").prop("checked", boolChk);
  				
  			});
  			
  			
  			// 역방향 전체 체크 적용
  			$(".joinAgree .termArea input[type=checkbox]").click(function(){
  				
  				let  boolChk = false;				
  				//let idx = $(this).attr("data-link");
  				//alert("idx : " + idx);
  				let chk0 =$(".joinAgree .termArea").eq(0).find("input").prop("checked");
  				let chk1 =$(".joinAgree .termArea").eq(1).find("input").prop("checked");
  				let chk2 =$(".joinAgree .termArea").eq(2).find("input").prop("checked");
  				
  				// .eq(인덱스번호)  => 형제요소들의 인덱스번호에 해당하는 대상을 선택, eq = equal
  				//let str = "chk0 : " + chk0 + "\nchk1 : " + chk1 + "\nchk2 : " + chk2;
  				//alert(str);
  				
  				if (chk0 && chk1 && chk2) {
  					boolChk = true;    // 3개의 약관 모두 체크 되었을 때 실행됨.
  				}
  				
  				$(".joinAgree input#chkAll").prop("checked", boolChk);
  			});
  			
  			/* 회원가입 동의 체크박스 전체 선택 끝  	/member/joinAgreement.jsp 	 */
  			
  			
  			/* 이용약관 form 실행 시작 */
  			$("form#joinFrm button").click(function(){
  				//$("form#joinFrm").action="/member/member.jsp";
  				// 점검
  				let chkReq0 = $(".joinAgree .termArea").eq(0).find("input").prop("checked");
  				let chkReq1 = $(".joinAgree .termArea").eq(1).find("input").prop("checked");
  				if (chkReq0 == false) {
  					alert("이용약관 동의를 체크해주세요");
  					$(".joinAgree .termArea").eq(0).find("input").css({"outline": "1px solid #08f"});
  					$(".joinAgree .termArea").eq(0).find("input").focus();
  				} else if(chkReq1 == false) {			
  					alert("개인정보 수집 및 이용 동의를 체크해주세요");
  					$(".joinAgree .termArea").eq(1).find("input").css({"outline": "1px solid #08f"});
  					$(".joinAgree .termArea").eq(1).find("input").focus();
  				} else {
  					$("form#joinFrm").submit();			
  				}
  				
  			});
  			
  			/* 이용약관 form 실행 끝 */
  				
  			///////////////////////////////////////////////////////////////////////////
  			/*//////////   회원가입(/member/joinAgreement.jsp) 동의 끝   /////////*/
  			///////////////////////////////////////////////////////////////////////////
  			
  		});

  		</script>
	</body>
</html>