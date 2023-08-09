<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- <link rel="stylesheet" href="../resources/css/Zero_mainpage.css"> -->
		<link rel="stylesheet" href="../resources/css/reset.css">
		<!-- <link rel="stylesheet" href="../resources/css/slide.css"> -->
		<!-- <link rel="stylesheet" href="../resources/css/d-day.css"> -->
		<!-- <link rel="stylesheet" href="../resources/css/Zero_signUp.css"> -->
		<!-- <link rel="stylesheet" href="../resources/css/asdf.css"> -->
		<link rel="stylesheet" href="../resources/css/event.css">
		<title>제로마켓</title>
	</head>
	<body>
		<div id="wrap">
			<jsp:include page="/WEB-INF/views/include/header.jsp"></jsp:include>
			<script>
				function logout() {
					confirm("로그아웃 하시겠습니까?");
				}
				function deleteUser() {
					confirm("정말 탈퇴 하시겠습니까?");
				}
			</script>
			<!---------------------------------------------------------- 공지사항 ---------------------------------------------------------->
			<main>
				<div id="container">
					<div class="contents ">
						<div class="order_top_wrap">
							<h2>상단타이틀</h2>
							<div class="order_top">
								<div class="order_title1 noto_sans">고객센터</div>
							</div>
						</div>
	
						<div class="order_checkmn_wrap_new">
							<h2>기간설정</h2>
							<!--기본선택
						<ul class="order_checkmn"> 
							<li class="order_checkmn_on"><a href="#" class="order_checkmn_a">1주일</a></li>
							<li><a href="#" class="order_checkmn_a">1개월</a></li>  
							<li><a href="#" class="order_checkmn_a">3개월</a></li>
							<li><a href="#" class="order_checkmn_a">6개월</a></li> 
							<li><a href="#" class="order_checkmn_a">기간설정</a></li> 
						</ul>
						<!--//기본선택-->
	
							<!--기간설정-->
							<ul class="order_checkmn_new noto_sans">
								<li class="order_checkmn_new_on"><a class="order_checkmn_a2">공지사항</a></li>
								<li><a href="/cs_help/faq.asp" class="order_checkmn_a2">FAQ</a></li>
								<li><a href="/member/mem_cs_list.asp"
									class="order_checkmn_a2">1:1문의</a></li>
	
								<!--20220225a 1:1문의하기 버튼외 변경-->
								<li>
									<div class="cs_btn_w">
										<div class="cs_btn_box">
											<span class="btn_cs_1to1"><a
												onclick="alert('지금은 고객센터 업무 시간이 아닙니다. \n문의글을 남겨주시면, 업무 재개 후 순차적으로 답변드릴게요. \n\n※ \'상품준비중\' 상태에서는 모든 취소, 변경이 불가한 점 양해부탁드려요.');location.href='/member/mem_cs_write.asp';"
												style="cursor: pointer"><img src="/img/ico/ico_write.png">1:1
													문의</a></span><span class="btn_cs_toktok"><a
												onclick="alert('지금은 상담시간이 아닙니다.\n1:1 문의하기를 이용해주세요');"
												style="cursor: pointer"><img
													src="/img/ico/ico_naver_tok_off.png">톡톡 상담</a></span>
										</div>
									</div>
								</li>
							</ul>
							<!--기간설정-->
						</div>
	
	
						<table class="tbl-list ty02 noto_sans" summary="">
							<caption></caption>
							<colgroup>
								<col style="width: auto">
								<col style="width: 125px">
								<col style="width: 80px">
								<col style="width: 80px">
							</colgroup>
							<thead>
								<tr>
									<th>제목</th>
									<th>작성자</th>
									<th>조회수</th>
									<th class="last">작성일</th>
								</tr>
							</thead>
							<tbody>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5896457">개인정보처리방침
											7차 개정 안내</a><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>401</td>
									<td>2023.05.25</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5895649">6월
											배송일정 및 고객센터 업무 안내</a> <img src="/img/ico/ico_pic.png" alt="사진파일첨부"
										class="ico"><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>791</td>
									<td>2023.05.24</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5873436">5월
											배송일정 및 고객센터 업무 안내</a> <img src="/img/ico/ico_pic.png" alt="사진파일첨부"
										class="ico"><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>619</td>
									<td>2023.04.26</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5855518">통밀당
											시카고 씬피자 고르곤졸라 유통기한 안내</a><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>620</td>
									<td>2023.04.07</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5815644">3월
											배송일정 및 고객센터 업무 안내</a> <img src="/img/ico/ico_pic.png" alt="사진파일첨부"
										class="ico"><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>908</td>
									<td>2023.02.23</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5782447">1월
											설연휴 배송일정 및 고객센터 업무 안내</a> <img src="/img/ico/ico_pic.png"
										alt="사진파일첨부" class="ico"><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>1563</td>
									<td>2023.01.10</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5772312">12월
											30일(금) 고객센터 운영 안내</a><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>519</td>
									<td>2022.12.26</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5735471">[2022
											다신나는 블랙데이] 다신샵 올해의 베스트 상품을 뽑아 주세요!</a> <img
										src="/img/ico/ico_pic.png" alt="사진파일첨부" class="ico"><em
										class="c-num">
											<!--1749 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>20952</td>
									<td>2022.11.15</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5702016">10월
											배송일정 및 고객센터 업무 안내</a> <img src="/img/ico/ico_pic.png" alt="사진파일첨부"
										class="ico"><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>12268</td>
									<td>2022.09.29</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5693533">기본
											배송비 변경 안내</a><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>11548</td>
									<td>2022.09.20</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5681851">힌남노
											태풍으로 일부 지역 택배 조기 마감 안내</a><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>5974</td>
									<td>2022.09.02</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5680636">9월
											추석 연휴 배송일정 및 고객센터 업무 안내</a> <img src="/img/ico/ico_pic.png"
										alt="사진파일첨부" class="ico"><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>6452</td>
									<td>2022.09.01</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5658517">8월
											배송일정 및 고객센터 업무 안내</a> <img src="/img/ico/ico_pic.png" alt="사진파일첨부"
										class="ico"><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>6206</td>
									<td>2022.08.08</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5579385">6월
											배송일정 및 고객센터 업무 안내</a> <img src="/img/ico/ico_pic.png" alt="사진파일첨부"
										class="ico"><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>39634</td>
									<td>2022.05.30</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5553150">5월
											배송일정 및 고객센터 업무 안내</a> <img src="/img/ico/ico_pic.png" alt="사진파일첨부"
										class="ico"><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>51746</td>
									<td>2022.05.02</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5498341">3월
											배송일정 및 고객센터 업무 안내</a> <img src="/img/ico/ico_pic.png" alt="사진파일첨부"
										class="ico"><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>74141</td>
									<td>2022.02.24</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5476591">설연휴
											배송일정 및 고객센터 업무 안내</a> <img src="/img/ico/ico_pic.png" alt="사진파일첨부"
										class="ico"><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>60961</td>
									<td>2022.01.24</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5461885">CJ대한통운
											택배 파업으로 인한 일부 지역 출고 지연 안내</a><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>12883</td>
									<td>2022.01.03</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5454646">12월
											배송일정 및 고객센터 업무 안내</a> <img src="/img/ico/ico_pic.png" alt="사진파일첨부"
										class="ico"><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>10066</td>
									<td>2021.12.22</td>
								</tr>
	
								<tr>
									<td class="subject"><a href="notice_view.asp?idx=5431340">다신배송
											상품 출고 지연 안내</a><em class="c-num">
											<!--0 2019.04.30 박민용팀장요청-->
									</em></td>
									<td class="writer">다신지킴이</td>
									<td>17151</td>
									<td>2021.11.24</td>
								</tr>
	
							</tbody>
						</table>
	
						<!-- contents -->
	
						<!-- 할인상품 list -->
	
						<!-- 페이징 2개 이상 10개 이상일 경우 -->
						<div class="module_n_page">
							<ul class="page_w">
								<li class="pg_this noto_sans"><a>1</a></li>
								<li class="noto_sans"><a
									href="/cs_help/customer.asp?gotopage=2">2</a></li>
								<li class="pg_list_last noto_sans"><a
									href="/cs_help/customer.asp?gotopage=3">3</a></li>
								<li class="btn_n_next"><a
									href="/cs_help/customer.asp?gotopage=2"><span>&gt;</span></a></li>
							</ul>
						</div>
						<!-- //페이징 2개 이상 10개 이상일 경우 -->
					</div>
				</div>
			</main>
			<jsp:include page="/WEB-INF/views/include/footer.jsp"></jsp:include>
		</div>
	</body>
</html>