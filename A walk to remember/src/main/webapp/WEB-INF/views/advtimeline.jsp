<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Meta, title, CSS, favicons, etc. -->
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>A walk to remember </title>

  <!-- Bootstrap core CSS -->
 <link href='http://fonts.googleapis.com/css?family=Bitter' rel='stylesheet' type='text/css'>
  <link href="resources/css/bootstrap.min.css" rel="stylesheet">
  <link href="resources/css/formcss.css" rel="stylesheet">
  <link href='http://fonts.googleapis.com/css?family=Droid+Serif|Open+Sans:400,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="resources/css/reset.css"> <!-- CSS reset -->
	<link rel="stylesheet" href="resources/css/style.css"> <!-- Resource style -->
	<script src="resources/js/modernizr.js"></script> <!-- Modernizr -->
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="resources/js/main.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <link href="resources/fonts/css/font-awesome.min.css" rel="stylesheet">
  <link href="resources/css/animate.min.css" rel="stylesheet">
	<link rel="stylesheet" href="resources/css/normalize.css">
    <link rel='stylesheet prefetch' href='http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css'>
    <link rel="stylesheet" href="resources/css/style.css">

  <!-- Custom styling plus plugins -->
  <link href="resources/css/custom.css" rel="stylesheet">
  <script src="resources/js/jquery.min.js"></script>
  <script src="resources/js/nprogress.js"></script>


</head>
<body class="nav-md">

  <div class="container body">


    <div class="main_container">

      <div class="col-md-3 left_col">
        <div class="left_col scroll-view">

          <div class="navbar nav_title" style="border: 0;">
            <a href="#" class="site_title"><i class="fa fa-paw"></i> <span>Your timeline</span></a>
          </div>
          <div class="clearfix"></div>

          <!-- menu prile quick info -->
          <div class="profile">
            <div class="profile_pic">
              <img src="resources/img/img.jpg" alt="..." class="img-circle profile_img">
            </div>
            <div class="profile_info">
              <span>Welcome </span>
              <h2>${sessionScope.personObj.firstName}</h2>
            </div>
            
          </div>
          <!-- /menu prile quick info -->

          <br />

          <!-- sidebar menu -->
          <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">

            <div class="menu_section">
              <h3>General</h3>
              <ul class="nav side-menu">
                <li><a><i class="fa fa-home"></i> Home <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li><a href="#">View profile</a>
                    </li>
                   
                  </ul>
                </li>
        
                <li><a><i class="fa fa-bar-chart-o"></i> Events <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li><a href="#">Add events</a>
                    </li>
                    <li><a href="viewEvents.htm">View events</a>
                    </li>
                   
                  </ul>
                </li>
                 <li><a><i class="fa fa-bar-chart-o"></i> Participants <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li>
                     
                    <a href="fetchAdvertiser.htm?advFirstName=${sessionScope.personObj.firstName}">View participants</a>
                   
                   
                   
                 
                    </li>
                    
                  </ul>
                </li>
                
                </li>
                 <li><a><i class="fa fa-bar-chart-o"></i> LogOut <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li> <a href="logout.htm"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                    </li>
                    
                  </ul>
                </li>
                
               
              </ul>
            </div>
           

          </div>
          
        </div>
      </div>

      <!-- top navigation -->
      <div class="top_nav">

        <div class="nav_menu">
          <nav class="" role="navigation">
            <div class="nav toggle">
              <a id="menu_toggle"><i class="fa fa-bars"></i></a>
            </div>

            <ul class="nav navbar-nav navbar-right">
              <li class="">
              
                <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                  <img src="resources/img/img.jpg" alt="">${sessionScope.personObj.firstName}
                  <span class=" fa fa-angle-down"></span>
                </a>
                
                <ul class="dropdown-menu dropdown-usermenu pull-right">
                  <li><a href="javascript:;"> My timeline</a>
                  </li>
                    <li>
                    <a href="javascript:;">My profile</a>
                  </li>
                  <li><a href="#"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
                  </li>
                </ul>
              </li>
            
            </ul>
             
          </nav>
        </div>
	</div>
 <div id="contentWindow" class="right_col" role="main">
 
 <c:choose>
 	<c:when test="${flag=='EventAdded'}">
 	<br />
 		<h2 id="successfullyPostedAd">Successfully posted the advertisement</h2>
 		 <section id="cd-timeline" class="cd-container">
		
		<div class="cd-timeline-block">
			<div class="cd-timeline-img cd-movie">
				<img src="resources/img/cd-icon-picture.svg" alt="Picture">
			</div> 

			<div class="cd-timeline-content">
				<h2>${addedEvent.eventTitle}</h2>
				<p>${addedEvent.eventDescription}</p>
				<p>${addedEvent.eventTiming}</p>
				<h2>Contact at: </h2>
				<p>${addedEvent.emailAddress}</p>
				<p>${addedEvent.phoneNumber}</p>
				<a href="#0" class="cd-read-more">Read more</a>
				<span class="cd-date">${addedEvent.eventDate}</span>
			</div> 
		</div> 


	</section>
    
 	</c:when>
 	
 	<c:when test="${flag eq 'participantsViewed'}">
 		<table class="table table-striped table-bordered">
    		<thead>
      			<tr>
        			<th>User Name</th>
        			<th>Event Id</th>
        			<th>Event Title</th>
        			<th>Event Date</th>
        			<th>User's Status</th>
      			</tr>
    	 </thead>
    	<tbody>
    		<c:forEach var="event" items="${advertiser.eventSet}">
    			 
    			 <c:forEach var="user" items="${event.userSet}">
    			 	<tr class="eventRow">
       				 	<td>${user.firstName} ${user.lastName}</td>
       				 	<td>${event.eventId}</td>
       				 	<td>${event.eventTitle}</td>
  				     	<td>${event.eventDate}</td>
  				     	<td>${event.userStatus}</td>
     			 	</tr>
      
    			 </c:forEach>
    			 
    		</c:forEach>
    		
    		
     			
    	</tbody>
  	</table>
 	</c:when>

 	<c:when test="${flag=='fetchEvents'}">
 		<br />
 		
 		<section id="cd-timeline" class="cd-container">
 		<c:forEach var="i" items="${eventList}">
 			<div class="cd-timeline-block">
			<div class="cd-timeline-img cd-movie">
				<img src="resources/img/cd-icon-location.svg" alt="location">
			</div> 

			<div class="cd-timeline-content">
				<h2>${i.eventTitle}</h2>
				<p>${i.eventDescription}</p>
				<p>${i.eventTiming}</p>
				<h2>Contact at: </h2>
				<p>${i.emailAddress}</p>
				<p>${i.phoneNumber}</p>
				<a href="#0" class="cd-read-more">Read more</a>
				<span class="cd-date">${i.eventDate}</span>
			</div> 
		</div> 
 		</c:forEach>
 		

	</section>
 	
 	</c:when>
 	
 	<c:otherwise>
 	<div class="form-style-10">
<h1>Add your advertisement<span>You can post your advertisement here!</span></h1>
<form:form action="addAdvertisent.htm" commandName="event" method="post" class="form-horizontal" role="form">
    <div class="section"><span>1</span> Event Details</div>
    <div class="inner-wrap">
        <label>Event title<input type="text" name="eventTitle" /></label>
        <label>Event description <textarea name="eventDescription"></textarea></label>
        <label>Event date <input type="date" name="eventDate" /></label>
        <label>Event timings<input type="text" name="eventTiming" /></label>
    </div>

    <div class="section"><span>2</span>Email &amp; Phone</div>
    <div class="inner-wrap">
        <label>Email Address <input type="email" name="emailAddress" /></label>
        <label>Phone Number <input type="text" name="phoneNumber" /></label>
    </div>
    
    
    <div class="button-section">
    <input type="hidden" name="advUserName" value="${sessionScope.personObj.userName}" />
     <input type="submit" name="Post advertisement" />
    </div>
</form:form>
</div>
       
 	
 	</c:otherwise>
 
 </c:choose>
  

</div>


</div>

</div>
		
 
 	  
     
 
	<!--  Scripts -->

   <script src="resources/js/bootstrap.min.js"></script>
  <!-- daterangepicker -->
<!--   <script type="text/javascript" src="resources/js/moment/moment.min.js"></script> -->
  <script type="text/javascript" src="resources/js/datepicker/daterangepicker.js"></script>
     <script src="resources/js/customJquery.js"></script>
  <script src="resources/js/custom.js"></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

  <!-- datepicker -->
 <script type="text/javascript"> 
    $(document).ready(function() {

      var cb = function(start, end, label) {
        console.log(start.toISOString(), end.toISOString(), label);
        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
        //alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]");
      }

      var optionSet1 = {
        startDate: moment().subtract(29, 'days'),
        endDate: moment(),
        minDate: '01/01/2012',
        maxDate: '12/31/2015',
        dateLimit: {
          days: 60
        },
        showDropdowns: true,
        showWeekNumbers: true,
        timePicker: false,
        timePickerIncrement: 1,
        timePicker12Hour: true,
        ranges: {
          'Today': [moment(), moment()],
          'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days': [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month': [moment().startOf('month'), moment().endOf('month')],
          'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        },
        opens: 'left',
        buttonClasses: ['btn btn-default'],
        applyClass: 'btn-small btn-primary',
        cancelClass: 'btn-small',
        format: 'MM/DD/YYYY',
        separator: ' to ',
        locale: {
          applyLabel: 'Submit',
          cancelLabel: 'Clear',
          fromLabel: 'From',
          toLabel: 'To',
          customRangeLabel: 'Custom',
          daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'],
          monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
          firstDay: 1
        }
      };
      $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY'));
      $('#reportrange').daterangepicker(optionSet1, cb);
      $('#reportrange').on('show.daterangepicker', function() {
        console.log("show event fired");
      });
      $('#reportrange').on('hide.daterangepicker', function() {
        console.log("hide event fired");
      });
      $('#reportrange').on('apply.daterangepicker', function(ev, picker) {
        console.log("apply event fired, start/end dates are " + picker.startDate.format('MMMM D, YYYY') + " to " + picker.endDate.format('MMMM D, YYYY'));
      });
      $('#reportrange').on('cancel.daterangepicker', function(ev, picker) {
        console.log("cancel event fired");
      });
      $('#options1').click(function() {
        $('#reportrange').data('daterangepicker').setOptions(optionSet1, cb);
      });
      $('#options2').click(function() {
        $('#reportrange').data('daterangepicker').setOptions(optionSet2, cb);
      });
      $('#destroy').click(function() {
        $('#reportrange').data('daterangepicker').remove();
      });
    });
   </script> 
  <script>
    NProgress.done();
  </script>
  
  
 
</body>

</html>

    
  

