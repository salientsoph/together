<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<c:set var = "path" value = "${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
  
  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Report Insert</title>

    <!-- Plugins css Style -->
    <link href='${path}/assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='${path}/assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href="${path}/assets/plugins/animate/animate.css" rel="stylesheet">
    <link href="${path}/assets/plugins/menuzord/css/menuzord.css" rel="stylesheet">
    <link href="${path}/assets/plugins/menuzord/css/menuzord-animations.css" rel="stylesheet">

    
    <link href='${path}/assets/plugins/fancybox/jquery.fancybox.min.css' rel='stylesheet'>
    
    <!-- Javascript -->
    <script src="${path}/assets/plugins/jquery/jquery-3.4.1.min.js"></script>
    <script src="${path}/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/assets/plugins/menuzord/js/menuzord.js"></script>
    
    
    
    <script src='${path}/assets/plugins/fancybox/jquery.fancybox.min.js'></script>
    
    
    
    
    
    <script src="${path}/assets/plugins/lazyestload/lazyestload.js"></script>
    
    
    
    
    
    
    
    
    <script src="${path}/assets/plugins/smoothscroll/SmoothScroll.js"></script>
    
    <script src="${path}/assets/js/star.js"></script>
    <script src="${path}/js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
    
    function changeFunc() {
	    var selectBox = document.getElementById("reasonsTitle");
	    var selectedValue = selectBox.options[selectBox.selectedIndex].value;
	    var selectedText = selectBox.options[selectBox.selectedIndex].text;
	    //alert(selectedValue);
	    
	    var selectedBox = document.getElementById("selectedReason");
	    var selectedNoBox = document.getElementById("selectedReasonNo");
	    selectedBox.value=selectedText;
	    selectedNoBox.value=selectedValue;
	   }
    
    $(function() {
    	
    	//console.log("1111111111111");
    	
    	$.ajax({
    		type:"POST",
    		url:"${path}/report/reasonsList",
    		dataType:"json",
    		success:function(result){
    			
    			 var data="";
    			 $.each(result, function(index, item){
    				 
    				 let reason = item.reportTitle;
    				 
    					data+='<option value=' + item.reportReasonsNo;
    					data+='>';
    					data+= item.reportTitle+'</option>';
    			 }) 
    			
    			$("#reasonsTitle").html(data);	
    			
    							
    		}//function
    	});//ajax
    	
    	$("#matchNo").keyup(function() {
    		$.ajax({
        		type:"POST",
        		url:"${path}/report/matchNoCheck",
        		data: "${_csrf.parameterName}=${_csrf.token}&&matchNo="+$(this).val(),
        		dataType:"text",
        		success:function(result){
        			
        			 //console.log(result);
        			$("#matchNoConfirm").val(result);
        							
        		}//function
        	});//ajax
		});
    	
    	$("#submitForm").click(function() {
    		//console.log("clicked");
			$("#insertForm").submit();
		});
    	
		$("#cancel").click(function() {
			$("#insertForm")[0].reset();
		});
	})
    
    </script>
    
    
    
    
    
    
    
    

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

  </head>     

<body id="body" class="up-scroll">

  <!-- ====================================
  ——— HEADER
  ===================================== -->
  <jsp:include page="../common/header.jsp" />
  
  <div class="main-wrapper booking-step-1">


<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(${path}/assets/img/pages/page-title-bg7.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="title-border">
              <h2 class="text-uppercase text-white font-weight-bold">신고하기</h2>
            </div>
            <p class="text-white mb-0"></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- ====================================
———	BOOKING SECTION
===================================== -->
<section class="py-8 py-md-10">
  <div class="container">    
    <div class="row">
      <div class="col order-1 order-md-0">
        <h3 class="text-capitalize mb-5">신고 내용을 작성해주세요</h3>

        <form action="${path}/report/insert" method="post" id="insertForm">
          <div class="row">
          
              <div class="form-group">
                <label for="inputName">신고 제목</label>
                <input type="text" class="form-control border-0 bg-smoke" name="reportTitle">
              </div>
          
            <div class="col-lg-6">
              <div class="form-group">
                <label for="inputName">신고 게시물 번호</label>
                <input type="number" class="form-control border-0 bg-smoke" id="matchNo" name="matchNo">
              </div>
            </div>
    
            <div class="col-lg-6">
              <div class="form-group">
                <label for="inputName">신고 게시물 번호 확인</label>
                <input type="text" class="form-control border-0 bg-smoke" id="matchNoConfirm" disabled>
              </div>
            </div>
    
    		
            <div class="col-lg-6">
              <div class="form-group">
                <label for="inputName">신고 사유</label>
                  
                    <select multiple="" class="form-control" id="reasonsTitle" onchange="changeFunc();">
                     
                    </select>
                  
                  
            </div>
            </div>
    
            <div class="col-lg-6">
              <div class="form-group">
                <label for="inputName">선택된 신고 사유</label>
                <input type="text" class="form-control border-0 bg-smoke" id="selectedReason" readonly>
                <input type="text" class="form-control border-0 bg-smoke" id="selectedReasonNo" name="reportReasonNo" readonly>
                <input type="text" class="form-control border-0 bg-smoke" id="userId" name="userId" >
              </div>
            </div>
    
          <div class="form-group mb-5">
            <label for="exampleFormControlTextarea1">신고 내용</label>
            <textarea class="form-control border-0 bg-smoke" rows="7" name="reportContent"></textarea>
          </div>
          </div>
    
          <div class="text-center text-md-start text-lg-end">
            <button type="button" id="submitForm" class="btn btn-primary text-uppercase">
              신고 접수
            </button>
            <button type="button" id="cancel" class="btn btn-primary text-uppercase mx-6">
              취소
            </button>
          </div>
        </form>
      </div>
    
    </div>
  </div>
</section>



  </div><!-- element wrapper ends -->

    <!-- ====================================
    ——— FOOTER SECTION
    ===================================== -->
    <footer class="footer">
      <div class="footer-bg-color py-9">
        <div class="container">
          <div class="row">
            <div class="col-md-6 col-lg-3 mb-7 mb-lg-0">
              <a class="d-inline-block" href="index.html">
                <img class="w-100 mb-6 lazyestload" data-src="${path}/assets/img/logo-color-sm.png" src="${path}/assets/img/logo-color-sm.png" alt="img">
              </a>
              <p class="mb-0">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute</p>
            </div>
    
            <div class="col-md-6 col-lg-3 mt-md-4 mb-7 mb-lg-0">
              <div class="title-tag">
                <h6>Contact us</h6>
              </div>

              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do eiusmod.</p>
              <ul class="list-unstyled mb-0">
                <li class="media mb-2">
                  <div class="me-3">
                    <i class="fa fa-home" aria-hidden="true"></i>
                  </div>
                  <div class="media-body">
                     <a href="contact.html">61 Park Street, Fifth Avenue, NY</a>
                  </div>
                </li>

                <li class="media mb-2">
                  <div class="me-3">
                    <i class="fas fa-phone-alt" aria-hidden="true"></i>
                  </div>
                  <div class="media-body">
                    <a href="tel:88657524332">[88] 657 524 332</a>
                  </div>
                </li>
                
                <li class="media">
                  <div class="me-3">
                    <i class="far fa-envelope" aria-hidden="true"></i>
                  </div>
                  <div class="media-body">
                    <a href="mailTo:info@star-travel.com">info@star-travel.com</a>
                  </div>
                </li>
              </ul>
            </div>
    
            <div class="col-md-6 col-lg-3 mt-lg-4 mb-7 mb-md-0">
              <div class="title-tag pb-1">
                <h6>Gallery</h6>
              </div>

              <div class="row me-auto gallery mb-2 mb-md-0">
                <div class="col-4 mb-3">
                  <div class="media media-hover">
                    <div class="content w-100">
                      <img class="media-img lazyestload" data-src="${path}/assets/img/home/gallery/thumb-gallery-1.jpg"
                        src="${path}/assets/img/home/gallery/thumb-gallery-1.jpg" alt="gallery-img">
                      <a class="media-img-overlay" data-fancybox="footer-gallery" href="${path}/assets/img/home/gallery/gallery-1.jpg"></a>
                    </div>
                  </div>
                </div>

                <div class="col-4 mb-3">
                  <div class="media media-hover">
                    <div class="content w-100">
                      <img class="media-img lazyestload" data-src="${path}/assets/img/home/gallery/thumb-gallery-2.jpg"
                        src="${path}/assets/img/home/gallery/thumb-gallery-2.jpg" alt="gallery-img">
                      <a class="media-img-overlay" data-fancybox="footer-gallery" href="${path}/assets/img/home/gallery/gallery-2.jpg"></a>
                    </div>
                  </div>
                </div>

                <div class="col-4 mb-3">
                  <div class="media media-hover">
                    <div class="content w-100">
                      <img class="media-img lazyestload" data-src="${path}/assets/img/home/gallery/thumb-gallery-3.jpg"
                        src="${path}/assets/img/home/gallery/thumb-gallery-3.jpg" alt="gallery-img">
                      <a class="media-img-overlay" data-fancybox="footer-gallery" href="${path}/assets/img/home/gallery/gallery-3.jpg"></a>
                    </div>
                  </div>
                </div>

                <div class="col-4">
                  <div class="media media-hover">
                    <div class="content w-100">
                      <img class="media-img lazyestload" data-src="${path}/assets/img/home/gallery/thumb-gallery-4.jpg"
                        src="${path}/assets/img/home/gallery/thumb-gallery-4.jpg" alt="gallery-img">
                      <a class="media-img-overlay" data-fancybox="footer-gallery" href="${path}/assets/img/home/gallery/gallery-4.jpg"></a>
                    </div>
                  </div>
                </div>

                <div class="col-4">
                  <div class="media media-hover">
                    <div class="content w-100">
                      <img class="media-img lazyestload" data-src="${path}/assets/img/home/gallery/thumb-gallery-5.jpg"
                        src="${path}/assets/img/home/gallery/thumb-gallery-5.jpg" alt="gallery-img">
                      <a class="media-img-overlay" data-fancybox="footer-gallery" href="${path}/assets/img/home/gallery/gallery-5.jpg"></a>
                    </div>
                  </div>
                </div>

                <div class="col-4">
                  <div class="media media-hover">
                    <div class="content w-100">
                      <img class="media-img lazyestload" data-src="${path}/assets/img/home/gallery/thumb-gallery-6.jpg"
                        src="${path}/assets/img/home/gallery/thumb-gallery-6.jpg" alt="gallery-img">
                      <a class="media-img-overlay" data-fancybox="footer-gallery" href="${path}/assets/img/home/gallery/gallery-6.jpg"></a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
    
            <div class="col-md-6 col-lg-3 mt-lg-4">
              <div class="title-tag">
                <h6>Newsletter</h6>
              </div>

              <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit sed do.</p>

              <form class="mb-6" action="index.html" method="post">
                <div class="input-group input-group-sm">
                  <input type="email" class="form-control form-control-sm form-transparent" required="" placeholder="Enter your email" aria-label="Enter your email">
                  <button class="btn border-0 btn btn-append hover-bg-primary" type="submit">
                    <i class="fas fa-long-arrow-alt-right text-white ltr" aria-hidden="true"></i>
                  </button>
                </div>
              </form>

              <ul class="list-inline d-flex mb-0">
                <li class="me-3 me-lg-2 me-xl-3">
                  <a class="icon-default icon-border rounded-circle hover-bg-primary" href="javascript:void(0)">
                    <i class="fab fa-facebook-f text-white" aria-hidden="true"></i>
                  </a>
                </li>

                <li class="me-3 me-lg-2 me-xl-3">
                  <a class="icon-default icon-border rounded-circle hover-bg-primary" href="javascript:void(0)">
                    <i class="fab fa-twitter text-white" aria-hidden="true"></i>
                  </a>
                </li>

                <li class="me-3 me-lg-2 me-xl-3">
                  <a class="icon-default icon-border rounded-circle hover-bg-primary" href="javascript:void(0)">
                    <i class="fab fa-google-plus-g text-white" aria-hidden="true"></i>
                  </a>
                </li>

                <li class="me-3 me-lg-2 me-xl-3">
                  <a class="icon-default icon-border rounded-circle hover-bg-primary" href="javascript:void(0)">
                    <i class="fab fa-pinterest-p text-white" aria-hidden="true"></i>
                  </a>
                </li>

                <li class="">
                  <a class="icon-default icon-border rounded-circle hover-bg-primary" href="javascript:void(0)">
                    <i class="fab fa-vimeo-v text-white" aria-hidden="true"></i>
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    
      <div class="copyright py-6">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-md-6 order-1 order-md-0">
              <p class="mb-0 mb-md-0 text-md-start">Copyright &copy; <span id="copy-year"></span> All Rights Reserved by
                <a href="http://www.iamabdus.com/" target="_blank">Abdus</a>
              </p>
            </div>
            
            <div class="col-md-6">
              <ul class="list-inline text-capitalize d-flex align-items-center justify-content-md-end justify-content-center mb-md-0">
                <li class="me-3">
                  <a href="setting.html">Privacy policy</a>
                </li>
    
                <li class="me-3">
                  <a href="about-us.html">About us</a>
                </li>
    
                <li class="me-3">
                  <a href="contact.html">Support</a>
                </li>
    
                <li class="">
                  <a href="blog-single-right-sidebar.html">Blog</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <script>
        var d = new Date();
        var year = d.getFullYear();
        document.getElementById("copy-year").innerHTML = year;
      </script>
    </footer>

  
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

