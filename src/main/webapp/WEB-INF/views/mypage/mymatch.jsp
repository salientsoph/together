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

</script>
</head>  

<body id="body" class="up-scroll">

<!-- Header dashboard -->
<section class="section-top">
  <nav class="navbar navbar-expand-md navbar-light navbar-dark-light">
    <div class="container">
      <button class="navbar-toggler me-0 ms-3" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01"
        aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="navbar-nav-right d-md-none me-6 pe-1">
        <ul class="list-unstyled d-flex align-items-center mb-0">
          <li class="nav-item dropdown nav-item-left">
            <a href="#" class="nav-link" id="navbarDropdown" data-bs-toggle="dropdown" role="button" aria-haspopup="true"
              aria-expanded="false">
              <i class="fa fa-bell text-gray-color icon" aria-hidden="true"></i> <span class="badge-pill bg-primary text-white">2</span>
            </a>
      
            <div class="dropdown-menu dropdown-menu-end dropdown-left">
              <ul class="list-unstyled list-group list-group-flush">
                <li class="">
                  <a href="javascript:void(0)" class="list-group-item rounded-0 border-bottom first-child">
                    <h3 class="text-dark mb-0">Information</h3>
                  </a>
                </li>
      
                <li>
                  <a href="javascript:void(0)" class="list-group-item border-bottom border-off-white rounded-0">
                    <h5 class="fon-size-15 text-dark">Maldive Tour Packages</h5>
                    <small class="text-gray-color">6 Hours Ago</small>
                  </a>
                </li>
      
                <li>
                  <a href="javascript:void(0)" class="list-group-item border-bottom border-off-white rounded-0">
                    <h5 class="fon-size-15 text-dark">London Tour Booking</h5>
                    <small class="text-gray-color">15 Hours Ago</small>
                  </a>
                </li>
      
                <li class="">
                  <a href="javascript:void(0)" class="list-group-item border-off-white border-bottom-0 rounded-0 last-child">
                    <h5 class="fon-size-15 text-dark">Paris Tour Booking</h5>
                    <small class="text-gray-color">15 Hours Ago</small>
                  </a>
                </li>
              </ul>
            </div>
          </li>
      
          <li class="nav-item dropdown nav-item-left me-0">
            <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-haspopup="true"
              aria-expanded="false">
              <img src="${path}/assets/img/dashboard/dash-user.jpg" data-src="${path}/assets/img/dashboard/dash-user.jpg" alt="Generic placeholder image" class="w-100 rounded-circle me-1 lazyestload">
            </a>
      
            <div class="dropdown-menu dropdown-menu-end dropdown-left">
              <ul class="list-unstyled list-group list-group-flush">
                <li class="">
                  <a href="profile.html" class="list-group-item rounded-0 border-bottom first-child">
                    <h5 class="fon-size-15 text-dark">Profile</h5>
                  </a>
                </li>
      
                <li>
                  <a href="setting.html" class="list-group-item border-bottom border-off-white rounded-0">
                    <h5 class="fon-size-15 text-dark text-capitalize">Account setting</h5>
                  </a>
                </li>
      
                <li class="">
                  <a href="javascript:void(0)" class="list-group-item border-off-white border-bottom-0 rounded-0 last-child">
                    <h5 class="fon-size-15 text-dark">Log out</h5>
                  </a>
                </li>
              </ul>
            </div>
          </li>
        </ul>
      </div>

      <div class="collapse navbar-collapse" id="navbarTogglerDemo01">
        <ul class="navbar-nav me-auto">

          <li class="nav-item dropdown">
            <a class="nav-link " href="/mypage/myprofile">
              <i class="fa fa-user" aria-hidden="true"></i>
              <span>프로필</span>
            </a>
          </li>

          <li class="nav-item dropdown">
            <a class="nav-link  active " href="/mypage/mymatch">
              <i class="fa fa-cube" aria-hidden="true"></i>
              <span>모임신청</span>
            </a>
          </li>

        </ul>

        <div class="navbar-nav-right d-none d-md-block">
          <ul class="list-unstyled d-flex align-items-center mb-0">
            <li class="nav-item dropdown nav-item-left">
              <a href="#" class="nav-link" id="navbarDropdown" data-bs-toggle="dropdown" role="button" aria-haspopup="true"
                aria-expanded="false">
                <i class="fa fa-bell text-gray-color" aria-hidden="true"></i> <span class="badge-pill bg-primary text-white">2</span>
              </a>

              <div class="dropdown-menu dropdown-menu-end dropdown-left notify">
                <ul class="list-unstyled list-group list-group-flush">
                  <li class="">
                    <a href="javascript:void(0)" class="list-group-item rounded-0 border-bottom first-child">
                      <h3 class="text-dark mb-0">Information</h3>
                    </a>
                  </li>

                  <li>
                    <a href="javascript:void(0)" class="list-group-item border-bottom border-off-white rounded-0">
                      <h5 class="fon-size-15 text-dark">Maldive Tour Packages</h5>
                      <small class="text-gray-color">6 Hours Ago</small>
                    </a>
                  </li>

                  <li>
                    <a href="javascript:void(0)" class="list-group-item border-bottom border-off-white rounded-0">
                      <h5 class="fon-size-15 text-dark">London Tour Booking</h5>
                      <small class="text-gray-color">15 Hours Ago</small>
                    </a>
                  </li>

                  <li class="">
                    <a href="javascript:void(0)" class="list-group-item border-off-white border-bottom-0 rounded-0 last-child">
                      <h5 class="fon-size-15 text-dark">Paris Tour Booking</h5>
                      <small class="text-gray-color">15 Hours Ago</small>
                    </a>
                  </li>
                </ul>
              </div>
            </li>

            <li class="nav-item dropdown nav-item-left me-0">
              <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                <img src="${path}/assets/img/dashboard/dash-user.jpg" data-src="${path}/assets/img/dashboard/dash-user.jpg" alt="Generic placeholder image" class="w-100 rounded-circle me-1 lazyestload">
              </a>

              <div class="dropdown-menu dropdown-menu-end dropdown-left">
                <ul class="list-unstyled list-group list-group-flush">
                  <li class="">
                    <a href="profile.html" class="list-group-item rounded-0 border-bottom first-child">
                    <h5 class="fon-size-15 text-dark">Profile</h5>
                    </a>
                  </li>
              
                  <li>
                    <a href="setting.html" class="list-group-item border-bottom border-off-white rounded-0">
                      <h5 class="fon-size-15 text-dark text-capitalize">Account setting</h5>
                    </a>
                  </li>
              
                  <li class="">
                    <a href="javascript:void(0)" class="list-group-item border-off-white border-bottom-0 rounded-0 last-child">
                      <h5 class="fon-size-15 text-dark">Log out</h5>
                    </a>
                  </li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </nav>
</section>


<!-- ====================================
——— USER SECTION
===================================== -->
<section class="py-9">
  <div class="container">

    <!-- Booking Type Section -->
    <div class="mb-6">
      <ul class="list-unstyled d-md-flex bg-smoke mb-0 p-5 px-lg-6 rounded">
        <li class="mb-4 mb-md-0 px-md-3">
          <a href="" class="text-uppercase text-primary hover-text-primary">
            All Types
          </a>
        </li>

        <li class="mb-4 mb-md-0 px-md-3">
          <a href="" class="text-uppercase text-dark hover-text-primary">
            맛집
          </a>
        </li>

        <li class="mb-4 mb-md-0 px-md-3">
          <a href="" class="text-uppercase text-dark hover-text-primary">
            관광지
          </a>
        </li>

        <li class="mb-4 mb-md-0 px-md-3">
          <a href="" class="text-uppercase text-dark hover-text-primary">
            액티비티
          </a>
        </li>

      </ul>
    </div>

    <!-- Table Section -->
    <div class="table-dashboard mb-7">
      <div class="row">
        <div class="col-12">
          <h2 class="text-uppercase mb-3">내 매칭 모임</h2>
          
          	<input type="hidden" value="${sessionScope.id}" name="customer">

		     <div class="MatchListInfo">  	
			    <c:if test="${empty matchList}">
					<tr>
				        <td colspan="5">
				            <p align="center"><b><span style="font-size:20pt; font-style: ;">신청한 매칭 모임이 없습니다.</span></b></p>
					        <p align="center"><b><span class="no-listing__cont__txt">마음에 드는 모임을 신청 해보세요.</span></b></p>
							<p align="center"><b><a href="/match/list" >매칭게시판 바로가기</a></b>
				        </td>
				    </tr>
			  </c:if>
    
    	<c:forEach items="${matchList}" var="list">
    	
    	<!-- 한개 시작 -->
          <table class="table table-hover">
            <tbody>
              <tr>

                <td class="second-child">
                   <i class="fab fa-fort-awesome" aria-hidden="true"></i>
                  <div>
                    <a href="${path}/chat/Chating/${list.matchNo}" class="hover-text-primary">${list.matchTitle}</a>
                    <p class="">${list.matchContent}</p>
                  </div>
                </td>

                <td>
	              	<div class="meta-tag me-4 mb-1">
	            	<i class="fas fa-calendar-alt" aria-hidden="true"></i>
	                <span class="ms-1 text-capitalize">${list.tripDate}</span></div>
                </td>
                
                <td>
	              	<div class="meta-tag me-4 mb-1">
	           		<i class="fas fa-user-friends"></i>
	                <span class="ms-1 text-capitalize">${list.matchPeopleNum}</span></div>
                </td>

                <td>
            		<div class="meta-tag me-4 mb-1">
					<c:forEach items="${list.matchRequestList}" var="request">
						<c:if test="${request.customer.userId eq idStr}">
							<c:choose>
								<c:when test="${request.requestedState eq 1}">
								<i class="fas fa-user-check"></i>
									모임 확정
								</c:when>
								<c:when test="${request.requestedState eq 2}">
								<i class="fas fa-times"></i>
									모임 거절
								</c:when>
								<c:otherwise>
								<i class="far fa-envelope-open"></i>
									신청 대기중
								</c:otherwise>
							</c:choose>
						</c:if>
					</c:forEach>
					</div>
                </td>

                <td>
         			<!-- 채팅방 입장 버튼  -->
		   			 <a href="${path}/chat/Chating/${list.matchNo}" class="btn btn-outline-info mb-2">채팅방 바로가기</a>
                </td>
              </tr>
              
			<!-- 한개 끝 -->
            </tbody>
          </table>
          
		</c:forEach>
        </div>
      </div>
   </div>
</div>

</div><!-- element wrapper ends -->
</section>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>