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
    <script src="${pageContext.request.contextPath }/assets/plugins/jquery/jquery-3.4.1.min.js"></script>
    
    <script>
		$(function(){
			$("[name=userId]").keyup(function(){
				 if($(this).val()==""){
					 $("#customerIdCheck").text("");
					 return; 
				 }
				 
				$.ajax({
					 url: "${pagecontext.request.contextPath}/user/customerIdCheck", 
					 type: "post",
					 dataType: "text",
					 data: {id : $(this).val()}, 
					 success: function(result){
						 $("#customerIdCheck").text(result);
						 $("#customerIdCheck").css("color", "red");
						 $("#customerIdCheck").css("marginTop", "-10px");
						 $("#customerIdCheck").css("marginLeft", "70px");
					 }, 
					 error: function(err){
						 alert(err+"발생했어요");
					 }
				 });
			 });
			
			$("[name=sellerId]").keyup(function(){
				 if($(this).val()==""){
					 $("#sellerIdCheck").text("");
					 return; 
				 }
				 
				$.ajax({
					 url: "${pagecontext.request.contextPath}/user/sellerIdCheck", 
					 type: "post",
					 dataType: "text",
					 data: {id : $(this).val()}, 
					 success: function(result){
						 $("#sellerIdCheck").text(result);
						 $("#sellerIdCheck").css("color", "red");
						 $("#sellerIdCheck").css("marginTop", "-10px");
						 $("#sellerIdCheck").css("marginLeft", "70px");
					 }, 
					 error: function(err){
						 alert(err+"발생했어요");
					 }
				 });
			 });
		});
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
          <a href="/" class="menuzord-brand">
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
             
           <!-- 커뮤니티 --> 
           <li class="">
              <a href="javascript:void(0)">커뮤니티</a>

              <ul class="dropdown drop-up">
                <li class="">
                  <a href="/place/list">여행게시판</a>
                </li>
                
                <li class="">
                  <a href="/match/list">모임게시판</a>
                </li>
              </ul>
            </li>
            
            
            <!-- 고객센터 -->
           <li class="">
              <a href="javascript:void(0)">고객센터</a>

              <ul class="dropdown drop-up">
                <li class="">
                  <a href="/notice/list">공지사항</a>
                </li>
                
                <li class="">
                  <a href="/report/list">신고 게시판</a>
                </li>
              </ul>
            </li>
             
            
 <!-- ##### Silver mypage Area End ##### -->
        <c:if test="${sessionScope.id ne null }">
        <c:choose>
          <c:when test="${sessionScope.role eq 'customer' }">
            <li class="">
             <a href="javascript:void(0)">마이페이지</a>
              <ul class="dropdown drop-up">
                <li class="">
                  <a href="/mypage/myprofile">내 프로필</a>
                </li>

                <li class="">
                  <a href="/mypage/mylike">내가 찜한 장소</a>
                </li>

                 <li class="">
                  <a href="/mypage/mywrite">내가 쓴 글</a>
                </li>

                <li class="">
                  <a href="/mypage/myreview">내가 쓴 리뷰</a>
                </li>

                <li class="">
                  <a href="/mypage/mymatch">내 매칭 모임</a>
                </li>
              </ul>
            </li>
          </c:when>
          <c:when test="${sessionScope.role eq 'seller'}">
            <li class="">
             <a href="javascript:void(0)">마이페이지</a>
              <ul class="dropdown drop-up">
                <li class="">
                  <a href="/seller/info">내 프로필</a>
                </li>

                <li class="">
                  <a href="/seller/write">내 장소</a>
                </li>
              </ul>
            </li>
          </c:when>
        </c:choose>
  		</c:if>
    <!-- ##### mypage Area End ##### -->
    
            <li class="">
              <c:choose>
                  <c:when test="${sessionScope.id eq null}">
                    <li class="">
                      <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#signup">Signup</a>
                    </li>
  
                    <li class="">
                      <a href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#login">Login</a>
                    </li>
                  </c:when>
                  <c:otherwise>
                    <li class="">
                      <a href="/user/logout">Logout</a>
                    </li>
                  </c:otherwise>
                </c:choose>
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
<!-- ====================================
    ——— MODAL SECTION
    ===================================== -->
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
	<!-- Login Modal -->
	<div class="modal fade" id="login" tabindex="-1" role="dialog"
		aria-label="loginModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-header rounded">
					<h3 class="modal-title text-uppercase font-weight-bold">Log in
						to your account</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>

				<div class="modal-body">
					<form class="" action="/user/login" method="post">
						<div class="mb-3">
							<input type="text" class="form-control bg-smoke"
								required="required" placeholder="ID" name="id">
						</div>

						<div class="mb-3">
							<input type="password" class="form-control bg-smoke"
								required="required" placeholder="Password" name="pwd">
						</div>

						<div class="mb-3">
							<input type="radio" class="form-check-input" value="Customer"
								name="user" required="required"> <label class=".radio-control-label">Customer</label>
							<input type="radio" class="form-check-input" value="Seller"
								name="user" required="required"> <label class=".radio-control-label">Seller</label>
						</div>

						<div class="mb-3 form-check mb-0">&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="javascript:void(0)" class="pull-right"
								data-bs-toggle="modal" data-bs-target="#findId" aria-label="Close"	data-bs-dismiss="modal">Find Id</a>&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="javascript:void(0)" class="pull-right"
								data-bs-toggle="modal" data-bs-target="#findPwd" aria-label="Close"	data-bs-dismiss="modal">Find Password</a>
						</div>

						<div class="d-grid">
							<button type="submit"
								class="btn btn-primary btn-block text-uppercase">Login</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	
	<div class="modal fade" id="findId" tabindex="-1" role="dialog"
		aria-label="findIdModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-header rounded">
					<h3 class="modal-title text-uppercase font-weight-bold">Find Your Id</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>

				<div class="modal-body">
					<form class="" action="/user/findId" method="post">
						<div class="mb-3">
							<input type="email" class="form-control bg-smoke"
								required="required" placeholder="Email" name="email">
						</div>

						<div class="mb-3">
							<input type="radio" class="form-check-input" value="Customer"
								name="user" required="required"> <label class=".radio-control-label">Customer</label>
							<input type="radio" class="form-check-input" value="Seller"
								name="user" required="required"> <label class=".radio-control-label">Seller</label>
						</div>

						
						<div class="d-grid">
							<button type="submit"
								class="btn btn-primary btn-block text-uppercase">Find Id</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div> 
	
	<div class="modal fade" id="findPwd" tabindex="-1" role="dialog"
		aria-label="findPwdModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-header rounded">
					<h3 class="modal-title text-uppercase font-weight-bold">Find Your Password</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>

				<div class="modal-body">
					<form class="" action="/user/findPwd" method="post">
						<div class="mb-3">
							<input type="text" class="form-control bg-smoke"
								required="required" placeholder="ID" name="id">
						</div>

						<div class="mb-3">
							<input type="email" class="form-control bg-smoke"
								required="required" placeholder="Email" name="email">
						</div>

						<div class="mb-3">
							<input type="radio" class="form-check-input" value="Customer"
								name="user" required="required"> <label class=".radio-control-label">Customer</label>
							<input type="radio" class="form-check-input" value="Seller"
								name="user" required="required"> <label class=".radio-control-label">Seller</label>
						</div>

						<div class="d-grid">
							<button type="submit"
								class="btn btn-primary btn-block text-uppercase">Find Password</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<c:if test="${message ne null}">
	  <script type="text/javascript">
	    $(function(){
	    	$("#messageTitle").text("<%= request.getAttribute("title")%>");
	    	$("#messageContent").text("<%= request.getAttribute("message")%>");
	    	$("#message").modal("show");
	    	
	    });
	  </script>
	</c:if>
	<div class="modal fade" id="message" tabindex="-1" role="dialog"
		aria-label="messageModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-header rounded">
					<h3 class="modal-title text-uppercase font-weight-bold" id="messageTitle">Find Your Password</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>

				<div class="modal-body">
					<div>
					  <h3 id="messageContent"></h3>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>