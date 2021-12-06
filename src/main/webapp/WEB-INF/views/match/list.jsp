<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html lang="en">
  
  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>모임 게시판</title>

    <!-- Plugins css Style -->
    <link href='${pageContext.request.contextPath}/assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href="${pageContext.request.contextPath}/assets/plugins/animate/animate.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/plugins/menuzord/css/menuzord.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/assets/plugins/menuzord/css/menuzord-animations.css" rel="stylesheet">
    <link href='${pageContext.request.contextPath}/assets/plugins/fancybox/jquery.fancybox.min.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/assets/plugins/selectric/selectric.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/assets/plugins/daterangepicker/css/daterangepicker.css' rel='stylesheet'>
    <link href='${pageContext.request.contextPath}/assets/plugins/rateyo/jquery.rateyo.min.css' rel='stylesheet'>

    <!-- GOOGLE FONT -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700' rel='stylesheet'>

    <!-- CUSTOM CSS -->
    <link href="${pageContext.request.contextPath}/assets/css/star.css" id="option_style" rel="stylesheet">


    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/assets/img/favicon.png"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


	<script src="${pageContext.request.contextPath}/assets/plugins/datepicker/js/daterangepicker.min.js"></script>
  </head>     

<body id="body" class="up-scroll">

  <jsp:include page="../common/header.jsp" />
  <div class="main-wrapper hotels-list-left-sidebar">


<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(${pageContext.request.contextPath}/assets/img/pages/page-title-bg6.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="title-border">
              <h2 class="text-uppercase text-white font-weight-bold">모임 게시판</h2>
            </div>
            <p class="text-white mb-0"></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ====================================
———	PACKAGES SECTION
===================================== -->
<c:if test="${sessionScope.role eq 'seller' or sessionScope.id eq null}">
	  <script type="text/javascript">
	    alert("customer 계정으로 로그인하고 이용해주세요");
	    location.href="/";
	  </script>
</c:if>

<section class="bg-smoke py-10">
  <div class="container">
    <div class="row">
      <div class="col-lg-3">
        <div class="row">
          <div class="col-md-6 col-lg-12">
            <div class="mb-6 bg-white px-3 py-6 border-top border-top-5 border-primary rounded">
              <h4 class="text-uppercase font-weight-bold">모임 검색</h4>

              <form class="form" action="${pageContext.request.contextPath}/list/search" method="post">
                
                <!-- <div class="mb-5">
                  <input type="text" class="form-control border-top-0 border-start-0 border-end-0 ps-0" required=""
                    aria-describedby="textHelp" placeholder="Hotel Name">
                </div> -->

				<div class="mb-5">
                  <div class="select-default select-category-1">
                    <select class="select-option" value = "region">
                      <option> 모임 지역</option>
                      	<c:forEach items="${requestScope.region}" var="region">
                     		<option>${region.regionName}</option>
                      	</c:forEach>
                    </select>
                  </div>
                </div>

                <div class="form-group form-group-icon form-group-icon-dark mb-5">
                  <i class="far fa-calendar-alt" aria-hidden="true"></i>
                  <input type="text" class="form-control daterange-picker sidebar-daterange-picker text-uppercase"
                    name="dateRange" autocomplete="off" value="" placeholder="여행 날짜" />
                </div>

<!-- 
                <div class="form-group mb-5">
                  <div class="row align-items-center">
                    <label class="control-label count-control-label col-5 col-lg-12 col-xl-4 text-uppercase mb-0 mb-lg-4 mb-xl-0 text-lg-center">Rooms</label>

                    <div class="col-7 col-lg-12 col-xl-7">
                      <div class="count-input me-0 mx-lg-auto me-xl-0">
                        <a class="incr-btn" data-action="decrease" href="javascript:void(0)">–</a>
                        <input class="quantity" type="number" value="1">
                        <a class="incr-btn" data-action="increase" href="javascript:void(0)">+</a>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="form-group mb-5">
                  <div class="row align-items-center">
                    <label
                      class="control-label count-control-label col-5 col-lg-12 col-xl-4 text-uppercase mb-0 mb-lg-4 mb-xl-0 text-lg-center">Adults</label>
                
                    <div class="col-7 col-lg-12 col-xl-7">
                      <div class="count-input me-0 mx-lg-auto me-xl-0">
                        <a class="incr-btn" data-action="decrease" href="javascript:void(0)">–</a>
                        <input class="quantity" type="number" value="1">
                        <a class="incr-btn" data-action="increase" href="javascript:void(0)">+</a>
                      </div>
                    </div>
                  </div>
                </div>

                <div class="form-group mb-5">
                  <div class="row align-items-center">
                    <label
                      class="control-label count-control-label col-5 col-lg-12 col-xl-4 text-uppercase mb-0 mb-lg-4 mb-xl-0 text-lg-center">Childs</label>
                
                    <div class="col-7 col-lg-12 col-xl-7">
                      <div class="count-input me-0 mx-lg-auto me-xl-0">
                        <a class="incr-btn" data-action="decrease" href="javascript:void(0)">–</a>
                        <input class="quantity" type="number" value="0">
                        <a class="incr-btn" data-action="increase" href="javascript:void(0)">+</a>
                      </div>
                    </div>
                  </div>
                </div>
 -->
                
                <div class="d-grid">
                  <button type="submit" onclick="location.href='javascript:void(0)';"
                  class="btn btn-block btn-xs btn-outline-secondary text-uppercase">Search</button>
                </div>
              </form>
            </div>
          </div>
	<!-- 검색창 끝 -->


          <div class="col-md-6 col-lg-12">
            <div class="mb-6 bg-white p-3 pt-6 border-top border-top-5 border-primary rounded">
              <h4 class="text-uppercase font-weight-bold"> 모임 필터</h4>

	<!-- 전체적인 필터링(왼쪽 사이드바) 시작 -->
              <div class="accordion" id="accordionOne">
                <div class="card">
                  <div class="card-header" id="headingOne">
                    <h5 class="icon-bg" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true"
                      aria-controls="collapseOne">
                      <span>연령대</span>
                    </h5>
                  </div>
            
                  <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionOne">
                    <div class="card-body">
                      <div class="form-check custom-form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault1">
                        <label class="form-check-label" for="flexCheckDefault1">
                          20대
                        </label>
                      </div>

                      <div class="form-check custom-form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault2">
                        <label class="form-check-label" for="flexCheckDefault2">
                          30대
                        </label>
                      </div>

                      <div class="form-check custom-form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault3">
                        <label class="form-check-label" for="flexCheckDefault3">
                          40대
                        </label>
                      </div>

                      <div class="form-check custom-form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault4">
                        <label class="form-check-label" for="flexCheckDefault4">
                          50대 이상
                        </label>
                      </div>
                      
                    </div>
                  </div>
                </div>
            
                <div class="card">
                  <div class="card-header" id="headingTwo">
                    <h5 class="icon-bg collapsed" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false"
                      aria-controls="collapseTwo">
                      <span>모임 성별</span>
                    </h5>
                  </div>
            
                  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionOne">
                    <div class="card-body">
                      <div class="form-check custom-form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault6">
                        <label class="form-check-label" for="flexCheckDefault6">
                          혼성
                        </label>
                      </div>

                      <div class="form-check custom-form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault7">
                        <label class="form-check-label" for="flexCheckDefault7">
                          여자만
                        </label>
                      </div>

                      <div class="form-check custom-form-check">
                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault8">
                        <label class="form-check-label" for="flexCheckDefault8">
                          남자만
                        </label>
                      </div>
                      
                    </div>
                  </div>
                </div>
              </div>
      <!-- 전체적인 필터링(왼쪽 사이드바) 끝 -->
              
              
            </div>
          </div>
        </div>
      </div>

      <div class="col-lg-9">
        <div class="mb-md-6">
          <div class="row align-items-center">
            <div class="col-md-6 col-xl-4">
              <div class="form-group mb-5 mb-md-0 bg-white">
                <div class="select-default select-category-2">
                  <select class="select-option">
                    <option>SORT BY PRICE</option>
                    <option>SORT BY RATING</option>
                    <option>SORT BY POPULARITY</option>
                  </select>
                </div>
              </div>
            </div>

            <div class="col-md-6 col-xl-8 d-none d-md-block">
              <div class="d-flex justify-content-md-end">

              </div>
            </div>
          </div>
        </div>



<c:choose>
		<c:when test="${empty requestScope.matchList}">
			<tr>
	        	<td colspan="5">
	            <p align="center"><b><span style="font-size:9pt;">등록된 게시물이 없습니다.</span></b></p>
	       		</td>
	    	</tr>
		</c:when>
	<c:otherwise>
    
		<c:forEach items="${requestScope.matchList.content}" var="board">
    

        <div class="media media-list-view media-border flex-column flex-md-row align-items-stretch mb-5">
        	<div class="media-body">
            <div class="row">
              <div class="col-md-7 col-xl-8 position-relative">  
                <h4>
                  <a class="media-title" href="/match/read/${board.matchNo}">${board.matchTitle}</a>
                  
                  <p/><p/>
                  <!-- 날짜(달력) -->
                  <i class="far fa-calendar-alt" aria-hidden="true"></i> 
                  <tags:localDate date="${board.matchRegdate}"/>  작성
                  
                  <span>&nbsp;&nbsp;</span>
                  
                  <!-- 시계 -->
                  <i class="far fa-clock" aria-hidden="true"></i> 
                  ${board.tripDate} 출발
                </h4>
                
                <div class="rating-view">

                  <span class="text-gray-color hover-text-primary">
                  <i class="fa fa-user text-gray-color" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">${board.customer.userNickname}</span>
                  </span>
                  
                  <span>&nbsp;&nbsp;&nbsp;</span>
                  
                  <span class="text-gray-color hover-text-primary">
                  <i class="fas fa-map-marker-alt" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">${board.region.regionName}</span>
                  </span>
             
             	  <span>&nbsp;&nbsp;&nbsp;</span>
                  
                  <span class="text-gray-color hover-text-primary">
                  <i class="fa fa fa-tags" aria-hidden="true"></i>
                    	<span class="ms-1 text-capitalize">${board.matchAgeGroup} 대</span>
                  </span>

				  <span>&nbsp;&nbsp;&nbsp;</span>
				  
				  <span class="text-gray-color hover-text-primary">
                  <i class="fa fa fa-tags" aria-hidden="true"></i>
                    	<span class="ms-1 text-capitalize">${board.matchGender}</span>
                  </span>
				
                </div>

              </div>
            </div>
          </div>
        </div>
       
       </c:forEach>   
	</c:otherwise>
</c:choose>      
 


      </div>
      
      
      
    </div>
    
    <p>
      <div class="mb-6">
    	<ul class="pagination justify-content-center align-items-center">
    	<li class="page-item">
    		<a href="/match/write">
    			<button type="button" class="btn btn-secondary btn-lg mb-2">글 작성하기</button>
    		</a>
    	</li>
    	</ul>
      </div>
    
    
    
  </div>

  <!-- ====================================
———	PAGINATION
===================================== -->
<c:set var="doneLoop" value="false"/>

<section class="pt-5 pt-md-7">
  <div class="container">
    <nav aria-label="Page navigation">
    
     <ul class="pagination justify-content-center align-items-center">
    <!-- previous -->
    <c:choose>
    <c:when test="${(startPage-blockCount) > 0}"> <!-- (-2) > 0  -->		      
		 <li class="page-item">
          <a class="page-link" href="/match/list?nowPage=${startPage-1}" >
            <i class="fas fa-long-arrow-alt-left d-none d-md-inline-block me-md-1" aria-hidden="true" "></i> Previous
          </a>
        </li>
	</c:when>
	<c:otherwise>
		<li class="page-item">
          <a class="page-link disabled" >
            <i class="fas fa-long-arrow-alt-left d-none d-md-inline-block me-md-1" aria-hidden="true" "></i> Previous
          </a>
        </li>
	</c:otherwise>
	</c:choose>
	<!-- previous -->
    
     
        <c:forEach var='i' begin='${startPage}' end='${(startPage-1)+blockCount}'> 
		
			<c:if test="${(i-1)>=matchList.getTotalPages()}">
				<c:set var="doneLoop" value="true"/>
			</c:if> 
				    
			<c:if test="${not doneLoop}" >
				 <li class="page-item">
		          	<a class="page-link active" href="/match/list?nowPage=${i}">${i}</a>
		       	 </li> 
			</c:if>
		</c:forEach>
    
    <!-- Next -->
    <c:choose>
    <c:when test="${(startPage+blockCount)<=matchList.getTotalPages()}">     
		<li class="page-item">
          <a class="page-link" href="/match/list?nowPage=${startPage+blockCount}">Next
            <i class="fas fa-long-arrow-alt-right d-none d-md-inline-block ms-md-1" aria-hidden="true"></i>
          </a>
        </li>
	 </c:when>
	 <c:otherwise>
	 	<li class="page-item">
          <a class="page-link disabled">Next
            <i class="fas fa-long-arrow-alt-right d-none d-md-inline-block ms-md-1" aria-hidden="true"></i>
          </a>
        </li>
	 </c:otherwise>
	 </c:choose>
	 <!-- Next -->
      </ul>
    </nav>
  </div>
</section>

</section>


  </div><!-- element wrapper ends -->

    <!-- ====================================
    ——— FOOTER SECTION
    ===================================== -->
<jsp:include page="../common/footer.jsp" />
  
    <!-- ====================================
    ——— MODAL SECTION
    ===================================== -->
    <!-- Signup Modal -->
    <div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-label="signupModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header rounded">
            <h3 class="modal-title text-uppercase font-weight-bold">Create your account</h3>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>

          <div class="modal-body">
            <form class="" action="index.html" method="post">
              <div class="mb-3">
                <input type="text" class="form-control bg-smoke" required="" placeholder="Full Name">
              </div>

              <div class="mb-3">
                <input type="email" class="form-control bg-smoke" required="" placeholder="Email">
              </div>
    
              <div class="mb-3">
                <input type="password" class="form-control bg-smoke" required="" placeholder="Password">
              </div>
    
              <div class="mb-3 form-check mb-0">
                <input type="checkbox" class="form-check-input" id="exampleCheck4">
                <label class="form-check-label text-gray-color mb-3" for="exampleCheck4">
                  I agree to the terms of use and privacy.
                </label>
              </div>

              <div class="d-grid">
                <button type="submit" class="btn btn-primary btn-block text-uppercase">Login</button>
              </div>

              <div class="text-uppercase text-center py-3">Or</div>

              <div class="d-grid">
                <button type="submit" class="btn btn-facebook btn-block text-uppercase text-white">Login with facebook</button>
              </div>
            </form>
          </div>
    
          <div class="modal-footer justify-content-center">
            <p class="mb-1">Don’t have an Account? <a href="javascript:void(0)">Sign up</a></p>
          </div>
        </div>
      </div>
    </div>

    <!-- Login Modal -->
    <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-label="loginModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header rounded">
            <h3 class="modal-title text-uppercase font-weight-bold">Log in to your account</h3>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>

          <div class="modal-body">
            <form class="" action="index.html" method="post">
              <div class="mb-3">
                <input type="email" class="form-control bg-smoke" required="" placeholder="Email">
              </div>

              <div class="mb-3">
                <input type="password" class="form-control bg-smoke" required="" placeholder="Password">
              </div>

              <div class="mb-3 form-check mb-0">
                <input type="checkbox" class="form-check-input" id="exampleCheck5">
                <label class="form-check-label text-gray-color mb-3" for="exampleCheck5">
                  Remember me
                </label>
                <a class="pull-right" href="javascript:void(0)">Fogot Password?</a>
             </div>

             <div class="d-grid">
              <button type="submit" class="btn btn-primary text-uppercase">Login</button>
             </div>

              <div class="text-uppercase text-center py-3">Or</div>

              <div class="d-grid">
                <button type="submit" class="btn btn-facebook text-uppercase text-white">Login with facebook</button>
               </div>
            </form>
          </div>

          <div class="modal-footer justify-content-center">
            <p class="mb-1">Don’t have an Account? <a href="javascript:void(0)">Sign up</a></p>
          </div>
        </div>
      </div>
    </div>

    <!-- INQUIRY IN MODAL -->
    <div class="modal fade" id="inquiry" tabindex="-1" role="dialog" aria-label="inquiryModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header rounded">
            <h3 class="modal-title text-uppercase font-weight-bold">Inquiry about tour</h3>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>

          <div class="modal-body pb-3">
            <form class="" action="index.html" method="post">
              <div class="mb-3">
                <input type="text" class="form-control bg-smoke" required="" placeholder="Your Name">
              </div>

              <div class="mb-3">
                <input type="email" class="form-control bg-smoke" required="" placeholder="Your Email">
              </div>
    
              <div class="mb-3">
                <input type="number" class="form-control bg-smoke" required="" placeholder="Phone Number">
              </div>

              <div class="mb-3">
                <textarea class="form-control bg-smoke" rows="6" placeholder="Message"></textarea>
              </div>
    
              <button type="submit" class="btn btn-primary text-uppercase">Submit</button>
            </form>
          </div>
        </div>
      </div>
    </div>

    <!-- Javascript -->
    <script src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery-3.4.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/menuzord/js/menuzord.js"></script>
    <script src='${pageContext.request.contextPath}/assets/plugins/fancybox/jquery.fancybox.min.js'></script>
    <script src='${pageContext.request.contextPath}/assets/plugins/selectric/jquery.selectric.min.js'></script>
    <script src='${pageContext.request.contextPath}/assets/plugins/daterangepicker/js/moment.min.js'></script>
    <script src='${pageContext.request.contextPath}/assets/plugins/daterangepicker/js/daterangepicker.min.js'></script>
    <script src='${pageContext.request.contextPath}/assets/plugins/rateyo/jquery.rateyo.min.js'></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/lazyestload/lazyestload.js"></script>
    <script src="${pageContext.request.contextPath}/assets/plugins/smoothscroll/SmoothScroll.js"></script>
    <script src="${pageContext.request.contextPath}/assets/js/star.js"></script>
  </body>
</html>