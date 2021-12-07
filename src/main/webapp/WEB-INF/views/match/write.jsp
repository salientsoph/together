<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
  
  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>모임 게시판</title>

    <!-- Plugins css Style -->
    
  	<link rel="stylesheet" href="//code.jquery.com/ui/1.13.0/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
  <script src="https://code.jquery.com/ui/1.13.0/jquery-ui.js"></script>
   <!--  <script src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script> -->
    <!-- <script src="${pageContext.request.contextPath}/assets/plugins/datepicker/js/daterangepicker.min.js"></script> -->
    


	


  </head>     

<body id="body" class="up-scroll">

  <!-- ====================================
  ——— HEADER
  ===================================== -->
  <jsp:include page="../common/header.jsp" />
  <div class="main-wrapper booking-step-1">


<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(${pageContext.request.contextPath}/assets/img/pages/page-title-bg7.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="title-border">
              <h2 class="text-uppercase text-white font-weight-bold">모임 게시판</h2>
            </div>
            <p class="text-white mb-0"></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- ====================================
———	BOOKING SECTION
===================================== -->
<section class="py-8 py-md-10">
  <div class="container">    
    <div class="row">
      <div class="col order-1 order-md-0">
        <h3 class="text-capitalize mb-5">게시물을 작성해주세요</h3>

        <form action="${path}/match/insert" method="post" id="insertForm" >
        <input type="text" name="customer" value="${sessionScope.id}">
        
          <div class="row">
          
              <div class="form-group">
                <label for="inputName">게시물 제목</label>
                <input type="text" required="" class="form-control border-0 bg-smoke" name="matchTitle">
              </div>
          
            <div class="col-lg-6">
              <div class="form-group">
                <label for="inputName">희망하는 인원수</label>
                <input type="number"  name="matchPeopleNum" class="form-control border-0 bg-smoke">
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
    
    
    <!-- 날짜 선택 시작 -->
    
    		<div class="form-group form-group-icon form-group-icon-dark mb-5">
	                  <i class="far fa-calendar-alt" aria-hidden="true"></i>
	                  <input type="date"   name="tripDate" autocomplete="off" value="" placeholder="여행 날짜" />
           	</div>
    <!-- 날짜 선택  끝 -->       	
    
    	<div class="accordion" id="accordionOne">
                <div class="card">
                  <div class="card-header" id="headingOne">
                    <h5 class="icon-bg" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false"
                      aria-controls="collapseOne">
                      <span>연령대</span>
                    </h5>
                  </div>
            
                  <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionOne">
                  <p>
                    <div class="mb-3">
	                    <div class="form-check">
	                      <input class="form-check-input" type="radio" name="matchAgeGroup" value="20" id="flexRadioDefault2" checked>
	                      <label class="form-check-label" for="flexRadioDefault2">
	                        20대
	                      </label>
	                    </div>
	                    
	                    
	                    <div class="form-check">
	                      <input class="form-check-input" type="radio" name="matchAgeGroup" value="30"id="flexRadioDefault1">
	                      <label class="form-check-label" for="flexRadioDefault1">
	                        30대
	                      </label>
	                    </div>
	                    
	                    <div class="form-check">
	                      <input class="form-check-input" type="radio" name="matchAgeGroup" value="40 "id="flexRadioDefault1">
	                      <label class="form-check-label" for="flexRadioDefault1">
	                        40대
	                      </label>
	                    </div>
	                    
	                    <div class="form-check">
	                      <input class="form-check-input" type="radio" name="matchAgeGroup" value="50" id="flexRadioDefault1">
	                      <label class="form-check-label" for="flexRadioDefault1">
	                        50대 이상
	                      </label>
	                    </div>
					</div>
                  </div>
                  
                </div>
            <!-- 모임 연령대 끝 -->
       
       
            <!-- 모임 성별 시작 -->
                <div class="card">
                  <div class="card-header" id="headingTwo">
                    <h5 class="icon-bg collapsed" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false"
                      aria-controls="collapseTwo">
                      <span>모임 성별</span>
                    </h5>
                  </div>
            
                  <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionOne">
                     <p>
                    <div class="mb-3">
	                    <div class="form-check">
	                      <input class="form-check-input" type="radio" name="matchGender" id="flexRadioDefault2" value="0" checked>
	                      <label class="form-check-label" for="flexRadioDefault2">
	                        혼성
	                      </label>
	                    </div>
	                    
	                    
	                    <div class="form-check">
	                      <input class="form-check-input" type="radio" name="matchGender" id="flexRadioDefault1" value="1">
	                      <label class="form-check-label" for="flexRadioDefault1">
	                        여자만
	                      </label>
	                    </div>
	                    
	                    <div class="form-check">
	                      <input class="form-check-input" type="radio" name="matchGender" id="flexRadioDefault1" value="2">
	                      <label class="form-check-label" for="flexRadioDefault1">
	                        남자만
	                      </label>
	                    </div>

					</div>
                  </div>
                </div>
              </div>
            
    
          <div class="form-group mb-5">
            <label for="exampleFormControlTextarea1">게시물 내용</label>
            <textarea class="form-control border-0 bg-smoke" rows="10" name="matchContent"></textarea>
          </div>
          </div>
    
          <div class="text-center text-md-start text-lg-end">
            <button type="submit" class="btn btn-sm btn-outline-secondary text-uppercase py-2 font-weight-medium">작성완료</button>
            <button type="button" id="cancel" class="btn btn-sm btn-outline-secondary text-uppercase py-2 font-weight-medium">취소</button>
          </div>
        </form>
      </div>
    
    </div>
  </div>
</section>



  </div><!-- element wrapper ends -->

    <!-- ====================================
    ——— FOOTER SECTION
    ===================================== -->
 <jsp:include page="../common/footer.jsp" />

  
    <!-- ====================================
    ——— MODAL SECTION
    ===================================== -->
    <!-- Signup Modal -->
    <div class="modal fade" id="signup" tabindex="-1" role="dialog" aria-label="signupModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header rounded">
            <h3 class="modal-title text-uppercase font-weight-bold">Create your account</h3>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>

          <div class="modal-body">
            <form class="" action="index.html" method="post">
              <div class="mb-3">
                <input type="text" class="form-control bg-smoke" required="" placeholder="Full Name">
              </div>

              <div class="mb-3">
                <input type="email" class="form-control bg-smoke" required="" placeholder="Email">
              </div>
    
              <div class="mb-3">
                <input type="password" class="form-control bg-smoke" required="" placeholder="Password">
              </div>
    
              <div class="mb-3 form-check mb-0">
                <input type="checkbox" class="form-check-input" id="exampleCheck4">
                <label class="form-check-label text-gray-color mb-3" for="exampleCheck4">
                  I agree to the terms of use and privacy.
                </label>
              </div>

              <div class="d-grid">
                <button type="submit" class="btn btn-primary btn-block text-uppercase">Login</button>
              </div>

              <div class="text-uppercase text-center py-3">Or</div>

              <div class="d-grid">
                <button type="submit" class="btn btn-facebook btn-block text-uppercase text-white">Login with facebook</button>
              </div>
            </form>
          </div>
    
          <div class="modal-footer justify-content-center">
            <p class="mb-1">Don’t have an Account? <a href="javascript:void(0)">Sign up</a></p>
          </div>
        </div>
      </div>
    </div>

    <!-- Login Modal -->
    <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-label="loginModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header rounded">
            <h3 class="modal-title text-uppercase font-weight-bold">Log in to your account</h3>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>

          <div class="modal-body">
            <form class="" action="index.html" method="post">
              <div class="mb-3">
                <input type="email" class="form-control bg-smoke" required="" placeholder="Email">
              </div>

              <div class="mb-3">
                <input type="password" class="form-control bg-smoke" required="" placeholder="Password">
              </div>

              <div class="mb-3 form-check mb-0">
                <input type="checkbox" class="form-check-input" id="exampleCheck5">
                <label class="form-check-label text-gray-color mb-3" for="exampleCheck5">
                  Remember me
                </label>
                <a class="pull-right" href="javascript:void(0)">Fogot Password?</a>
             </div>

             <div class="d-grid">
              <button type="submit" class="btn btn-primary text-uppercase">Login</button>
             </div>

              <div class="text-uppercase text-center py-3">Or</div>

              <div class="d-grid">
                <button type="submit" class="btn btn-facebook text-uppercase text-white">Login with facebook</button>
               </div>
            </form>
          </div>

          <div class="modal-footer justify-content-center">
            <p class="mb-1">Don’t have an Account? <a href="javascript:void(0)">Sign up</a></p>
          </div>
        </div>
      </div>
    </div>

    <!-- INQUIRY IN MODAL -->
    <div class="modal fade" id="inquiry" tabindex="-1" role="dialog" aria-label="inquiryModalLabel" aria-hidden="true">
      <div class="modal-dialog modal-sm modal-dialog-centered" role="document">
        <div class="modal-content">
          <div class="modal-header rounded">
            <h3 class="modal-title text-uppercase font-weight-bold">Inquiry about tour</h3>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>

          <div class="modal-body pb-3">
            <form class="" action="index.html" method="post">
              <div class="mb-3">
                <input type="text" class="form-control bg-smoke" required="" placeholder="Your Name">
              </div>

              <div class="mb-3">
                <input type="email" class="form-control bg-smoke" required="" placeholder="Your Email">
              </div>
    
              <div class="mb-3">
                <input type="number" class="form-control bg-smoke" required="" placeholder="Phone Number">
              </div>

              <div class="mb-3">
                <textarea class="form-control bg-smoke" rows="6" placeholder="Message"></textarea>
              </div>
    
              <button type="submit" class="btn btn-primary text-uppercase">Submit</button>
            </form>
          </div>
        </div>
      </div>
    </div>

   
   <script type="text/javascript">
	  $(function(){
		 
		 if("${sessionScope.role}" == "" || "${sessionScope.role}" == "seller"){
			 location.href="/";
		 } 
		 
		 //$('#datePicker').datepicker();//datepicker end
	  });
	
	
            
	</script>
   
  </body>
</html>

