<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:include page="../common/header.jsp" />
<!DOCTYPE html>
<html lang="en">
  
  <head>




<script src="${path}/js/jquery-3.6.0.min.js"></script>

<style type="text/css">

#chatDiv{
	height: 600px;
	overflow: scroll;
}

</style>

  </head>     

<body id="body" class="up-scroll">

  <div class="main-wrapper single-package-fullwidth">


<!-- ====================================
———	PAGE TITLE
===================================== -->
<section class="page-title">
  <div class="page-title-img bg-img bg-overlay-darken" style="background-image: url(${path}/assets/img/pages/page-title-bg13.jpg);">
    <div class="container">
      <div class="row align-items-center justify-content-center" style="height: 200px;">
        <div class="col-lg-6">
          <div class="page-title-content">
            <div class="">
              <h2 class="text-uppercase text-white font-weight-bold">채팅방</h2>
              
		<input type="hidden" id="sessionId" value="">
		<input type="hidden" id="roomNumber" value="${roomNumber}">
		<input type="hidden" id="userId" value="${sessionScope.id}">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


<!-- ====================================
———	PACKAGES SECTION
===================================== -->
<section class="py-10">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
       

        <div class="mt-8">
          <h2 class="text-uppercase mb-5">${roomName}</h2>
         
        </div>
        <div id="chatDiv" class="mb-8">
		<!------------------------- 채팅창 시작 ---------------------------->
			
          
          <c:choose>
			<c:when test="${empty requestScope.chatList}">
			</c:when>
			 <c:otherwise>
			 	<c:forEach items="${requestScope.chatList}" var="chatMsg">
			 	
			 	
			 	<div class=" d-flex flex-row  border rounded px-3 py-3 bg-smoke mb-2 ">
           
		           <div class=" w-25 d-flex justify-content-center">
		              <div class="badge badge-rounded-circle border w-75">
		                <span class="d-block text-primary flex-fill">${chatMsg.customer.userNickname}</span>
		              </div>
		           </div>
		           
		            <div class=" px-3 w-75 d-flex align-items-center">
		              ${chatMsg.chatMsgContent}
		            </div>
		
		            
		          </div>
			 	
			 	</c:forEach>
			 </c:otherwise>
		 </c:choose>

         
		<!------------------------- 채팅창 끝 ---------------------------->
        </div>

       

        
          <h3 class="text-uppercase mb-6">${nickname}</h3>
        
          <p class="rating-view d-flex align-items-center"><!-- 
            <span class="content-view">Want to Rate it?</span>
            <span class="star add-rating-default ms-2"></span> -->
          </p>
        	<input type="hidden" name="userName" id="userName" value="${nickname}">
          <div class="form-group mb-6">
            <input class="form-control border-0 bg-smoke" placeholder="채팅을 시작해주세요" id="chatting"/>
          </div>
        
      </div>
    </div>
  </div>
</section>



  </div><!-- element wrapper ends -->
  
 <script type="text/javascript">
var ws;
var userName = "${nickname}";
wsOpen();
scrollDown();

function wsOpen(){
	//웹소켓 전송시 현재 방의 번호를 넘겨서 보낸다.
	
	//console.log("wsOpen");
	ws = new WebSocket("ws://" + location.host + "/chating/${roomNumber}");
	wsEvt();
}
	
function wsEvt() {
	ws.onopen = function(data){
		//소켓이 열리면 동작
		/*
		var msg = data.data;
		if(msg != null && msg.trim() != ''){
			var d = JSON.parse(msg);
			if(d.type == "chatList"){
				
			}
		*/
		
		//console.log(userName);
		
	}
	
	ws.onmessage = function(data) {
		//메시지를 받으면 동작
		var msg = data.data;
		if(msg != null && msg.trim() != ''){
			var d = JSON.parse(msg);
			if(d.type == "getId"){
				var si = d.sessionId != null ? d.sessionId : "";
				if(si != ''){
					$("#sessionId").val(si); 
				}
			}else if(d.type == "message"){
				if(d.sessionId == $("#sessionId").val()){
					$("#chatDiv").append("<div class=' d-flex flex-row  border rounded px-3 py-3 bg-light mb-2 '><div class=' w-25 d-flex justify-content-center'><div class='badge badge-rounded-circle border w-75'><span class='d-block text-primary flex-fill'>나</span></div></div><div class=' px-3 w-75 d-flex align-items-center'>" + d.msg + "</div></div>");	
				}else{
					$("#chatDiv").append("<div class=' d-flex flex-row  border rounded px-3 py-3 bg-smoke mb-2 '><div class=' w-25 d-flex justify-content-center'><div class='badge badge-rounded-circle border w-75'><span class='d-block text-primary flex-fill'>" + d.userName + "</span></div></div><div class=' px-3 w-75 d-flex align-items-center'>" + d.msg + "</div></div>");
				}
				scrollDown();	
			}else{
				console.warn("unknown type!")
			}
		}
		
		//console.log("msg is null");
	}

	document.addEventListener("keypress", function(e){
		if(e.keyCode == 13){ //enter press
			send();
		}
	});
}

function chatName(){
	var userName = $("#userName").val();
	if(userName == null || userName.trim() == ""){
		alert("사용자 이름을 입력해주세요.");
		$("#userName").focus();
	}else{
		wsOpen();
		$("#yourName").hide();
		$("#yourMsg").show();
	}
}



function send() {
	var option ={
		type: "message",
		roomNumber: $("#roomNumber").val(),
		sessionId : $("#sessionId").val(),
		userName : $("#userName").val(),
		userId : $("#userId").val(),
		msg : $("#chatting").val()
	}
	
	//console.log($("#roomNumber").val());
	//console.log($("#sessionId").val());
	//console.log($("#userName").val());
	//console.log($("#userId").val());
	
	ws.send(JSON.stringify(option))
	$('#chatting').val("");
}

function scrollDown() {
	//alert(document.getElementById("chatDiv").scrollHeight);
	document.getElementById("chatDiv").scrollTop = document.getElementById("chatDiv").scrollHeight;
	
	//alert(document.getElementById("chatDiv").scrollTop)
	
	//document.getElementById('chatDiv').scrollHeight;
}




	

</script>
  

   <jsp:include page="../common/footer.jsp" />

  </body>
</html>

