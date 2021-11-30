<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>

<c:set var = "path" value = "${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
  
  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>같이의 가치</title>

    <!-- Plugins css Style -->
    <link href='${path}/assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
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

            <li class="">
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

                      <li class="">
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
            
    <!-- ##### Silver mypage Area End ##### -->
  		<li class="">
             <a href="javascript:void(0)">MyPage</a>
              <ul class="dropdown drop-up">
               
                <li class="">
                  <a href="about-us.html">내 프로필</a>
                </li>

                <li class="">
                  <a href="/mypage/mylike">내가 찜한 장소</a>
                </li>

                 <li class="">
                  <a href="javascript:void(0)">내가 쓴 글</a>
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

                <li class="">

                  <a href="javascript:void(0)">내가 쓴 리뷰</a>
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
                    
                  <a href="javascript:void(0)">내 매칭 모임</a>

                  <ul class="dropdown drop-sub-menu-left drop-up navComponents">
                    <li class="scrollNav">
                      <a class="removeNav" href="components.html#accordion">Accordion</a>
                    </li>

                    
                  </ul>
                </li>

                <li><a href="404.html">내 여행 일정</a></li>

                <li><a href="coming-soon.html">내 친구 관리</a></li>
              </ul>
            </li>
    <!-- ##### mypage Area End ##### -->
    
            <li class=" active ">
              <a href="javascript:void(0)">Blog</a>

              <ul class="dropdown drop-up">
                <li class=" ||
                  ">

                  <a href="javascript:void(0)">공지사항</a>

                  <ul class="dropdown drop-sub-menu-left drop-up">
                    <li class="">
                      <a href="/notice/list"">공지사항보기</a>
                    </li>

                    <li class="">
                      <a href="blog-grid-two-col.html">Blog Grid 2 Col</a>
                    </li>
                  </ul>
                </li>

                <li class=" ||
                   ||
                   active ">

                  <a href="javascript:void(0)">Blog List View</a>

                  <ul class="dropdown drop-sub-menu-left drop-up">
                    <li class="">
                      <a href="blog-list-right-sidebar.html">Blog List Right Sidebar</a>
                    </li>

                    <li class="">
                      <a href="blog-list-left-sidebar.html">Blog List Left Sidebar</a>
                    </li>

                    <li class=" active ">
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

    <!-- ##### Header Area End ##### -->

</body>

</html>