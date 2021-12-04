<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var = "path" value = "${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href='${path}/fullcalender/lib/main.css' rel='stylesheet' />
<script src='${path}/fullcalender/lib/main.js'></script>
   

</head>
<body>

<div id='calendar'></div>

<script type="text/javascript">

document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var calendar = new FullCalendar.Calendar(calendarEl, {
      initialView: 'timeGridDay'
    });
    calendar.render();
  });

</script>

</body>

</html>