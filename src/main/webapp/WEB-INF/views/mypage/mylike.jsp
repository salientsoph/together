<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<jsp:include page="../common/header.jsp" />
<!DOCTYPE html>
<html lang="en">
  
<head>

</head>     

<body id="body" class="up-scroll">

  <div class="main-wrapper blog-list-fullwidth">


<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(assets/img/pages/page-title-bg4.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="title-border">
              <h2 class="text-uppercase text-white font-weight-bold"> 내가 찜한 목록 </h2>
            </div>
            <p class="text-white mb-0"></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ====================================
———	GALLERY GRID
===================================== -->
<section class="py-10">
  <div class="container">
    <div id="filters" class="button-group">
      <button class="button is-checked" data-filter="*">All Places</button>
      <button class="button" data-filter=".asia">맛집</button>
      <button class="button" data-filter=".america">관광지</button>
      <button class="button" data-filter=".europe">액티비티</button>
    </div>

	<input type="hidden" value="${sessionScope.id}" name="customer">

    <div class="row grid">
      <div class="col-md-6 col-lg-4 col-xl-3 element-item america africa">
        <div class="media media-hoverable justify-content-center mb-6">
          <div class="media-content">
            <img class="media-img lazyestload" data-src="${path}/assets/img/home/packages/packages-1.jpg" src="${path}/assets/img/home/packages/packages-1.jpg" alt="Generic placeholder image">

            <a href="${path}/assets/img/home/packages/packages-1.jpg" data-fancybox="gallery-grid" class="media-object">
              <h3 class="text-uppercase mb-0">Vestibulum Tour</h3>
            </a>

            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">$399</span></h3>
                <p class="text-white mb-0">
                  <span class="mr-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 27 Jan, 2021
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 col-xl-3 element-item africa america">
        <div class="media media-hoverable justify-content-center mb-6">
          <div class="media-content">
            <img class="media-img lazyestload" data-src="${path}/assets/img/home/packages/packages-2.jpg" src="${pageContext.request.contextPath}/assets/img/home/packages/packages-2.jpg" alt="Generic placeholder image">

            <a href="${path}/assets/img/home/packages/packages-2.jpg" data-fancybox="gallery-grid" class="media-object">
              <h3 class="text-uppercase mb-0">Maecenas Tour</h3>
            </a>

            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">$599</span></h3>
                <p class="text-white mb-0">
                  <span class="mr-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 09 Feb, 2021
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 col-xl-3 element-item asia america">
        <div class="media media-hoverable justify-content-center mb-6">
          <div class="media-content">
            <img class="media-img lazyestload" data-src="${path}/assets/img/home/packages/packages-3.jpg" src="${path}/assets/img/home/packages/packages-3.jpg" alt="Generic placeholder image">

            <a href="${path}/assets/img/home/packages/packages-3.jpg" data-fancybox="gallery-grid" class="media-object">
              <h3 class="text-uppercase mb-0">Lobortis Tour</h3>
            </a>

            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">$299</span></h3>
                <p class="text-white mb-0">
                  <span class="mr-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 14 Feb, 2021
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 col-xl-3 element-item asia africa europe">
        <div class="media media-hoverable justify-content-center mb-6">
          <div class="media-content">
            <img class="media-img lazyestload" data-src="${path}/assets/img/home/packages/packages-4.jpg" src="${path}/assets/img/home/packages/packages-4.jpg" alt="Generic placeholder image">

            <a href="${path}/assets/img/home/packages/packages-4.jpg" data-fancybox="gallery-grid" class="media-object">
              <h3 class="text-uppercase mb-0">Lacus Tour</h3>
            </a>

            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">$399</span></h3>
                <p class="text-white mb-0">
                  <span class="mr-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 11 Jan, 2021
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 col-xl-3 element-item america">
        <div class="media media-hoverable justify-content-center mb-6 mb-xl-0">
          <div class="media-content">
            <img class="media-img lazyestload" data-src="${path}/assets/img/home/packages/packages-5.jpg" src="${path}/assets/img/home/packages/packages-5.jpg" alt="Generic placeholder image">

            <a href="${path}/assets/img/home/packages/packages-5.jpg" data-fancybox="gallery-grid" class="media-object">
              <h3 class="text-uppercase mb-0">Nullam Tour</h3>
            </a>

            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">$199</span></h3>
                <p class="text-white mb-0">
                  <span class="mr-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 02 Feb, 2021
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 col-xl-3 element-item asia africa europe">
        <div class="media media-hoverable justify-content-center mb-6 mb-xl-0">
          <div class="media-content">
            <img class="media-img lazyestload" data-src="${path}/assets/img/home/packages/packages-6.jpg" src="${path}/assets/img/home/packages/packages-6.jpg" alt="Generic placeholder image">

            <a href="${path}/assets/img/home/packages/packages-6.jpg" data-fancybox="gallery-grid" class="media-object">
              <h3 class="text-uppercase mb-0">Maldives Tour</h3>
            </a>

            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">$799</span></h3>
                <p class="text-white mb-0">
                  <span class="mr-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 26 Feb, 2021
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 col-xl-3 element-item europe">
        <div class="media media-hoverable justify-content-center mb-6 mb-md-0">
          <div class="media-content">
            <img class="media-img lazyestload" data-src="${path}/assets/img/home/packages/packages-1.jpg" src="${path}/assets/img/home/packages/packages-1.jpg" alt="Generic placeholder image">

            <a href="${path}/assets/img/home/packages/packages-1.jpg" data-fancybox="gallery-grid" class="media-object">
              <h3 class="text-uppercase mb-0">Quaerit Tour</h3>
            </a>

            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">$799</span></h3>
                <p class="text-white mb-0">
                  <span class="mr-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 26 Feb, 2021
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-6 col-lg-4 col-xl-3 element-item asia europe">
        <div class="media media-hoverable justify-content-center">
          <div class="media-content">
            <img class="media-img lazyestload" data-src="${path}/assets/img/home/packages/packages-2.jpg" src="${path}/assets/img/home/packages/packages-2.jpg" alt="Generic placeholder image">

            <a href="${path}/assets/img/home/packages/packages-2.jpg" data-fancybox="gallery-grid" class="media-object">
              <h3 class="text-uppercase mb-0">Hendrit Tour</h3>
            </a>

            <div class="media-img-overlay">
              <div class="overlay-content">
                <h3 class="">from <span class="text-primary">$799</span></h3>
                <p class="text-white mb-0">
                  <span class="mr-1"><i class="far fa-calendar-alt" aria-hidden="true"></i></span> 26 Feb, 2021
                </p>
              </div>
            </div>
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
    <div class="row">
    
    	<input type="hidden" value="${sessionScope.id}" name="customer">
    	
    <c:choose>
	    <c:when test="${empty requestScope.placeLikeList}">
		<tr>
	        <td colspan="5">
	            <p align="center"><b><span style="font-size:20pt; font-style: ;">찜한 장소가 없습니다.</span></b></p>
		        <p align="center"><b><span class="no-listing__cont__txt">마음에 드는 장소를 찾아 찜해 보세요.</span></b></p>
				<p align="center"><b><a class="" href="/place/list" >장소게시판 바로가기</a></b>
	        </td>
	    </tr>
	    </c:when>
    <c:otherwise>
    
	<c:forEach items="${requestScope.placeLikeList.content}" var="like">
    
      <!-- 한개 시작 -->
      <div class="col-md-6 col-lg-4 mb-5">
        <div class="card card-hover">
          <a href="/place/read/${like.placeNo}" class="position-relative">
            <img class="card-img-top lazyestload" data-src="${path}/assets/img/home/deal/deal-01.jpg" src="${path}/assets/img/home/deal/deal-01.jpg" alt="Card image cap">
            	<div class="card-img-overlay card-hover-overlay rounded-top d-flex flex-column">
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
        	  </a>
        	  
          <div class="card-body px-4">
          <h5>
              <a href="/place/read/${board.placeNo}" class="card-title text-uppercase">${board.placeTitle}</a>
            </h5>
            <p class="mb-5">${board.placeContent}</p>
            <div class="d-flex justify-content-between align-items-center">
              <div>
                <p class="mb-0 text-capitalize">Start from</p>
                <h3 class="text-primary">$299</h3>
              </div>
          
            <div>
            	<p class="mb-0 text-capitalize ">관심 받은 수</p>
                <span id="placeLikedCount" style="margin-left:5px;">${board.placeLikedCount}</span>
            </div>

 			<!--  장소 찜 기능  -->
			<div class="icon" style="float: left; padding-left: 20px; padding-top: 10px;">
				<!-- 찜하기 했을 경우 해당 정보 가져오기 -->
			    <span id="placeLikeNo" style="display: none;">${prdLikeVal.placeLikeNo}</span>
				<%-- 찜하기 기능은 고객(MEMBER 권한)만 이용할 수 있게 설정 --%>     
	       			<button type="button"  name="place_like" 
	         				class="btn btn-xs btn-outline-secondary text-uppercase fa fa-heart"> 찜하기 </button>
	                   	<input type="hidden" value="${board.placeNo}" name="like_placeNo"/>
                		
            <%-- place_like 테이블을 가져와 비교후 예전에 찜하기를 안했다면(혹은 찜취소를 했었다면) 찜하기로 활성화가 된다 --%>
	       		  
	       		  
	       		  
	       		<div class="row">
	    			<div class="col-12">
	         			
            
            <%-- place_like 테이블을 가져와 비교후 예전에 찜하기를 했었다면 찜취소로 활성화가 된다 --%>
						<button type="button"  name="place_unlike" 
	         				class="btn btn-xs btn-outline-secondary text-uppercase fa bi bi-suit-heart"> 찜취소 </button>

              		
              		
              		</div>
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
      

    </div>		
  </div>
	
	
  
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
          <a class="page-link" href="/place/list?nowPage=${startPage-1}" >
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
		
			<c:if test="${(i-1)>=placeLikeList.getTotalPages()}">
				<c:set var="doneLoop" value="true"/>
			</c:if> 
				    
			<c:if test="${not doneLoop}" >
				 <li class="page-item">
		          	<a class="page-link active" href="/mypage/mylike?nowPage=${i}">${i}</a>
		       	 </li> 
			</c:if>
		</c:forEach>
    
    <!-- Next -->
    <c:choose>
    <c:when test="${(startPage+blockCount)<=placeLikeList.getTotalPages()}">     
		<li class="page-item">
          <a class="page-link" href="/place/list?nowPage=${startPage+blockCount}">Next
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

