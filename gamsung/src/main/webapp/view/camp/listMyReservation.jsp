<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
  <head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Document Title -->
    <title>listMyReservation</title>
     
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">
		<!-- Vendor CSS -->
		<link href="../../resources/lib/bootstrap/css/bootstrap.css" rel="stylesheet" />
		<link href="../../resources/lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
		<link href="../../resources/lib/magnific-popup/magnific-popup.css" rel="stylesheet" />
		<link href="../../resources/lib/bootstrap-datepicker/css/datepicker3.css" rel="stylesheet" />
		<!-- Theme CSS -->
		<link href="../../resources/css/theme.css" rel="stylesheet" />
		<!-- Skin CSS -->
		<link href="../../resources/css/skins/default.css" rel="stylesheet" />
		<!-- Theme Custom CSS -->
		<link href="../../resources/css/theme-custom.css" rel="stylesheet" >
		<!-- Head Libs -->
		<script src="../../resources/lib/modernizr/modernizr.js"></script>
    <!-- JavaScripts -->
    <script src="../../resources/lib/jquery/jquery.js"></script>
    <script src="../../resources/lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="../../resources/lib/wow/wow.js"></script>
    <script src="../../resources/lib/jquery.mb.ytplayer/dist/jquery.mb.YTPlayer.js"></script>
    <script src="../../resources/lib/isotope/isotope.pkgd.js"></script>
    <script src="../../resources/lib/imagesloaded/imagesloaded.pkgd.js"></script>
    <script src="../../resources/lib/flexslider/jquery.flexslider.js"></script>
    <script src="../../resources/lib/owl.carousel/dist/owl.carousel.min.js"></script>
    <script src="../../resources/lib/smoothscroll.js"></script>
    <script src="../../resources/lib/magnific-popup/magnific-popup.js"></script>
    <script src="../../resources/lib/simple-text-rotator/jquery.simple-text-rotator.min.js"></script>
    <script src="../../resources/js/plugins.js"></script>
    <script src="../../resources/js/main.js"></script>
    <!-- Kakao Map-->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=6f8199ad71211c3df709f290a0e83244&libraries=services"></script>
    <!-- Default stylesheets-->
    <link href="../../resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Template specific stylesheets-->
    <link href="../../resources/lib/animate.css/animate.css" rel="stylesheet">
    <link href="../../resources/lib/components-font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <link href="../../resources/lib/et-line-font/et-line-font.css" rel="stylesheet">
    <link href="../../resources/lib/flexslider/flexslider.css" rel="stylesheet">
    <link href="../../resources/lib/owl.carousel/dist/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="../../resources/lib/owl.carousel/dist/assets/owl.theme.default.min.css" rel="stylesheet">
    <link href="../../resources/lib/magnific-popup/magnific-popup.css" rel="stylesheet">
    <link href="../../resources/lib/simple-text-rotator/simpletextrotator.css" rel="stylesheet">       
    <!-- Main stylesheet and color file-->
    <link href="../../resources/css/style.css" rel="stylesheet">
    <link id="color-scheme" href="../../resources/css/colors/default.css" rel="stylesheet">  

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

  </head>

<body data-spy="scroll" data-target=".onpage-navigation" data-offset="60">
  
   <main>

      <jsp:include page="../common/header.jsp"></jsp:include>

   <div class="inner-wrapper">
      <jsp:include page="../common/userSideBar.jsp"></jsp:include>
      
      <section class="body">
  
        <div class="row" style="padding-top: 20px;">
          <div calss="col-sm-12" style="text-align: center; font-size: x-large; margin-bottom: 10px;">
            <span class="icon-happy"></span>&nbsp;예약 내역&nbsp;<span class="icon-happy"></span>
          </div>
          <div class="col-xs-12">
            <div class="row">
              <h4 class="col-sm-7 mb-0"></h4>
              <div class="col-sm-5 mb-sm-0">
                <div class="row">
                  <form role="form" class="reservation-search">
                    <div class="col-sm-4">
                      <select class="form-control" name="searchCondition">
                        <option value="0" ${! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>캠핑장</option>
                        <option value="1" ${! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>이용시설</option>
                        <option value="2" ${! empty search.searchCondition && search.searchCondition==2 ? "selected" : "" }>예약날짜</option>
                      </select>
                    </div>
                    <div class="col-sm-5">
                      <div class="search-box">
                        <input class="form-control" type="text" name="searchKeyword" placeholder="Search...">
                        <button class="search-btn" type="submit"><i class="fa fa-search"></i></button>
                      </div>
                    </div>
                    
                  </form>
                </div>
              </div>
            </div>
            
            <div class="row" style="margin-top: 20px; ">
               <div class="col-md-1"></div>
               <div class="col-md-10">
                  <section class="panel">
                     <div class="panel-body">
                        <div class="table-responsive">
                           <table class="table table-hover mb-none">
                              <thead>
                                 <tr>
                                    <th style="text-align: center;">번호</th>
                                    <th style="text-align: center;">캠핑장</th>
                                    <th style="text-align: center;">이용시설</th>
                                    <th style="text-align: center;">이용금액</th>
                                    <th style="text-align: center;">예약상황</th>
                                    <th style="text-align: center;">예약날짜</th>
                                 </tr>
                              </thead>
                              <tbody>
                                 <c:set var ="i" value="0" />
                                 <c:forEach var ="reservation" items="${list}">
                                    <c:set var ="i" value="${i+1}" />
                                       <tr class="reservation" value=${reservation.reservationNo} style="cursor: pointer; text-align: center;">
                                          <td class="col-sm-1 center">${ i }</td>
                                          <td class="col-sm-2">${reservation.camp.user.campName}</td>
                                          <td class="col-sm-2">${reservation.mainSite.mainSiteType}</td>
                                          <td class="col-sm-2">${reservation.totalPaymentPrice}</td>
                                          <td class="col-sm-3">
                                             <c:choose>
                                                <c:when test="${reservation.reservationStatus eq 0}"><span style="color: rgb(0, 0, 0);">결제대기</span></c:when>
                                                <c:when test="${reservation.reservationStatus eq 1}"><span style="color: rgb(16, 112, 236);">예약완료</span></c:when>
                                                <c:when test="${reservation.reservationStatus eq 2}"><span style="color: rgb(16, 112, 236);">예약변경</span></c:when>
                                                <c:when test="${reservation.reservationStatus eq 3}"><span style="color: rgb(16, 112, 236);">양도대기</span></c:when>
                                                <c:when test="${reservation.reservationStatus eq 4}"><span style="color: rgb(16, 112, 236);">취소대기</span></c:when>
                                                <c:when test="${reservation.reservationStatus eq 5}"><span style="color: rgb(230, 173, 17);">양도완료</span></c:when>
                                                <c:when test="${reservation.reservationStatus eq 6}"><span style="color: rgb(230, 173, 17);">취소완료</span></c:when>
                                                <c:when test="${reservation.reservationStatus eq 7}"><span style="color: rgb(230, 173, 17);">이용완료</span></c:when>
                                                <c:when test="${reservation.reservationStatus eq 8}"><span style="color: maroon;">리뷰등록완료</span></c:when>
                                             </c:choose>
                                          </td>
                                          <td class="col-sm-2">${reservation.reservationRegDate}</td>
                                       </tr>
                                    </c:forEach>
                              </tbody>
                           </table>
                        </div>
                     </div>
                  </section>
               </div>
               <div class="col-md-1"></div>
            </div>

          </div>
          
      </div>

      <div class="row">
        <jsp:include page="../common/pageNavigator.jsp"/>
     </div>
   
      </section>

         <form id="pagenavi">
            <input type="hidden" id="currentPage" name="currentPage" value="0"/>
            <input type="hidden" name="searchKeyword" value="${search.searchKeyword}">
            <input type="hidden" name="searchCondition" value="${search.searchCondition}">
         </form>
    
      </div>
      
   </main>    
       
     <script src="../../resources/lib/bootstrap/js/bootstrap.js"></script>
     <script src="../../resources/lib/nanoscroller/nanoscroller.css"></script>
     <script src="../../resources/lib/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
     <script src="../../resources/lib/magnific-popup/magnific-popup.js"></script>
     <script src="../../resources/lib/jquery-placeholder/jquery.placeholder.js"></script>
     <!-- Specific Page Vendor -->
     <script src="../../resources/lib/pnotify/pnotify.custom.js"></script>
     <!-- Theme Base, Components and Settings -->
     <script src="../../resources/js/theme.js"></script>
     <!-- Theme Custom -->
     <script src="../../resources/js/theme.custom.js"></script>
     <!-- Theme Initialization Files -->
     <script src="../../resources/js/theme.init.js"></script>
     <!-- Examples -->
     <script src="../../resources/js/examples.lightbox.js"></script>
    
     <script type="text/javascript">

          var currentPage = 1;
      
          function fncGetList(currentPage) {

                $("#currentPage").val(currentPage);
                $("#pagenavi").attr("method","POST").attr("action","/campGeneral/listMyReservation").submit();

              }

          $( function() {

            $(".reservation").on("click" , function() {
            
              self.location ="/campGeneral/getMyReservation?reservationNo="+$(this).attr("value");
            
            });
        

          $("#searchKeyword").keypress(function(e) { 
              if (e.keyCode == 13){
                $("#searchform").attr("method","POST").attr("action","/campGeneral/listMyReservation").submit();
              }    
          });

          $("#search").on("click" , function() {
            $("#searchform").attr("method","POST").attr("action","/campGeneral/listMyReservation").submit();
          });
        
        });

    </script>

  </body>

</html>