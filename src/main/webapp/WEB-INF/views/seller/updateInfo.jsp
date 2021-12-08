<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<jsp:include page="../common/header.jsp" />
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
$(document).ready(function(){
	var checkResultId="";		
	$("#registerSubmit_btn").click(function(){			
		if($("#regForm :input[name=nickName]").val().trim()==""){
			alert("닉네임을 입력하세요");				
			return false;
		}
		
		if($("#regForm :input[name=passWord]").val().trim()==""){
			alert("비밀번호를 입력하세요");				
			return false;
		}
		
		if($("#regForm :input[name=phone]").val().trim()==""){
			alert("전화번호를 입력하세요");				
			return false;
		}	
		
		alert("판매자정보가 수정되었습니다");
		
		$("#regForm").submit();	
	});//submit
	
	
	//비밀번호 체크
	$("#regForm :input[name=passWordCheck]").keyup(function(){
		if($(this).val()==""){
			$("#pwdCheckSpan").html("");
		}
		if($("#regForm :input[name=passWord]").val() == $(this).val()){
				$("#pwdCheckSpan").html("비밀번호가 일치합니다.");
			}else{
				$("#pwdCheckSpan").html("비밀번호를 확인해주세요.");
			}
			
	});//user_pwdcheck_keyup
})
</script>
</head>

<body>

	<!-- Header dashboard -->
	<section class="section-top">
		<nav class="navbar navbar-expand-md navbar-light navbar-dark-light">
			<div class="container">
				<button class="navbar-toggler me-0 ms-3" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01"
					aria-controls="navbarTogglerDemo01" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="navbar-nav-right d-md-none me-6 pe-1">
					<ul class="list-unstyled d-flex align-items-center mb-0">
						<li class="nav-item dropdown nav-item-left"><a href="#"
							class="nav-link" id="navbarDropdown" data-bs-toggle="dropdown"
							role="button" aria-haspopup="true" aria-expanded="false"> <i
								class="fa fa-bell text-gray-color icon" aria-hidden="true"></i>
								<span class="badge-pill bg-primary text-white">2</span>
						</a>

							<div class="dropdown-menu dropdown-menu-end dropdown-left">
								<ul class="list-unstyled list-group list-group-flush">
									<li class=""><a href="javascript:void(0)"
										class="list-group-item rounded-0 border-bottom first-child">
											<h3 class="text-dark mb-0">Information</h3>
									</a></li>

									<li><a href="javascript:void(0)"
										class="list-group-item border-bottom border-off-white rounded-0">
											<h5 class="fon-size-15 text-dark">Maldive Tour Packages</h5>
											<small class="text-gray-color">6 Hours Ago</small>
									</a></li>

									<li><a href="javascript:void(0)"
										class="list-group-item border-bottom border-off-white rounded-0">
											<h5 class="fon-size-15 text-dark">London Tour Booking</h5> <small
											class="text-gray-color">15 Hours Ago</small>
									</a></li>

									<li class=""><a href="javascript:void(0)"
										class="list-group-item border-off-white border-bottom-0 rounded-0 last-child">
											<h5 class="fon-size-15 text-dark">Paris Tour Booking</h5> <small
											class="text-gray-color">15 Hours Ago</small>
									</a></li>
								</ul>
							</div></li>

						<li class="nav-item dropdown nav-item-left me-0">
							<a href="#" class="dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"> 
							<img src="${path}/assets/img/dashboard/dash-user.jpg" data-src="${path}/assets/img/dashboard/dash-user.jpg"
								alt="Generic placeholder image" class="w-100 rounded-circle me-1 lazyestload">
							</a>

							<div class="dropdown-menu dropdown-menu-end dropdown-left">
								<ul class="list-unstyled list-group list-group-flush">
									<li class=""><a href="profile.html"
										class="list-group-item rounded-0 border-bottom first-child">
											<h5 class="fon-size-15 text-dark">Profile</h5>
									</a></li>

									<li><a href="setting.html"
										class="list-group-item border-bottom border-off-white rounded-0">
											<h5 class="fon-size-15 text-dark text-capitalize">Account
												setting</h5>
									</a></li>

									<li class=""><a href="javascript:void(0)"
										class="list-group-item border-off-white border-bottom-0 rounded-0 last-child">
											<h5 class="fon-size-15 text-dark">Log out</h5>
									</a></li>
								</ul>
							</div>
						</li>
					</ul>
				</div>

				<div class="collapse navbar-collapse" id="navbarTogglerDemo01">
					<ul class="navbar-nav me-auto">

						<li class="nav-item dropdown">
							<a class="nav-link  active" href="/seller/info"> 
							<i class="fa fa-user" aria-hidden="true"></i> 
							<span>프로필</span>
							</a>
						</li>

						<li class="nav-item dropdown">
							<a class="nav-link" href="booking.html"> 
							<i class="fa fa-cube" aria-hidden="true"></i>
							<span>여행상품 조회</span>
							</a>
						</li>

						<li class="nav-item dropdown">
							<a class="nav-link" href="setting.html"> 
							<i class="fa fa-cogs" aria-hidden="true"></i>
							<span>Settings</span>
							</a>
						</li>
					</ul>

					<div class="navbar-nav-right d-none d-md-block">
						<ul class="list-unstyled d-flex align-items-center mb-0">
							<li class="nav-item dropdown nav-item-left"><a href="#"
								class="nav-link" id="navbarDropdown" data-bs-toggle="dropdown"
								role="button" aria-haspopup="true" aria-expanded="false"> <i
									class="fa fa-bell text-gray-color" aria-hidden="true"></i> <span
									class="badge-pill bg-primary text-white">2</span>
							</a>

								<div
									class="dropdown-menu dropdown-menu-end dropdown-left notify">
									<ul class="list-unstyled list-group list-group-flush">
										<li class=""><a href="javascript:void(0)"
											class="list-group-item rounded-0 border-bottom first-child">
												<h3 class="text-dark mb-0">Information</h3>
										</a></li>

										<li><a href="javascript:void(0)"
											class="list-group-item border-bottom border-off-white rounded-0">
												<h5 class="fon-size-15 text-dark">Maldive Tour Packages</h5>
												<small class="text-gray-color">6 Hours Ago</small>
										</a></li>

										<li><a href="javascript:void(0)"
											class="list-group-item border-bottom border-off-white rounded-0">
												<h5 class="fon-size-15 text-dark">London Tour Booking</h5> <small
												class="text-gray-color">15 Hours Ago</small>
										</a></li>

										<li class=""><a href="javascript:void(0)"
											class="list-group-item border-off-white border-bottom-0 rounded-0 last-child">
												<h5 class="fon-size-15 text-dark">Paris Tour Booking</h5> <small
												class="text-gray-color">15 Hours Ago</small>
										</a></li>
									</ul>
								</div></li>

							<li class="nav-item dropdown nav-item-left me-0"><a href="#"
								class="dropdown-toggle" data-bs-toggle="dropdown" role="button"
								aria-haspopup="true" aria-expanded="false"> <img
									src="${path}/assets/img/dashboard/dash-user.jpg"
									data-src="${path}/assets/img/dashboard/dash-user.jpg"
									alt="Generic placeholder image"
									class="w-100 rounded-circle me-1 lazyestload">
							</a>

								<div class="dropdown-menu dropdown-menu-end dropdown-left">
									<ul class="list-unstyled list-group list-group-flush">
										<li class=""><a href="profile.html"
											class="list-group-item rounded-0 border-bottom first-child">
												<h5 class="fon-size-15 text-dark">Profile</h5>
										</a></li>

										<li><a href="setting.html"
											class="list-group-item border-bottom border-off-white rounded-0">
												<h5 class="fon-size-15 text-dark text-capitalize">Account
													setting</h5>
										</a></li>

										<li class=""><a href="javascript:void(0)"
											class="list-group-item border-off-white border-bottom-0 rounded-0 last-child">
												<h5 class="fon-size-15 text-dark">Log out</h5>
										</a></li>
									</ul>
								</div></li>
						</ul>
					</div>
				</div>
			</div>
		</nav>
	</section>


<!-- ====================================
——— PROFILE SECTION
===================================== -->

<section class="py-9">
	<input type="hidden" value="${sessionScope.id}" name="user">
  
<div class="container-fluid">
		<div class="row">
			<div class="col-xl-2"></div>
			<div class="col-xl">
      
        <div class="col-md-6 col-lg-5 col-xl-4">
          <div class="mb-6 mb-md-0">
          
			<h2 class="text-uppercase font-weight-bold">개인정보 수정</h2>
		
			<div class="media-body ms-2">
				<span class="text-gray-color">닉네임, 비밀번호, 전화번호를 수정 하실 수 있습니다.</span>
			</div>
	
				
			<form action="${path}/seller/info"  id="regForm" method="post">
				
				<div class="tab-content px-6 py-7" id="myTabContent">
					<div class="tab-pane fade show active" id="Customer" role="tabpanel" aria-labelledby="Customer-tab">
					 <div class="modal-body">

						<div class="mb-3">
							<strong>비밀번호 : </strong> 
							<input type="password" class="form-control bg-smoke" required="required" placeholder="Password" name="sellerPwd">
						</div>
						
						<div class="mb-3">
							<strong>비밀번호확인 : </strong> 
							<input type="password" class="form-control bg-smoke" placeholder="Password" id="pwdChk" name="passWordCheck" style="color: black;">
							<span id="pwdCheckSpan"></span>
						</div>

						<div class="mb-3">
							<strong>닉네임 :</strong> 
							<input type="text" class="form-control bg-smoke" required="required" value="${requestScope.sellerNickname}" name="sellerNickname">
						</div>

						<div class="mb-3">
							<strong>전화번호 :</strong> 
							<input type="text" class="form-control bg-smoke" required="required" value="${requestScope.sellerPhone}" name="sellerPhone">
						</div>

						<div class="form-group">
							<br>
							<input type="button" id="registerSubmit_btn" class="btn btn-ls btn-outline-success text-uppercase" value="수정하기">
						</div>
								
						</div>
					</div><!-- register -->
				</div><!-- col -->

			</form>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<jsp:include page="../common/footer.jsp" />
</body>
</html>