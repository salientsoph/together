<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title> 장소게시판 </title>

<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">


</head>
<body>
<jsp:include page="../common/header.jsp" />

	<section class="section-top">
	  <div class="py-8 py-md-9 py-lg-10">
	    <div class="container">
	      <div class="row">
	        <div class="col-lg-8 col-xl-9 order-1 order-md-0 order-lg-1">
	          
	
	          <div class="mb-7 mb-lg-0">
	            <h3 class="mb-6">새 장소 게시물 작성</h3>
	  
	            <form method="post" role="form" class="form" action="${pageContext.request.contextPath}/place/insert" enctype="multipart/form-data">
	              <div class="row">
	                <div class="col-lg-6">
	                  <div class="form-group">
	                    <input type="text" name="placeTitle" class="form-control border-0 bg-smoke" required="" placeholder="제목" style="width:850px;">
	                  </div>
	                </div>
	              </div>
	              
	              <div class="mb-5">
                  <div class="select-default select-category-1">
                    <div class="form-check">
	                      <input class="form-check-input" type="radio" name="region" value="1" id="flexRadioDefault2" checked>
	                      <label class="form-check-label" for="flexRadioDefault2">
	                        서울
	                      </label>
	                 </div>
	                 
	                 <div class="form-check">
	                      <input class="form-check-input" type="radio" name="region" value="2" id="flexRadioDefault2">
	                      <label class="form-check-label" for="flexRadioDefault2">
	                        경기/인천
	                      </label>
	                 </div>
	                 
	                 <div class="form-check">
	                      <input class="form-check-input" type="radio" name="region" value="3" id="flexRadioDefault2">
	                      <label class="form-check-label" for="flexRadioDefault2">
	                        부산/경남
	                      </label>
	                 </div>
	                 
	                 <div class="form-check">
	                      <input class="form-check-input" type="radio" name="region" value="4" id="flexRadioDefault2">
	                      <label class="form-check-label" for="flexRadioDefault2">
	                        대전/충청
	                      </label>
	                 </div>
	                 
	                 <div class="form-check">
	                      <input class="form-check-input" type="radio" name="region" value="5" id="flexRadioDefault2">
	                      <label class="form-check-label" for="flexRadioDefault2">
	                        대구/경북
	                      </label>
	                 </div>
	                 
	                 <div class="form-check">
	                      <input class="form-check-input" type="radio" name="region" value="6" id="flexRadioDefault2">
	                      <label class="form-check-label" for="flexRadioDefault2">
	                        광주/전라
	                      </label>
	                 </div>
	                 
	                 <div class="form-check">
	                      <input class="form-check-input" type="radio" name="region" value="7" id="flexRadioDefault2">
	                      <label class="form-check-label" for="flexRadioDefault2">
	                        강원/제주
	                      </label>
	                 </div>
	        
                  </div>
            </div>
            
            
              <div class="mb-5">
                  <div class="select-default select-category-1">
                    <div class="form-check">
	                      <input class="form-check-input" type="radio" name="placeCategory" value="0" id="flexRadioDefault2" checked>
	                      <label class="form-check-label" for="flexRadioDefault2">
	                        맛집
	                      </label>
	                 </div>
	                 
	                 <div class="form-check">
	                      <input class="form-check-input" type="radio" name="placeCategory" value="1" id="flexRadioDefault2">
	                      <label class="form-check-label" for="flexRadioDefault2">
	                        관광지
	                      </label>
	                 </div>
	                 
	                 <div class="form-check">
	                      <input class="form-check-input" type="radio" name="placeCategory" value="2" id="flexRadioDefault2">
	                      <label class="form-check-label" for="flexRadioDefault2">
	                        액티비티
	                      </label>
	                 </div>
                  </div>
            </div>
            
	              
	           
	  			<input type="file" name="files"  placeholder="장소 이미지"> 
	  
	  			<p> 
	  			
	  			  <div class="form-group">
	                <input type="text" name="placeAddress" class="form-control border-0 bg-smoke" rows="7" placeholder="주소" required="" value="${requestScope.place.placeAddress}">
	              </div>
	  			
	              <div class="form-group">
	                <textarea name="placeContent" class="form-control border-0 bg-smoke" rows="7" placeholder="내용" required="">${requestScope.place.placeContent}</textarea>
	              </div>
	  			 
	  			 <input type="hidden" name="seller" value="${sessionScope.id}">
	            <button type="submit" class="btn btn-sm btn-outline-secondary text-uppercase py-2 font-weight-medium">수정완료</button>
           	  	<button type="reset" class="btn btn-sm btn-outline-secondary text-uppercase py-2 font-weight-medium">초기화</button>
	              
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