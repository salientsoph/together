<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html>
<html lang="en">
  
  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>공지사항</title>
	<script src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
	
	<SCRIPT language=javascript>
	   $(function(){
		   $("#updateButton").click(function(){
			   $("#requestForm").attr("action", "${pageContext.request.contextPath}/notice/updateForm");
			   $("#requestForm").submit();
		   })
		   
		   $("#deleteButton").click(function(){
			   if (confirm("정말 삭제하시겠습니까?") == true){
				   $("#requestForm").attr("action","${pageContext.request.contextPath}/notice/delete");
				   $("#requestForm").submit();
			   }
		   })
	   })
	</script>
	

  </head>     

<body id="body" class="up-scroll">

  <!-- ====================================
  ——— HEADER
  ===================================== -->
  <jsp:include page="../common/header.jsp" />
 

<!-- ====================================
——— TRAVEL LIST SECTION
===================================== -->
<section class="section-top">
  <div class="py-8 py-md-9 py-lg-10">
    <div class="container">
      <div class="row">
          <div class="card card-lg card-transparent mb-8">
            
  
            <div class="card-body px-2 py-6">
              <h3 class="mb-4">${requestScope.notice.noticeTitle}</h3>
  
              <div class="meta-post-sm mb-4">
                <ul class="list-unstyled d-flex flex-wrap mb-0">
                  <li class="meta-tag me-4 mb-1">
                    <i class="fa fa-user text-gray-color" aria-hidden="true"></i>
                    <a class="text-gray-color hover-text-primary" href="">
                      <span class="ms-1 text-capitalize">${requestScope.notice.admin.adminNickname}</span>
                    </a>
                  </li>
  
                  <li class="meta-tag text-gray-color me-4 mb-1">
                    <i class="fas fa-calendar-alt" aria-hidden="true"></i>
                  	<tags:localDate date="${requestScope.notice.noticeRegdate}"/>
                  </li>
  
                </ul>
              </div>
  
              <p>${requestScope.notice.noticeContent}</p>
            </div>
  		</div>
 
  </div>
  </div>
  
  
  <table style="margin:auto">
   <tr>
        <td height="20" colspan="4" align="center" valign="middle">
			<!-- 수정시 필요한 데이터들을 hidden으로 숨겨놓고 폼 데이터로 보내준다. -->
			<form name="requestForm" method="post" id="requestForm">
				<c:if test="${sessionScope.id == 'admin'}">
					<input type=hidden name="noticeNo" value="${requestScope.notice.noticeNo}">
					<button id="updateButton" type="button" name="update" class="btn btn-secondary btn-lg mb-2">수정하기</button>
					<button id="deleteButton" type="button" name="delete" class="btn btn-secondary btn-lg mb-2">삭제하기</button>
				</c:if>
				<a href="${pageContext.request.contextPath}/notice/list" >
					<button  type="button" name="list" class="btn btn-hover btn-outline-secondary text-uppercase">목록으로</button>
				</a>
			</form>
		</td>
    </tr>
  </table>
  
  
  
  </div>
  </section>
 
 		
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

   
  </body>
</html>

