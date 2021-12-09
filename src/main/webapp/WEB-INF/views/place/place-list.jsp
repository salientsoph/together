<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<jsp:include page="../common/header.jsp" />
<!DOCTYPE html>
<html lang="en">
  
  <head>

<!-- 찜하기 버튼을 누를경우 이벤트 발생 -->
<script type="text/javascript">

function likebtn(placeNo){
	
  $(function(){
	// 비로그인 상태시 찜하기 버튼을 누르면
	  if ("${sessionScope.id}" == "") {
			if (confirm("로그인 한 회원만 이용가능합니다. 로그인 하시겠습니까?")){
				//승낙하면 로그인 모달로 이동
				$("#login").modal("show");
			}else{
				//거부하면 해당 페이지 새로고침
				location.reload();
			}
      	
      //로그인 상태시 찜하기 버튼을 누르면
	  }else{
		  if(confirm("찜 목록에 추가 하시겠습니까?")){
				location.href="${path}/mypage/insertlike?placeNo="+placeNo;
				return true;
		  }else{
				return false;
		  }
      }	
  });     
}//likebtn	
</script>

</head>     

<body id="body" class="up-scroll">

  <div class="main-wrapper packages-grid">


<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(${path}/assets/img/pages/page-title-bg5.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="title-border">
              <h2 class="text-uppercase text-white font-weight-bold">장소 게시판</h2>
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
    <div class="row">
    
    	<form action="${path}/place/list" method="post" id="searchForm" >
    		
    		
    		 <div class="mb-3">
	                      <input class="form-check-input" type="radio" name="placeCategory" value="0"id="flexRadioDefault1">
	                      <label class=".radio-control-label" for="flexRadioDefault1">
	                        맛집
	                      </label>
	                      <input class="form-check-input" type="radio" name="placeCategory" value="1 "id="flexRadioDefault1">
	                      <label class=".radio-control-label" for="flexRadioDefault1">
	                        관광지
	                      </label>
	                      <input class="form-check-input" type="radio" name="placeCategory" value="2" id="flexRadioDefault1">
	                      <label class="radio-control-label" for="flexRadioDefault1">
	                        액티비티
	                      </label></div>
    		<button type="submit" class="btn btn-sm btn-outline-secondary text-uppercase py-2 font-weight-medium"> Search</button>
    		
    		</form>
    	
    
    
    	<input type="hidden" value="${sessionScope.id}" name="customer">
          
          
    
    <c:choose>
	    <c:when test="${empty requestScope.placeList}">
		<tr>
	        <td colspan="5">
	            <p align="center"><b><span style="font-size:9pt;">등록된 게시물이 없습니다.</span></b></p>
	        </td>
	    </tr>
	    </c:when>
    <c:otherwise>
    
	<c:forEach items="${requestScope.placeList.content}" var="board">
    
    
    
    <!-- 한개 시작 -->
      <div class="col-md-6 col-lg-4 mb-5">
        <div class="card card-hover">
          <a href="/place/read/${board.placeNo}" class="position-relative">
            <img data-src="${pageContext.request.contextPath}/images/${board.placeImage}" src="${pageContext.request.contextPath}/images/${board.placeImage}" height="380" width="350" alt="image" style="display:block; margin:auto;">
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
            
            <div class="d-flex justify-content-between align-items-center">
             
          
            <div>
            	<p class="mb-0 text-capitalize ">관심 받은 수</p>
                <span id="placeLikedCount" style="margin-left:5px;">${board.placeLikedCount}</span>
            </div>

 			<!--  장소 찜 기능  -->
			<div class="icon" style="float: left; padding-left: 20px; padding-top: 10px;">
				<!-- 찜하기 했을 경우 해당 정보 가져오기 -->
			    <span id="placeLikeNo" style="display: none;">${prdLikeVal.placeLikeNo}</span>
				<%-- 찜하기 기능은 고객(MEMBER 권한)만 이용할 수 있게 설정 --%>     
				
				<a href="#" class="btn btn-xs btn-outline-secondary text-uppercase fa fa-heart" onclick="likebtn(${board.placeNo});"> 찜하기</a>
	       			
            <%-- place_like 테이블을 가져와 비교후 예전에 찜하기를 안했다면(혹은 찜취소를 했었다면) 찜하기로 활성화가 된다 --%>
	       		  <c:if test="${board.placeLikeList ne null}">
	       		    <c:forEach items="${board.placeLikeList }" var="placeLike">
	       		      <c:if test="${placeLike.customer.userId eq sessionScope.id}">
	       		        <script type="text/javascript">
	       		          $(function(){
	       		        	  var id = "#" + ${board.placeNo }
	       		        	 $(id).html("찜취소");
	       		          });
	       		        </script>
	       		      </c:if>
	       		    </c:forEach>
	       		  </c:if>
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
    
    
    
    <c:if test="${sessionScope.role == 'seller'}">
    <p>
      <div class="mb-6">
    	<ul class="pagination justify-content-center align-items-center">
    	<li class="page-item">
    		<a href="/place/write">
    			<button type="button" class="btn btn-secondary btn-lg mb-2">글 작성하기</button>
    		</a>
    	</li>
    	</ul>
      </div>
    </c:if>
    
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
		
			<c:if test="${(i-1)>=noticeList.getTotalPages()}">
				<c:set var="doneLoop" value="true"/>
			</c:if> 
				    
			<c:if test="${not doneLoop}" >
				 <li class="page-item">
		          	<a class="page-link active" href="/place/list?nowPage=${i}">${i}</a>
		       	 </li> 
			</c:if>
		</c:forEach>
    
    <!-- Next -->
    <c:choose>
    <c:when test="${(startPage+blockCount)<=placeList.getTotalPages()}">     
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

