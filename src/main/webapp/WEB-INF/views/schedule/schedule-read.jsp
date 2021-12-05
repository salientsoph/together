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
<script src="${path}/js/jquery-3.6.0.min.js"></script>
   

</head>
<body>

<div id='wrap'>

    <div id='external-events'>
      <h4>Draggable Events</h4>

      <div id='external-events-list'>
        <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
          <div class='fc-event-main'>My Event 1</div>
        </div>
        <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
          <div class='fc-event-main'>My Event 2</div>
        </div>
        <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
          <div class='fc-event-main'>My Event 3</div>
        </div>
        <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
          <div class='fc-event-main'>My Event 4</div>
        </div>
        <div class='fc-event fc-h-event fc-daygrid-event fc-daygrid-block-event'>
          <div class='fc-event-main'>My Event 5</div>
        </div>
      </div>

      <p>
        <input type='checkbox' id='drop-remove' />
        <label for='drop-remove'>remove after drop</label>
      </p>
    </div>

    <div id='calendar-wrap'>
      <div id='calendar'></div>
    </div>

  </div>

<script type="text/javascript">

/* initialize the external events
-----------------------------------------------------------------*/

var containerEl = document.getElementById('external-events-list');
new FullCalendar.Draggable(containerEl, {
  itemSelector: '.fc-event',
  eventData: function(eventEl) {
    return {
      title: eventEl.innerText.trim()
    }
  }
});

//// the individual way to do it
// var containerEl = document.getElementById('external-events-list');
// var eventEls = Array.prototype.slice.call(
//   containerEl.querySelectorAll('.fc-event')
// );
// eventEls.forEach(function(eventEl) {
//   new FullCalendar.Draggable(eventEl, {
//     eventData: {
//       title: eventEl.innerText.trim(),
//     }
//   });
// });

/* initialize the calendar
-----------------------------------------------------------------*/

document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');

    var calendar = new FullCalendar.Calendar(calendarEl, {

      headerToolbar:  {
        left: 'prev,next today',
        center: 'title',
        right: ''
      } ,

      // customize the button names,
      // otherwise they'd all just say "list"
      views: {
        listDay: { buttonText: 'list day' },
        listWeek: { buttonText: 'list week' }
      },

      allDaySlot: false,	//all day 없애기
      initialView: 'timeGridDay',
      initialDate: '${tripDate}',
      navLinks: true, // can click day/week names to navigate views
      editable: true,
      dayMaxEvents: true, // allow "more" link when too many events
      events: 
    	  function(info, successCallback, failureCallback){ 
    	  // ajax 처리로 데이터를 로딩 시킨다. 
	    	  $.ajax({
	    		  type:"get", 
	    		  url:"${path}/schedule/getDb/${matchNo}", 
	    		  dataType:"json" 
	    	  });
      	  }

    	
    	  
    	  /* [
        {
          title: 'All Day Event',
          start: '2020-09-01'
        },
        {
          title: 'Long Event',
          start: '2020-09-07',
          end: '2020-09-10'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2020-09-09T16:00:00'
        },
        {
          groupId: 999,
          title: 'Repeating Event',
          start: '2020-09-16T16:00:00'
        },
       
        {
          title: 'Meeting',
          start: '2020-09-12T10:30:00',
          end: '2020-09-12T12:30:00'
        },
        {
          title: 'Lunch',
          start: '2020-09-12T12:00:00'
        },
        {
          title: 'Meeting',
          start: '2020-09-12T14:30:00'
        },
        {
          title: 'Happy Hour',
          start: '2020-09-12T17:30:00'
        },
        {
          title: 'Dinner',
          start: '2020-09-12T20:00:00'
        },
        {
          title: 'Birthday Party',
          start: '2020-09-13T07:00:00'
        },
        {
          title: 'Click for Google',
          url: 'http://google.com/',
          start: '2020-09-28'
        }
      ] */
    });

    
    
   
    
    calendar.render();
    
  });
    
    /*
    function getCalendarDataInDB(){
        var arr;
        
        $.ajax({
            contentType:'application/json',
            dataType:'json',
            url:'${path}/schedule/getDb/${matchNo}',
            type:'post',
    		//data: "matchNo=${matchNo}",
            async: false,
            success:function(resp){
                arr = resp;
            },
            error:function(resp){
                console.log(resp);
            }
        });
        return arr;
    }

    var list;// = getCalendarDataInDB();
    $(document).ready(function() {
    	list = getCalendarDataInDB();
	});
    
    */

</script>

</body>

</html>