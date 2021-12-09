<%@page import="kosta.mvc.domain.Review"%>
<%@page import="java.util.List"%>
<%@page import="kosta.mvc.domain.PlaceBoard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags"%>
<html lang="en">

<head>
<style type="text/css">
#star span {
	text-decoration: none;
	color: gray;
}

#star span.on {
	color: #FFB914;
}
</style>
<!-- SITE TITTLE -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<title>장소 게시판</title>


<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>


<!-- (0: 맛집 / 1: 관광지 / 2: 액티비티) -->
<script>
		$(function(){
			$("span[title='0']").text("맛집");
			$("span[title='1']").text("관광지");
			$("span[title='2']").text("액티비티");
			
			$("#updateButton").click(function(){
				   $("#requestForm").attr("action", "${pageContext.request.contextPath}/place/updateForm");
				   $("#requestForm").submit();
			   })
			   
			   $("#deleteButton").click(function(){
				   if (confirm("정말 삭제하시겠습니까?") == true){
					   $("#requestForm").attr("action","${pageContext.request.contextPath}/place/delete");
					   $("#requestForm").submit();
				   }
			   })
		});
	</script>

</head>

<body id="body" class="up-scroll">

	<jsp:include page="../common/header.jsp" />
	
	<!-- ====================================
——— TRAVEL LIST SECTION
===================================== -->
	<section class="section-top">
		<div class="py-8 py-md-9 py-lg-10">
			<div class="container">
				<div class="row">

				<input type="hidden" /> 
					<div class="card card-lg card-transparent mb-8">
						<div class="position-relative">
							<img data-src="${pageContext.request.contextPath}/images/${requestScope.place.placeImage}" src="${pageContext.request.contextPath}/images/${requestScope.place.placeImage}" alt="Card image cap"style="display:block; margin:auto;">
						</div>

						<div class="card-body px-2 py-6">
							<h3 class="mb-4">${requestScope.place.placeTitle}</h3>

							<div class="meta-post-sm mb-4">
								<ul class="list-unstyled d-flex flex-wrap mb-0">
									<li class="meta-tag me-4 mb-1"><i
										class="fa fa-user text-gray-color" aria-hidden="true"></i> <a
										class="text-gray-color hover-text-primary" href=""> <span
											class="ms-1 text-capitalize">${requestScope.place.seller.sellerNickname}</span>
									</a></li>

									<li class="meta-tag text-gray-color me-4 mb-1"><i
										class="fas fa-calendar-alt" aria-hidden="true"></i> <tags:localDate
											date="${requestScope.place.placeRegdate}" /></li>

									<li class="meta-tag text-gray-color me-4 mb-1"><i
										class="fa fa fa-tags" aria-hidden="true"></i> <span
										id="category" class="ms-1 text-capitalize"
										title="${requestScope.place.placeCategory}"></span></li>

									<li class="meta-tag text-gray-color me-4 mb-1"><i
										class="fas fa-map-marker-alt" aria-hidden="true"></i> <span
										class="ms-1 text-capitalize">${requestScope.place.region.regionName}</span>
									</li>

									
								</ul>
							</div>
							
							<p>${requestScope.place.placeAddress}</p>
							<p>${requestScope.place.placeContent}</p>
						</div>

						<table style="margin: auto">
								<tr>
									<td height="20" colspan="4" align="center" valign="middle">
										 
										<form name="requestForm" method="post" id="requestForm">
											<input type=hidden name="placeNo" value="${requestScope.place.placeNo}">
												
											<c:if test="${sessionScope.id == requestScope.place.seller.sellerId}">
											<button id="updateButton" type="button" name="update"
												class="btn btn-secondary btn-lg mb-2">수정하기</button>
											<button id="deleteButton" type="button" name="delete"
												class="btn btn-secondary btn-lg mb-2">삭제하기</button>
											</c:if>
											<a href="${pageContext.request.contextPath}/place/list">
												<button type="button" name="list"
													class="btn btn-hover btn-outline-secondary text-uppercase">목록으로</button>
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

					<div class="mb-7">
						<%
						PlaceBoard placeBoard = (PlaceBoard) request.getAttribute("place");
						List<Review> reviewList = placeBoard.getReviewList();
						double reviewAve = 0;
						for (Review review : reviewList) {
							reviewAve += review.getStar();
						}
						reviewAve = (int) ((reviewAve / reviewList.size()) * 10) / 10.0;
						%>
						<h3 class="mb-6">
							Review (${place.reviewList.size() }) star :
							<%=reviewAve%></h3>

						<c:forEach var="review" items="${review }"
							varStatus="status">
							<div class="media mb-8">
								<div class="media-body">
									<div class="mb-7">
										<ul class="list-unstyled d-flex flex-wrap mb-0">
											<li class="meta-tag me-4 mb-1"><i
												class="fa fa-user text-gray-color" aria-hidden="true"></i> <a
												class="text-gray-color hover-text-primary" href=""> <span
													class="ms-1 text-capitalize">${review.customer.userId}</span>
											</a></li>

											<li class="meta-tag text-gray-color me-4 mb-1"><i
												class="fas fa-calendar-alt" aria-hidden="true"></i> <span
												class="ms-1 text-capitalize"><tags:localDate
														date="${review.reviewRegDate }" /></span></li>
											<li class="meta-tag me-4 mb-1"><span
												class="ms-1 text-capitalize"><c:forEach var="i"
														begin="1" end="${review.star}">
														<span style="color: #FFB914">★</span>
													</c:forEach></span> </a></li>
											<c:choose>
												<c:when test="${sessionScope.id eq review.customer.userId}">
													<li class="meta-tag text-gray-color me-4 mb-1">
														<button type="button" class="btn text-primary p-0"
															name="update"
															onclick="updateReview(${review.reviewNo}, '${review.reviewContent }', ${place.placeNo}, ${review.star })">수정</button>
													</li>
													<li class="meta-tag text-gray-color me-4 mb-1">
														<button type="button" class="btn text-primary p-0"
															name="delete"
															onclick="deleteReview(${review.reviewNo}, ${place.placeNo })">삭제</button>
													</li>
												</c:when>
												<c:when test="${sessionScope.id eq 'admin'}">
													<li class="meta-tag text-gray-color me-4 mb-1">
														<button type="button" class="btn text-primary p-0"
															name="delete"
															onclick="deleteReview(${review.reviewNo}, ${place.placeNo })">삭제</button>
													</li>
												</c:when>
											</c:choose>
										</ul>
										<p>${review.reviewContent }</p>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
					<script type="text/javascript">
						    function updateReview(reviewNo, reviewContent, placeNo, star){
								var offset = $("[name=LeaveAReview]").offset();
								$('html, body').animate({scrollTop : offset.top}, 100);
								$(function(){
									$("[name=reviewForm]").attr("action", "/review/update/"+placeNo);
									$("[name=reviewForm]").append(`<input type="hidden" value=` + reviewNo + ` name="reviewNo">`)
									$("[name=reviewContent]").text(reviewContent);
									$("[value=" + star + "]").parent().children("span").removeClass("on");
									$("[value=" + star + "]").addClass("on").prevAll("span").addClass("on");
									$("[name=star]").attr("value", star);
								});
							}
							
							function deleteReview(reviewNo, placeNo){
								location.href="/review/delete/" + reviewNo + "/" + placeNo;
							}
							
							$(function(){
							    $('#star span').click(function(){ 
								   $(this).parent().children("span").removeClass("on");    
								   $(this).addClass("on").prevAll("span").addClass("on");
							  	   $("[name=star]").attr("value", $(this).attr("value"));
							   });
						    });
						</script>
					<div class="mb-7 mb-lg-0">
						
						<c:if test="${sessionScope.role eq 'customer'}">
						<h3 class="mb-6" name="LeaveAReview">Leave A Review</h3>
						  <form action="/review/insert" method="POST" role="form" class="form"
							name="reviewForm">
							<div class="col-lg-6">
								<div class="form-group">
									<input type="hidden" value="${place.placeNo}" name="placeBoard">
								</div>
							</div>

							<div class="col-lg-6">
								<div class="form-group">
									<input type="hidden" value="${sessionScope.id }"
										name="customer">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="form-group">
									<P id="star">
										<span value="1">★</span> <span value="2">★</span> <span
											value="3">★</span> <span value="4">★</span> <span value="5">★</span>
									<p>
								</div>
							</div>
							<input type="hidden" name="star" value="0">
							<div class="form-group">
								<textarea class="form-control border-0 bg-smoke" rows="7"
									required="required" placeholder="Your Message" name="reviewContent"></textarea>
							</div>

							<button type="submit"
								class="btn btn-sm btn-outline-secondary text-uppercase py-2 font-weight-medium">send
								now</button>
						</form>
						</c:if>
						
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
									role="tab" aria-controls="popular-blog" aria-selected="false">Popular</a>
								</li>

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
											<img class="lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/tab-01.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/tab-01.jpg"
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
											<img class="lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/tab-02.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/tab-02.jpg"
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
											<img class="lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/tab-03.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/tab-03.jpg"
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
											<img class="lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/tab-04.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/tab-04.jpg"
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
											<img class="lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/tab-04.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/tab-04.jpg"
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
											<img class="lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/tab-03.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/tab-03.jpg"
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
											<img class="lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/tab-02.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/tab-02.jpg"
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
											<img class="lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/tab-01.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/tab-01.jpg"
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
											<img class="lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/tab-02.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/tab-02.jpg"
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
											<img class="lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/tab-04.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/tab-04.jpg"
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
											<img class="lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/tab-01.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/tab-01.jpg"
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
											<img class="lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/tab-03.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/tab-03.jpg"
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
												data-src="${pageContext.request.contextPath}/assets/img/blog/instagram-new-01.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/instagram-new-01.jpg"
												alt="Generic placeholder image"> <a href=""
												class="hover-img-overlay-dark"></a>
										</div>
									</div>

									<div class="col-4 px-1">
										<div class="img-overlay rounded">
											<img class="w-100 lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/instagram-new-02.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/instagram-new-02.jpg"
												alt="Generic placeholder image"> <a href=""
												class="hover-img-overlay-dark"></a>
										</div>
									</div>

									<div class="col-4 px-1">
										<div class="img-overlay rounded">
											<img class="w-100 lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/instagram-new-03.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/instagram-new-03.jpg"
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
												data-src="${pageContext.request.contextPath}/assets/img/blog/instagram-new-04.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/instagram-new-04.jpg"
												alt="Generic placeholder image"> <a href=""
												class="hover-img-overlay-dark"></a>
										</div>
									</div>

									<div class="col-4 px-1">
										<div class="img-overlay rounded">
											<img class="w-100 lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/instagram-new-05.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/instagram-new-05.jpg"
												alt="Generic placeholder image"> <a href=""
												class="hover-img-overlay-dark"></a>
										</div>
									</div>

									<div class="col-4 px-1">
										<div class="img-overlay rounded">
											<img class="w-100 lazyestload"
												data-src="${pageContext.request.contextPath}/assets/img/blog/instagram-new-06.jpg"
												src="${pageContext.request.contextPath}/assets/img/blog/instagram-new-06.jpg"
												alt="Generic placeholder image"> <a href=""
												class="hover-img-overlay-dark"></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			</div>
	</section>
			
			
			


	</div>
	<!-- element wrapper ends -->

	<!-- ====================================
    ——— FOOTER SECTION
    ===================================== -->
	<jsp:include page="../common/footer.jsp" />


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

	
</body>

</html>
