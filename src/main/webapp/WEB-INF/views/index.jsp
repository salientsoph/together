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
    <title>Star Travel - Tour Booking Theme</title>

    <!-- Plugins css Style -->
    <link href='${path}/assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='${path}/assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href="${path}/assets/plugins/animate/animate.css" rel="stylesheet">
    <link href="${path}/assets/plugins/menuzord/css/menuzord.css" rel="stylesheet">
    <link href="${path}/assets/plugins/menuzord/css/menuzord-animations.css" rel="stylesheet">

    <link href='${path}/assets/plugins/isotope/isotope.min.css' rel='stylesheet'>
    <link href='${path}/assets/plugins/fancybox/jquery.fancybox.min.css' rel='stylesheet'>
    
    <link href='${path}/assets/plugins/selectric/selectric.css' rel='stylesheet'>
    <link href='${path}/assets/plugins/daterangepicker/css/daterangepicker.css' rel='stylesheet'>
    
    <link href='${path}/assets/plugins/dzsparallaxer/dzsparallaxer.css' rel='stylesheet'>
    
    
    
    
    
    <link href='${path}/assets/plugins/revolution/css/settings.css' rel='stylesheet'>

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
  
  <!-- Preloader -->
  <div id="preloader" class="smooth-loader-wrapper">
    <div class="smooth-loader">
      <div class="sk-circle">
        <div class="sk-circle1 sk-child"></div>
        <div class="sk-circle2 sk-child"></div>
        <div class="sk-circle3 sk-child"></div>
        <div class="sk-circle4 sk-child"></div>
        <div class="sk-circle5 sk-child"></div>
        <div class="sk-circle6 sk-child"></div>
        <div class="sk-circle7 sk-child"></div>
        <div class="sk-circle8 sk-child"></div>
        <div class="sk-circle9 sk-child"></div>
        <div class="sk-circle10 sk-child"></div>
        <div class="sk-circle11 sk-child"></div>
        <div class="sk-circle12 sk-child"></div>
      </div>
    </div>
  </div>

  <!-- ====================================
  ——— HEADER
  ===================================== -->
  <header class="header" id="pageTop">    

    <!-- Menu Zord -->
    <nav class="nav-menuzord nav-menuzord-transparent navbar-sticky">
      <div class="container clearfix">
        <div id="menuzord" class="menuzord">
          <a href="index.html" class="menuzord-logo-brand"></a>

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
            <li class=" active ">
              <a class="" href="javascript:void(0)">Home</a>
              <ul class="dropdown drop-up">
                <li class=" active ">
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
  <div class="main-wrapper home-main">


<!-- ====================================
———	BANNER SECTION
===================================== -->
<div id="rev_slider_12_1_wrapper" class="rev_slider_wrapper fullwidthbanner-container" data-alias="star-test"
  data-source="gallery"
  style="margin:0px auto;background:rgba(0,0,0,0.15);padding:0px;margin-top:0px;margin-bottom:0px;background-repeat:no-repeat;background-size:cover;background-position:center center;" dir="ltr">
  <!-- START REVOLUTION SLIDER 5.4.8.1 fullwidth mode -->
  <div id="rev_slider_12_1" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.4.8.1">
    <ul>
      <!-- SLIDE  -->
      <li data-index="rs-33" data-transition="slideoverdown" data-slotamount="default" data-hideafterloop="0"
        data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default"
        data-thumb="${path}/assets/img/home/slider/slider-01.jpg" data-delay="6000" data-rotate="0" data-saveperformance="off"
        data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6=""
        data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
        <!-- MAIN IMAGE -->
        <img src="${path}/assets/img/home/slider/slider-01.jpg" alt="" data-bgposition="center center" data-bgfit="cover"
          data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina style="width: 100% !important">
        <!-- LAYERS -->

        <!-- LAYER NR. 1 -->
        <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme" id="slide-33-layer-22"
          data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']" data-y="['top','top','top','top']"
          data-voffset="['0','0','0','0']" data-width="full" data-height="full" data-whitespace="wrap"
          data-type="shape" data-basealign="slide" data-responsive_offset="on"
          data-frames='[{"delay":10,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 5;background-color:rgba(0,0,0,0.15);"> </div>

        <!-- LAYER NR. 2 -->
        <div class="tp-caption   tp-resizeme" id="slide-33-layer-6" data-x="['left','left','left','left']"
          data-hoffset="['0','100','50','70']" data-y="['middle','middle','middle','middle']"
          data-voffset="['-100','-100','-100','-100']" data-fontsize="['30','30','22','20']" data-width="none"
          data-height="none" data-whitespace="wrap" data-type="text" data-responsive_offset="on"
          data-frames='[{"delay":650,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"+4340","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 6; white-space: wrap; font-size: 30px; line-height: 35px; font-weight: 400; color: #ffffff; letter-spacing: 0px;font-family:Montserrat;text-transform:uppercase;">
          설레는 여행지에서 새로운 만남</div>

        <!-- LAYER NR. 3 -->
        <div class="tp-caption   tp-resizeme" id="slide-33-layer-7" data-x="['left','left','left','left']"
          data-hoffset="['0','100','50','70']" data-y="['middle','middle','middle','middle']"
          data-voffset="['-40','-40','-55','-50']" data-fontsize="['65','65','40','30']" data-width="none"
          data-height="none" data-whitespace="wrap" data-type="text" data-responsive_offset="on"
          data-frames='[{"delay":650,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"+4340","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 7; white-space: wrap; font-size: 65px; line-height: 70px; font-weight: 700; color: #ffffff; letter-spacing: 0px;font-family:montserrat;text-transform:uppercase;">
          Witrago</div>

        <!-- LAYER NR. 4 -->
        <div class="tp-caption   tp-resizeme" id="slide-33-layer-10" data-x="['left','left','left','center']"
          data-hoffset="['0','100','50','0']" data-y="['middle','middle','middle','middle']"
          data-voffset="['35','30','10','29']" data-fontsize="['14','14','13','14']" data-width="none"
          data-height="none" data-whitespace="wrap" data-visibility="['on','on','on','off']" data-type="text"
          data-responsive_offset="on"
          data-frames='[{"delay":1050,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"+3940","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 8; white-space: wrap; font-size: 14px; line-height: 21px; font-weight: 400; color: #ffffff; letter-spacing: 0px;font-family:montserrat;"></div>

        <!-- LAYER NR. 5 -->
        <a href="https://wrapbootstrap.com/theme/star-travel-tour-booking-theme-admin-WB05T4R0J" target="_blank" class="tp-caption rev-btn " id="slide-33-layer-11" data-x="['left','left','left','left']"
          data-hoffset="['0','100','50','70']" data-y="['middle','middle','middle','middle']"
          data-voffset="['120','120','100','30']" data-width="132" data-height="none" data-whitespace="wrap"
          data-type="button" data-responsive_offset="on" data-responsive="on"
          data-frames='[{"delay":1450,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"+3540","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['center','center','center','center']" data-paddingtop="[14,14,14,14]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[14,14,14,14]" data-paddingleft="[0,0,0,0]"
          style="z-index: 9; min-width: 132px; max-width: 132px; white-space: nowrap; font-size: 14px; line-height: 17px; font-weight: 500; color: #ffffff; letter-spacing: 0;font-family:Montserrat;text-transform:uppercase;background-color:rgb(255,137,30);border-radius:3px 3px 3px 3px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">
          여행 시작하기 </a>
      </li>
      <!-- SLIDE  -->
      <li data-index="rs-54" data-transition="slideoverdown" data-slotamount="default" data-hideafterloop="0"
        data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default"
        data-thumb="${path}/assets/img/home/slider/slider-02.jpg" data-delay="6000" data-rotate="0" data-saveperformance="off"
        data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6=""
        data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
        <!-- MAIN IMAGE -->
        <img src="${path}/assets/img/home/slider/slider-02.jpg" alt="" data-bgposition="center center" data-bgfit="cover"
          data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina style="width: 100% !important">
        <!-- LAYERS -->

        <!-- LAYER NR. 6 -->
        <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme" id="slide-54-layer-12"
          data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']" data-y="['top','top','top','top']"
          data-voffset="['0','0','0','0']" data-width="full" data-height="full" data-whitespace="wrap"
          data-type="shape" data-basealign="slide" data-responsive_offset="on"
          data-frames='[{"delay":10,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 5;background-color:rgba(0,0,0,0.15);"> </div>

        <!-- LAYER NR. 7 -->
        <div class="tp-caption   tp-resizeme" id="slide-54-layer-6" data-x="['center','center','center','center']"
          data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']"
          data-voffset="['-100','-100','-100','-100']" data-fontsize="['30','30','22','20']" data-width="none"
          data-height="none" data-whitespace="wrap" data-type="text" data-responsive_offset="on"
          data-frames='[{"delay":650,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"+4330","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 6; white-space: nowrap; font-size: 30px; line-height: 35px; font-weight: 400; color: #ffffff; letter-spacing: 0px;font-family:Montserrat;text-transform:uppercase;">
          이번에는 어디로 가볼까? </div>

        <!-- LAYER NR. 8 -->
        <div class="tp-caption   tp-resizeme" id="slide-54-layer-7" data-x="['center','center','center','center']"
          data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']"
          data-voffset="['-40','-40','-55','-50']" data-fontsize="['65','65','40','30']" data-width="none"
          data-height="none" data-whitespace="wrap" data-type="text" data-responsive_offset="on"
          data-frames='[{"delay":650,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"+4330","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 7; white-space: nowrap; font-size: 65px; line-height: 70px; font-weight: 700; color: #ffffff; letter-spacing: 0px;font-family:montserrat;text-transform:uppercase;">
          요즘 인기있는 국내 여행지 </div>

        <!-- LAYER NR. 9 -->
        <div class="tp-caption   tp-resizeme" id="slide-54-layer-10" data-x="['center','center','center','center']"
          data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']"
          data-voffset="['35','30','10','29']" data-fontsize="['14','14','13','14']" data-width="none"
          data-height="none" data-whitespace="wrap" data-visibility="['on','on','on','off']" data-type="text"
          data-responsive_offset="on"
          data-frames='[{"delay":1050,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"+3930","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['center','center','center','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 8; white-space: nowrap; font-size: 14px; line-height: 21px; font-weight: 400; color: #ffffff; letter-spacing: 0px;font-family:montserrat;">
          이 맘때 가면 가장 예쁜 곳들 </div>

        <!-- LAYER NR. 10 -->
        <a href="https://wrapbootstrap.com/theme/star-travel-tour-booking-theme-admin-WB05T4R0J" target="_blank" class="tp-caption rev-btn " id="slide-54-layer-11" data-x="['center','center','center','center']"
          data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']"
          data-voffset="['120','120','100','30']" data-width="132" data-height="none" data-whitespace="wrap"
          data-type="button" data-responsive_offset="on" data-responsive="on"
          data-frames='[{"delay":1450,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"+3530","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['center','center','center','center']" data-paddingtop="[14,14,14,14]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[14,14,14,14]" data-paddingleft="[0,0,0,0]"
          style="z-index: 9; min-width: 132px; max-width: 132px; white-space: nowrap; font-size: 14px; line-height: 17px; font-weight: 500; color: #ffffff; letter-spacing: 0;font-family:Montserrat;text-transform:uppercase;background-color:rgb(255,137,30);border-radius:3px 3px 3px 3px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">
          모두 보기 </a>
      </li>
      <!-- SLIDE  -->
      <li data-index="rs-56" data-transition="slideoverdown" data-slotamount="default" data-hideafterloop="0"
        data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default"
        data-thumb="${path}/assets/img/home/slider/slider-03.jpg" data-delay="6000" data-rotate="0" data-saveperformance="off"
        data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6=""
        data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
        <!-- MAIN IMAGE -->
        <img src="${path}/assets/img/home/slider/slider-03.jpg" alt="" data-bgposition="center center" data-bgfit="cover"
          data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina style="width: 100% !important">
        <!-- LAYERS -->

        <!-- LAYER NR. 11 -->
        <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme" id="slide-56-layer-12"
          data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']" data-y="['top','top','top','top']"
          data-voffset="['0','0','0','0']" data-width="full" data-height="full" data-whitespace="wrap"
          data-type="shape" data-basealign="slide" data-responsive_offset="on"
          data-frames='[{"delay":10,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 5;background-color:rgba(0,0,0,0.15);"> </div>
       

        <!-- LAYER NR. 13 -->
        <div class="tp-caption   tp-resizeme" id="slide-56-layer-7" data-x="['left','left','left','left']"
          data-hoffset="['0','100','50','70']" data-y="['middle','middle','middle','middle']"
          data-voffset="['-40','-40','-55','-50']" data-fontsize="['65','65','40','30']" data-width="none"
          data-height="none" data-whitespace="wrap" data-type="text" data-responsive_offset="on"
          data-frames='[{"delay":650,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 7; white-space: nowrap; font-size: 65px; line-height: 70px; font-weight: 700; color: #ffffff; letter-spacing: 0px;font-family:montserrat;text-transform:uppercase;">
          가을의 절정,<br>
          단풍 구경을 놓치지 마세요</div>

        <!-- LAYER NR. 14 -->
        <div class="tp-caption   tp-resizeme" id="slide-56-layer-10" data-x="['left','left','left','center']"
          data-hoffset="['0','100','50','0']" data-y="['middle','middle','middle','middle']"
          data-voffset="['35','30','10','29']" data-fontsize="['14','14','13','14']" data-width="none"
          data-height="none" data-whitespace="wrap" data-visibility="['on','on','on','off']" data-type="text"
          data-responsive_offset="on"
          data-frames='[{"delay":1050,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 8; white-space: nowrap; font-size: 14px; line-height: 21px; font-weight: 400; color: #ffffff; letter-spacing: 0px;font-family:montserrat;">
          언제, 어디서 단풍을 즐기면 좋을까? </div>

        <!-- LAYER NR. 15 -->
        <a href="https://wrapbootstrap.com/theme/star-travel-tour-booking-theme-admin-WB05T4R0J" target="_blank" class="tp-caption rev-btn " id="slide-56-layer-11" data-x="['left','left','left','left']"
          data-hoffset="['0','100','50','70']" data-y="['middle','middle','middle','middle']"
          data-voffset="['120','120','100','30']" data-width="132" data-height="none" data-whitespace="wrap"
          data-type="button" data-responsive_offset="on" data-responsive="on"
          data-frames='[{"delay":1450,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['center','center','center','center']" data-paddingtop="[14,14,14,14]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[14,14,14,14]" data-paddingleft="[0,0,0,0]"
          style="z-index: 9; min-width: 132px; max-width: 132px; white-space: nowrap; font-size: 14px; line-height: 17px; font-weight: 500; color: #ffffff; letter-spacing: 0;font-family:Montserrat;text-transform:uppercase;background-color:rgb(255,137,30);border-radius:3px 3px 3px 3px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">
          모두 보기 </a>
      </li>
     
      <!-- SLIDE  -->
      <li data-index="rs-57" data-transition="slideoverdown" data-slotamount="default" data-hideafterloop="0"
        data-hideslideonmobile="off" data-easein="default" data-easeout="default" data-masterspeed="default"
        data-thumb="${path}/assets/img/home/slider/slider-04.jpg" data-delay="6000" data-rotate="0" data-saveperformance="off"
        data-title="Slide" data-param1="" data-param2="" data-param3="" data-param4="" data-param5="" data-param6=""
        data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
        <!-- MAIN IMAGE -->
        <img src="${path}/assets/img/home/slider/slider-04.jpg" alt="" data-bgposition="center center"
          data-bgfit="cover" data-bgrepeat="no-repeat" class="rev-slidebg" data-no-retina style="width: 100% !important">
        <!-- LAYERS -->

        <!-- LAYER NR. 16 -->
        <div class="tp-caption tp-shape tp-shapewrapper  tp-resizeme" id="slide-57-layer-12"
          data-x="['left','left','left','left']" data-hoffset="['0','0','0','0']" data-y="['top','top','top','top']"
          data-voffset="['0','0','0','0']" data-width="full" data-height="full" data-whitespace="wrap"
          data-type="shape" data-basealign="slide" data-responsive_offset="on"
          data-frames='[{"delay":10,"speed":300,"frame":"0","from":"opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"wait","speed":300,"frame":"999","to":"opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 5;background-color:rgba(0,0,0,0.15);"> </div>

        <!-- LAYER NR. 17 -->
        <div class="tp-caption   tp-resizeme" id="slide-57-layer-6" data-x="['center','center','center','center']"
          data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']"
          data-voffset="['-100','-100','-100','-100']" data-fontsize="['30','30','22','20']" data-width="none"
          data-height="none" data-whitespace="wrap" data-type="text" data-responsive_offset="on"
          data-frames='[{"delay":650,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"+4050","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 6; white-space: nowrap; font-size: 30px; line-height: 35px; font-weight: 400; color: #ffffff; letter-spacing: 0px;font-family:Montserrat;text-transform:uppercase;">
          연말연시 국내여행 </div>

        <!-- LAYER NR. 18 -->
        <div class="tp-caption   tp-resizeme" id="slide-57-layer-7" data-x="['center','center','center','center']"
          data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']"
          data-voffset="['-40','-40','-55','-50']" data-fontsize="['65','65','40','30']" data-width="none"
          data-height="none" data-whitespace="wrap" data-type="text" data-responsive_offset="on"
          data-frames='[{"delay":650,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"+4050","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['inherit','inherit','inherit','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 7; white-space: nowrap; font-size: 65px; line-height: 70px; font-weight: 700; color: #ffffff; letter-spacing: 0px;font-family:montserrat;text-transform:uppercase;">
          '이 도시'가 뜬다! </div>

        <!-- LAYER NR. 19 -->
        <div class="tp-caption   tp-resizeme" id="slide-57-layer-10" data-x="['center','center','center','center']"
          data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']"
          data-voffset="['35','30','10','29']" data-fontsize="['14','14','13','14']" data-width="none"
          data-height="none" data-whitespace="wrap" data-visibility="['on','on','on','off']" data-type="text"
          data-responsive_offset="on"
          data-frames='[{"delay":1050,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"+3650","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['center','center','center','inherit']" data-paddingtop="[0,0,0,0]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[0,0,0,0]" data-paddingleft="[0,0,0,0]"
          style="z-index: 8; white-space: nowrap; font-size: 14px; line-height: 21px; font-weight: 400; color: #ffffff; letter-spacing: 0px;font-family:montserrat;">
          12월에 가기 좋은 국내 인기 여행지 총 정리 </div>

        <!-- LAYER NR. 20 -->
        <a href="https://wrapbootstrap.com/theme/star-travel-tour-booking-theme-admin-WB05T4R0J" target="_blank" class="tp-caption rev-btn" id="slide-57-layer-11" data-x="['center','center','center','center']"
          data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']"
          data-voffset="['120','120','100','30']" data-width="132" data-height="none" data-whitespace="wrap"
          data-type="button" data-responsive_offset="on" data-responsive="on"
          data-frames='[{"delay":1450,"speed":1000,"frame":"0","from":"y:-50px;opacity:0;","to":"o:1;","ease":"Power3.easeInOut"},{"delay":"+3250","speed":300,"frame":"999","to":"y:-50px;opacity:0;","ease":"Power3.easeInOut"}]'
          data-textAlign="['center','center','center','center']" data-paddingtop="[14,14,14,14]"
          data-paddingright="[0,0,0,0]" data-paddingbottom="[14,14,14,14]" data-paddingleft="[0,0,0,0]"
          style="z-index: 9; min-width: 132px; max-width: 132px; white-space: nowrap; font-size: 14px; line-height: 17px; font-weight: 500; color: #ffffff; letter-spacing: 0;font-family:Montserrat;text-transform:uppercase;background-color:rgb(255,137,30);border-radius:3px 3px 3px 3px;outline:none;box-shadow:none;box-sizing:border-box;-moz-box-sizing:border-box;-webkit-box-sizing:border-box;cursor:pointer;">
          모두 보기 </a>
      </li>
    </ul>
    <div class="tp-bannertimer tp-bottom" style="visibility: hidden !important;"></div>
  </div>
</div>


<!-- ====================================
———	TOP DEALS SECTION
===================================== -->

<section class="bg-smoke py-8 py-lg-9">
  <div class="container">
    <div class="text-center section-title">
      <h2 class="text-uppercase font-weight-bold position-relative">
        <span class="bg-smoke">
         Withrago 체험 둘러보기
        </span>
      </h2>
      <p class="text-capitalize text-center">여행 중 만나는 이색적인 즐길 거리</p>
    </div>

    <div class="row justify-content-center">
      <div class="col-md-6 col-lg-4">
        <div class="card card-hover mb-5 mb-lg-0">
          <a href="single-package-left-sidebar.html" class="position-relative">
            <img class="card-img-top lazyestload" data-src="${path}/assets/img/home/deal/deal-01.jpg" src="${path}/assets/img/home/deal/deal-01.jpg" alt="Card image cap">
            
            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
              <div class="badge bg-primary badge-rounded-circle">  
                <span class="d-block">
                  10%<br>off
                </span>
              </div>

              <ul class="list-unstyled d-flex mt-auto text-warning">
                <li>
                  <i class="fa fa-star me-1" aria-hidden="true"></i>
                </li>
                <li>
                  <i class="fa fa-star me-1" aria-hidden="true"></i>
                </li>
                <li>
                  <i class="fa fa-star me-1" aria-hidden="true"></i>
                </li>
                <li>
                  <i class="fa fa-star me-1" aria-hidden="true"></i>
                </li>
                <li>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </li>
              </ul>

              <ul class="list-unstyled d-flex text-white font-weight-bold mb-0">
                <li class="border-right border-white pe-2">1:1 class</li>
                <li class="border-right border-white px-2">Group class(5)</li>       
              </ul>
            </div>
          </a>

          <div class="card-body">
            <h5>
              <a href="single-package-left-sidebar.html" class="card-title text-uppercase">앙금찰떡 만들기</a>
            </h5>		    
            <p class="mb-5">약 1시간 반 동안의 클래스 동안 초보자도 가능한 한국식 화과자를 만듭니다.</p>
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <p class="mb-0 text-capitalize">최저가</p>
                <h3 class="text-primary">￦65,000/인</h3>
              </div>

              <div>
                <a href="booking-step-1.html" class="btn btn-sm btn-outline-secondary text-uppercase">Book Now</a>
              </div>
            </div>
          </div>
        </div>
      </div>

     <div class="col-md-6 col-lg-4">
        <div class="card card-hover mb-5 mb-lg-0">
          <a href="single-package-left-sidebar.html" class="position-relative">
            <img class="card-img-top" data-src="/assets/img/home/deal/deal-02.jpg" src="/assets/img/home/deal/deal-02.jpg" alt="Card image cap">
            
            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
              <div class="badge bg-primary badge-rounded-circle">  
                <span class="d-block">
                  5%<br>off
                </span>
              </div>

              <ul class="list-unstyled d-flex mt-auto text-warning">
                <li>
                  <i class="fa fa-star me-1" aria-hidden="true"></i>
                </li>
                <li>
                  <i class="fa fa-star me-1" aria-hidden="true"></i>
                </li>
                <li>
                  <i class="fa fa-star me-1" aria-hidden="true"></i>
                </li>
                <li>
                  <i class="fa fa-star me-1" aria-hidden="true"></i>
                </li>
                <li>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </li>
              </ul>

              <ul class="list-unstyled d-flex text-white font-weight-bold mb-0">
                <li class="border-right border-white pe-2">1:1 class</li>
                <li class="border-right border-white px-2">Group class(5)</li>       
              </ul>
            </div>
          </a>

          <div class="card-body">
            <h5>
              <a href="single-package-left-sidebar.html" class="card-title text-uppercase">나만의 자개 작품 만들기</a>
            </h5>		    
            <p class="mb-5">한국 전통 공예 중 하나인 '나전칠기'에 대해 알아보는 시간을 가집니다.</p>
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <p class="mb-0 text-capitalize">최저가</p>
                <h3 class="text-primary">￦85,000/인</h3>
              </div>

              <div>
                <a href="booking-step-1.html" class="btn btn-sm btn-outline-secondary text-uppercase">Book Now</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      
	<div class="col-md-6 col-lg-4">
        <div class="card card-hover mb-5 mb-lg-0">
          <a href="single-package-left-sidebar.html" class="position-relative">
            <img class="card-img-top" data-src="/assets/img/home/deal/deal-03.jpg" src="/assets/img/home/deal/deal-03.jpg" alt="Card image cap">
            
            <div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
              <div class="badge bg-primary badge-rounded-circle">  
                <span class="d-block">
                  15%<br>off
                </span>
              </div>

              <ul class="list-unstyled d-flex mt-auto text-warning">
                <li>
                  <i class="fa fa-star me-1" aria-hidden="true"></i>
                </li>
                <li>
                  <i class="fa fa-star me-1" aria-hidden="true"></i>
                </li>
                <li>
                  <i class="fa fa-star me-1" aria-hidden="true"></i>
                </li>
                <li>
                  <i class="fa fa-star me-1" aria-hidden="true"></i>
                </li>
                <li>
                  <i class="fa fa-star" aria-hidden="true"></i>
                </li>
              </ul>

              <ul class="list-unstyled d-flex text-white font-weight-bold mb-0">
                <li class="border-right border-white pe-2">sunrise tour</li>
                <li class="border-right border-white px-2">sunset tour</li>       
              </ul>
            </div>
          </a>
	
		<div class="card-body">
            <h5>
              <a href="single-package-left-sidebar.html" class="card-title text-uppercase">부산 해운대 요트체험</a>
            </h5>		    
            <p class="mb-5">해운대 바다에서 특별한 요트체험 하시고 행복한 추억 만들어가세요.</p>
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <p class="mb-0 text-capitalize">최저가</p>
                <h3 class="text-primary">￦35,000/인</h3>
              </div>

              <div>
                <a href="booking-step-1.html" class="btn btn-sm btn-outline-secondary text-uppercase">Book Now</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      

    <div class="text-center mt-7">
      <a href="packages-grid.html" class="btn btn-sm btn-outline-secondary text-uppercase">View all</a>
    </div>		
  </div>
</section>

<!-- ====================================
———	VACETION SECTION
===================================== -->

<section class="dzsparallaxer auto-init use-loading promotion-paralax">
  <div class="divimage dzsparallaxer--target" style="height: 700px;" data-src="${path}/assets/img/home/promotion/promotion-1.jpg">
  </div>

  <div class="container paralax-container">
    <div class="row align-items-center justify-content-center text-center">
      <div class="col-12">
        <div class="content mb-7">
          <h2 class="text-uppercase text-white font-weight-bold">에디터가 추천하는 국내 여행지</h2>
        </div>
        <ul class="list-unstyled icon-rating d-flex justify-content-center text-warning mb-1">
          <li class="me-1">
            <i class="fa fa-star" aria-hidden="true"></i>
          </li>
          <li class="me-1">
            <i class="fa fa-star" aria-hidden="true"></i>
          </li>
          <li class="me-1">
            <i class="fa fa-star" aria-hidden="true"></i>
          </li>
          <li class="me-1">
            <i class="fa fa-star" aria-hidden="true"></i>
          </li>
          <li>
            <i class="fa fa-star" aria-hidden="true"></i>
          </li>
        </ul>		
        <h4 class="text-white mb-4">여행만족도</h4>
        <a href="single-package-right-sidebar.html" class="btn btn-primary text-uppercase">자세히 보기</a>
      </div>
    </div>			
  </div>
</section>

<!-- ====================================
———	PACKAGES SECTION
===================================== -->
<section class="py-10">
  <div class="container">
    <div class="text-center section-title">
      <h2 class="text-uppercase font-weight-bold position-relative">
        <span class="bg-white">
         설레는 다음 여행을 위한 아이디어
        </span>
      </h2>
      <p class="text-capitalize text-center">국내여행지</p>
    </div>

    <div id="filters" class="button-group">
      <button class="button is-checked" data-filter="*">모든지역</button>
      <button class="button" data-filter=".asia">서울</button>
      <button class="button" data-filter=".america">부산</button>
      <button class="button" data-filter=".africa">광주</button>
    </div>

    <div class="row grid" style="position: relative; height: 483.11px;">
    
      <div class="col-md-6 col-lg-4 element-item america" style="position: absolute; left: 0px; top: 0px;">
        <div class="media media-hoverable justify-content-center mb-2 mb-md-4 mb-lg-6">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img" height="276.52" data-src="assets/img/home/packages/packages-1.jpg" src="assets/img/home/packages/packages-1.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">광안리해변</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">￦0</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 365 Days
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>
      
      <div class="col-md-6 col-lg-4 element-item america" style="position: absolute; left: 323px; top: 256px;">
        <div class="media media-hoverable justify-content-center mb-2 mb-md-0">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img" height="276.52" data-src="assets/img/home/packages/packages-5.jpg" src="assets/img/home/packages/packages-5.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">해동 용궁사</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">￦0</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 365 Days
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>
      
      <div class="col-md-6 col-lg-4 element-item america" style="position: absolute; left: 323px; top: 256px;">
        <div class="media media-hoverable justify-content-center mb-2 mb-md-0">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img" height="276.52" data-src="assets/img/home/packages/packages-8.jpg" src="assets/img/home/packages/packages-8.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">청사포 해변열차</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">￦7,000</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 365 Days
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>
      
      
      <div class="col-md-6 col-lg-4 element-item asia" style="position: absolute; left: 646px; top: 0px;">
        <div class="media media-hoverable justify-content-center mb-2 mb-md-4 mb-lg-6">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img" height="276.52" data-src="assets/img/home/packages/packages-3.jpg" src="assets/img/home/packages/packages-3.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">경복궁</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">￦0</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 365 Days
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>
      

      <div class="col-md-6 col-lg-4 element-item asia" style="position: absolute; left: 0px; top: 256px;">
        <div class="media media-hoverable justify-content-center mb-2 mb-md-4 mb-lg-0">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img" height="276.52" data-src="assets/img/home/packages/packages-4.jpg" src="assets/img/home/packages/packages-4.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">서촌,북촌 한옥마을</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">￦0</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 365 Days
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>


      <div class="col-md-6 col-lg-4 element-item asia" style="position: absolute; left: 646px; top: 0px;">
        <div class="media media-hoverable justify-content-center mb-2 mb-md-4 mb-lg-6">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img" height="276.52" data-src="assets/img/home/packages/packages-7.jpg" src="assets/img/home/packages/packages-7.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">남산타워</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">￦11,000</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 365 Days
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>

	
	<div class="col-md-6 col-lg-4 element-item africa" style="position: absolute; left: 323px; top: 0px;">
        <div class="media media-hoverable justify-content-center mb-2 mb-md-4 mb-lg-6">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img" height="276.52" data-src="assets/img/home/packages/packages-2.jpg" src="assets/img/home/packages/packages-2.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">무등산</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">￦0</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 365 Days
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>
      

      <div class="col-md-6 col-lg-4 element-item africa" style="position: absolute; left: 646px; top: 256px;">
        <div class="media media-hoverable justify-content-center">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img" height="276.52" data-src="assets/img/home/packages/packages-6.jpg" src="assets/img/home/packages/packages-6.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">광주호 호수생태원</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">￦0</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 365 Days
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>
      
      
      <div class="col-md-6 col-lg-4 element-item africa" style="position: absolute; left: 323px; top: 0px;">
        <div class="media media-hoverable justify-content-center mb-2 mb-md-4 mb-lg-6">
          <a href="single-package-fullwidth.html" class="media-content">
            <img class="media-img" height="276.52" data-src="assets/img/home/packages/packages-9.jpg" src="assets/img/home/packages/packages-9.jpg" alt="Generic placeholder image">
            <div class="media-object">
              <h3 class="text-uppercase mb-0">양림동'펭귄마을'</h3>
            </div>
            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">￦0</span></h3>
                <p class="text-white mb-0">
                  <span class="me-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 365 Days
                </p>
              </div>
            </div>
          </a>
        </div>
      </div>
    </div>
  </div>
</section>
  </div>
  <!-- element wrapper ends -->


<!-- ====================================
———	COUNTER SECTION
===================================== -->
<section class="counter-up dzsparallaxer auto-init use-loading counterup-paralax">
  <div class="divimage dzsparallaxer--target" style="height: 700px;" data-src="${path}/assets/img/home/promotion/promotion-2.jpg">
  </div>
  
  <div class="container paralax-container">
    <div class="row align-items-center text-center" id="counter">
      <div class="col-6 col-md-3 mb-5 mb-md-0">
        <div class="icon icon-lg rounded-circle mx-auto bg-primary mb-3">
          <i class="fas fa-map-marker-alt text-white" aria-hidden="true"></i>
        </div>
        <h1 class="counter-value mb-2" data-count="179">0</h1>
        <h6 class="">여행지</h6>
      </div>

      <div class="col-6 col-md-3 mb-5 mb-md-0">
        <div class="icon icon-lg rounded-circle mx-auto bg-primary mb-3">
          <i class="fa fa-gift text-white" aria-hidden="true"></i>
        </div>
        <h1 class="counter-value mb-2" data-count="48">0</h1>
        <h6 class="">투어상품</h6>
      </div>

      <div class="col-6 col-md-3">
        <div class="icon icon-lg rounded-circle mx-auto bg-primary mb-3">
          <i class="far fa-smile text-white" aria-hidden="true"></i>
        </div>
        <h1 class="counter-value mb-2" data-count="4862">0</h1>
        <h6 class="">하루평균매칭수</h6>
      </div>

      <div class="col-6 col-md-3">
        <div class="icon icon-lg rounded-circle mx-auto bg-primary mb-3">
          <i class="fa fa-life-ring text-white" aria-hidden="true"></i>
        </div>
        <h1 class="counter-value mb-2" data-count="24">0</h1>
        <h6 class="">고객센터</h6>
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
              <p class="mb-0" weight="212" height="186"><Strong>Witrago</Strong>는 여행 종합 플랫폼입니다. 지루하고 지쳤던 일상에서 벗어나 모험이 가득한 새로운 곳에서 Witrago 이용자 여러분들이 에너지를 재충전 할 수 있게 도와줍니다</p>
            </div>
    
            <div class="col-md-6 col-lg-3 mt-md-4 mb-7 mb-lg-0">
              <div class="title-tag">
                <h6>Contact us</h6>
              </div>
              	<p>상담전화 13:00 ~ 16:00(평일)</p>
              <ul class="list-unstyled mb-0">
              	<li class="media mb-2">
                  <div class="me-3">
                    <i class="fas fa-phone-alt" aria-hidden="true"></i>
                  </div>
                  <div class="media-body">
                    <a href="tel:88657524332">대표전화 1666-3333</a>
                  </div>
                </li>
                
              
                <li class="media mb-2">
                  <div class="me-3">
                    <i class="fa fa-home" aria-hidden="true"></i>
                  </div>
                  <div class="media-body">
                     <a href="contact.html">(13637) 경기도 성남시 분당구 성남대로 34 6층(구미동 하나프라자빌딩)</a>
                  </div>
                </li>
                
                
                <li class="media">
                  <div class="me-3">
                    <i class="far fa-envelope" aria-hidden="true"></i>
                  </div>
                  <div class="media-body">
                    <a href="mailTo:info@star-travel.com">info@Withrago.com</a>
                  </div>
                </li>
              </ul>
            </div>
    
            <div class="col-md-6 col-lg-3 mt-lg-4 mb-7 mb-md-0">
              <div class="title-tag pb-1">
                <h6>city</h6>
              </div>

              <div class="row me-auto gallery mb-2 mb-md-0">
                <div class="col-4 mb-3">
                  <div class="media media-hover">
                    <div class="content w-100">
                      <img class="media-img lazyestload" height="61.83" data-src="${path}/assets/img/home/gallery/thumb-gallery-1.jpg"
                        src="${path}/assets/img/home/gallery/thumb-gallery-1.jpg" alt="gallery-img">
                      <a class="media-img-overlay" data-fancybox="footer-gallery" href="${path}/assets/img/home/gallery/gallery-1.jpg"></a>
                    </div>
                  </div>
                </div>

                <div class="col-4 mb-3">
                  <div class="media media-hover">
                    <div class="content w-100">
                      <img class="media-img lazyestload"  height="61.83" data-src="${path}/assets/img/home/gallery/thumb-gallery-2.jpg"
                        src="${path}/assets/img/home/gallery/thumb-gallery-2.jpg" alt="gallery-img">
                      <a class="media-img-overlay" data-fancybox="footer-gallery" href="${path}/assets/img/home/gallery/gallery-2.jpg"></a>
                    </div>
                  </div>
                </div>

                <div class="col-4 mb-3">
                  <div class="media media-hover">
                    <div class="content w-100">
                      <img class="media-img lazyestload"  height="61.83" data-src="${path}/assets/img/home/gallery/thumb-gallery-3.jpg"
                        src="${path}/assets/img/home/gallery/thumb-gallery-3.jpg" alt="gallery-img">
                      <a class="media-img-overlay" data-fancybox="footer-gallery" href="${path}/assets/img/home/gallery/gallery-3.jpg"></a>
                    </div>
                  </div>
                </div>

                <div class="col-4">
                  <div class="media media-hover">
                    <div class="content w-100">
                      <img class="media-img lazyestload"  height="61.83" data-src="${path}/assets/img/home/gallery/thumb-gallery-4.jpg"
                        src="${path}/assets/img/home/gallery/thumb-gallery-4.jpg" alt="gallery-img">
                      <a class="media-img-overlay" data-fancybox="footer-gallery" href="${path}/assets/img/home/gallery/gallery-4.jpg"></a>
                    </div>
                  </div>
                </div>

                <div class="col-4">
                  <div class="media media-hover">
                    <div class="content w-100">
                      <img class="media-img lazyestload"  height="61.83" data-src="${path}/assets/img/home/gallery/thumb-gallery-5.jpg"
                        src="${path}/assets/img/home/gallery/thumb-gallery-5.jpg" alt="gallery-img">
                      <a class="media-img-overlay" data-fancybox="footer-gallery" href="${path}/assets/img/home/gallery/gallery-5.jpg"></a>
                    </div>
                  </div>
                </div>

                <div class="col-4">
                  <div class="media media-hover">
                    <div class="content w-100">
                      <img class="media-img lazyestload"  height="61.83" data-src="${path}/assets/img/home/gallery/thumb-gallery-6.jpg"
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

              <p>매주 금요일 오후, 구독자님을 위한 여행지 추천과 베스트 여행 후기를 전해드립니다.구독은 언제든지 해지하실 수 있습니다.</p>

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

    <!-- Javascript -->
    <script src="${path}/assets/plugins/jquery/jquery-3.4.1.min.js"></script>
    <script src="${path}/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/assets/plugins/menuzord/js/menuzord.js"></script>
    
    <script src='${path}/assets/plugins/isotope/isotope.min.js'></script>
    <script src='${path}/assets/plugins/images-loaded/js/imagesloaded.pkgd.min.js'></script>
    <script src='${path}/assets/plugins/fancybox/jquery.fancybox.min.js'></script>
    
    <script src='${path}/assets/plugins/selectric/jquery.selectric.min.js'></script>
    <script src='${path}/assets/plugins/daterangepicker/js/moment.min.js'></script>
    <script src='${path}/assets/plugins/daterangepicker/js/daterangepicker.min.js'></script>
    
    <script src="${path}/assets/plugins/lazyestload/lazyestload.js"></script>
    <script src='${path}/assets/plugins/dzsparallaxer/dzsparallaxer.js'></script>
    
    
    
    
    
    <script src='${path}/assets/plugins/revolution/js/jquery.themepunch.tools.min.js'></script>
    <script src='${path}/assets/plugins/revolution/js/jquery.themepunch.revolution.min.js'></script>
    <script src="${path}/assets/plugins/smoothscroll/SmoothScroll.js"></script>
    
    <script src="${path}/assets/js/star.js"></script>
  </body>
</html>

    