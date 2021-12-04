<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<jsp:include page="../common/header.jsp" />
<!DOCTYPE html>
<html>
<head>

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
              <span>Profile</span>
            </a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link " href="booking.html">
              <i class="fa fa-cube" aria-hidden="true"></i>
              <span>Booking</span>
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
<form name="mypage" method="post" action="${pageContext.request.contextPath}/mypage/myprofile">

    	<input type="hidden" value="${sessionScope.id}" name="customer">

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
              <h2 class="text-uppercase font-weight-bold">닉네임 : ${requestScope.customer.userNickname}</h2>
            </div>

            <div class="icon-setting">
              <a href="setting.html">
                <i class="fas fa-pencil-alt" aria-hidden="true"></i>
              </a>
            </div>
          </div>

         
          <ul class="list-unstyled">
            <li class="media media-profile-list">
              <strong>Id :</strong>

              <div class="media-body ms-2">
                <span class="text-gray-color">${requestScope.customer.userId}</span>
              </div>
            </li>

            <li class="media media-profile-list">
              <strong>Name :</strong>

              <div class="media-body ms-2">
                <span class="text-gray-color">${requestScope.customer.userName}</span>
              </div>
            </li>

            <li class="media media-profile-list">
              <strong>Email :</strong>

              <div class="media-body ms-2">
                <a href="mail:to" class="text-gray-color hover-text-primary">${requestScope.customer.userEmail}</a>
              </div>
            </li>

            <li class="media media-profile-list">
              <strong>Phone :</strong>

              <div class="media-body ms-2">
                <a href="tel:+12512353256" class="text-gray-color hover-text-primary">${requestScope.customer.userPhone}</a>
              </div>
            </li>

            <li class="media media-profile-list">
              <strong>Gender : </strong>

              <div class="media-body ms-2">
                <span class="text-gray-color">${requestScope.customer.userGender}</span>
              </div>
            </li>

            <li class="media media-profile-list">
              <strong>Age : </strong>

              <div class="media-body ms-2">
                <span class="text-gray-color">${requestScope.customer.userAge}</span>
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
          
          <!-- Signup Modal -->
	<div class="modal fade" id="signup" tabindex="-1" role="dialog"
		aria-label="signupModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-header rounded">
					<h3 class="modal-title text-uppercase font-weight-bold">Create
						your account</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="tab-features shadow">
					<ul class="nav nav-tabs" id="myTab" role="tablist">
						<li class="nav-item"><a
							class="nav-link first-child last-child active" id="Customer-tab"
							data-bs-toggle="tab" href="#Customer" role="tab"
							aria-controls="customer" aria-selected="true">
								<div class="text-center">
									<i class="fas fa-map-marker-alt" aria-hidden="true"></i> <span
										class="d-block text-uppercase">Customer</span>
								</div>
						</a></li>

						<li class="nav-item"><a class="nav-link last-child"
							id="Seller-tab" data-bs-toggle="tab" href="#Seller" role="tab"
							aria-controls="seller" aria-selected="false">
								<div class="text-center">
									<i class="fa fa-home" aria-hidden="true"></i> <span
										class="d-block text-uppercase">Seller</span>
								</div>
						</a></li>
					</ul>
				</div>
				<div class="tab-content px-6 py-7" id="myTabContent">
					<div class="tab-pane fade show active" id="Customer"
						role="tabpanel" aria-labelledby="Customer-tab">
						<div class="modal-body">
							<form class="" action="/user/customerRegister" method="post">
								<div class="mb-3">
									<input type="text" class="form-control bg-smoke"
										required="required" placeholder="ID" name="userId">
								</div>
								<div id="customerIdCheck"></div>

								<div class="mb-3">
									<input type="password" class="form-control bg-smoke"
										required="required" placeholder="Password" name="userPwd">
								</div>

								<div class="mb-3">
									<input type="text" class="form-control bg-smoke"
										required="required" placeholder="Name" name="userName">
								</div>

								<div class="mb-3">
									<input type="text" class="form-control bg-smoke"
										required="required" placeholder="NickName" name="userNickname">
								</div>

								<div class="mb-3">
									<input type="email" class="form-control bg-smoke"
										required="required" placeholder="Email" name="userEmail">
								</div>

								<div class="mb-3">
									<input type="text" class="form-control bg-smoke"
										required="required" placeholder="PhoneNumber" name="userPhone">
								</div>

								<div class="mb-3">
									<input type="number" class="form-control bg-smoke"
										required="required" placeholder="age" name="userAge" min="20">
								</div>

								<div class="mb-3">
									<input type="radio" class="form-check-input" value="man"
										name="userGender" required="required"> <label class=".radio-control-label">Man</label>
									<input type="radio" class="form-check-input" value="women"
										name="userGender" required="required"> <label class=".radio-control-label">Women</label>
								</div>

								<div class="mb-3 form-check mb-0">
									<input type="checkbox" class="form-check-input"
										id="exampleCheck1" required="required"> <label
										class="form-check-label text-gray-color mb-3"
										for="exampleCheck1"> I agree to the terms of use and
										privacy. </label>
								</div>

								<div class="d-grid">
									<button type="submit" class="btn btn-primary text-uppercase">SignUp</button>
								</div>

							</form>
						</div>
					</div>
					<div class="tab-pane fade" id="Seller" role="tabpanel"
						aria-labelledby="Seller-tab">
						<div class="modal-body">
							<form class="" action="/user/sellerRegister" method="post">
								<div class="mb-3">
									<input type="text" class="form-control bg-smoke"
										required="required" placeholder="ID" name="sellerId">
								</div>
								<div id="sellerIdCheck"></div>

								<div class="mb-3">
									<input type="password" class="form-control bg-smoke"
										required="required" placeholder="Password" name="sellerPwd">
								</div>

								<div class="mb-3">
									<input type="text" class="form-control bg-smoke"
										required="required" placeholder="Name" name="sellerName">
								</div>

								<div class="mb-3">
									<input type="text" class="form-control bg-smoke"
										required="required" placeholder="NickName" name="sellerNickname">
								</div>

								<div class="mb-3">
									<input type="email" class="form-control bg-smoke"
										required="required" placeholder="Email" name="sellerEmail">
								</div>

								<div class="mb-3">
									<input type="text" class="form-control bg-smoke"
										required="required" placeholder="PhoneNumber" name="sellerPhone">
								</div>

								<div class="mb-3">
									<input type="text" class="form-control bg-smoke"
										required="required" placeholder="Company Registration Number"
										name="sellerRegisterNumber">
								</div>

								<div>
									<select name="region" class="form-select" required="required">
										<option value="0">--지역 선택--</option>
										<option value="1">서울</option>
										<option value="2">경기/인천</option>
										<option value="3">부산/경남</option>
										<option value="4">대전/충청</option>
										<option value="5">대구/경북</option>
										<option value="6">광주/전라</option>
										<option value="7">강원/제주</option>
									</select>
								</div>
								<div class="mb-3 form-check mb-0">
									<input type="checkbox" class="form-check-input"
										id="exampleCheck1" required="required"> <label
										class="form-check-label text-gray-color mb-3"
										for="exampleCheck1"> I agree to the terms of use and
										privacy. </label>
								</div>

								<div class="d-grid">
									<button type="submit" class="btn btn-primary text-uppercase">SignUp</button>
								</div>

							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	
       <!-- 확인, 취소 버튼 start -->
    	  <div class="delicious-buttons-area">
    	  	<div class=" btn delicious-btn">
    	  		<input type=submit value="등록" style="background-color:transparent;  border:0px transparent solid; font-weight: bold; color: #fff;">
    	  	</div>
    	  	<div class=" btn delicious-btn">
    	  	  	<input type=reset value="취소" style="background-color:transparent;  border:0px transparent solid; font-weight: bold; color: #fff;">
    	  	</div>
          </div><!-- 확인, 취소 버튼 end -->
     
     
        </div>
      </div>
    </div>

   

    <!-- Contact Section -->
    <div class="bg-smoke p-2 p-md-5 p-lg-6 rounded">
      <div class="row justify-content-center">
        <div class="col-md-6 col-lg-4">
          <div class="mb-7 mb-lg-0">
            <h6 class="font-size-15 text-uppercase mb-5">Benefits</h6>

            <ul class="list-unstyled mb-0 bg-white rounded p-5">
              <li class="media mb-2">
                <div class="me-2">
                  <i class="fa fa-check-square text-primary" aria-hidden="true"></i>
                </div>

                <div class="media-body">
                  <a href="" class="text-gray-color hover-text-primary text-capitalize mb-0">
                    Some benefit
                  </a>
                </div>
              </li>

              <li class="media mb-2">
                <div class="me-2">
                  <i class="fa fa-check-square text-primary" aria-hidden="true"></i>
                </div>

                <div class="media-body">
                  <a href="" class="text-gray-color hover-text-primary text-capitalize mb-0">
                    Curabitur viveraj
                  </a>
                </div>
              </li>

              <li class="media mb-2">
                <div class="me-2">
                  <i class="fa fa-check-square text-primary" aria-hidden="true"></i>
                </div>

                <div class="media-body">
                  <a href="" class="text-gray-color hover-text-primary text-capitalize mb-0">
                    Donec null rhonus
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
            <h6 class="font-size-15 text-uppercase mb-5">Recent offers</h6>

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