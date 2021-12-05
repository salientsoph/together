<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>모임 게시판</title>

<!-- Plugins css Style -->
<link
	href='${pageContext.request.contextPath}/assets/plugins/fontawesome-5.15.2/css/all.min.css'
	rel='stylesheet'>
<link
	href='${pageContext.request.contextPath}/assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css'
	rel='stylesheet'>
<link
	href="${pageContext.request.contextPath}/assets/plugins/animate/animate.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/assets/plugins/menuzord/css/menuzord.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/assets/plugins/menuzord/css/menuzord-animations.css"
	rel="stylesheet">
<link
	href='${pageContext.request.contextPath}/assets/plugins/fancybox/jquery.fancybox.min.css'
	rel='stylesheet'>

<!-- GOOGLE FONT -->
<link
	href='https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700'
	rel='stylesheet'>

<!-- CUSTOM CSS -->
<link href="${pageContext.request.contextPath}/assets/css/star.css"
	id="option_style" rel="stylesheet">


<!-- FAVICON -->
<link rel="shortcut icon" type="image/png"
	href="${pageContext.request.contextPath}/assets/img/favicon.png" />

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<SCRIPT language=javascript>
	$(
			function() {
				$("#updateButton")
						.click(
								function() {
									$("#requestForm")
											.attr("action",
													"${pageContext.request.contextPath}/match/updateForm");
									$("#requestForm").submit();
								})

				$("#deleteButton")
						.click(
								function() {
									if (confirm("정말 삭제하시겠습니까?") == true) {
										$("#requestForm")
												.attr("action",
														"${pageContext.request.contextPath}/match/delete");
										$("#requestForm").submit();
									}
								})
								
				$("#insertButton")
								.click(
									function(){
										$("#requestForm")
										.attr("action",
												"${pageContext.request.contextPath}/match/matchRequest");
										$("#requestForm").submit();
									})
								
				$(document).on("click", "#accept", function(){
							$.ajax({
								type: "post", 
								url: "${pageContext.request.contextPath}/match/matchApprove", //데이터 받아올 페이지
								data: {"customer" : $(this).attr("name"), "matchNo" : "${match.matchNo}"}, //요청시 보낼 파라미터
								dataType: "", //받아올 데이터 형식 
								success: function(result){ //성공시 수행할 핸들러 
									alert("수락하셨습니다");
									location.reload();
								},
								error:function() { //실패시 수행할 핸들러
									console.log("실패");
								}
							});
						});
								
				$(document).on("click", "#reject", function(){
							$.ajax({
								type: "post",
								url: "${pageContext.request.contextPath}/match/matchDeny",
								data: {"customer" : $(this).attr("name"), "matchNo" : "${match.matchNo}"},
								dataType: "",
								success: function(result){
									alert("거절하셨습니다");
									location.reload();
								},
								error:function() {
									console.log("실패");
								}
							});
						});		
			})
</script>


</head>

<body id="body" class="up-scroll">/

	<jsp:include page="../common/header.jsp" />

	<!-- ====================================
———	PAGE TITLE
===================================== -->
	<section class="page-title">
		<div class="page-title-img bg-img bg-overlay-darken"
			style="background-image: url(${pageContext.request.contextPath}/assets/img/pages/page-title-bg12.jpg);">
			<div class="container">
				<div class="row align-items-center justify-content-center"
					style="height: 200px;">
					<div class="col-lg-6">
						<div class="page-title-content">
							<div class="">
								<h2 class="text-uppercase text-white font-weight-bold">모임
									게시판</h2>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- ====================================
——— TRAVEL LIST SECTION
===================================== -->
	<section class="section-top">
		<div class="py-8 py-md-9 py-lg-10">
			<div class="container">
				<div class="row">
					
						<div class="card card-lg card-transparent mb-8">


							<div class="card-body px-2 py-6">
								<h3 class="mb-4">${requestScope.match.matchTitle}</h3>

								<div class="meta-post-sm mb-4">
									<ul class="list-unstyled d-flex flex-wrap mb-0">
										<li class="meta-tag me-4 mb-1"><i
											class="fa fa-user text-gray-color" aria-hidden="true"></i> <a
											class="text-gray-color hover-text-primary" href=""> <span
												class="ms-1 text-capitalize">${requestScope.match.customer.userNickname}</span>
										</a></li>

										<li class="meta-tag text-gray-color me-4 mb-1"><i
											class="fas fa-calendar-alt" aria-hidden="true"></i> <span
											class="ms-1 text-capitalize">${requestScope.match.tripDate}</span>
										</li>

										<li class="meta-tag text-gray-color me-4 mb-1"><i
											class="fa fa fa-tags" aria-hidden="true"></i> <span
											class="ms-1 text-capitalize">${requestScope.match.region.regionName}</span>
										</li>

										<!--
                  <li class="meta-tag text-gray-color me-4 mb-1">
                    <i class="fa fa-envelope" aria-hidden="true"></i>
                    <span class="ms-1 text-capitalize">8 com</span>
                  </li>
                  
    -->
									</ul>
								</div>

								<p>${requestScope.match.matchContent}</p>



								<blockquote class="blockquote rounded p-7 mb-5"
									style="background-image: url(${pageContext.request.contextPath}/assets/img/blog/blog-single-02.png); background-size: cover; background-position: center top; background-repeat: no-repeat">
									<p class="line-height-24 h4 text-white mb-5">
									<c:if test="${sessionScope.id != requestScope.match.customer}">
									<c:choose>
										<c:when test="${empty requestScope.approvedCustomerList}">
											<tr>
									        	<td colspan="5">
									            <p align="center"><b><span style="font-size:12pt;">참석하는 사람이 아직 없어요.</span></b></p>
									       		</td>
									    	</tr>
									    	<form name="signUpForm" method="post" id="requestForm">
											<input type=hidden name="matchNo" value="${requestScope.match.matchNo}">
											<input type="hidden" value="${sessionScope.id}" name="customer">
											<button id="insertButton" type="button" name="signup"
												class="btn btn-secondary btn-lg mb-2">신청하기</button>
											</form>
										</c:when>
									<c:otherwise>
											<span style="font-size:12pt;"> 신청 목록 아이디 </span>
									    <c:forEach items="${requestScope.approvedCustomerList}" var="customer">
    										<p align="left"><span style="font-size:12pt;">${customer}</span><br/></p>
    									</c:forEach>
    								</c:otherwise>
    								</c:choose>
    								</c:if>
    								
										 <c:if test="${sessionScope.id == requestScope.match.customer.userId}">
										 <c:choose>
											<c:when test = "${empty requestScope.requestedCustomerList}">
												<tr><th><h5>신청자가 없습니다.</h5></th></tr>
											</c:when>
											<c:otherwise>
												<c:forEach items = "${requestedCustomerList}" var = "user">
												<tr>
													<th><h6>${user}</h6></th>
													<th><button type="button"  name="${user}" id="accept">수락</button></th>
													<th><button type="button"  name="${user}" id="reject">거절</button></th>
												</tr>
												</c:forEach>
											</c:otherwise>
										</c:choose>
									  	</c:if>
									
									
									</p>
									<!--  <footer class="blockquote-footer text-white">
										by <cite title="Source Title">Adam Smith</cite>
									</footer> --> 
								</blockquote>
							</div>

							<table style="margin: auto">
								<tr>
									<td height="20" colspan="4" align="center" valign="middle">
										 
										<form name="requestForm" method="post" id="requestForm">
											<input type=hidden name="matchNo"
												value="${requestScope.match.matchNo}">
											<button id="updateButton" type="button" name="update"
												class="btn btn-secondary btn-lg mb-2">수정하기</button>
											<button id="deleteButton" type="button" name="delete"
												class="btn btn-secondary btn-lg mb-2">삭제하기</button>
											<a href="${pageContext.request.contextPath}/match/list">
												<button type="button" name="list"
													class="btn btn-secondary btn-lg mb-2">목록으로</button>
											</a>
										</form>
									</td>
								</tr>
							</table>


							<div
								class="card-footer d-flex align-items-center bg-smoke rounded p-3 p-md-4">
								<span class="font-weight-bold font-size-15">Share it</span>

								<ul class="list-unstyled d-flex ms-auto mb-0">
									<li class="me-3"><a href="javascript:void(0)"
										class="text-gray-color hover-text-primary"> <i
											class="fab fa-facebook-f icon-medium" aria-hidden="true"></i>
									</a></li>

									<li class="me-3"><a href="avascript:void(0)"
										class="text-gray-color hover-text-primary"> <i
											class="fab fa-twitter icon-medium" aria-hidden="true"></i>
									</a></li>

									<li class="me-3"><a href="avascript:void(0)"
										class="text-gray-color hover-text-primary"> <i
											class="fab fa-linkedin-in icon-medium" aria-hidden="true"></i>
									</a></li>

									<li class="me-3"><a href="avascript:void(0)"
										class="text-gray-color hover-text-primary"> <i
											class="fab fa-google-plus-g icon-medium" aria-hidden="true"></i>
									</a></li>

									<li class="me-3"><a href="avascript:void(0)"
										class="text-gray-color hover-text-primary"> <i
											class="fab fa-pinterest-p icon-medium" aria-hidden="true"></i>
									</a></li>

									<li class="me-3"><a href="avascript:void(0)"
										class="text-gray-color hover-text-primary"> <i
											class="fab fa-tumblr icon-medium" aria-hidden="true"></i>
									</a></li>

									<li><a href="avascript:void(0)"
										class="text-gray-color hover-text-primary"> <i
											class="fab fa-instagram icon-medium" aria-hidden="true"></i>
									</a></li>
								</ul>
							</div>
						</div>

						
						<h3 class="mb-6">Comments (${requestScope.matchReply.size()})</h3>

						<c:forEach var="reply" items="${matchReply}" varStatus="status">
							<div class="media mb-8">
								<div class="media-body">
									<div class="mb-7">
										<ul class="list-unstyled d-flex flex-wrap mb-0">
											<li class="meta-tag me-4 mb-1"><i
												class="fa fa-user text-gray-color" aria-hidden="true"></i> <a
												class="text-gray-color hover-text-primary" href=""> <span
													class="ms-1 text-capitalize">${reply.customer.userId}</span>
											</a></li>

											<li class="meta-tag text-gray-color me-4 mb-1"><i
												class="fas fa-calendar-alt" aria-hidden="true"></i> <span
												class="ms-1 text-capitalize"><tags:localDate
														date="${reply.replyDate }" /></span></li>
											<c:if test="${sessionScope.id eq reply.customer.userId}">
												<li class="meta-tag text-gray-color me-4 mb-1">
													<button type="button" class="btn text-primary p-0"
														name="update"
														onclick="updateReview(${reply.replyNo}, '${reply.replyContent }', ${match.matchNo})">수정</button>
												</li>
												<li class="meta-tag text-gray-color me-4 mb-1">
													<button type="button" class="btn text-primary p-0"
														name="delete"
														onclick="deleteReview(${reply.replyNo}, ${match.matchNo})">삭제</button>
												</li>
											</c:if>
										</ul>
										<c:choose>
											<c:when test="${reply.secretReply eq 'true' }">
												<c:choose>
													<c:when test="${sessionScope.id eq reply.customer.userId}">${reply.replyContent }</c:when>
													<c:when test="${sessionScope.id eq match.customer.userId}">${reply.replyContent }</c:when>
													<c:otherwise>
														<p>비밀댓글입니다</p>
													</c:otherwise>
												</c:choose>
											</c:when>
											<c:otherwise>
												<p>${reply.replyContent }</p>
											</c:otherwise>
										</c:choose>
										<button type="button" class="btn text-primary p-0"
											name="reply" id="${reply.replyNo}">Reply</button>
									</div>
									<c:forEach var="rereply" items="${reply.rereplyNoList}">
										<div class="media flex-column flex-md-row mb-7">
										<div class="img-overlay rounded mb-4 mb-md-0 me-md-4">
                  </div>
											<div class="media-body">
												<ul class="list-unstyled d-flex flex-wrap mb-0">
													<li class="meta-tag me-4 mb-1"><i
														class="fa fa-user text-gray-color" aria-hidden="true"></i>
														<a class="text-gray-color hover-text-primary" href="">
															<span class="ms-1 text-capitalize">${rereply.customer.userId}</span>
													</a></li>

													<li class="meta-tag text-gray-color me-4 mb-1"><i
														class="fas fa-calendar-alt" aria-hidden="true"></i> <span
														class="ms-1 text-capitalize"><tags:localDate
																date="${rereply.replyDate }" /></span></li>

													<c:if test="${sessionScope.id eq rereply.customer.userId}">
														<li class="meta-tag text-gray-color me-4 mb-1">
															<button type="button" class="btn text-primary p-0"
																name="update"
																onclick="updateReview(${rereply.replyNo}, '${rereply.replyContent }', ${match.matchNo})">수정</button>
														</li>
														<li class="meta-tag text-gray-color me-4 mb-1">
															<button type="button" class="btn text-primary p-0"
																name="delete"
																onclick="deleteReview(${rereply.replyNo}, ${match.matchNo })">삭제</button>
														</li>
													</c:if>
												</ul>
												<c:choose>
													<c:when test="${rereply.secretReply eq 'true' }">
														<c:choose>

															<c:when
																test="${sessionScope.id eq rereply.customer.userId}">${rereply.replyContent }</c:when>
															<c:when
																test="${sessionScope.id eq match.customer.userId}">${rereply.replyContent }</c:when>
															<c:otherwise>
																<p>비밀댓글입니다</p>
															</c:otherwise>
														</c:choose>
													</c:when>
													<c:otherwise>
														<p>${rereply.replyContent }</p>
													</c:otherwise>
												</c:choose>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</c:forEach>

					</div>

					<div class="mb-7 mb-lg-0">
						<h3 class="mb-6" name="LeaveAComments">Leave A Comments</h3>

						<form action="/reply/insert" method="POST" role="form"
							class="form" name="replyForm">
							<div class="col-lg-6">
								<div class="form-group">
									<input type="hidden" value="${match.matchNo}" name="matchBoard">
								</div>
							</div>

							<div class="col-lg-6">
								<div class="form-group">
									<input type="hidden" value="${sessionScope.id }"
										name="customer">
								</div>
							</div>
							<script type="text/javascript">
								$(function() {
									$("#inputCheck").on("click", function(){
										if ($("#inputCheck").is(":checked")){
											$("#inputCheckHidden").attr("disabled", true);
										}
									});
									
									$("[name=reply]").on("click", function() {
										var offset = $("[name=LeaveAComments]").offset();
										$('html, body').animate({scrollTop : offset.top}, 100);
										$("[name=matchRereply]").val($(this).attr("id"));
										$("[name=matchRereply]").attr("disabled",false);
									});
								});
								
								function updateReview(replyNo, replyContent, matchNo){
									var offset = $("[name=LeaveAComments]").offset();
									$('html, body').animate({scrollTop : offset.top}, 100);
									$(function(){
										$("[name=replyForm]").attr("action", "/reply/update/"+matchNo);
										$("[name=replyForm]").html(`<input type="hidden" value=` + replyNo + ` name="replyNo">
																	<div class="form-group">
																		<textarea class="form-control border-0 bg-smoke" rows="7"
																		name="replyContent">` + replyContent + `</textarea>
																	</div>
																	<button type="submit" class="btn btn-sm btn-outline-secondary text-uppercase py-2 font-weight-medium">send
																		now</button>`)
									});
								}
								
								function deleteReview(replyNo, matchNo){
									location.href="/reply/delete/" + replyNo + "/" + matchNo;
								}
							</script>
							<input type="hidden" name="matchRereply" disabled="disabled">
							<div class="col-lg-6">
								<div class="form-group">
									<input type="checkbox" class="form-check-input"
										name="secretReply" value='true' id="inputCheck" /> <input
										type="hidden" name="secretReply" value='false'
										id="inputCheckHidden" /> secret comment
								</div>
							</div>

							<div class="form-group">
								<textarea class="form-control border-0 bg-smoke" rows="7"
									name="replyContent" placeholder="Your Message"></textarea>
							</div>

							<button type="submit"
								class="btn btn-sm btn-outline-secondary text-uppercase py-2 font-weight-medium">send
								now</button>
						</form>
					</div>
				</div>


			</div>

				<div class="d-md-none">
					<div class="mb-4">
						<ul class="nav nav-tabs nav-justified blog-tabs" id="myTab"
							role="tablist">
							<li class="nav-item"><a class="nav-link active"
								id="recent-blog-tab" data-bs-toggle="tab" href="#recent-blog"
								role="tab" aria-controls="recent-blog" aria-selected="true">Recent</a>
							</li>

							<li class="nav-item"><a class="nav-link"
								id="popular-blog-tab" data-bs-toggle="tab" href="#popular-blog"
								role="tab" aria-controls="popular-blog" aria-selected="false">Popular</a></li>

							<li class="nav-item"><a class="nav-link" id="new-blog-tab"
								data-bs-toggle="tab" href="#new-blog" role="tab"
								aria-controls="new-blog" aria-selected="false">New</a></li>
						</ul>

						<div
							class="tab-content bg-smoke border border-light-gray border-top-0 rounded-bottom px-3 py-5"
							id="myTabContent">
							<div class="tab-pane fade show active" id="recent-blog"
								role="tabpanel" aria-labelledby="recent-blog-tab">
								<div
									class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
									<div class="img-overlay rounded me-2">
										<img class="lazyestload" data-src="assets/img/blog/tab-01.jpg"
											src="assets/img/blog/tab-01.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>

									<div class="media-body">
										<a href=""
											class="text-dark hover-text-primary text-capitalize mb-1">
											Totam rem apriam eaque. </a>

										<ul class="list-unstyled d-flex flex-wrap mb-0">
											<li class="meta-tag text-gray-color me-4 mb-1"><i
												class="fas fa-calendar-alt" aria-hidden="true"></i> <span
												class="ms-1 text-capitalize">5 March, 2021</span></li>
										</ul>
									</div>
								</div>

								<div
									class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
									<div class="img-overlay rounded me-2">
										<img class="lazyestload" data-src="assets/img/blog/tab-02.jpg"
											src="assets/img/blog/tab-02.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>

									<div class="media-body">
										<a href=""
											class="text-dark hover-text-primary text-capitalize mb-1">
											Pitter soan smeeit herick. </a>

										<ul class="list-unstyled d-flex flex-wrap mb-0">
											<li class="meta-tag text-gray-color me-4 mb-1"><i
												class="fas fa-calendar-alt" aria-hidden="true"></i> <span
												class="ms-1 text-capitalize">5 March, 2021</span></li>
										</ul>
									</div>
								</div>

								<div
									class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
									<div class="img-overlay rounded me-2">
										<img class="lazyestload" data-src="assets/img/blog/tab-03.jpg"
											src="assets/img/blog/tab-03.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>

									<div class="media-body">
										<a href=""
											class="text-dark hover-text-primary text-capitalize mb-1">
											Amanda disuja carl parkar. </a>

										<ul class="list-unstyled d-flex flex-wrap mb-0">
											<li class="meta-tag text-gray-color me-4 mb-1"><i
												class="fas fa-calendar-alt" aria-hidden="true"></i> <span
												class="ms-1 text-capitalize">5 March, 2021</span></li>
										</ul>
									</div>
								</div>

								<div class="media meta-post-sm">
									<div class="img-overlay rounded me-2">
										<img class="lazyestload" data-src="assets/img/blog/tab-04.jpg"
											src="assets/img/blog/tab-04.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>

									<div class="media-body">
										<a href=""
											class="text-dark hover-text-primary text-capitalize mb-1">
											Rodney samp deo artich. </a>

										<ul class="list-unstyled d-flex flex-wrap mb-0">
											<li class="meta-tag text-gray-color me-4 mb-1"><i
												class="fas fa-calendar-alt" aria-hidden="true"></i> <span
												class="ms-1 text-capitalize">5 March, 2021</span></li>
										</ul>
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="popular-blog" role="tabpanel"
								aria-labelledby="popular-blog-tab">
								<div
									class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
									<div class="img-overlay rounded me-2">
										<img class="lazyestload" data-src="assets/img/blog/tab-04.jpg"
											src="assets/img/blog/tab-04.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>

									<div class="media-body">
										<a href=""
											class="text-dark hover-text-primary text-capitalize mb-1">
											Rodney samp deo artich. </a>

										<ul class="list-unstyled d-flex flex-wrap mb-0">
											<li class="meta-tag text-gray-color me-4 mb-1"><i
												class="fas fa-calendar-alt" aria-hidden="true"></i> <span
												class="ms-1 text-capitalize">5 March, 2021</span></li>
										</ul>
									</div>
								</div>

								<div
									class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
									<div class="img-overlay rounded me-2">
										<img class="lazyestload" data-src="assets/img/blog/tab-03.jpg"
											src="assets/img/blog/tab-03.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>

									<div class="media-body">
										<a href=""
											class="text-dark hover-text-primary text-capitalize mb-1">
											Amanda disuja carl parkar. </a>

										<ul class="list-unstyled d-flex flex-wrap mb-0">
											<li class="meta-tag text-gray-color me-4 mb-1"><i
												class="fas fa-calendar-alt" aria-hidden="true"></i> <span
												class="ms-1 text-capitalize">5 March, 2021</span></li>
										</ul>
									</div>
								</div>

								<div
									class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
									<div class="img-overlay rounded me-2">
										<img class="lazyestload" data-src="assets/img/blog/tab-02.jpg"
											src="assets/img/blog/tab-02.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>

									<div class="media-body">
										<a href=""
											class="text-dark hover-text-primary text-capitalize mb-1">
											Pitter soan smeeit herick. </a>

										<ul class="list-unstyled d-flex flex-wrap mb-0">
											<li class="meta-tag text-gray-color me-4 mb-1"><i
												class="fas fa-calendar-alt" aria-hidden="true"></i> <span
												class="ms-1 text-capitalize">5 March, 2021</span></li>
										</ul>
									</div>
								</div>

								<div class="media meta-post-sm">
									<div class="img-overlay rounded me-2">
										<img class="lazyestload" data-src="assets/img/blog/tab-01.jpg"
											src="assets/img/blog/tab-01.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>

									<div class="media-body">
										<a href=""
											class="text-dark hover-text-primary text-capitalize mb-1">
											Totam rem apriam eaque. </a>

										<ul class="list-unstyled d-flex flex-wrap mb-0">
											<li class="meta-tag text-gray-color me-4 mb-1"><i
												class="fas fa-calendar-alt" aria-hidden="true"></i> <span
												class="ms-1 text-capitalize">5 March, 2021</span></li>
										</ul>
									</div>
								</div>
							</div>

							<div class="tab-pane fade" id="new-blog" role="tabpanel"
								aria-labelledby="new-blog-tab">
								<div
									class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
									<div class="img-overlay rounded me-2">
										<img class="lazyestload" data-src="assets/img/blog/tab-02.jpg"
											src="assets/img/blog/tab-02.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>

									<div class="media-body">
										<a href=""
											class="text-dark hover-text-primary text-capitalize mb-1">
											Pitter soan smeeit herick. </a>

										<ul class="list-unstyled d-flex flex-wrap mb-0">
											<li class="meta-tag text-gray-color me-4 mb-1"><i
												class="fas fa-calendar-alt" aria-hidden="true"></i> <span
												class="ms-1 text-capitalize">5 March, 2021</span></li>
										</ul>
									</div>
								</div>

								<div
									class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
									<div class="img-overlay rounded me-2">
										<img class="lazyestload" data-src="assets/img/blog/tab-04.jpg"
											src="assets/img/blog/tab-04.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>

									<div class="media-body">
										<a href=""
											class="text-dark hover-text-primary text-capitalize mb-1">
											Rodney samp deo artich. </a>

										<ul class="list-unstyled d-flex flex-wrap mb-0">
											<li class="meta-tag text-gray-color me-4 mb-1"><i
												class="fas fa-calendar-alt" aria-hidden="true"></i> <span
												class="ms-1 text-capitalize">5 March, 2021</span></li>
										</ul>
									</div>
								</div>

								<div
									class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
									<div class="img-overlay rounded me-2">
										<img class="lazyestload" data-src="assets/img/blog/tab-01.jpg"
											src="assets/img/blog/tab-01.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>

									<div class="media-body">
										<a href=""
											class="text-dark hover-text-primary text-capitalize mb-1">
											Totam rem apriam eaque. </a>

										<ul class="list-unstyled d-flex flex-wrap mb-0">
											<li class="meta-tag text-gray-color me-4 mb-1"><i
												class="fas fa-calendar-alt" aria-hidden="true"></i> <span
												class="ms-1 text-capitalize">5 March, 2021</span></li>
										</ul>
									</div>
								</div>

								<div class="media meta-post-sm">
									<div class="img-overlay rounded me-2">
										<img class="lazyestload" data-src="assets/img/blog/tab-03.jpg"
											src="assets/img/blog/tab-03.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>

									<div class="media-body">
										<a href=""
											class="text-dark hover-text-primary text-capitalize mb-1">
											Amanda disuja carl parkar. </a>

										<ul class="list-unstyled d-flex flex-wrap mb-0">
											<li class="meta-tag text-gray-color me-4 mb-1"><i
												class="fas fa-calendar-alt" aria-hidden="true"></i> <span
												class="ms-1 text-capitalize">5 March, 2021</span></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="bg-smoke border border-light-gray rounded p-3 mb-4">
						<h3 class="mb-4">Categories</h3>

						<ul class="list-unstyled list-group list-group-flush">
							<li
								class="list-group-item bg-transparent border-off-white border-top-0 p-0">
								<a href="" class="d-flex text-dark hover-text-primary py-3">
									<span>Business</span> <small class="ms-auto font-weight-bold">(9)</small>
							</a>
							</li>

							<li
								class="list-group-item bg-transparent border-off-white border-top-0 p-0">
								<a href="" class="d-flex text-dark hover-text-primary py-3">
									<span>Design</span> <small class="ms-auto font-weight-bold">(7)</small>
							</a>
							</li>

							<li
								class="list-group-item bg-transparent border-off-white border-top-0 p-0">
								<a href="" class="d-flex text-dark hover-text-primary py-3">
									<span>Photography</span> <small
									class="ms-auto font-weight-bold">(5)</small>
							</a>
							</li>

							<li
								class="list-group-item bg-transparent border-off-white border-top-0 p-0">
								<a href="" class="d-flex text-dark hover-text-primary py-3">
									<span>Creative</span> <small class="ms-auto font-weight-bold">(8)</small>
							</a>
							</li>

							<li
								class="list-group-item bg-transparent border-off-white border-top-0 p-0">
								<a href="" class="d-flex text-dark hover-text-primary py-3">
									<span>Tours</span> <small class="ms-auto font-weight-bold">(6)</small>
							</a>
							</li>
						</ul>
					</div>

					<div
						class="bg-smoke border border-light-gray rounded p-3 mb-4 mb-lg-0">
						<h3 class="mb-6">Instagram</h3>

						<div class="mb-2">
							<div class="row px-2">
								<div class="col-4 px-1">
									<div class="img-overlay rounded">
										<img class="w-100 lazyestload"
											data-src="assets/img/blog/instagram-new-01.jpg"
											src="assets/img/blog/instagram-new-01.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>
								</div>

								<div class="col-4 px-1">
									<div class="img-overlay rounded">
										<img class="w-100 lazyestload"
											data-src="assets/img/blog/instagram-new-02.jpg"
											src="assets/img/blog/instagram-new-02.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>
								</div>

								<div class="col-4 px-1">
									<div class="img-overlay rounded">
										<img class="w-100 lazyestload"
											data-src="assets/img/blog/instagram-new-03.jpg"
											src="assets/img/blog/instagram-new-03.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>
								</div>
							</div>
						</div>

						<div class="">
							<div class="row px-2">
								<div class="col-4 px-1">
									<div class="img-overlay rounded">
										<img class="w-100 lazyestload"
											data-src="assets/img/blog/instagram-new-04.jpg"
											src="assets/img/blog/instagram-new-04.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>
								</div>

								<div class="col-4 px-1">
									<div class="img-overlay rounded">
										<img class="w-100 lazyestload"
											data-src="assets/img/blog/instagram-new-05.jpg"
											src="assets/img/blog/instagram-new-05.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
									</div>
								</div>

								<div class="col-4 px-1">
									<div class="img-overlay rounded">
										<img class="w-100 lazyestload"
											data-src="assets/img/blog/instagram-new-06.jpg"
											src="assets/img/blog/instagram-new-06.jpg"
											alt="Generic placeholder image"> <a href=""
											class="hover-img-overlay-dark"></a>
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
						<a class="d-inline-block" href="index.html"> <img
							class="w-100 mb-6 lazyestload"
							data-src="assets/img/logo-color-sm.png"
							src="assets/img/logo-color-sm.png" alt="img">
						</a>
						<p class="mb-0">Lorem ipsum dolor sit amet, consectetur
							adipisicing elit, sed do eiusmod tempor incididunt ut labore et
							dolore magna aliqua. Ut enim ad minim veniam, quis nostrud
							exercitation ullamco laboris nisi ut aliquip ex ea commodo
							consequat. Duis aute</p>
					</div>

					<div class="col-md-6 col-lg-3 mt-md-4 mb-7 mb-lg-0">
						<div class="title-tag">
							<h6>Contact us</h6>
						</div>

						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
							sed do eiusmod.</p>
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
										<img class="media-img lazyestload"
											data-src="assets/img/home/gallery/thumb-gallery-1.jpg"
											src="assets/img/home/gallery/thumb-gallery-1.jpg"
											alt="gallery-img"> <a class="media-img-overlay"
											data-fancybox="footer-gallery"
											href="assets/img/home/gallery/gallery-1.jpg"></a>
									</div>
								</div>
							</div>

							<div class="col-4 mb-3">
								<div class="media media-hover">
									<div class="content w-100">
										<img class="media-img lazyestload"
											data-src="assets/img/home/gallery/thumb-gallery-2.jpg"
											src="assets/img/home/gallery/thumb-gallery-2.jpg"
											alt="gallery-img"> <a class="media-img-overlay"
											data-fancybox="footer-gallery"
											href="assets/img/home/gallery/gallery-2.jpg"></a>
									</div>
								</div>
							</div>

							<div class="col-4 mb-3">
								<div class="media media-hover">
									<div class="content w-100">
										<img class="media-img lazyestload"
											data-src="assets/img/home/gallery/thumb-gallery-3.jpg"
											src="assets/img/home/gallery/thumb-gallery-3.jpg"
											alt="gallery-img"> <a class="media-img-overlay"
											data-fancybox="footer-gallery"
											href="assets/img/home/gallery/gallery-3.jpg"></a>
									</div>
								</div>
							</div>

							<div class="col-4">
								<div class="media media-hover">
									<div class="content w-100">
										<img class="media-img lazyestload"
											data-src="assets/img/home/gallery/thumb-gallery-4.jpg"
											src="assets/img/home/gallery/thumb-gallery-4.jpg"
											alt="gallery-img"> <a class="media-img-overlay"
											data-fancybox="footer-gallery"
											href="assets/img/home/gallery/gallery-4.jpg"></a>
									</div>
								</div>
							</div>

							<div class="col-4">
								<div class="media media-hover">
									<div class="content w-100">
										<img class="media-img lazyestload"
											data-src="assets/img/home/gallery/thumb-gallery-5.jpg"
											src="assets/img/home/gallery/thumb-gallery-5.jpg"
											alt="gallery-img"> <a class="media-img-overlay"
											data-fancybox="footer-gallery"
											href="assets/img/home/gallery/gallery-5.jpg"></a>
									</div>
								</div>
							</div>

							<div class="col-4">
								<div class="media media-hover">
									<div class="content w-100">
										<img class="media-img lazyestload"
											data-src="assets/img/home/gallery/thumb-gallery-6.jpg"
											src="assets/img/home/gallery/thumb-gallery-6.jpg"
											alt="gallery-img"> <a class="media-img-overlay"
											data-fancybox="footer-gallery"
											href="assets/img/home/gallery/gallery-6.jpg"></a>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-lg-3 mt-lg-4">
						<div class="title-tag">
							<h6>Newsletter</h6>
						</div>

						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit
							sed do.</p>

						<form class="mb-6" action="index.html" method="post">
							<div class="input-group input-group-sm">
								<input type="email"
									class="form-control form-control-sm form-transparent"
									required="" placeholder="Enter your email"
									aria-label="Enter your email">
								<button class="btn border-0 btn btn-append hover-bg-primary"
									type="submit">
									<i class="fas fa-long-arrow-alt-right text-white ltr"
										aria-hidden="true"></i>
								</button>
							</div>
						</form>

						<ul class="list-inline d-flex mb-0">
							<li class="me-3 me-lg-2 me-xl-3"><a
								class="icon-default icon-border rounded-circle hover-bg-primary"
								href="javascript:void(0)"> <i
									class="fab fa-facebook-f text-white" aria-hidden="true"></i>
							</a></li>

							<li class="me-3 me-lg-2 me-xl-3"><a
								class="icon-default icon-border rounded-circle hover-bg-primary"
								href="javascript:void(0)"> <i
									class="fab fa-twitter text-white" aria-hidden="true"></i>
							</a></li>

							<li class="me-3 me-lg-2 me-xl-3"><a
								class="icon-default icon-border rounded-circle hover-bg-primary"
								href="javascript:void(0)"> <i
									class="fab fa-google-plus-g text-white" aria-hidden="true"></i>
							</a></li>

							<li class="me-3 me-lg-2 me-xl-3"><a
								class="icon-default icon-border rounded-circle hover-bg-primary"
								href="javascript:void(0)"> <i
									class="fab fa-pinterest-p text-white" aria-hidden="true"></i>
							</a></li>

							<li class=""><a
								class="icon-default icon-border rounded-circle hover-bg-primary"
								href="javascript:void(0)"> <i
									class="fab fa-vimeo-v text-white" aria-hidden="true"></i>
							</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="copyright py-6">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-md-6 order-1 order-md-0">
						<p class="mb-0 mb-md-0 text-md-start">
							Copyright &copy; <span id="copy-year"></span> All Rights Reserved
							by <a href="http://www.iamabdus.com/" target="_blank">Abdus</a>
						</p>
					</div>

					<div class="col-md-6">
						<ul
							class="list-inline text-capitalize d-flex align-items-center justify-content-md-end justify-content-center mb-md-0">
							<li class="me-3"><a href="setting.html">Privacy policy</a></li>

							<li class="me-3"><a href="about-us.html">About us</a></li>

							<li class="me-3"><a href="contact.html">Support</a></li>

							<li class=""><a href="blog-single-right-sidebar.html">Blog</a>
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

				<div class="modal-body">
					<form class="" action="index.html" method="post">
						<div class="mb-3">
							<input type="text" class="form-control bg-smoke" required=""
								placeholder="Full Name">
						</div>

						<div class="mb-3">
							<input type="email" class="form-control bg-smoke" required=""
								placeholder="Email">
						</div>

						<div class="mb-3">
							<input type="password" class="form-control bg-smoke" required=""
								placeholder="Password">
						</div>

						<div class="mb-3 form-check mb-0">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck4"> <label
								class="form-check-label text-gray-color mb-3"
								for="exampleCheck4"> I agree to the terms of use and
								privacy. </label>
						</div>

						<div class="d-grid">
							<button type="submit"
								class="btn btn-primary btn-block text-uppercase">Login</button>
						</div>

						<div class="text-uppercase text-center py-3">Or</div>

						<div class="d-grid">
							<button type="submit"
								class="btn btn-facebook btn-block text-uppercase text-white">Login
								with facebook</button>
						</div>
					</form>
				</div>

				<div class="modal-footer justify-content-center">
					<p class="mb-1">
						Don’t have an Account? <a href="javascript:void(0)">Sign up</a>
					</p>
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
					<form class="" action="index.html" method="post">
						<div class="mb-3">
							<input type="email" class="form-control bg-smoke" required=""
								placeholder="Email">
						</div>

						<div class="mb-3">
							<input type="password" class="form-control bg-smoke" required=""
								placeholder="Password">
						</div>

						<div class="mb-3 form-check mb-0">
							<input type="checkbox" class="form-check-input"
								id="exampleCheck5"> <label
								class="form-check-label text-gray-color mb-3"
								for="exampleCheck5"> Remember me </label> <a class="pull-right"
								href="javascript:void(0)">Fogot Password?</a>
						</div>

						<div class="d-grid">
							<button type="submit" class="btn btn-primary text-uppercase">Login</button>
						</div>

						<div class="text-uppercase text-center py-3">Or</div>

						<div class="d-grid">
							<button type="submit"
								class="btn btn-facebook text-uppercase text-white">Login
								with facebook</button>
						</div>
					</form>
				</div>

				<div class="modal-footer justify-content-center">
					<p class="mb-1">
						Don’t have an Account? <a href="javascript:void(0)">Sign up</a>
					</p>
				</div>
			</div>
		</div>
	</div>

	<!-- INQUIRY IN MODAL -->
	<div class="modal fade" id="inquiry" tabindex="-1" role="dialog"
		aria-label="inquiryModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-sm modal-dialog-centered"
			role="document">
			<div class="modal-content">
				<div class="modal-header rounded">
					<h3 class="modal-title text-uppercase font-weight-bold">Inquiry
						about tour</h3>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>

				<div class="modal-body pb-3">
					<form class="" action="index.html" method="post">
						<div class="mb-3">
							<input type="text" class="form-control bg-smoke" required=""
								placeholder="Your Name">
						</div>

						<div class="mb-3">
							<input type="email" class="form-control bg-smoke" required=""
								placeholder="Your Email">
						</div>

						<div class="mb-3">
							<input type="number" class="form-control bg-smoke" required=""
								placeholder="Phone Number">
						</div>

						<div class="mb-3">
							<textarea class="form-control bg-smoke" rows="6"
								placeholder="Message"></textarea>
						</div>

						<button type="submit" class="btn btn-primary text-uppercase">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Javascript -->
	<script
		src="${pageContext.request.contextPath}/assets/plugins/jquery/jquery-3.4.1.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/plugins/menuzord/js/menuzord.js"></script>
	<script
		src='${pageContext.request.contextPath}/assets/plugins/fancybox/jquery.fancybox.min.js'></script>
	<script
		src="${pageContext.request.contextPath}/assets/plugins/lazyestload/lazyestload.js"></script>
	<script
		src="${pageContext.request.contextPath}/assets/plugins/smoothscroll/SmoothScroll.js"></script>
	<script src="${pageContext.request.contextPath}/assets/js/star.js"></script>
</body>
</html>

