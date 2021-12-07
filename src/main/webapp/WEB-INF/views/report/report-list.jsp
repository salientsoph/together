<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<c:set var = "path" value = "${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html>
<head>
  <!-- SITE TITTLE -->
    <meta charset="UTF-8">
    <!-- <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"> -->
    <title>Report List</title>
    
      <!-- Plugins css Style -->
    <link href='${path}/assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
  <%-- <link href="<c:url value="assets/plugins/fontawesome-5.15.2/css/all.min.css" />" rel='stylesheet'> --%>
    <link href='${path}/assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href="${path}/assets/plugins/animate/animate.css" rel="stylesheet">
    <link href="${path}/assets/plugins/menuzord/css/menuzord.css" rel="stylesheet">
    <link href="${path}/assets/plugins/menuzord/css/menuzord-animations.css" rel="stylesheet">

    
    <link href='${path}/assets/plugins/fancybox/jquery.fancybox.min.css' rel='stylesheet'>
    
    <!-- GOOGLE FONT -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700' rel='stylesheet'>

    <!-- CUSTOM CSS -->
    <link href="${path}/assets/css/star.css" id="option_style" rel="stylesheet">


    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/png" href="${path}/assets/img/favicon.png"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    
    <script src="/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" >
    $(function() {
    	console.log("${id}");
    	$("#writer").val("${id}");
    	
		//console.log("test");
		$("#searchBtn").click(function() {
			$("#searchForm").submit();
		})
		
		$("#writeReportBtn").click(function() {
			//$(location).attr("href", "${path}/report/report-insert")
			$("#insertForm").submit();

		})
		
		$("#listAll").click(function() {
			$(location).attr("href", "${path}/report/list")
		})
	})
    </script>
    
</head>

<body id="body" class="up-scroll">

  <!-- ====================================
  ——— HEADER
  ===================================== -->
 <jsp:include page="../common/header.jsp" />
 
  <div class="main-wrapper blog-list-fullwidth">


<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(${path}/assets/img/pages/page-title-bg4.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="title-border">
              <h2 class="text-uppercase text-white font-weight-bold">Report List</h2>
            </div>
            <p class="text-white mb-0"></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- ====================================
——— TRAVEL LIST FULLWIDTH
===================================== -->
<section class="py-9 py-md-10">
  <div class="container">
  
  <c:choose>
    <c:when test="${empty requestScope.reportList}">
         <h3 class="mb-4 col">
              <a href="blog-single-right-sidebar.html" class="text-capitalize text-dark hover-text-primary">등록된 게시물이 없습니다.</a>
         </h3>
    </c:when>
    
    <c:otherwise>
		<c:forEach items="${requestScope.reportList.content}" var="report">
	    <!------------------------ 글 한개 ----------------------------------------->
    <div class="card rounded-0 card-transparent border-bottom mb-7 ">
      <div class="row align-items-lg-center align-items-xl-stretch">
        <!-- <div class="col-md-6">
          <a href="blog-single-right-sidebar.html" class="position-relative">
            <img class="card-img-top rounded lazyestload" data-src="${path}/assets/img/blog/blog-01.jpg" src="${path}/assets/img/blog/blog-01.jpg" alt="Card image cap">
            <div class="card-img-overlay card-hover-overlay rounded"></div>
          </a>
        </div> -->
    
        <!-- <div class="col-md-6"> -->
          <div class="card-body px-md-0 py-6 pt-md-0 container">
           
    
            <div class="meta-post-sm mb-4 row justify-content-between">
            
            
          
            
            <!-- 글 제목 -->
            <div class="mb-4 w-75 col">
            <div class="container">
              <span class="row justify-content-start">
              	<!-- 글 번호 -->
		        <div class="w-10 mw-0 col-1 p-0">
		           	${report.reportNo }
		        </div>
	        	<!-- 글 번호 -->
             <h3 class="col-4">
              <a href="/report/read/${report.reportNo }" class="text-capitalize text-dark hover-text-primary">
              ${report.reportTitle }</a>
              </h3>
            </span>
            </div>
            <!-- 글 제목 -->
            
            </div>
            <!-- 부가 정보 -->
              <ul class="list-unstyled d-flex flex-wrap mb-0 col">
                <li class="meta-tag me-4 mb-1">
                  <i class="fa fa-user text-gray-color" aria-hidden="true"></i>
                  <a class="text-gray-color hover-text-primary" href="blog-single-right-sidebar.html">
                    <span class="ms-1 text-capitalize">${report.customer.userNickname }</span>
                  </a>
                </li>
    
                <li class="meta-tag text-gray-color me-4 mb-1">
                  <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                  <span class="ms-1 text-capitalize">
                  
                   <tags:localDate date="${report.reportRegdate}"/>
                  
                  </span>
                </li>
    
                <!-- <li class="meta-tag text-gray-color me-4 mb-1">
                  <i class="fa fa fa-tags" aria-hidden="true"></i>
                  <span class="ms-1 text-capitalize">Travel</span>
                </li> -->
    
                <li class="meta-tag text-gray-color me-4 mb-1">
                  <i class="fas fa-exclamation-triangle" aria-hidden="true"></i>
                  <span class="ms-1 text-capitalize">${report.reportReasons.reportTitle }</span>
                </li>
                
                <li class="meta-tag text-gray-color me-4 mb-1">
                  <i class="fas fa-check-circle" aria-hidden="true"></i>
                  <span class="ms-1 text-capitalize">${report.reportStatus}</span>
                </li>
                
                
              </ul>
               <!-- 부가 정보 -->
               
            </div>
    
    		<!-- 글 내용 미리보기 또는 신고 사유 -->
            <%-- <p class="mb-0">${report.reportReasons.reportTitle }</p> --%>
              <!-- 글 내용 미리보기 또는 신고 사유 -->
          </div>
    
          <!-- <div class="card-footer px-5 px-lg-0">
            <a href="blog-single-right-sidebar.html" class="btn btn-sm btn-outline-secondary text-uppercase">View post</a>
          </div> -->
       <!--  </div> -->
      </div>
    </div>
     <!------------------------ 글 한개 ----------------------------------------->
	    </c:forEach>
	</c:otherwise>
    
    </c:choose>
  
  <!----------------------------- 검색 및 글쓰기 버튼 등 ------------------------------------>
   
	  <div class="container">
	  	<div class="row justify-content-end">
	  	
	  		<c:if test="${role eq 'admin'}">
	  		<form class="col input-group mb-3 w-25"action="${path}/report/list" method="post" id="searchForm">
	  		 
			   <input type="text" name="userId" class="form-control" placeholder="조회할 아이디를 입력하세요" aria-describedby="basic-addon2">
				<button class="input-group-text btn btn-append hover-bg-primary text-white border-0 px-3" id="searchBtn">
			  	<i class="fas fa-long-arrow-alt-right ltr" aria-hidden="true"></i>
			   	</button>
			   
			</form>
			 </c:if>
			 
	  		<form class="col input-group mb-3 w-25"action="${path}/report/report-insert" method="post" id="insertForm">
	  			<input type="hidden" id="writer" name="writer">
	  			<c:if test="${role ne 'admin'}">
	  			<button type="button" class="btn btn-primary btn-sm" id="writeReportBtn">신고작성</button>
	  			</c:if>
	  			<c:if test="${role eq 'admin'}">
	  			<button type="button" class="mx-2 btn btn-primary btn-sm" id="listAll" >전체 목록</button>	
	  			</c:if>  			
	  		</form>
	  			
	  	</div>
	  </div>
  
  <!----------------------------- 검색 및 글쓰기 버튼 등 ------------------------------------>
	
  </div>
  
  

  <!-- ====================================
———	PAGINATION
===================================== -->
<!-- 이전, 다음 표시하기 (한블럭당 페이지 개수 제한) -->
<c:set var="doneLoop" value="false"/>

<section class="pt-5 pt-md-7">
  <div class="container">
    <nav aria-label="Page navigation">
    
     <ul class="pagination justify-content-center align-items-center">
    <!-- previous -->
    <c:choose>
    <c:when test="${(startPage-blockCount) > 0}"> <!-- (-2) > 0  -->		      
		 <li class="page-item">
          <a class="page-link" href="/report/list?nowPage=${startPage-1}&userId=${userId}" >
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
		
			<c:if test="${(i-1)>=reportList.getTotalPages()}">
				<c:set var="doneLoop" value="true"/>
			</c:if> 
				    
			<c:if test="${not doneLoop}" >
			
				<c:if test="${i==nowPage }">
					<li class="page-item">
			          	<a class="page-link active" href="/report/list?nowPage=${i}&userId=${userId}">${i}</a>
			       	</li> 
				</c:if>
				<c:if test="${i!=nowPage }">
					 <li class="page-item">
			          	<a class="page-link " href="/report/list?nowPage=${i}&userId=${userId}">${i}</a>
			       	 </li> 
		       	 </c:if>
			</c:if>
			
			
			
		</c:forEach>
    
    
    <!-- Next -->
    <c:choose>
    <c:when test="${(startPage+blockCount)<=reportList.getTotalPages()}">
				     
		<li class="page-item">
          <a class="page-link" href="/report/list?nowPage=${startPage+blockCount}&userId=${userId}">Next
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
    <script src="${path}/assets/plugins/jquery/jquery-3.4.1.min.js"></script>
    <script src="${path}/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/assets/plugins/menuzord/js/menuzord.js"></script>
    
    
    
    <script src='${path}/assets/plugins/fancybox/jquery.fancybox.min.js'></script>
    
    
    
    
    
    <script src="${path}/assets/plugins/lazyestload/lazyestload.js"></script>
    
    
    
    
    
    
    
    
    <script src="${path}/assets/plugins/smoothscroll/SmoothScroll.js"></script>
    
    <script src="${path}/assets/js/star.js"></script>
  </body>
</html>