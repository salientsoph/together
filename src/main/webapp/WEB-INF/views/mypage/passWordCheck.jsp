<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="../common/header.jsp" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	$(document).on("click", "[value='확인']", function(){
		var passWord = '${requestScope.user.userPwd}';
		console.log(passWord);
		console.log($("input[name=userPwd]").val());
		if(passWord==$("input[name=userPwd]").val()) {
			location.href="${path}/mypage/profileUpdateForm"
		}else{
			alert("비밀번호를 확인해주세요")
		}
	})
})
</script>
</head>
<body>
<section class="py-9">
   	<input type="hidden" value="${sessionScope.id}" name="user">
   	
  <div class="container">
    <div class="hover-profile mb-7 mb-lg-9">
      <div class="row">
 		
<div class="pwdCheckSection">
	<div class="container-fluid">
		<div class="titleSection row">
	
		</div>
		
		<div class="row" style="margin-top: 20px;">
			<div class="col-xl-2"></div>
			<div class="col-xl">
				<div class="row border rounded" style="padding: 20px;">
					<div class="col-xl">
						<div class="row">
							<div class="col-xl" style="text-align: center; margin: auto; font-size: 18px;">
								개인정보 수정을 위하여 비밀번호를 입력해주세요
							</div>
						</div>
						<div class="row">
							<div class="col-xl">
								<hr>
							</div>
						</div>
						<div class="row" style="height: 120px;">
							<div class="col-xl-3" style="margin-top: 28px; text-align: center;">
								비밀번호
							</div>
							<div class="col-xl" style="margin-top: 20px; text-align: center;">
								<input type="password" name = "userPwd" class="form-control">
							</div>
						</div>
						<div class="row">
							<div class="col-xl" style="text-align: right;">
								<hr>
							</div>
						</div>
						<div class="row">
							<div class="col-xl" style="text-align: right;">
								<input type="button" name="passWordCheck" value="확인" class="btn btn-success">
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-2"></div>
		</div>
	</div><!-- container-fluid -->
</div><!-- pwdCheckSection -->
</div>
</div>
</div>

</section>

	<jsp:include page="../common/footer.jsp"/>
</body>
</html>