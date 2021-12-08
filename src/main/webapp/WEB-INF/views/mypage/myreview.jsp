<%@page import="kosta.mvc.domain.Review"%>
<%@page import="java.util.List"%>
<%@page import="kosta.mvc.domain.PlaceBoard"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<jsp:include page="../common/header.jsp" />

<%String id = (String)session.getAttribute("id");%>

<c:set var="idStr" value="<%=id%>"/>

<!DOCTYPE html>
<html lang="en">
  
<head>

<!-- (0: 맛집 / 1: 관광지 / 2: 액티비티) -->
<script type="text/javascript">
$(function(){
	$("span[title='0']").text("맛집");
	$("span[title='1']").text("관광지");
	$("span[title='2']").text("액티비티");
});
</script>

</head>     

<body id="body" class="up-scroll">

<div class="main-wrapper blog-list-fullwidth">

<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(${path}/assets/img/pages/page-title-bg17.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="title-border">
              <h2 class="text-uppercase text-white font-weight-bold"> 내가 쓴 리뷰 </h2>
            </div>
            <p class="text-white mb-0"></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ====================================
———	TOUR PACKAGES SECTION
===================================== -->
<section class="bg-smoke py-10">
  <div class="container">
   		<input type="hidden" value="${sessionScope.id}" name="customer">
   		<c:choose>
		    <c:when test="${empty requestScope.reviewList}">
			<tr>
	    	    <td colspan="5">
		            <p align="center"><b><span style="font-size:20pt; font-style: ;">등록된 리뷰가 없습니다.</span></b></p>
		        	<p align="center"><b><span class="no-listing__cont__txt">여행을 다녀온 후기를 남겨보세요.</span></b></p>
					<p align="center"><b><a href="/place/read" >후기 남기러 가기</a></b>
	        	</td>
	    	</tr>
	    	</c:when>
    	<c:otherwise>
    
		<c:forEach items="${requestScope.reviewList.content}" var="review">
   	
		  <!-- 한개 시작 -->
		    <div class="media media-list-view media-list-fullwidth flex-column flex-md-row mb-5">
		      <div class="media-img position-relative">
		           <img class="img-fluid position-relative lazyestload" data-src="${path}/images/${review.placeBoard.placeImage}" src="${path}/images/${review.placeBoard.placeImage}" alt="gallery-img" style="display:block; margin:auto;">
				</div>

			      <div class="media-body">
			        <div class="row align-items-md-center align-items-lg-stretch">
			          <div class="col-md-7 col-lg-8 position-relative">
			            <h4>
			              <a class="media-title" href="/place/read/${review.placeBoard.placeNo}">${review.placeBoard.placeTitle}</a>
			            </h4>
	     
						<ul class="list-unstyled d-flex flex-wrap mb-0">
							<li class="meta-tag me-4 mb-1">
								<i class="fa fa-user text-gray-color" aria-hidden="true"></i> 
								<a class="text-gray-color hover-text-primary" href=""> 
								<span class="ms-1 text-capitalize">${review.customer.userId}</span>
								</a>
							</li>
		

							
							<li class="meta-tag text-gray-color me-4 mb-1">
								<i class="fas fa-store" aria-hidden="true"></i> 
								<span class="ms-1 text-capitalize" title="${review.placeBoard.placeCategory}"></span>
							</li>
							
							<li class="meta-tag text-gray-color me-4 mb-1">
								<i class="fas fa-map-marked-alt" aria-hidden="true"></i> 
								<span class="ms-1 text-capitalize">${review.placeBoard.region.regionName}</span>
							</li>
							
							<li class="meta-tag text-gray-color me-4 mb-1">
								<i class="far fa-calendar-alt" aria-hidden="true"></i>
								<span class="ms-1 text-capitalize">
								<tags:localDate date="${review.reviewRegDate}"/></span>
							</li>
							
							<li class="meta-tag text-gray-color me-4 mb-1">
								<span class="ms-1 text-capitalize">
									<c:forEach var="i" begin="1" end="${review.star}">
										<span style="color: #ff1414">★</span>
									</c:forEach>
								</span>
							</li>
	
						</ul>
						
					 <p class="mb-lg-0">${review.reviewContent}</p>

		          </div>
		    
		          <div class="col-md-5 col-lg-4">
		            <div class="bg-info text-center p-5 view-details">
		              <div>
		                <a href="/place/read/${review.placeBoard.placeNo}" class="btn btn-lg btn-outline-white btn-booking text-uppercase mb-2">상세보기</a>
		              </div>
		            </div>
		          </div>
          
          		</div><!-- col-md-7 -->
			</div><!-- row align-items -->
		</div><!-- media-body -->
          
    <!-- 한개 끝 -->
     
     	</c:forEach>
     	</c:otherwise>
     </c:choose>

  </div><!-- container -->
<!-- ====================================
———	PAGINATION
===================================== -->
<c:set var="doneLoop" value="false"/>

<section class="pt-5 pt-md-7">
  <div class="container">
    <nav aria-label="Page navigation">
     <ul class="pagination justify-content-center align-items-center">
    <!-- previous -->
    <c:choose>
    <c:when test="${(startPage-blockCount) > 0}"> <!-- (-2) > 0  -->		      
		 <li class="page-item">
          <a class="page-link" href="/mypage/myreview?nowPage=${startPage-1}" >
            <i class="fas fa-long-arrow-alt-left d-none d-md-inline-block me-md-1" aria-hidden="true" "></i> Previous
          </a>
        </li>
	</c:when>
	<c:otherwise>
		<li class="page-item">
          <a class="page-link disabled" >
            <i class="fas fa-long-arrow-alt-left d-none d-md-inline-block me-md-1" aria-hidden="true" "></i> Previous
          </a>
        </li>
	</c:otherwise>
	</c:choose>
	<!-- previous -->
        <c:forEach var='i' begin='${startPage}' end='${(startPage-1)+blockCount}'> 
		
			<c:if test="${(i-1)>=reviewList.getTotalPages()}">
				<c:set var="doneLoop" value="true"/>
			</c:if> 
				    
			<c:if test="${not doneLoop}" >
				 <li class="page-item">
		          	<a class="page-link active" href="/mypage/myreview?nowPage=${i}">${i}</a>
		       	 </li> 
			</c:if>
		</c:forEach>
    <!-- Next -->
    <c:choose>
    <c:when test="${(startPage+blockCount)<=reviewList.getTotalPages()}">     
		<li class="page-item">
          <a class="page-link" href="/mypage/myreview?nowPage=${startPage+blockCount}&userId=${userId}">Next
            <i class="fas fa-long-arrow-alt-right d-none d-md-inline-block ms-md-1" aria-hidden="true"></i>
          </a>
        </li>
	 </c:when>
	 <c:otherwise>
	 	<li class="page-item">
          <a class="page-link disabled">Next
            <i class="fas fa-long-arrow-alt-right d-none d-md-inline-block ms-md-1" aria-hidden="true"></i>
          </a>
        </li>
	 </c:otherwise>
	 </c:choose>
	 <!-- Next -->
      </ul>
    </nav>

  </div>

</section>

</section>
</div><!-- element wrapper ends -->

<jsp:include page="../common/footer.jsp"/>
</body>
</html>