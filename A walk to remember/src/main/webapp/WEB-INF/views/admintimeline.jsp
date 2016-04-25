<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
 <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
<link href='https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,300,700,400italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" type="text/css" href="resources/css/main.css">
	<link rel="stylesheet" href="resources/css/reset.css"> <!-- CSS reset -->
	
	<script src="resources/js/modernizr.js"></script> <!-- Modernizr -->
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
        
                <li><a><i class="fa fa-bar-chart-o"></i> Manage events <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li><a href="fetchGoal.htm">Map events to goal</a>
                    </li>
                   
                  </ul>
                </li>
                 <li><a><i class="fa fa-bar-chart-o"></i> Participants <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li><a href="viewParticipants.htm">View participants</a>
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
	   
	     	<c:when test="${flag=='matchedListObtained'} ">
	   		 <div id="manageParticipants">
               
           <section id="pricing-table">
            <div class="container">
                <div class="row">
                    <div class="pricing">
                    	
                    	<c:forEach var="goal" varStatus="length"  items="${goalList}">
                    	
                    		<div class="col-md-4 col-sm-12 col-xs-12">
                            <div class="pricing-table">
                                <div class="pricing-header">
                                    <p class="pricing-title" id="goalDescription">${goal.goalDescription}</p>
                                    
                                    <a href="#" class="btn btn-custom">${goal.user.firstName} ${goal.user.lastName}</a>
                                </div>

                                <div class="pricing-list">
                                    <ul>
                                        <li><i class="fa fa-calendar" aria-hidden="true"></i>Goal Date: ${goal.goalDate}</li>
                                        <li><i class="fa fa-clock-o" aria-hidden="true"></i>Goal logged: ${goal.loggedTime}</li>
                                       
                                    </ul>
                                    <form:form action="viewMatchingEvents.htm" commandName="goal" method="post" class="form-horizontal" role="form">
                                     	<input type="hidden" name="goalDescription" value="${goal.goalDescription}" />
                                     	<input type="submit" id="viewMatchingEvents" type="button" class="btn" value="View matching events" />
                                	</form:form>
                                </div>
                               
                               <ul>
                  <c:forEach var="i" items="${matchingEventList}">
                                	
                      <li> ${i.eventDescription} </li>
                                	
                  </c:forEach>
           </ul>
           
                            </div>
                        </div>
                        
                    	</c:forEach>
                    </div>
                </div>
            </div>
        </section>
               

               </div>
	   	</c:when>

	   	<c:when test="${flag=='goalsFetched' && flag2 ne 'matchedListObtained'}">
	   	
	   	
	   	<section id="portfolio" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3 class="section-heading">Goals set by user</h3>
                    <h2 class="section-subheading text-muted">Analyse user's goals and set and suggest them appropriate events </h2>
                </div>
            </div>
           
           
           
       <div class="row events">
		<c:forEach var="g" items="${goalList}">

          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="x_panel tile fixed_height_320">
              <div class="x_title">
                <h2>${g.goalDescription}</h2>
                <ul class="nav navbar-right panel_toolbox">
                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                  </li>
                  
                  <li><a class="close-link"><i class="fa fa-close"></i></a>
                  </li>
                </ul>
                <div class="clearfix"></div>
              </div>
              <div class="x_content">
              
              <p class="text-muted">Goal target date: ${g.goalDate} </p>
              <p class="text-muted">Goal logged date and time: ${g.loggedTime} </p> 
              <p class="text-muted">Goal posted by: ${g.user.firstName} </p>
              
           
              </div>
            </div>
          </div>

          </c:forEach>
        </div>
	 
           </div>
           </section>
	   		
	   	</c:when>
	   	
	   	
	   	
	   	<c:when test="${flag=='goalsListFetched'}">
	   		               
               <div id="manageParticipants">
               
           <section id="pricing-table">
            <div class="container">
                <div class="row">
                    <div class="pricing">
                    	
                    	<c:forEach var="goal" varStatus="length"  items="${goalList}">
                    	
                    		<div class="col-md-4 col-sm-12 col-xs-12">
                            <div class="pricing-table">
                                <div class="pricing-header">
                                    <p class="pricing-title" id="goalDescription">${goal.goalDescription}</p>
                                    
                                    <a href="#" class="btn btn-custom">${goal.user.firstName} ${goal.user.lastName}</a>
                                </div>

                                <div class="pricing-list">
                                    <ul>
                                        <li><i class="fa fa-calendar" aria-hidden="true"></i>Goal Date: ${goal.goalDate}</li>
                                        <li><i class="fa fa-clock-o" aria-hidden="true"></i>Goal logged: ${goal.loggedTime}</li>
                                       
                                    </ul>
                                    <form:form action="viewMatchingEvents.htm" commandName="goal" method="post" class="form-horizontal" role="form">
                                     	<input type="hidden" name="goalDescription" value="${goal.goalDescription}" />
                                     	<input type="submit" id="viewMatchingEvents" type="button" class="btn" value="View matching events" />
                                	</form:form>
                                </div>
                               
                               
                            </div>
                        </div>
                        
                    	</c:forEach>
                    </div>
                </div>
            </div>
        </section>
               

               </div>
	   	</c:when>
	
	   	
	   	<c:otherwise>
	   	
	   	<section id="portfolio" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3 class="section-heading">Events to be held</h3>
                    <h2 class="section-subheading text-muted">Suggest our user an event that would help them achieve their goals</h2>
                </div>
            </div>
           
            
       <div class="row events">
		<c:forEach var="e" items="${eventList}">

          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="x_panel tile fixed_height_320">
              <div class="x_title">
                <h2>${e.eventTitle}</h2>
                <ul class="nav navbar-right panel_toolbox">
                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                  </li>
                  
                  <li><a class="close-link"><i class="fa fa-close"></i></a>
                  </li>
                </ul>
                <div class="clearfix"></div>
              </div>
              <div class="x_content">
              
              
              <p class="text-muted">Event description: ${e.eventDescription} </p> 
              <p class="text-muted">Event date: ${e.eventDate} </p>
              <p class="text-muted">Event timings: ${e.eventTiming} </p> 
              
           
              </div>
            </div>
          </div>

          </c:forEach>
        </div>
	 
           </div>
           </section>
	   	
	   	
	   	</c:otherwise>
	   </c:choose>
               

        </div>
        
<!--         <div> -->
<%--         	<c:forEach var="i" items="${goalList}"> --%>
<%--         		<h2>the goal description is : ${i.eventTitle}</h2> --%>
<%--         	</c:forEach> --%>
<!--         </div> -->
    
</div>


</div>

 
 <!-- Modal window -->
  <div class="modal fade" id="viewMatchingEvents" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <p>Some text in the modal.</p>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  
  
     
 
	<!--  Scripts -->
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
   <script src="resources/js/bootstrap.min.js"></script>
  <!-- daterangepicker -->
<!--   <script type="text/javascript" src="resources/js/moment/moment.min.js"></script> -->
  <script type="text/javascript" src="resources/js/datepicker/daterangepicker.js"></script>
     <script src="resources/js/customJquery.js"></script>
  <script src="resources/js/custom.js"></script>
<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

<!--   <!-- datepicker --> -->
<!--  <script type="text/javascript">  -->
<!-- //     $(document).ready(function() { -->

<!-- //       var cb = function(start, end, label) { -->
<!-- //         console.log(start.toISOString(), end.toISOString(), label); -->
<!-- //         $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY')); -->
<!-- //         //alert("Callback has fired: [" + start.format('MMMM D, YYYY') + " to " + end.format('MMMM D, YYYY') + ", label = " + label + "]"); -->
<!-- //       } -->

<!-- //       var optionSet1 = { -->
<!-- //         startDate: moment().subtract(29, 'days'), -->
<!-- //         endDate: moment(), -->
<!-- //         minDate: '01/01/2012', -->
<!-- //         maxDate: '12/31/2015', -->
<!-- //         dateLimit: { -->
<!-- //           days: 60 -->
<!-- //         }, -->
<!-- //         showDropdowns: true, -->
<!-- //         showWeekNumbers: true, -->
<!-- //         timePicker: false, -->
<!-- //         timePickerIncrement: 1, -->
<!-- //         timePicker12Hour: true, -->
<!-- //         ranges: { -->
<!-- //           'Today': [moment(), moment()], -->
<!-- //           'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')], -->
<!-- //           'Last 7 Days': [moment().subtract(6, 'days'), moment()], -->
<!-- //           'Last 30 Days': [moment().subtract(29, 'days'), moment()], -->
<!-- //           'This Month': [moment().startOf('month'), moment().endOf('month')], -->
<!-- //           'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')] -->
<!-- //         }, -->
<!-- //         opens: 'left', -->
<!-- //         buttonClasses: ['btn btn-default'], -->
<!-- //         applyClass: 'btn-small btn-primary', -->
<!-- //         cancelClass: 'btn-small', -->
<!-- //         format: 'MM/DD/YYYY', -->
<!-- //         separator: ' to ', -->
<!-- //         locale: { -->
<!-- //           applyLabel: 'Submit', -->
<!-- //           cancelLabel: 'Clear', -->
<!-- //           fromLabel: 'From', -->
<!-- //           toLabel: 'To', -->
<!-- //           customRangeLabel: 'Custom', -->
<!-- //           daysOfWeek: ['Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'], -->
<!-- //           monthNames: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'], -->
<!-- //           firstDay: 1 -->
<!-- //         } -->
<!-- //       }; -->
<!-- //       $('#reportrange span').html(moment().subtract(29, 'days').format('MMMM D, YYYY') + ' - ' + moment().format('MMMM D, YYYY')); -->
<!-- //       $('#reportrange').daterangepicker(optionSet1, cb); -->
<!-- //       $('#reportrange').on('show.daterangepicker', function() { -->
<!-- //         console.log("show event fired"); -->
<!-- //       }); -->
<!-- //       $('#reportrange').on('hide.daterangepicker', function() { -->
<!-- //         console.log("hide event fired"); -->
<!-- //       }); -->
<!-- //       $('#reportrange').on('apply.daterangepicker', function(ev, picker) { -->
<!-- //         console.log("apply event fired, start/end dates are " + picker.startDate.format('MMMM D, YYYY') + " to " + picker.endDate.format('MMMM D, YYYY')); -->
<!-- //       }); -->
<!-- //       $('#reportrange').on('cancel.daterangepicker', function(ev, picker) { -->
<!-- //         console.log("cancel event fired"); -->
<!-- //       }); -->
<!-- //       $('#options1').click(function() { -->
<!-- //         $('#reportrange').data('daterangepicker').setOptions(optionSet1, cb); -->
<!-- //       }); -->
<!-- //       $('#options2').click(function() { -->
<!-- //         $('#reportrange').data('daterangepicker').setOptions(optionSet2, cb); -->
<!-- //       }); -->
<!-- //       $('#destroy').click(function() { -->
<!-- //         $('#reportrange').data('daterangepicker').remove(); -->
<!-- //       }); -->
<!-- //     }); -->
<!--    </script>  -->
  <script>
    NProgress.done();
  </script>
  
  <script src="resources/js/jquery-2.1.4.js"></script>
<script src="resources/js/jquery.mobile.custom.min.js"></script>
<script src="resources/js/main.js"></script> 
  
 <style>
 
#viewMatchingEvents
{
	background-color: #34495E;
	color:white;
	margin-left: 22%;
	margin-top: 5%;
}
 </style>
</body>

</html>

    
  

