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
});

</script>
</head>   

<body id="body" class="up-scroll">

  <div class="main-wrapper blog-list-right-sidebar">

<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(${path}/assets/img/pages/page-title-bg2.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="title-border">
              <h2 class="text-uppercase text-white font-weight-bold"> 내가 쓴 글 </h2>
            </div>
            <p class="text-white mb-0"></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!-- ====================================
——— TRAVEL LIST SECTION
===================================== -->
<section class="py-9 py-md-10">
  <div class="container">
    <div class="row">
    
   		<input type="hidden" value="${sessionScope.id}" name="customer">
   		
   		<div class="matchListInfo">  	
   		<c:choose>
		    <c:when test="${empty placeBoard}">
			<tr>
	    	    <td colspan="5">
	            <p align="center"><b><span style="font-size:20pt; font-style: ;">등록된 게시물이 없습니다.</span></b></p>
	        	<p align="center"><b><span class="no-listing__cont__txt">추천하는 여행지를 등록해주세요</span></b></p>
				<p align="center"><b><a href="/place/place-write" >여행게시판 바로가기</a></b>
	        	</td>
	    	</tr>
	    	</c:when>
    	<c:otherwise>
    
	<c:forEach items="${requestScope.placeBoard}" var="place">
   		
    <!-- 한개 시작 -->
      <div class="col-lg-8 col-xl-9 order-1 order-lg-0">
        <div class="card rounded-0 card-transparent border-bottom mb-7 pb-7">
          <div class="row align-items-xl-center">
            <div class="col-md-6">
              <a href="/place/read/${place.placeNo}" class="position-relative">
                <img class="card-img-top rounded lazyestload" data-src="${path}/assets/img/blog/blog-01.jpg" src="${path}/assets/img/blog/blog-01.jpg" alt="Card image cap">
                <div class="card-img-overlay card-hover-overlay rounded"></div>
              </a>
            </div>

            <div class="col-md-6">
              <div class="card-body px-md-0 py-6 pt-md-0">
                <h3 class="mb-4">
                  <a href="/place/read/${place.placeNo}"  class="text-capitalize text-dark hover-text-primary">${place.placeTitle}</a>
                </h3>
              
                <div class="meta-post-sm mb-4">
                  <ul class="list-unstyled d-flex flex-wrap mb-0">
                    <li class="meta-tag me-4 mb-1">
                      <i class="fa fa-user text-gray-color" aria-hidden="true"></i>
                      <a class="text-gray-color hover-text-primary" href="blog-single-right-sidebar.html">
                        <span class="ms-1 text-capitalize">${place.seller.sellerId}</span>
                      </a>
                    </li>
              
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fas fa-map-marker-alt" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">${place.placeAddress}</span>
                    </li>
              
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fa fa fa-tags" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize">${place.region.regionName}</span>
                    </li>
              
                    <li class="meta-tag text-gray-color me-4 mb-1">
                      <i class="fa fa-envelope" aria-hidden="true"></i>
                      <span class="ms-1 text-capitalize" title="${place.placeCategory}"></span>
                    </li>
                    
                    <li class="meta-tag text-gray-color me-4 mb-1">
						<i class="fas fa-eye" aria-hidden="true"></i> 
						<span class="ms-1 text-capitalize">${place.placeCount}</span>
					</li> 

                    <li class="meta-tag text-gray-color me-4 mb-1">
						<i class="fas fa-heart" aria-hidden="true"></i> 
						<span class="ms-1 text-capitalize">${place.placeLikedCount}</span>
					</li> 
                  </ul>
                </div>
              
                <p class="mb-0">${place.placeContent}</p>
              </div>
              
              <div class="card-footer px-5 px-lg-0">
                <a href="/place/read/${place.placeNo}" class="btn btn-sm btn-outline-secondary text-uppercase">View post</a>
              </div>
            </div>
          </div>
        </div>

      </div>
      <!-- 한개 끝 -->
      
      </c:forEach>
      </c:otherwise>
      </c:choose>
   
      <div class="col-lg-4 col-xl-3">
        <div class="mb-md-6 mb-lg-0">
          <div class="row">
            <div class="col-md-6 col-lg-12">
              <div class="bg-smoke border border-light-gray rounded p-3 mb-4">
                <h3 class="mb-4">Search</h3>
                <form class="form-subscribe mb-3" action="index.html" method="post">
                  <div class="input-group input-group-sm">
                    <input type="email" class="form-control form-control-sm border-0" required="" placeholder="">
                    <button class="input-group-text border-0 btn bg-primary" type="submit">
                      <i class="fa fa-search text-white" aria-hidden="true"></i>
                    </button>
                  </div>
                </form>
              </div>
          
              <div class="d-none d-md-block">
                <div class="mb-4">
                  <ul class="nav nav-tabs nav-justified blog-tabs" id="myTab" role="tablist">
                    <li class="nav-item">
                      <a class="nav-link active" id="recent-tab" data-bs-toggle="tab" href="#recent" role="tab"
                        aria-controls="recent" aria-selected="true">Recent</a>
                    </li>
          
                    <li class="nav-item">
                      <a class="nav-link" id="popular-tab" data-bs-toggle="tab" href="#popular" role="tab" aria-controls="popular"
                        aria-selected="false">Popular</a>
                    </li>
          
                    <li class="nav-item">
                      <a class="nav-link" id="new-tab" data-bs-toggle="tab" href="#new" role="tab" aria-controls="new"
                        aria-selected="false">New</a>
                    </li>
                  </ul>
          
                  <div class="tab-content bg-smoke border border-light-gray border-top-0 rounded-bottom px-3 py-5"
                    id="myTabContent">
                    <div class="tab-pane fade show active" id="recent" role="tabpanel" aria-labelledby="recent-tab">
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="${path}/assets/img/blog/tab-01.jpg" src="${path}/assets/img/blog/tab-01.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Totam rem apriam eaque.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="${path}/assets/img/blog/tab-02.jpg" src="${path}/assets/img/blog/tab-02.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Pitter soan smeeit herick.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
                      <div class="media meta-post-sm">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="${path}/assets/img/blog/tab-04.jpg" src="${path}/assets/img/blog/tab-04.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Rodney samp deo artich.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
          
                    <div class="tab-pane fade" id="popular" role="tabpanel" aria-labelledby="popular-tab">
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="${path}/assets/img/blog/tab-04.jpg" src="${path}/assets/img/blog/tab-04.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Rodney samp deo artich.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
          
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="${path}/assets/img/blog/tab-02.jpg" src="${path}/assets/img/blog/tab-02.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Pitter soan smeeit herick.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
                      <div class="media meta-post-sm">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="${path}/assets/img/blog/tab-01.jpg" src="${path}/assets/img/blog/tab-01.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Totam rem apriam eaque.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
                    </div>
          
                    <div class="tab-pane fade" id="new" role="tabpanel" aria-labelledby="new-tab">
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="${path}/assets/img/blog/tab-02.jpg" src="${path}/assets/img/blog/tab-02.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Pitter soan smeeit herick.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
                      <div class="media meta-post-sm border-bottom border-off-white pb-3 mb-3">
                        <div class="img-overlay rounded me-2">
                          <img class="lazyestload" data-src="${path}/assets/img/blog/tab-04.jpg" src="${path}/assets/img/blog/tab-04.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
          
                        <div class="media-body">
                          <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
                            Rodney samp deo artich.
                          </a>
          
                          <ul class="list-unstyled d-flex flex-wrap mb-0">
                            <li class="meta-tag text-gray-color me-4 mb-1">
                              <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                              <span class="ms-1 text-capitalize">5 March, 2021</span>
                            </li>
                          </ul>
                        </div>
                      </div>
          
		            <div class="media meta-post-sm">
		              <div class="img-overlay rounded me-2">
		                <img class="lazyestload" data-src="${path}/assets/img/blog/tab-03.jpg" src="${path}/assets/img/blog/tab-03.jpg" alt="Generic placeholder image">
		                <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
		              </div>
		    
		              <div class="media-body">
		                <a href="blog-single-right-sidebar.html" class="text-dark hover-text-primary text-capitalize mb-1">
		                  Amanda disuja carl parkar.
		                </a>
		    
		                <ul class="list-unstyled d-flex flex-wrap mb-0">
		                  <li class="meta-tag text-gray-color me-4 mb-1">
		                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
		                    <span class="ms-1 text-capitalize">5 March, 2021</span>
		                  </li>
		                </ul>
		              </div>
		            </div>
		          </div>
		        </div>
		      </div>
          
            <div class="col-md-6 col-lg-12 d-none d-md-block">
              <div class="bg-smoke border border-light-gray rounded p-3 mb-4">
                <h3 class="mb-4">Categories</h3>
          
                <ul class="list-unstyled list-group list-group-flush">
                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                    <a href="blog-single-right-sidebar.html"
                      class="d-flex text-dark hover-text-primary py-3">
                      <span>맛집</span>
                      <small class="ms-auto font-weight-bold">(25)</small>
                    </a>
                  </li>
          
                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                    <a href="blog-single-right-sidebar.html"
                      class="d-flex text-dark hover-text-primary py-3">
                      <span>관광지</span>
                      <small class="ms-auto font-weight-bold">(19)</small>
                    </a>
                  </li>
          
                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                    <a href="blog-single-right-sidebar.html"
                      class="d-flex text-dark hover-text-primary py-3">
                      <span>액티비티</span>
                      <small class="ms-auto font-weight-bold">(17)</small>
                    </a>
                  </li>
          
                  <li class="list-group-item bg-transparent border-off-white border-top-0 p-0">
                    <a href="blog-single-right-sidebar.html"
                      class="d-flex text-dark hover-text-primary py-3">
                      <span>투어</span>
                      <small class="ms-auto font-weight-bold">(8)</small>
                    </a>
                  </li>
                </ul>
              </div>
          
              <div class="">
                <div class="bg-smoke border border-light-gray rounded p-3 mb-4 mb-lg-0">
                  <h3 class="mb-6">Instagram</h3>
          
                  <div class="mb-2">
                    <div class="row px-2">
                      <div class="col-4 px-1">
                        <div class="img-overlay rounded">
                          <img class="w-100 lazyestload" data-src="${path}/assets/img/blog/instagram-new-01.jpg" src="${path}/assets/img/blog/instagram-new-01.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
                      </div>
          
                      <div class="col-4 px-1">
                        <div class="img-overlay rounded">
                          <img class="w-100 lazyestload" data-src="${path}/assets/img/blog/instagram-new-02.jpg" src="${path}/assets/img/blog/instagram-new-02.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
                      </div>
          
                      <div class="col-4 px-1">
                        <div class="img-overlay rounded">
                          <img class="w-100 lazyestload" data-src="${path}/assets/img/blog/instagram-new-03.jpg" src="${path}/assets/img/blog/instagram-new-03.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
                      </div>
                    </div>
                  </div>
          
                  <div class="">
                    <div class="row px-2">
                      <div class="col-4 px-1">
                        <div class="img-overlay rounded">
                          <img class="w-100 lazyestload" data-src="${path}/assets/img/blog/instagram-new-04.jpg" src="${path}/assets/img/blog/instagram-new-04.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
                      </div>
          
                      <div class="col-4 px-1">
                        <div class="img-overlay rounded">
                          <img class="w-100 lazyestload" data-src="${path}/assets/img/blog/instagram-new-05.jpg" src="${path}/assets/img/blog/instagram-new-05.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
                      </div>
          
                      <div class="col-4 px-1">
                        <div class="img-overlay rounded">
                          <img class="w-100 lazyestload" data-src="${path}/assets/img/blog/instagram-new-06.jpg" src="${path}/assets/img/blog/instagram-new-06.jpg" alt="Generic placeholder image">
                          <a href="blog-single-right-sidebar.html" class="hover-img-overlay-dark"></a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>


</div>
</div>
	</div><!-- matchListInfo -->
	</div><!-- container -->
	</section>



  </div><!-- element wrapper ends -->

	<jsp:include page="../common/footer.jsp"/>
  </body>
</html>