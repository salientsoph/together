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
		
	})
    </script>

  </head>     

<body id="body" class="up-scroll">

  <!-- ====================================
  ——— HEADER
  ===================================== -->
  <header class="header" id="pageTop">
    <!-- Menu Zord -->
    <nav class="nav-menuzord navbar-sticky">
      <div class="container clearfix">
        <div id="menuzord" class="menuzord">
          <a href="index.html" class="menuzord-brand">
            <img class="lazyestload" data-src="${path}/assets/img/logo-color-big.png" src="${path}/assets/img/logo-color-big.png" alt="logo-img">
          </a>

          <div class="nav-item dropdown nav-item-left me-0">
            <button class="btn btn-xs btn-primary d-none d-lg-inline-block notify-toggler">
              <i class="fa fa-search text-white me-0" aria-hidden="true"></i>
            </button>
          
            <div class="dropdown-menu dropdown-menu-end dropdown-notify rounded-0">
              <form class="mb-0" action="index.html" method="post">
                <div class="input-group input-group-sm">
                  <input type="text" class="form-control form-control-sm rounded-0" required="" placeholder="Search...." aria-label="Search....">
                  <button class="btn bg-primary border-0 rounded-0" type="submit">
                    <span class="text-white text-uppercase font-weight-bold">Search</span>
                  </button>
                </div>
              </form>
            </div>
          </div>
          
          <ul class="menuzord-menu menuzord-right">
            <li class="">
              <a class="" href="javascript:void(0)">Home</a>
              <ul class="dropdown drop-up">
                <li class="">
                  <a href="index.html">Home Main</a>
                </li>

                <li class="">
                  <a href="index-2.html">Home City</a>
                </li>

                <li class="">
                  <a href="index-3.html">Home Destination</a>
                </li>
              </ul>
            </li>

            <li class="">
              <a href="javascript:void(0)">Tours</a>
              <div class="megamenu drop-up">
                <div class="megamenu-row">
                  <div class="col4">
                    <ul class="list-unstyled">
                      <li>Tour Packages Grid View</li>
                      <li class="">
                        <a href="packages-grid-left-sidebar.html">Packages Sidebar Left</a>
                      </li>

                      <li class="">
                        <a href="packages-grid-right-sidebar.html">Packages Sidebar Right</a>
                      </li>

                      <li class="">
                        <a href="packages-grid.html">Packages 3 Columns</a>
                      </li>
                    </ul>
                  </div>

                  <div class="col4">
                    <ul class="list-unstyled">
                      <li>Tour Packages List View</li>
                      <li class="">
                        <a href="packages-list-left-sidebar.html">Packages Sidebar Left</a>
                      </li>
                      
                      <li class="">
                        <a href="packages-list-right-sidebar.html">Packages Sidebar Right</a>
                      </li>

                      <li class="">
                        <a href="packages-list.html">Packages List</a>
                      </li>
                    </ul>
                  </div>

                  <div class="col4">
                    <ul class="list-unstyled">
                      <li>Single Package</li>
                      <li class="">
                        <a href="single-package-left-sidebar.html">Packages Sidebar Left</a>
                      </li>

                      <li class="">
                        <a href="single-package-right-sidebar.html">Packages Sidebar Right</a>
                      </li>

                      <li class="">
                        <a href="single-package-fullwidth.html">Packages Fullwidth</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>

            <li class=" active ">
              <a href="javascript:void(0)">Hotels</a>
              <div class="megamenu drop-up">
                <div class="megamenu-row">
                  <div class="col3">
                    <ul class="list-unstyled">
                      <li>Hotels Grid View</li>

                      <li class="">
                        <a href="hotels-grid-left-sidebar.html">Hotels Sidebar Left</a>
                      </li>

                      <li class="">
                        <a href="hotels-grid-right-sidebar.html">Hotels Sidebar Right</a>
                      </li>

                      <li class="">
                        <a href="hotels-grid.html">Hotels 3 Columns</a>
                      </li>
                    </ul>
                  </div>
            
                  <div class="col3">
                    <ul class="list-unstyled">
                      <li>Hotels List View</li>
                      <li class="">
                        <a href="hotels-list-left-sidebar.html">Hotels Sidebar Left</a>
                      </li>

                      <li class="">
                        <a href="hotels-list-right-sidebar.html">Hotels Sidebar Right</a>
                      </li>

                      <li class="">
                        <a href="hotels-list.html">Hotels List</a>
                      </li>
                    </ul>
                  </div>
            
                  <div class="col3">
                    <ul class="list-unstyled">
                      <li>Single Hotel</li>
                      <li class="">
                        <a href="single-hotel-left-sidebar.html">Hotels Sidebar Left</a>
                      </li>

                      <li class="">
                        <a href="single-hotel-right-sidebar.html">Hotels Sidebar Right</a>
                      </li>

                      <li class=" active ">
                        <a href="single-hotel-fullwidth.html">Hotels Fullwidth</a>
                      </li>
                    </ul>
                  </div>

                  <div class="col3">
                    <ul class="list-unstyled">
                      <li>Booking Steps</li>
                      <li class="">
                        <a href="booking-step-1.html">Step 1 - Personal Info</a>
                      </li>

                      <li class="">
                        <a href="booking-step-2.html">Step 2 - Payment Info</a>
                      </li>

                      <li class="">
                        <a href="booking-step-3.html">Step 3 - Confirmation</a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </li>

            <li class="">
              <a href="javascript:void(0)">Rental</a>

              <ul class="dropdown drop-up">
                <li class=" ||
                  ">

                  <a href="javascript:void(0)">Cars</a>

                  <ul class="dropdown drop-sub-menu-left drop-up">
                    <li class="">
                      <a href="cars-list.html">Cars List View</a>
                    </li>

                    <li class="">
                      <a href="cars-grid.html">Cars Grid View</a>
                    </li>
                  </ul>
                </li>

                <li class=" ||
                  ">

                  <a href="javascript:void(0)">Cruises</a>

                  <ul class="dropdown drop-sub-menu-left drop-up">
                    <li class="">
                      <a href="cruises-list.html">Cruises List View</a>
                    </li>

                    <li class="">
                      <a href="cruises-grid.html">Cruises Grid View</a>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>

            <li class="">
              <a href="javascript:void(0)">Pages</a>
              <ul class="dropdown drop-up">
                <li class="">
                  <a href="about-us.html">About Us</a>
                </li>

                <li class="">
                  <a href="contact.html">Contact Us</a>
                </li>

                <li class=" ||
                     ||
                    ">

                  <a href="javascript:void(0)">Gallery</a>
                  <ul class="dropdown drop-sub-menu-left drop-up">
                    <li class="">
                      <a href="gallery-grid.html">Gallery Grid</a>
                    </li>

                    <li class="">
                      <a href="gallery-masonry.html">Gallery Masonry</a>
                    </li>

                    <li class="">
                      <a href="gallery-photo-slider.html">Photo Slider</a>
                    </li>
                  </ul>
                </li>

                <li class=" ||
                    ">

                  <a href="javascript:void(0)">Destinations</a>
                  <ul class="dropdown drop-sub-menu-left drop-up">
                    <li class="">
                      <a href="destination-cities.html">Destination Cities</a>
                    </li>

                    <li class="">
                      <a href="destination-single-city.html">Single Destination</a>
                    </li>
                  </ul>
                </li>

                <li class="">
                    
                  <a href="javascript:void(0)">Components</a>

                  <ul class="dropdown drop-sub-menu-left drop-up navComponents">
                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#accordion">Accordion</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#alerts">Alerts</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#badge">Badge</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#breadcrumb">Breadcrumb</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#buttons">Buttons</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#collapse">Collapse</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#card">Card</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#forms">Forms</a>
                    </li>

                    <li class="scrolling">
                      <a class="removeNav" href="components.html#dropdowns">Dropdowns</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#list-group">List Group</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#modal">Modal</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#navs">Navs</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#offcanvas">Offcanvas</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#pagination">Pagination</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#tooltips">Tooltips</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#spinners">Spinners</a>
                    </li>

                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#progress">Progress</a>
                    </li>
                  </ul>
                </li>

                <li><a href="404.html">404 Not Found</a></li>

                <li><a href="coming-soon.html">Coming Soon</a></li>
              </ul>
            </li>

            <li class="">
              <a href="javascript:void(0)">Blog</a>

              <ul class="dropdown drop-up">
                <li class=" ||
                  ">

                  <a href="javascript:void(0)">Blog Grid View</a>

                  <ul class="dropdown drop-sub-menu-left drop-up">
                    <li class="">
                      <a href="blog-grid-three-col.html">Blog Grid 3 Col</a>
                    </li>

                    <li class="">
                      <a href="blog-grid-two-col.html">Blog Grid 2 Col</a>
                    </li>
                  </ul>
                </li>

                <li class=" ||
                   ||
                  ">

                  <a href="javascript:void(0)">Blog List View</a>

                  <ul class="dropdown drop-sub-menu-left drop-up">
                    <li class="">
                      <a href="blog-list-right-sidebar.html">Blog List Right Sidebar</a>
                    </li>

                    <li class="">
                      <a href="blog-list-left-sidebar.html">Blog List Left Sidebar</a>
                    </li>

                    <li class="">
                      <a href="blog-list-fullwidth.html">Blog List Fullwidth</a>
                    </li>
                  </ul>
                </li>

                <li class=" ||
                    ">

                  <a href="javascript:void(0)">Blog Single Post</a>

                  <ul class="dropdown drop-sub-menu-left drop-up">
                    <li class="">
                      <a href="blog-single-right-sidebar.html">Blog Right Sidebar</a>
                    </li>

                    <li class="">
                      <a href="blog-single-left-sidebar.html">Blog Left Sidebar</a>
                    </li>
                  </ul>
                </li>
              </ul>
            </li>

            <li class="">
              <a href="javascript:void(0)">Admin</a>
              <ul id="admin" class="dropdown drop-up">
                <li class="">
                  <a href="dashboard.html">Dashboard</a>
                </li>

                <li class="">
                  <a href="booking.html">Booking</a>
                </li>

                <li class="">
                  <a href="profile.html">Profile</a>
                </li>

                <li class="">
                  <a href="setting.html">Settings</a>
                </li>

                <li class="">
                  <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#signup">Signup</a>
                </li>

                <li class="">
                  <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#login">Login</a>
                </li>
              </ul>
            </li>

            <li class="py-4">
              <form class="d-lg-none" action="index.html" method="post">
                <div class="input-group input-group-sm">
                  <input type="text" class="form-control form-control-sm rounded-0" required="" placeholder="Search...." aria-label="Search....">
                  <button class="btn bg-primary border-0 rounded-0" type="submit">
                    <span class="text-white text-uppercase font-weight-bold">Search</span>
                  </button>
                </div>
              </form>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
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
          	<button type="button" onclick="location.href='javascript:void(0)';"
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
