<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	
	<meta name="viewport" content="width=device-width, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
	
	<title>중고 경매</title>
	
	<link rel="stylesheet" href="/resources/css/animate.css">
    <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="/resources/css/custom.css">
    <link rel="stylesheet" href="/resources/css/flashy.min.css">
    <link rel="stylesheet" href="/resources/css/flaticon.css">
    <link rel="stylesheet" href="/resources/css/font-awesome.min.css">
    <link rel="stylesheet" href="/resources/css/magnific-popup.css">
    <link rel="stylesheet" href="/resources/css/pogo-slider.min.css">
    <link rel="stylesheet" href="/resources/css/responsive.css">
    <link rel="stylesheet" href="/resources/css/responsiveslides.css">
    <link rel="stylesheet" href="/resources/css/style.css">
    <link rel="stylesheet" href="/resources/css/timeline.css">     
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.min.js"></script>
    
    <script src="/resources/javascript/bootstrap.min.js"></script>
	<script src="/resources/javascript/contact-form-script.js"></script>
	<script src="/resources/javascript/form-validator.min.js"></script>
	<script src="/resources/javascript/images-loded.min.js"></script>
	<script src="/resources/javascript/isotope.min.js"></script>
	<script src="/resources/javascript/jquery.magnific-popup.min.js"></script>
	<script src="/resources/javascript/jquery.min.js"></script>
	<script src="/resources/javascript/jquery.pogo-slider.min.js"></script>
	<script src="/resources/javascript/popper.min.js"></script>
	<script src="/resources/javascript/responsiveslides.min.js"></script>
	<script src="/resources/javascript/slider-index.js"></script>
	<script src="/resources/javascript/smoothscroll.js"></script>
    
    <script type="text/javascript">
		
	$(function(){
		
		$(document).on('click', '.effect-service', function(){
			const productNo = $(this).children('p').text();
			window.location.href = '/auction/getAuctionProduct?auctionProductNo='+productNo;
		});
	
		//크롤링 버튼
		$('#crawling').on("click", function(){
			alert("크롤링이 시작되었습니다.");
			$(this).attr('disabled', true);
			$.ajax( 
					{
						url : "/auction/rest/crawling",
						method : "GET" ,
						dataType : "json",
						headers : {
							"Accept" : "application/json",
							"Content-Type" : "application/json"
						},
						success : function(JSONData , status) {
							alert(JSONData.isSuccess);
							$(this).attr('disabled', false);
						}
				});
		});	
		
		//상품 등록 버튼
		$('#addProduct').on("click", function(){
			window.location.href = '/auction/addAuctionProduct';
		});	
		
		$('.dropdown-item').on("click",function(){
			$('#sortCondition').val($(this).text());
			$("#searchForm").attr('method','get').attr('action','/auction/listAuctionProduct').submit();
		});
		
		$('#search').keypress(function(e){
			if(e.keyCode == '13'){
				$("#searchForm").attr('method','get').attr('action','/auction/listAuctionProduct').submit();
			}
		});
		$('#search').keypress(function(){
			
		});
	});
	
	//무한스크롤
	var page = 2; 
	$(window).scroll(function() {
		var sortCondition = $('#sortCondition').val();
		var searchKeyword = $('#searchKeyword').val();
	    if ((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
	    	$.ajax(
					{
						url : "/auction/rest/infiniteScroll",
						method : "POST",
						data : JSON.stringify({
							currentPage : page,
							sortCondition : sortCondition,
							searchKeyword : searchKeyword
						}),
						headers : {
							"Accept" : "application/json",
							"Content-Type" : "application/json"
						},
						dataType : "json",
						success : function(JSONData,status){
						var str = "";
							for(var i = 0; i<JSONData.length; i++){
								
							var stringHtml = 
									'<div class="col-lg-3 col-sm-6 productThumbnails">'
									+'<figure class="effect-service">'
									+	'<div>'
									+		'<img src="/uploadfiles/auctionimg/product/'+JSONData[i].productImg1+'" width="100%" height="100%"/>'
									+	'</div>'
									+	'<p hidden="">'+JSONData[i].auctionProductNo+'</p>'
									+	'<h4>'+JSONData[i].auctionProductName+'</h4>'
									+	'<div>조회수 : '+JSONData[i].productViewCount+'</div>'
									+	'<div>경매 시작가 : '+JSONData[i].startBidPrice+'</div>'
									+	'<div>희망 낙찰가 : '+JSONData[i].hopefulBidPrice+'</div>'
									+	'<div>경매 잔여 시간 : '+JSONData[i].remainAuctionTime+'</div>'
									+	'<span>'+JSONData[i].hashtag1+'&nbsp;'+JSONData[i].hashtag2+'&nbsp;'+JSONData[i].hashtag3+'</span>'
									+'</figure>'
									+'</div>';
							str += stringHtml;
							}

							$("#append").append('<div class="row">'+str+'</div>');
							page += 1;							
						}
					});
	    		}
		});
		
	</script>
	
	<style>
		.productThumbnails{
			height : 600px;
		}
	</style>
	
</head>
<body id="home" data-spy="scroll" data-target="#navbar-wd" data-offset="98">

	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<div id="b-deals" class="services-box main-timeline-box">
		<div class="container col-lg-9">
			<div class="row">
				<div class="col-lg-12">
					<div class="title-box">
						<h2>Auction</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="btn-group col-md-2">
					<button class="btn btn-secondary btn-sm dropdown-toggle"
						type="button" data-toggle="dropdown" aria-expanded="false">
						정렬조건</button>
					<div class="dropdown-menu">
						<a class="dropdown-item" >희망 낙찰가 높은 순</a>
					    <a class="dropdown-item" >희망 낙찰가 낮은 순</a>
					    <a class="dropdown-item" >조회수 높은 순</a>
					    <a class="dropdown-item" >경매 입박 순</a>
					    <a class="dropdown-item" >조회수 순</a>
					</div>
				</div>
				<div class="col-md-7">
				<form id="searchForm">
					<input id="sortCondition" type="hidden" name="sortCondition" value="${search.sortCondition}"/>
					<input id="searchKeyword" type="text" id="search" name="searchKeyword" class="form-control" aria-label="Large" aria-describedby="inputGroup-sizing-sm" value="${search.searchKeyword}">
				</form>
				</div>
				<div >
					<button id="crawling" class="btn btn-common">상품 크롤링하기!</button>
				</div>
				<div >
					<button id="addProduct" class="btn btn-common">상품 등록</button>
				</div>
			</div>
			
			<div class="row">
			<c:forEach var="product" items="${list}">
				<div class="col-lg-3 col-sm-6 productThumbnails">
					<figure class="effect-service">
						<div>
							<img src="/uploadfiles/auctionimg/product/${product.productImg1}" width="100%" height="100%"/>
						</div>
						<p hidden="">${product.auctionProductNo}</p>
						<h4>${product.auctionProductName}</h4>
						<div>조회수 : ${product.productViewCount }</div>
						<div>경매 시작가 : ${product.startBidPrice }</div>
						<div>희망 낙찰가 : ${product.hopefulBidPrice }</div>
						<div>경매 잔여 시간 : ${product.remainAuctionTime}</div>
						<span>${product.hashtag1}&nbsp;${product.hashtag2}&nbsp;${product.hashtag2}</span>
					</figure>
				</div>
			</c:forEach>			
			</div>
			
			<div id="append"></div>
		</div>
		<div class="col-lg-3"></div>
	</div>	
	
	<footer class="footer-box">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<p class="footer-company-name">All Rights Reserved. &copy; 2018 <a href="#">Evento Christmas</a> Design By : <a href="https://html.design/">html design</a></p>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>