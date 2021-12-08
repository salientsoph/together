<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<jsp:include page="../common/header.jsp" />
<!DOCTYPE html>
<html>
<head>
<!-- 수정 버튼을 누를경우 이벤트 발생 -->
<script type="text/javascript">
$(function() {
	$("#updateButton").click(function() {
		alert(수정버튼);
	})
});

$(function(){
	 if(${sessionScope.role} == null || ${sessionScope.role} == "Seller"){
		 location.href="/";
	 } 
 });
 
</script>
</head>

<body>

<!-- Header dashboard -->
<section class="section-top">
  <nav class="navbar navbar-expand-md navbar-light navbar-dark-light">
    <div class="container">
      <button class="navbar-toggler me-0 ms-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01"
        aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="navbar-nav-right d-md-none me-6 pe-1">
        <ul class="list-unstyled d-flex align-items-center mb-0">
          <li class="nav-item dropdown nav-item-left">
            <a href="#" class="nav-link" id="navbarDropdown" data-bs-toggle="dropdown" role="button" aria-haspopup="true"
              aria-expanded="false">
              <i class="fa fa-bell text-gray-color icon" aria-hidden="true"></i> <span class="badge-pill bg-primary text-white">2</span>
            </a>
      
            <div class="dropdown-menu dropdown-menu-end dropdown-left">
              <ul class="list-unstyled list-group list-group-flush">
                <li class="">
                  <a href="javascript:void(0)" class="list-group-item rounded-0 border-bottom first-child">
                    <h3 class="text-dark mb-0">Information</h3>
                  </a>
                </li>
      
                <li>
                  <a href="javascript:void(0)" class="list-group-item border-bottom border-off-white rounded-0">
                    <h5 class="fon-size-15 text-dark">Maldive Tour Packages</h5>
                    <small class="text-gray-color">6 Hours Ago</small>
                  </a>
                </li>
      
                <li>
                  <a href="javascript:void(0)" class="list-group-item border-bottom border-off-white rounded-0">
                    <h5 class="fon-size-15 text-dark">London Tour Booking</h5>
                    <small class="text-gray-color">15 Hours Ago</small>
                  </a>
                </li>
      
                <li class="">
                  <a href="javascript:void(0)" class="list-group-item border-off-white border-bottom-0 rounded-0 last-child">
                    <h5 class="fon-size-15 text-dark">Paris Tour Booking</h5>
                    <small class="text-gray-color">15 Hours Ago</small>
                  </a>
                </li>
              </ul>
            </div>
          </li>
      
          <li class="nav-item dropdown nav-item-left me-0">
            <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-haspopup="true"
              aria-expanded="false">
              <img src="${path}/assets/img/dashboard/dash-user.jpg" data-src="${path}/assets/img/dashboard/dash-user.jpg" alt="Generic placeholder image" class="w-100 rounded-circle me-1 lazyestload">
            </a>
      
            <div class="dropdown-menu dropdown-menu-end dropdown-left">
              <ul class="list-unstyled list-group list-group-flush">
                <li class="">
                  <a href="profile.html" class="list-group-item rounded-0 border-bottom first-child">
                    <h5 class="fon-size-15 text-dark">Profile</h5>
                  </a>
                </li>
      
                <li>
                  <a href="setting.html" class="list-group-item border-bottom border-off-white rounded-0">
                    <h5 class="fon-size-15 text-dark text-capitalize">Account setting</h5>
                  </a>
                </li>
      
                <li class="">
                  <a href="javascript:void(0)" class="list-group-item border-off-white border-bottom-0 rounded-0 last-child">
                    <h5 class="fon-size-15 text-dark">Log out</h5>
                  </a>
                </li>
              </ul>
            </div>
          </li>
        </ul>
      </div>

      <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <ul class="navbar-nav me-auto">
    

          <li class="nav-item dropdown">
            <a class="nav-link  active " href="/mypage/myprofile">
              <i class="fa fa-user" aria-hidden="true"></i>
              <span>프로필</span>
            </a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link " href="booking.html">
              <i class="fa fa-cube" aria-hidden="true"></i>
              <span>모임신청</span>
            </a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link " href="setting.html">
              <i class="fa fa-cogs" aria-hidden="true"></i>
              <span>Settings</span>
            </a>
          </li>
        </ul>

        <div class="navbar-nav-right d-none d-md-block">
          <ul class="list-unstyled d-flex align-items-center mb-0">
            <li class="nav-item dropdown nav-item-left">
              <a href="#" class="nav-link" id="navbarDropdown" data-bs-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">
                <i class="fa fa-bell text-gray-color" aria-hidden="true"></i> <span class="badge-pill bg-primary text-white">2</span>
              </a>

              <div class="dropdown-menu dropdown-menu-end dropdown-left notify">
                <ul class="list-unstyled list-group list-group-flush">
                  <li class="">
                    <a href="javascript:void(0)" class="list-group-item rounded-0 border-bottom first-child">
                      <h3 class="text-dark mb-0">Information</h3>
                    </a>
                  </li>

                  <li>
                    <a href="javascript:void(0)" class="list-group-item border-bottom border-off-white rounded-0">
                      <h5 class="fon-size-15 text-dark">Maldive Tour Packages</h5>
                      <small class="text-gray-color">6 Hours Ago</small>
                    </a>
                  </li>

                  <li>
                    <a href="javascript:void(0)" class="list-group-item border-bottom border-off-white rounded-0">
                      <h5 class="fon-size-15 text-dark">London Tour Booking</h5>
                      <small class="text-gray-color">15 Hours Ago</small>
                    </a>
                  </li>

                  <li class="">
                    <a href="javascript:void(0)" class="list-group-item border-off-white border-bottom-0 rounded-0 last-child">
                      <h5 class="fon-size-15 text-dark">Paris Tour Booking</h5>
                      <small class="text-gray-color">15 Hours Ago</small>
                    </a>
                  </li>
                </ul>
              </div>
            </li>

            <li class="nav-item dropdown nav-item-left me-0">
              <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                <img src="${path}/assets/img/dashboard/dash-user.jpg" data-src="${path}/assets/img/dashboard/dash-user.jpg" alt="Generic placeholder image" class="w-100 rounded-circle me-1 lazyestload">
              </a>

              <div class="dropdown-menu dropdown-menu-end dropdown-left">
                <ul class="list-unstyled list-group list-group-flush">
                  <li class="">
                    <a href="profile.html" class="list-group-item rounded-0 border-bottom first-child">
                    <h5 class="fon-size-15 text-dark">Profile</h5>
                    </a>
                  </li>
              
                  <li>
                    <a href="setting.html" class="list-group-item border-bottom border-off-white rounded-0">
                      <h5 class="fon-size-15 text-dark text-capitalize">Account setting</h5>
                    </a>
                  </li>
              
                  <li class="">
                    <a href="javascript:void(0)" class="list-group-item border-off-white border-bottom-0 rounded-0 last-child">
                      <h5 class="fon-size-15 text-dark">Log out</h5>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
</section>


<!-- ====================================
——— PROFILE SECTION
===================================== -->
<form name="mypage" method="post" action="${pageContext.request.contextPath}/myPage/profile">

    <input type="hidden" value="${sessionScope.id}" name="user">

<c:choose>
	<c:when test="${sessionScope.roll eq customer}"></c:when>
	<c:when test="${sessionScope.roll eq seller}"></c:when>
</c:choose>



<section class="py-9">
  <div class="container">
    <div class="hover-profile mb-7 mb-lg-9">
      <div class="row">
        <div class="col-md-6 col-lg-5 col-xl-4">
          <div class="mb-6 mb-md-0">
            <img class="w-100 lazyestload" data-src="${path}/assets/img/dashboard/profile-img-01.jpg" src="${path}/assets/img/dashboard/profile-img-01.jpg" alt="Generic placeholder image">
          </div>
        </div>

      
        <div class="col-md-6 col-lg-7 col-xl-8">
          <div class="d-flex justify-content-between align-items-baseline">
            <div class="mb-6 mb-md-4 mb-lg-6">
              <h2 class="text-uppercase font-weight-bold">${requestScope.user.userNickname} 님 환영합니다</h2>
            </div>

            <div class="icon-setting">
              <a href="/mypage/myprofileUpdate">
                <i class="fas fa-pencil-alt" aria-hidden="true"></i>
              </a>
            </div>
          </div>
         
          <ul class="list-unstyled">
            <li class="media media-profile-list">
              <strong>Id :</strong>

              <div class="media-body ms-2">
                <span class="text-gray-color">${requestScope.user.userId}</span>
              </div>
            </li>

            <li class="media media-profile-list">
              <strong>Name :</strong>

              <div class="media-body ms-2">
                <span class="text-gray-color">${requestScope.user.userName}</span>
              </div>
            </li>

            <li class="media media-profile-list">
              <strong>Email :</strong>

              <div class="media-body ms-2">
                <a href="mail:to" class="text-gray-color hover-text-primary">${requestScope.user.userEmail}</a>
              </div>
            </li>

            <li class="media media-profile-list">
              <strong>Phone :</strong>

              <div class="media-body ms-2">
                <a href="tel:+12512353256" class="text-gray-color hover-text-primary">${requestScope.user.userPhone}</a>
              </div>
            </li>

            <li class="media media-profile-list">
              <strong>Gender : </strong>

              <div class="media-body ms-2">
                <span class="text-gray-color">${requestScope.user.userGender}</span>
              </div>
            </li>

            <li class="media media-profile-list">
              <strong>Age : </strong>

              <div class="media-body ms-2">
                <span class="text-gray-color">${requestScope.user.userAge}</span>
              </div>
            </li>

          </ul>

          <ul class="list-inline d-flex mb-0">
            <li class="me-3 me-lg-2 me-xl-3">
              <a class="icon-default icon-light-border rounded-circle hover-bg-primary" href="javascript:void(0)">
                <i class="fab fa-facebook-f" aria-hidden="true"></i>
              </a>
            </li>
          
            <li class="me-3 me-lg-2 me-xl-3">
              <a class="icon-default icon-light-border rounded-circle hover-bg-primary" href="javascript:void(0)">
                <i class="fab fa-twitter" aria-hidden="true"></i>
              </a>
            </li>
          
            <li class="me-3 me-lg-2 me-xl-3">
              <a class="icon-default icon-light-border rounded-circle hover-bg-primary" href="javascript:void(0)">
                <i class="fas fa-rss" aria-hidden="true"></i>
              </a>
            </li>
   
            <li class="">
              <a class="icon-default icon-light-border rounded-circle hover-bg-primary" href="javascript:void(0)">
                <i class="fab fa-vimeo-v" aria-hidden="true"></i>
              </a>
            </li>
          </ul>
          
          <div class="row">
	    	<div class="col-12">
          		<div class="icon" style="float: right; padding-left: 20px; padding-top: 10px;">
          		<a href="/mypage/passWordCheck">
          		<button type="button" name="" class="btn btn-ls btn-outline-success text-uppercase"> 수정하기 </button>
	         	</a>
	         	</div>
	         </div>
	      </div>
	        
        </div>
      </div>
    </div>

   

    <!-- Contact Section -->
    <div class="bg-smoke p-2 p-md-5 p-lg-6 rounded">
      <div class="row justify-content-center">
        <div class="col-md-6 col-lg-4">
          <div class="mb-7 mb-lg-0">
            <h6 class="font-size-15 text-uppercase mb-5">Keywords</h6>

            <ul class="list-unstyled mb-0 bg-white rounded p-5">
              <li class="media mb-2">
                <div class="me-2">
                  <i class="fa fa-check-square text-primary" aria-hidden="true"></i>
                </div>

                <div class="media-body">
                  <a href="" class="text-gray-color hover-text-primary text-capitalize mb-0">
                    영화
                  </a>
                </div>
              </li>

              <li class="media mb-2">
                <div class="me-2">
                  <i class="fa fa-check-square text-primary" aria-hidden="true"></i>
                </div>

                <div class="media-body">
                  <a href="" class="text-gray-color hover-text-primary text-capitalize mb-0">
                    음악 
                  </a>
                </div>
              </li>

              <li class="media mb-2">
                <div class="me-2">
                  <i class="fa fa-check-square text-primary" aria-hidden="true"></i>
                </div>

                <div class="media-body">
                  <a href="" class="text-gray-color hover-text-primary text-capitalize mb-0">
                    농구
                  </a>
                </div>
              </li>

              <li class="media mb-2">
                <div class="me-2">
                  <i class="fa fa-check-square text-primary" aria-hidden="true"></i>
                </div>

                <div class="media-body">
                  <a href="" class="text-gray-color hover-text-primary text-capitalize mb-0">
                    Morbi up sum eismod
                  </a>
                </div>
              </li>

              <li class="media mb-2">
                <div class="me-2">
                  <i class="fa fa-check-square text-primary" aria-hidden="true"></i>
                </div>

                <div class="media-body">
                  <a href="" class="text-gray-color hover-text-primary text-capitalize mb-0">
                    Praesent nisi ante
                  </a>
                </div>
              </li>

              <li class="media">
                <div class="me-2">
                  <i class="fa fa-check-square text-primary" aria-hidden="true"></i>
                </div>

                <div class="media-body">
                  <a href="" class="text-gray-color hover-text-primary text-capitalize mb-0">
                    Vesti bulum int daum
                  </a>
                </div>
              </li>
            </ul>
          </div>
        </div>

        <div class="col-md-6 col-lg-4">
          <div class="mb-7 mb-lg-0">
            <h6 class="font-size-15 text-uppercase mb-5">Recent matchs</h6>

            <div class="bg-white rounded p-5">
              <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                <div class="img-overlay rounded me-3">
                  <img class="lazyestload" data-src="${path}/assets/img/blog/tab-02.jpg" src="${path}/assets/img/blog/tab-02.jpg" alt="Generic placeholder image">
                  <a href="" class="hover-img-overlay-dark"></a>
                </div>

                <div class="media-body">
                  <a href="" class="text-dark hover-text-primary text-capitalize mb-1">
                    Totam rem apria.
                  </a>

                  <ul class="list-unstyled d-flex flex-wrap mb-0">
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <span class="d-block text-capitalize">Family package</span>
                      <span class="text-primary font-size-base">$25</span>
                    </li>
                  </ul>
                </div>
              </div>

              <div class="media meta-post-sm ">
                <div class="img-overlay rounded me-3">
                  <img class="lazyestload" data-src="${path}/assets/img/blog/tab-04.jpg" src="${path}/assets/img/blog/tab-04.jpg" alt="Generic placeholder image">
                  <a href="" class="hover-img-overlay-dark"></a>
                </div>

                <div class="media-body">
                  <a href="" class="text-dark hover-text-primary text-capitalize mb-1">
                    Rodney samp deo.
                  </a>

                  <ul class="list-unstyled d-flex flex-wrap mb-0">
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <span class="d-block text-capitalize">Tours package</span>
                      <span class="text-primary font-size-base">$30</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>


      </div>
    </div>
  </div>
</section>

</form>

	<jsp:include page="../common/footer.jsp"/>
  </body>
</html>