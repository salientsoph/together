<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="tags" tagdir="/WEB-INF/tags" %>
<c:set var = "path" value = "${pageContext.request.contextPath}" />
<%
String id = (String)session.getAttribute("id");
%>

<c:set var="idStr" value="<%=id%>"/>

<!DOCTYPE html>
<html lang="en">
  
  <head>

    <!-- SITE TITTLE -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>Blog Right Sidebar List View - Star Travel</title>

    <!-- Plugins css Style -->
    <link href='${path}/assets/plugins/fontawesome-5.15.2/css/all.min.css' rel='stylesheet'>
    <link href='${path}/assets/plugins/fontawesome-5.15.2/css/fontawesome.min.css' rel='stylesheet'>
    <link href="${path}/assets/plugins/animate/animate.css" rel="stylesheet">
    <link href="${path}/assets/plugins/menuzord/css/menuzord.css" rel="stylesheet">
    <link href="${path}/assets/plugins/menuzord/css/menuzord-animations.css" rel="stylesheet">

    
    <link href='${path}/assets/plugins/fancybox/jquery.fancybox.min.css' rel='stylesheet'>
    
    
    <!-- time picker -->
   <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.css">
    
    <!-- selectric -->
    <link href='${path}/assets/plugins/selectric/selectric.css' rel='stylesheet'>
    
    
    

    <!-- GOOGLE FONT -->
    <link href='https://fonts.googleapis.com/css?family=Montserrat:400,500,600,700' rel='stylesheet'>

    <!-- CUSTOM CSS -->
    <link href="${path}/assets/css/star.css" id="option_style" rel="stylesheet">


    <!-- FAVICON -->
    <link rel="shortcut icon" type="image/png" href="${path}/assets/img/favicon.png"/>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
	


  </head>     

<body id="body" class="up-scroll">

  <!-- ====================================
  ——— HEADER
  ===================================== -->
  <jsp:include page="../common/header.jsp" />
  
   


<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(${path}/${path}/assets/img/pages/page-title-bg4.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="title-border">
              <h2 class="text-uppercase text-white font-weight-bold">스케줄</h2>
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
  
  
  
<c:choose>
    <c:when test="${not empty requestScope.scheduleDetailList}">
    	<c:forEach items="${requestScope.scheduleDetailList}" var="schedule">
    	
    	 
		
    	
    	
  
    <div class="card rounded-0 card-transparent border-bottom mb-7 pb-7">
      <div class="row align-items-lg-center align-items-xl-stretch">
        <div class="col-md-6">
        
        	<c:choose>
    			<c:when test="${empty schedule.placeBoard}">
            		<img class="card-img-top rounded lazyestload" data-src="${path}/assets/img/blog/blog-01.jpg" src="${path}/assets/img/blog/blog-01.jpg" alt="Card image cap">
            	</c:when>
            	<c:when test="${empty schedule.placeBoard.placeImage or schedule.placeBoard.placeImage eq ''}">
            		<img class="card-img-top rounded lazyestload" data-src="${path}/assets/img/blog/blog-01.jpg" src="${path}/assets/img/blog/blog-01.jpg" alt="Card image cap">
            		</c:when>
            	<c:otherwise>
            		<img class="card-img-top rounded lazyestload" src="${path}/images/${schedule.placeBoard.placeImage}" >
            	</c:otherwise>
            </c:choose>
        </div>
    
        <div class="col-md-6">
          <div class="card-body px-md-0 py-6 pt-md-0 pt-xl-6">
            <h3 class="mb-4">
              <a class="text-capitalize text-dark hover-text-primary" >${schedule.title}</a>
            </h3>
    
            <div class="meta-post-sm mb-4">
              <ul class="list-unstyled d-flex flex-wrap mb-0">
    
                <li class="meta-tag text-gray-color me-4 mb-1">
                  <i class="fas fa-clock" aria-hidden="true"></i>
                  <span class="ms-1 text-capitalize">
                  
                  <fmt:parseDate value="${schedule.startTime}" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />
		 		  <fmt:formatDate pattern="HH:mm" value="${parsedDateTime}"/>
		 		  
		 		  ~
		 		  
		 		  <fmt:parseDate value="${schedule.endTime}" pattern="yyyy-MM-dd'T'HH:mm" var="parsedDateTime" type="both" />
				  <fmt:formatDate pattern="HH:mm" value="${parsedDateTime}"/>
                  
                  </span>
                </li>
    			
    			<c:choose>
    				<c:when test="${empty schedule.placeBoard}">
    				<li class="meta-tag text-gray-color me-4 mb-1">
	                  <i class="fa fa fa-tags" aria-hidden="true"></i>
	                  <span class="ms-1 text-capitalize">Custom Event</span>
	                </li>
    				</c:when>
    				<c:otherwise>
    					<c:if test="${schedule.placeBoard.placeCategory eq '0'}">
	    					<li class="meta-tag text-gray-color me-4 mb-1">
			                  <i class="fas fa-utensils" aria-hidden="true"></i>
			                  <span class="ms-1 text-capitalize">맛집</span>
			                </li>
    					
    					</c:if>
    					<c:if test="${schedule.placeBoard.placeCategory eq '1'}">
    						<li class="meta-tag text-gray-color me-4 mb-1">
			                  <i class="fas fa-map-marker-alt" aria-hidden="true"></i>
			                  <span class="ms-1 text-capitalize">관광지</span>
			                </li>
    					
    					</c:if>
    					<c:if test="${schedule.placeBoard.placeCategory eq '2'}">
    						<li class="meta-tag text-gray-color me-4 mb-1">
			                  <i class="fas fa-snowboarding" aria-hidden="true"></i>
			                  <span class="ms-1 text-capitalize">Activity</span>
			                </li>
    					</c:if>
    				
    				</c:otherwise>
    			</c:choose>
    			
              </ul>
            </div>
    
            <p class="mb-0">
			
			${schedule.content}
			
			</p>
          </div>
    
          <div class="card-footer px-5 px-lg-0">
          
          	<c:choose>
          		<c:when test="${not empty schedule.placeBoard}">
          		<a href="${path}/place/read/${schedule.placeBoard.placeNo}" class="btn btn-sm btn-outline-secondary text-uppercase">View place</a>
  
          		</c:when>
          	</c:choose>
          	
            <c:if test="${idStr eq requestScope.writerId}">
            <a href="${path}/schedule/delete/${schedule.id}/${schedule.matchBoard.matchNo}" class="btn btn-sm btn-outline-secondary text-uppercase">Delete</a>
          	</c:if>
          </div>
        </div>
      </div>
    </div>

	</c:forEach>
	</c:when>
    
</c:choose>

  </div>

	
	
</section>

<c:if test="${idStr eq requestScope.writerId}">

<div class="container-sm w-25">
	<div class="col-md-6 col-lg-12 ">
      <div class="mb-6 bg-white p-3 border-top border-top-5 border-primary rounded">
        <form  action="${path}/schedule/insert" method="post" id="insertForm">
        <input type="hidden" value="${requestScope.matchNo}" name="matchBoardNo" >
        <input type="hidden" name="startTime"  id="startTimeActual"  >
        <input type="hidden" name="endTime" id="endTimeActual"  >
          <h4 class="text-uppercase font-weight-bold">스케줄 추가</h4>
          
          <div class="mb-5">
          
             <div class="form-group">
               <label for="exampleInputText">찜한 장소 목록</label>
               <div class="select-default">
                 <select class="" name="placeLikeNo" id="placeLikeNo">
                 <option value="-1">Custom Event</option>
                 
                 <c:choose>
				    <c:when test="${not empty requestScope.placeLikeList}">
				    	<c:forEach items="${requestScope.placeLikeList}" var="placeLike">
                 
		                   <option value="${placeLike.placeBoard.placeNo}">${placeLike.placeBoard.placeTitle}</option>
                  
                  		</c:forEach>
                  	</c:when>
                  </c:choose>
                 </select>
               </div>
             </div>
             
          </div>
      
          <div class="form-group form-group-icon form-group-icon-dark mb-5">
          
           <i class="fas fa-clock" >
           <label for="exampleInputText" class="me-5 mt-2">시작 시간</label>
           </i>
            <input type="text" class="form-control  form-transparent"  id="startTime" readonly="readonly">
          </div>
      
          <div class="form-group form-group-icon form-group-icon-dark mb-5" id="endTimeDiv">
          
            <i class="far fa-clock" aria-hidden="true">
            <label for="exampleInputText" class="me-5 mt-2">끝나는 시간</label>
            </i>
            <input type="text" class="form-control  form-transparent" id="endTime"  readonly="readonly">
          </div>
          
          <div class="form-group">
            <label>제목</label>
            <input type="text" class="form-control" id="title" name="title" />
          </div>
          
          <div class="form-group">
            <label>내용</label>
            <textarea class="form-control" rows="3" id="content" name="content" ></textarea>
          </div>

          <div class="d-grid">
            <button type="button" id="insertSchedule" class="btn btn-xs btn-outline-secondary text-uppercase">추가하기</button>
          </div>
        </form>
      </div>
    </div>
    </div>
    
    
</c:if>


  


    <!-- ====================================
    ——— FOOTER SECTION
    ===================================== -->
    <jsp:include page="../common/footer.jsp" />

  
    <!-- ====================================
    ——— MODAL SECTION
    ===================================== -->
    

    <!-- Javascript -->
    <script src="${path}/assets/plugins/jquery/jquery-3.4.1.min.js"></script>
    <script src="${path}/assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="${path}/assets/plugins/menuzord/js/menuzord.js"></script>
    
    
    
    <script src='${path}/assets/plugins/fancybox/jquery.fancybox.min.js'></script>
    
    
    
    
    
    <script src="${path}/assets/plugins/lazyestload/lazyestload.js"></script>
    
    
    
    <script src='${path}/assets/plugins/velocity/velocity.min.js'></script>
    
    
    
    
    <script src="${path}/assets/plugins/smoothscroll/SmoothScroll.js"></script>
    
    <script src="${path}/assets/js/star.js"></script>
    
    <!-- timepiker -->
   <script src="//cdnjs.cloudflare.com/ajax/libs/timepicker/1.3.5/jquery.timepicker.min.js"></script>
   <!-- selectric -->
    <script src='${path}/assets/plugins/selectric/jquery.selectric.min.js'></script>
	<script type="text/javascript">
	
$(document).ready(function(){
	    

	
	$('#startTime').timepicker({
	    timeFormat: 'HH:mm',
	    interval: 30,
	    //minTime: '01',
	    //maxTime: '6:00pm',
	    //defaultTime: '11',
	    //startTime: '10:00',
	    dynamic: true,
	    dropdown: true,
	    scrollbar: true,
	    
	    change: function(time) {
	    	
	    	var element = $(this), text;
	    	var timepicker = element.timepicker();
	    	let matchDate = "${match.tripDate}"
			 
			 //console.log(matchDate);
			 //console.log(timepicker.format(time));
			 
			 let startDateTime = matchDate + " " + timepicker.format(time);
			 
			 //console.log(dateTime);
			 $("#startTimeActual").val(startDateTime);
				
			//태그 자체 삭제
			$("#endTime").remove();
			//똑같은 태그 다시 넣어주기
			$('#endTimeDiv').append('<input type="text" class="form-control  form-transparent" id="endTime" readonly="readonly">');
	    		    	
	    	//텍스트 박스에 시간 입력
	   		$('#endTime').val(timepicker.format(time));
	    	$('#endTime').timepicker({
	    	    minTime: timepicker.format(time), //시작시간 입력
	    	    timeFormat: 'HH:mm',
	    	    interval: 30,
	    	    maxTime: '23:59',
	    	    //defaultTime: '11',
	    	    //startTime: '10:00',
	    	    dynamic: false,
	    	    dropdown: true,
	    	    scrollbar: true,
	    	    change: function(time) {
	    	    	
	    	    	var element = $(this), text;
	    	    	var timepicker = element.timepicker();
	    	    	let matchDate = "${match.tripDate}"
	    			 
	    			 //console.log(matchDate);
	    			// console.log(timepicker.format(time));
	    			 
	    			 let endDateTime = matchDate + " " + timepicker.format(time);
	    			 
	    			 //console.log(dateTime);
	    	    	$("#endTimeActual").val(endDateTime);
	    	    }
	    	});
		 }
	});
	
	
	
});
	
	
	
	
	</script>
	
	
   <%--  <script src="${path}/js/jquery-3.6.0.min.js"></script>  --%>
	<script type="text/javascript">
	
	$(function() {
		
		 $(document).on('change',"select[name=placeLikeNo]" , function() {
				
			//console.log($(this).text());
			var input=$(this).val();
			
			if(input!=-1){
				$.ajax({
		    		type:"post",
		    		data: "${_csrf.parameterName}=${_csrf.token}&&placeNo="+input,
		    		url:"${path}/schedule/getPlaceData",
		    		dataType:"json",
		    		success:function(place){
		    			//alert(place)
		    			//console.log(place.placeTitle);
		    			//console.log(place.placeContent); 			 
		    			$("#title").val("");
		    			$("#title").val(place.placeTitle);	
		    			$("#content").val("");
		    			$("#content").val(place.placeContent);
		    			
		    			$("#title").attr("readonly", "readonly");
		    			$("#content").attr("readonly", "readonly");
		    			
		    							
		    		},
		    		error: function(result) {
		    			alert("오류 :" + result )
		    			console.log(result);
					}//function
		    	});//ajax
				
			}
			
			if(input==-1){
				$("#title").removeAttr("readonly");
    			$("#content").removeAttr("readonly");
    			
    			$("#title").val("");
    			$("#content").val("");
			}
				
		})
		
		$("#insertSchedule").click(function() {
    		//console.log("clicked");
			$("#insertForm").submit();
		});
	})
	
	
	</script>
  </body>
</html>

