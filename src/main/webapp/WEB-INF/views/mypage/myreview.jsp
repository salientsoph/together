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
<script type="text/javascript">
$(function(){
	$("span[title='0']").text("맛집");
	$("span[title='1']").text("관광지");
	$("span[title='2']").text("액티비티");
}
</script>

</head>     

<body id="body" class="up-scroll">

<div class="main-wrapper blog-list-fullwidth">

<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(${path}/assets/img/pages/page-title-bg8.jpg);">
    <input type="hidden" value="${requestScope.placeLikeNo}" name="placeLikeNo" >
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
   		
   		<div class="reviewListInfo">  	
   		<c:choose>
		    <c:when test="${empty reviewList}">
			<tr>
	    	    <td colspan="5">
	            <p align="center"><b><span style="font-size:20pt; font-style: ;">등록된 리뷰가 없습니다.</span></b></p>
	        	<p align="center"><b><span class="no-listing__cont__txt">여행을 다녀온 후기를 남겨보세요.</span></b></p>
				<p align="center"><b><a href="/match/write" >후기 남기러 가기</a></b>
	        	</td>
	    	</tr>
	    	</c:when>
    	<c:otherwise>
    
	<c:forEach items="${requestScope.reviewList}" var="list">
   	
  <!-- 한개 시작 -->
    <div class="media media-list-view media-list-fullwidth flex-column flex-md-row mb-5">
      <div class="media-img position-relative">
        <img class="img-fluid position-relative lazyestload" data-src="${path}/images/${list.placeBoard.placeImage}" src="${path}/images/${list.placeBoard.placeImage}" alt="gallery-img">
      </div>

      <div class="media-body">
        <div class="row align-items-md-center align-items-lg-stretch">
          <div class="col-md-7 col-lg-8 position-relative">
            <h4>
              <a class="media-title" href="/place/read/${list.placeBoard.placeNo}">${list.placeBoard.placeTitle}</a>
            </h4>
            <div class="rating-view">
              <span class="content-view text-uppercase">${list.star}</span>
              <span class="star add-rating-default">  </span>
	              <ul class="list-unstyled d-flex mt-auto text-warning mb-0">
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
            </div>
    
            <p class="mb-lg-0">${list.reviewContent}</p>
    
            <div class="date-view mb-5 mb-md-0">
              <span><i class="fas fa-calendar-alt" aria-hidden="true"></i>
					<tags:localDate date="${list.reviewRegDate}"/></span>
              <span><i class="far fa-clock" aria-hidden="true"></i> 5 days</span>
            </div>
          </div>
    
          <div class="col-md-5 col-lg-4">
            <div class="bg-primary text-center p-5 view-details">
			<i class="fas fa-map-marker-alt" aria-hidden="true"></i> 
			<span id="category" class="ms-1 text-capitalize" title="${list.placeBoard.placeCategory}"></span>
              <p class="text-white text-capitalize">${list.placeBoard.region.regionName}</p>
              <div>
                <a href="/place/read/${list.placeBoard.placeNo}" class="btn btn-xs btn-outline-white btn-booking text-uppercase mb-2">상세보기</a>
              </div>
            </div>
          </div>
          
        </div>
      </div>
    </div>
    <!-- 한개 끝 -->
     
     	</c:forEach>
     	</c:otherwise>
     </c:choose>

  	</div><!-- reviewListInfo -->
  </div><!-- container -->
</section>

</div><!-- element wrapper ends -->
<jsp:include page="../common/footer.jsp"/>
</body>
</html>