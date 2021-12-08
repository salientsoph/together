<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var = "path" value = "${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
  
  <head>

    <!-- SITE TITTLE -->
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Report</title>

    <!-- Plugins css Style -->
    <link href='${path}/assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='${path}/assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href="${path}/assets/plugins/animate/animate.css" rel="stylesheet">
    <link href="${path}/assets/plugins/menuzord/css/menuzord.css" rel="stylesheet">
    <link href="${path}/assets/plugins/menuzord/css/menuzord-animations.css" rel="stylesheet">

    
    <link href='${path}/assets/plugins/fancybox/jquery.fancybox.min.css' rel='stylesheet'>
    
    
    
    <link href='${path}/assets/plugins/rateyo/jquery.rateyo.min.css' rel='stylesheet'>
    
    
    
    
    <link href='${path}/assets/plugins/owl-carousel/owl.carousel.min.css' rel='stylesheet' media='screen'>
    <link href='${path}/assets/plugins/owl-carousel/owl.theme.default.min.css' rel='stylesheet' media='screen'>
    

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
    
    <!-- Javascript -->
    <script src="${path}/assets/plugins/jquery/jquery-3.4.1.min.js"></script>
    <script src="${path}/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/assets/plugins/menuzord/js/menuzord.js"></script>
    
    
    
    <script src='${path}/assets/plugins/fancybox/jquery.fancybox.min.js'></script>
    
    
    
    
    <script src='${path}/assets/plugins/rateyo/jquery.rateyo.min.js'></script>
    <script src="${path}/assets/plugins/lazyestload/lazyestload.js"></script>
    
    
    
    
    
    <script src='${path}/assets/plugins/owl-carousel/owl.carousel.min.js'></script>
    
    
    <script src="${path}/assets/plugins/smoothscroll/SmoothScroll.js"></script>
    <script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyDU79W1lu5f6PIiuMqNfT1C6M0e_lq1ECY'></script>
    <script src="${path}/assets/js/star.js"></script>
    
    <script src="${path}/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
    $(function() {
		//console.log("test");
		$("#submitStatus").click(function() {
			
			$("#updateStatus").submit();
			//alert("adsfwae");
		});
		
		$("#listAll").click(function() {
			$(location).attr("href", "${path}/report/list")
		});
		
	})
    </script>

  </head>     

<body id="body" class="up-scroll">

  <!-- ====================================
  ——— HEADER
  ===================================== -->
  <jsp:include page="../common/header.jsp" />
  
  <div class="main-wrapper single-hotel-fullwidth">


<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(${path}/assets/img/pages/page-title-bg12.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="">
              <h2 class="text-uppercase text-white font-weight-bold">Report</h2>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- ====================================
———	PACKAGES SECTION
===================================== -->
<section class="py-10">
  <div class="container">
    <div class="row">
      <div class="col-md-12">

        <div class="mt-8">
          <h2 class="text-uppercase  font-weight-bold mb-5">${requestScope.report.reportTitle}</h2>
          <div class="d-md-flex justify-content-end align-items-center mb-5">
            <ul
              class="list-unstyled d-flex flex-wrap justify-content-center justify-content-md-start font-weight-medium mb-md-0">
              <li class="">
                <a class="text-gray-color hover-text-primary me-4 disabled">
                  <i class="fa fa-user text-gray-color" aria-hidden="true"></i>
					<span class="ms-1 text-capitalize">${report.customer.userNickname }</span>
                </a>
              </li>

              <li class="">
                <a class="text-gray-color hover-text-primary me-4 disabled">
                   <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                   <span class="ms-1 text-capitalize">
					<tags:localDate date="${report.reportRegdate}"/>
				  </span>
                </a>
              </li>

              <li class="">
                <a class="text-gray-color hover-text-primary disabled">
                  <i class="fas fa-exclamation-triangle" aria-hidden="true"></i>
                  <span class="ms-1 text-capitalize">${report.reportReasons.reportTitle }</span>
                </a>
              </li>
            </ul>

            <h5 class="text-center text-lg-left">
              <!-- <span class="text-gray-color font-weight-bold text-capitalize">Par night:</span>
              <span class="text-primary font-weight-bold">$150</span> -->
            </h5>
          </div>
          <div class="border-bottom b-5 container">
	          <div class="row justify-content-start">
	          <p class="mb-6 text-capitalize ">${requestScope.report.reportContent}</p>
	          </div>
	          
	          
	          <div class="row justify-content-center align-items-center">
	          <c:if test="${role eq 'admin'}">
		        <div class="col-2 my-7 px-8 ">
		           <h5 class="m-2 text-primary font-weight-bold "> 상태 : </h5> 
		        </div>
	            <form class="col-2 my-7 px-7" name="updateStatus" id="updateStatus" method=post action="${path}/report/updateStatus" >
	            <input type='hidden' name='reportNo' value="${report.reportNo}">
	                  <div class="mt-2">
	                    <div class="form-check">
	                       <input class="form-check-input" type="radio" name="reportStatus" id="reportStatus1" value="처리중"  ${report.reportStatus eq "처리중" ? "checked" : "" }>
	                      <label class="form-check-label" for="reportStatus1">
	                        처리중
	                      </label>
	                    </div>
	
	                    <div class="form-check">
	                      <input class="form-check-input" type="radio" name="reportStatus" id="reportStatus2" value="처리완료" ${report.reportStatus eq "처리완료" ? "checked" : "" }>
	                      <label class="form-check-label" for="reportStatus2">
	                        처리완료
	                      </label>
	                    </div>
	                  </div>
	           </form>
	           <div class="col-3  my-7 px-7">
	           		<button type="button" id="submitStatus"
		              class="btn btn-hover btn-outline-secondary text-uppercase">
		              상태변경 저장
		            </button>
	           </div>
	           </c:if>
	           <div class="col input-group mb-3 w-25 ">
  					<button type="button" class="mx-2 btn btn-primary btn-sm" id="listAll" >목록으로 돌아가기</button>	  			
	  		   </div>
          	</div>
          	
          	
          	
          	
          </div>

		   

        <div class="mb-6 mt-5">
          <h4 class="text-uppercase mb-5">신고 당한 글 : </h4>
          <div class="continer ps-5">
          	<div class="row justify-content-start">
          		<p class="font-weight-bold">${requestScope.report.matchBoard.matchTitle}</p>
          	</div>
          	
          	<div class="row justify-content-start">
          		<p class="">${requestScope.report.matchBoard.matchContent}</p>
          	</div>
          	<div class="row justify-content-center">
          	<button type="button" onclick="location.href='${path}/match/read/${requestScope.report.matchBoard.matchNo}';"
              class="btn btn-hover btn-outline-secondary text-uppercase col-4 m-5">
              글 확인하러 가기
            </button>
           
            
            </div>
          </div>
        </div>
        
        
        
       </div>
      </div>
    </div>
  </div>     
</section>


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

    
  </body>
</html>
