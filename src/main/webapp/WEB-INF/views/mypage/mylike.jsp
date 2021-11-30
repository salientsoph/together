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
——— TRAVEL LIST FULLWIDTH
===================================== -->
<section class="py-9 py-md-10">
  <div class="container">
    <div class="card rounded-0 card-transparent border-bottom mb-7 pb-7">
    
    <c:choose>
	    <c:when test="${empty requestScope.placeLikeList}">
		<tr>
	        <td colspan="5">
	            <p align="center"><b><span style="font-size:20pt; font-style: ;">찜한 장소가 없습니다.</span></b></p>
		        <p align="center"><b><span class="no-listing__cont__txt">마음에 드는 장소를 찾아 찜해 보세요.</span></b></p>
				<p align="center"><b><a class="/place/list" href="">장소게시판 바로가기</a></b>
	        </td>
	    </tr>
	    </c:when>
    <c:otherwise>
    
	<c:forEach items="${requestScope.noticeList.content}" var="board">
    
      <div class="row align-items-lg-center align-items-xl-stretch">
        
    
    
        <div class="col-md-6">
          <div class="card-body px-md-0 py-6 pt-md-0 pt-xl-6">
          
          <!-- 글 번호 -->
          	<div class="w-10 mw-0 col-1 p-0">
		           	${board.noticeNo}
		    </div>
          
          <!-- 제목 -->
            <h3 class="mb-4">
              <a href="/notice/read/${board.noticeNo}" class="text-capitalize text-dark hover-text-primary">${board.noticeTitle }</a>
            </h3>
    	
            <div class="meta-post-sm mb-4">
              <ul class="list-unstyled d-flex flex-wrap mb-0">
                <li class="meta-tag me-4 mb-1">
                  <i class="fa fa-user text-gray-color" aria-hidden="true"></i>
                  <a class="text-gray-color hover-text-primary" href="blog-single-right-sidebar.html">
                    <span class="ms-1 text-capitalize"> ${board.admin.adminNickname}</span>
                  </a>
                </li>
    
                <li class="meta-tag text-gray-color me-4 mb-1">
                  <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                  <!-- <span class="ms-1 text-capitalize"> ${board.noticeRegdate }</span> -->
               	  <tags:localDate date="${board.noticeRegdate }"/>
                </li>
  
              </ul>
            </div>
          </div>
        </div> <!--  글 1개 끝  -->
      </div>
      </c:forEach>
	    </c:otherwise>
	    </c:choose>
    </div>  
  </div>
	
    <div class="mb-6">
    	<ul class="pagination justify-content-center align-items-center">
    	<li class="page-item">
    		<a href="/notice/write">
    			<button type="button" class="btn btn-secondary btn-lg mb-2">글 작성하기</button>
    		</a>
    	</li>
    	</ul>
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
          <a class="page-link" href="/notice/list?nowPage=${startPage-1}" >
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
		
			<c:if test="${(i-1)>=noticeList.getTotalPages()}">
				<c:set var="doneLoop" value="true"/>
			</c:if> 
				    
			<c:if test="${not doneLoop}" >
				 <li class="page-item">
		          	<a class="page-link active" href="/notice/list?nowPage=${i}">${i}</a>
		       	 </li> 
			</c:if>
		</c:forEach>
    
    <!-- Next -->
    <c:choose>
    <c:when test="${(startPage+blockCount)<=noticeList.getTotalPages()}">     
		<li class="page-item">
          <a class="page-link" href="/notice/list?nowPage=${startPage+blockCount}">Next
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