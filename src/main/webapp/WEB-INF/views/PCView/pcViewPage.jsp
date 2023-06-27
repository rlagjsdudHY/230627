<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<title>Document</title>
		<link rel="stylesheet" href="/style/style.css">
		<link rel="stylesheet" href="/style/style_Template.css">
		<style>
		main#main { /* border: 1px solid #000; */ }
#main div { margin: 0 auto; }
div#GoodsImage { width: 50%; }
div#goodsOption { /* border: 1px solid #000; */ width: 50%; text-align: center; }
#goodsOption h1 { text-align: center; }
#goodsOption hr { border: 1px solid #000; }
#goodsOption div.opArea { padding: 2px; padding-top: 10px; font-size: 12px; }
#goodsOption div.opArea span { font-weight: bold; flex: 1; text-align: left; }
#goodsOption div.opArea div#selArea { width: 220px; margin-right: 150px; }
#goodsOption div.opArea div#selArea select { width: 200px; font-size: 12px;  }
div#GoodsImage { /* border: 1px solid #000; */ padding: 20px 0; text-align: center; }
div#GoodsImage img { /* border: 1px solid #000; */ width: 400px; height: 400px; margin: auto 0; }
div#GoodsImage img:nth-child(2) { height: 130px; margin-top: 80px; }
div#plusBuyArea { margin: 20px 0; margin-top: 10px; }
div#plusBuyArea span:last-child { margin-right: 180px; }
div#orderArea div#orderCnt { margin-right: 300px; }
#goodsOption table { /* border: 1px solid #000; */ width: 380px; }
#goodsOption table tbody tr th { font-size: 12px; text-align: left; }
#goodsOption table tbody tr td { font-size: 12px; text-align: left; padding-left: 50px; }
#goodsOption table tbody tr td span { font-weight: bold; }
div#btnArea { padding: 20px 0; }
div#btnArea span { border: 1px solid #000; font-size: 18px; font-weight: bold;
					padding: 10px 14px; }
div#btnArea span:hover { cursor: pointer; background-color: #aaa; }
div#ASArea { /* border: 1px solid #000; */ width: 100%; }
#ASArea div { padding: 20px 10px; }
#ASArea div * { /* border: 1px solid #000; */ }
#ASArea div span:nth-child(1) { width: 100px; }
#ASArea div span:nth-child(2) { font-weight: bold; flex: 1; font-size: 22px; }
#ASArea div span:nth-child(3) { border: 1px solid #000; width: 100px; margin: -10px 0; line-height: 45px; }
#ASArea div span:nth-child(3):hover { cursor: pointer; font-weight: bold; background-color: #aaa; }
#ASArea div span:nth-child(4) { border: 1px solid #000; width: 100px;  margin: -10px 0; line-height: 45px; }
#ASArea div span:nth-child(4):hover { cursor: pointer; font-weight: bold; background-color: #aaa; }
#ASArea div#b span:nth-child(3) { width: 200px; margin: -10px 0; line-height: 45px; }
#ASArea div#b span:nth-child(3):hover { cursor: pointer; font-weight: bold; background-color: #aaa; }
footer#footer { text-align: center; }
		</style>
	</head>
	<body>
		<div id="wrap">
			<header id="header">
				<!--  헤더템플릿 시작 -->
				<%@ include file="/WEB-INF/views/ind/headerTmp.jsp"%>
				<!--  헤더템플릿 끝 -->
			</header>
			
			<main id="main" class="dFlex">
				<div id="GoodsImage">
					<img alt="제품" src="images/TestImg.jpg">
					<img alt="#" src="images/sampleImg.png">
					<div id="ASArea">
						<div id="a" class="dFlex">							
							<span>상품문의</span>
							<span>1566-2728</span>
							<span>게시판 문의</span>
							<span>카카오 상담</span>
						</div>
						<div id="b" class="dFlex">						
							<span>전국 A/S</span>
							<span>1566-2728</span>
							<span>출장신청 (보증기간 내 무료)</span>
						</div>
					</div>
				</div>
				<div id="goodsOption">
					<h1>고성능/3D전용 F4</h1>
					<hr>
					<div id="opArea01" class="opArea dFlex">
						<span>모니터 포함</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea02" class="opArea dFlex">
						<span>CPU</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea03" class="opArea dFlex">
						<span>CPU 쿨러</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea04" class="opArea dFlex">
						<span>메모리</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea05" class="opArea dFlex">
						<span>메인보드</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea06" class="opArea dFlex">
						<span>SSD 하드</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea07" class="opArea dFlex">
						<span>HDD 추가</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea08" class="opArea dFlex">
						<span>그래픽 카드</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea09" class="opArea dFlex">
						<span>CD 드라이브</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea10" class="opArea dFlex">
						<span>사운드</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea11" class="opArea dFlex">
						<span>랜카드</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea12" class="opArea dFlex">
						<span>케이스</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea13" class="opArea dFlex">
						<span>파워</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea14" class="opArea dFlex">
						<span>윈도우</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea15" class="opArea dFlex">
						<span>오피스</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea16" class="opArea dFlex">
						<span>사은품</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea17" class="opArea dFlex">
						<span>추가 사은품</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<div id="opArea18" class="opArea dFlex">
						<span>AS</span>
						<div id="selArea">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
							</select>
						</div>
					</div>
					<hr>
					<div id="plusBuyArea" class="opArea dFlex">
						<span>추가 구매</span>
						<span>[추가된 상품이 없습니다.]</span>
					</div>
					<hr>
					<div id="orderArea" class="opArea dFlex">
						<span>주문 수량</span>
						<div id="orderCnt">
							<select>
								<option>1</option>
								<option>2</option>
								<option>3</option>
								<option>4</option>
								<option>5</option>
								<option>6</option>
								<option>7</option>
								<option>8</option>
								<option>9</option>
								<option>10</option>
							</select>
							<span>개</span>
						</div>
					</div>
					<table>
						<tbody>
							<tr>
								<th><span>제조원</span></th>
								<td><span>주식회사 원</span></td>
							</tr>
							<tr>
								<th><span>기본가격</span></th>
								<td>${"1,000,000"}<span>원</span></td>
							</tr>
							<tr>
								<th><span>결제금액</span></th>
								<td>${"1,000,000"}<span>원 (V.A.T 포함)</span></td>
							</tr>
						</tbody>
					</table>
					
					<div id="btnArea">
						<span>구매하기</span>
						<span>장바구니 담기</span>
						<span>견적서 출력</span>
					</div>
					
				</div>
			</main>
			
			<footer id="footer">
				
			</footer>
			
		</div>
		<!-- div#wrap -->
		<script src="/script/jquery-3.6.4.min.js"></script>
		<script src="/script/script.js"></script>
	</body>
</html>