<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var = "path" value = "${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${path}/timetable/styles/timetablejs.css">

<script src="${path}/timetable/scripts/timetable.js"></script>
   

</head>
<body>

<div class="timetable"></div>

<script type="text/javascript">

	var timetable = new Timetable();
	
	timetable.setScope(9,2)
	
	timetable.addLocations(['Rotterdam', 'Madrid', 'Los Angeles', 'London', 'New York', 'Jakarta', 'Tokyo']);
	
	timetable.addEvent('Sightseeing', 'Rotterdam', new Date(2015,7,17,10,45), new Date(2015,7,17,12,30), '#');
	timetable.addEvent('Zumba', 'Madrid', new Date(2015,7,17,12), new Date(2015,7,17,13), '#');
	timetable.addEvent('Zumbu', 'Madrid', new Date(2015,7,17,13,30), new Date(2015,7,17,15), '#');
	timetable.addEvent('Lasergaming', 'London', new Date(2015,7,17,17,45), new Date(2015,7,17,19,30), '#');
	timetable.addEvent('All-you-can-eat grill', 'New York', new Date(2015,7,17,21), new Date(2015,7,18,1,30), '#');
	timetable.addEvent('Hackathon', 'Tokyo', new Date(2015,7,17,11,30), new Date(2015,7,17,20)); // url is optional and is not used for this event
	timetable.addEvent('Tokyo Hackathon Livestream', 'Los Angeles', new Date(2015,7,17,12,30), new Date(2015,7,17,16,15)); // url is optional and is not used for this event
	timetable.addEvent('Lunch', 'Jakarta', new Date(2015,7,17,9,30), new Date(2015,7,17,11,45), '#');
	
	var renderer = new Timetable.Renderer(timetable);
	renderer.draw('.timetable');

</script>

</body>

</html>