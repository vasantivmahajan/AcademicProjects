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
 
  <link href="resources/css/bootstrap.min.css" rel="stylesheet">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
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

<style>
	.successMessage
	{
	color:red;
	}
</style>

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
                    <li><a href="#">View timeline</a>
                      </li>
                  </ul>
                </li>
        
                <li><a><i class="fa fa-desktop"></i> Memories <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li><a href="#">View Memories</a>
                    </li>
                    <li>
			           <a href="#">Add memories</a>
                    </li> 
                  </ul>
                </li>
                  
                <li><a><i class="fa fa-table"></i> Goals <span class="fa fa-chevron-down"></span></a>
                  <ul class="nav child_menu" style="display: none">
                    <li id="setGoal"><a href="#">Set a goal</a> 
                    </li>
                    <li id="viewGoals"><a href="#">View all goals</a>
                    </li>
                  </ul>
                </li>
                  
                <li><a><i class="fa fa-bar-chart-o"></i> Events <span class="fa fa-chevron-down"></span></a>
                  
                  <ul class="nav child_menu" style="display: none">
                  
                    <li><a href="fetchAllEvents.htm">View all events</a>
                    </li>
                    <li><a href="#">Manage events</a>
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
                
                <a href="logout.htm"><i class="fa fa-sign-out pull-right"></i> Log Out</a>
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
      <!-- /top navigation -->


      <!-- page content -->
      <div id="contentWindow" class="right_col" role="main">

        <!-- top tiles -->
        <div class="row tile_count">
        
        <c:forEach var="event" items="${sessionScope.userObj.eventList}">
         
          <div class="animated flipInY col-md-4 col-sm-4 col-xs-4 tile_stats_count">
            <div class="left"></div>
            <div class="right">
              <span class="count_top"><i class="fa fa-user"></i> ${event.eventDate}</span>
              <div class="count">${event.eventTitle}</div>
              <span class="count_bottom"><i class="green">${event.eventTiming}</i> </span>
            </div>
          </div>
        </c:forEach>
       
         
        </div>
        <!-- /top tiles -->
	<!-- Start of timeline -->
	<div class="container memoriesTimeline">
  <div class="page-header">
    <h2 id="timeline">Your memories timeline</h2>
  </div>
  
   <button type="button" class="btn btn-info btn-block" data-toggle="modal" data-target="#addMemory">Add a memory</button>
  
     <ul class="timeline memoryNumber">
     <c:choose>
     
     <c:when test="${flag eq 'eventListReceived'}">
   	<section id="portfolio" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h3 class="section-heading">Events to be held</h3>
                    <h2 class="section-subheading text-muted">Our application suggests you to attend these events to bring you one step closer to your goals</h2>
                </div>
            </div>
           
            
       <div class="row events">
		<c:forEach var="e" items="${eventlist}">

          <div class="col-md-4 col-sm-4 col-xs-12">
            <div class="x_panel tile fixed_height_320">
              <div class="x_title">
                <h2>${e.eventTitle}</h2>
                <ul class="nav navbar-right panel_toolbox">
                  <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                  </li>
                  

                </ul>
                <div class="clearfix"></div>
              </div>
              <div class="x_content">
              
              <p class="text-muted successMessage"></p> 
              <p class="text-muted eventId">Event id:${e.eventId}</p> 
              <p class="text-muted">Event description: ${e.eventDescription} </p> 
              <p class="text-muted">Event date: ${e.eventDate} </p>
              <p class="text-muted">Event timings: ${e.eventTiming} </p> 
              
              <a href="#" id="acceptEvent"><i class="fa fa-thumbs-o-up fa-2x" aria-hidden="true"></i></a> 
              <a href="#" id="deleteEvent"><i class="fa fa-thumbs-o-down fa-2x" aria-hidden="true"></i> </a>  <br /> 
              <input type="hidden" id="uObj" name="userObject" value="${sessionScope.userObj.personID}">
              <p class="text-muted">Rate this event: </p> 
              <i class="fa fa-star-o fa-lg" aria-hidden="true" ></i> <i class="fa fa-star-o fa-lg" aria-hidden="true"></i> 
              <i class="fa fa-star-o fa-lg" aria-hidden="true"></i> <i class="fa fa-star-o fa-lg" aria-hidden="true"></i>
              <i class="fa fa-star-o fa-lg" aria-hidden="true"></i>
                       
              </div>
            </div>
          </div>

          </c:forEach>
        </div>
	 
           </div>
           </section>
   		</c:when> 
  
  		<c:when test="${flag == 'CreatedNew'}">
  			<c:forEach varStatus="i" var="memory" items="${memories}"> 
   
   <c:choose>
   
   
    	<c:when test="${(i.count mod 2) == 0}">
    	
        	<li>
     			 <div class="timeline-badge"><i class="glyphicon glyphicon-camera"></i></div>
      			 <div class="timeline-panel">
      			
        		 <div class="timeline-heading">
          			  <ul class="nav navbar-right panel_toolbox">
                    <li><span><i class="fa fa-pencil fa-lg" aria-hidden="true"></i></span> &nbsp;
                    	<span><i class="fa fa-trash fa-lg" aria-hidden="true"></i></span>
                    </li>
                 
                 </ul>
          			
          			 <h4 class="timeline-title memoryName">${memory.memoryDate}</h4>
        		 </div>
        		<div class="timeline-body memoryDescription">
          			<p>${memory.memoryDescription}</p>
        		</div>
      			</div>
  		  </li>         
        	
   		</c:when>    
    
    	<c:otherwise>
    	
        	 <li class="timeline-inverted memoryNumber"> 
      			<div class="timeline-badge warning"><i class="glyphicon glyphicon-pencil"></i></div>
      			<div class="timeline-panel">
        		<div class="timeline-heading">
          			  <ul class="nav navbar-right panel_toolbox">
                    <li><span><i class="fa fa-pencil fa-lg" aria-hidden="true"></i></span> &nbsp;
                    	<span><i class="fa fa-trash fa-lg" aria-hidden="true"></i></span>
                    </li>
                 
                 </ul>
          			
          			<h4 class="timeline-title memoryName">${memory.memoryDate}</h4>
        		</div>
        		<div class="timeline-body memoryDescription">
          			<p>${memory.memoryDescription}</p>
        		</div>
      			</div>
    		</li>
       
    	</c:otherwise>
	</c:choose>
    
                
  </c:forEach>
  		</c:when>
 
  		<c:otherwise>
  			<c:forEach varStatus="i" var="memory" items="${personObj.memorySet}">
  				   <c:choose>
   
   
  
    	<c:when test="${(i.count mod 2) == 0}">
    	
        	<li>
     			 <div class="timeline-badge"><i class="glyphicon glyphicon-camera"></i></div>
      			 <div class="timeline-panel">
        		 <div class="timeline-heading">
        		 
        		  <ul class="nav navbar-right panel_toolbox">
                    <li><span><i class="fa fa-pencil fa-lg" aria-hidden="true"></i></span> &nbsp;
                    	<span><i class="fa fa-trash fa-lg" aria-hidden="true"></i></span>
                    </li>
                 
                 </ul>
          			 <h4 class="timeline-title memoryName">${memory.memoryDate}</h4>
        		 </div>
        		<div class="timeline-body memoryDescription">
          			<p>${memory.memoryDescription}</p>
        		</div>
      			</div>
  		  </li>         
        	
   		</c:when>  
   		
   		
    
    	<c:otherwise>
    	
        	 <li class="timeline-inverted memoryNumber"> 
      			<div class="timeline-badge warning"><i class="glyphicon glyphicon-pencil"></i></div>
      			<div class="timeline-panel">
        		<div class="timeline-heading">
          			  <ul class="nav navbar-right panel_toolbox">
                    <li><span><i class="fa fa-pencil fa-lg" aria-hidden="true"></i></span> &nbsp;
                    	<span><i class="fa fa-trash fa-lg" aria-hidden="true"></i></span>
                    </li>
                 
                 </ul>
          			
          			<h4 class="timeline-title memoryName">${memory.memoryDate}</h4>
        		</div>
        		<div class="timeline-body memoryDescription">
          			<p>${memory.memoryDescription}</p>
        		</div>
      			</div>
    		</li>
       
    	</c:otherwise>
	</c:choose>
    
  			</c:forEach>
  		</c:otherwise>
	</c:choose>

   </ul>
   
     
</div>
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
	
	
	<!-- End of timeline -->


	<!-- Start of goal form -->
		<div class="addGoalsForm">
			<button type="button" class="btn btn-info btn-block" data-toggle="modal" data-target="#addGoal">Set a goal</button>
		</div>
		
	<!-- End of goal form -->

<!--         <div class="row"> -->
<!--           <div class="col-md-12 col-sm-12 col-xs-12"> -->
<!--             <div class="dashboard_graph"> -->

<!--               <div class="row x_title"> -->
<!--                 <div class="col-md-6"> -->
<!--                   <h3>Articles you may be interested in</h3> -->
<!--                 </div> -->
<!--                 <div class="col-md-6"> -->
<!--                   <div id="reportrange" class="pull-right" style="background: #fff; cursor: pointer; padding: 5px 10px; border: 1px solid #ccc"> -->
<!--                     <i class="glyphicon glyphicon-calendar fa fa-calendar"></i> -->
<!--                     <span>December 30, 2014 - January 28, 2015</span> <b class="caret"></b> -->
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->

        
<!--               <div class="col-md-3 col-sm-3 col-xs-12 bg-white"> -->
<!--                   <h1>Article 1</h1> -->

<!--               </div> -->
                
<!--               <div class="col-md-3 col-sm-3 col-xs-12 bg-white"> -->
<!--                   <h1>Article 2</h1> -->

<!--               </div> -->

<!--               <div class="col-md-3 col-sm-3 col-xs-12 bg-white"> -->
<!--                   <h1>Article 3</h1> -->

<!--               </div> -->
                
<!--                 <div class="col-md-3 col-sm-3 col-xs-12 bg-white"> -->
<!--                   <h1>Article 4</h1> -->

<!--               </div> -->
<!--               <div class="clearfix"></div> -->
<!--             </div> -->
<!--           </div> -->

<!--         </div> -->
        <br />

<!--         <div class="row events"> -->


<!--           <div class="col-md-4 col-sm-4 col-xs-12"> -->
<!--             <div class="x_panel tile fixed_height_320"> -->
<!--               <div class="x_title"> -->
<!--                 <h2>Event 1</h2> -->
<!--                 <ul class="nav navbar-right panel_toolbox"> -->
<!--                   <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a> -->
<!--                   </li> -->
                  
<!--                   <li><a class="close-link"><i class="fa fa-close"></i></a> -->
<!--                   </li> -->
<!--                 </ul> -->
<!--                 <div class="clearfix"></div> -->
<!--               </div> -->
<!--               <div class="x_content"> -->
<!--                 <h4>App Usage across versions</h4> -->
<!--                 <div class="widget_summary"> -->
<!--                   <div class="w_left w_25"> -->
<!--                     <span>0.1.5.2</span> -->
<!--                   </div> -->
<!--                   <div class="w_center w_55"> -->
<!--                     <div class="progress"> -->
<!--                       <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 66%;"> -->
<!--                         <span class="sr-only">60% Complete</span> -->
<!--                       </div> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                   <div class="w_right w_20"> -->
<!--                     <span>123k</span> -->
<!--                   </div> -->
<!--                   <div class="clearfix"></div> -->
<!--                 </div> -->

<!--                 <div class="widget_summary"> -->
<!--                   <div class="w_left w_25"> -->
<!--                     <span>0.1.5.3</span> -->
<!--                   </div> -->
<!--                   <div class="w_center w_55"> -->
<!--                     <div class="progress"> -->
<!--                       <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 45%;"> -->
<!--                         <span class="sr-only">60% Complete</span> -->
<!--                       </div> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                   <div class="w_right w_20"> -->
<!--                     <span>53k</span> -->
<!--                   </div> -->
<!--                   <div class="clearfix"></div> -->
<!--                 </div> -->
<!--                 <div class="widget_summary"> -->
<!--                   <div class="w_left w_25"> -->
<!--                     <span>0.1.5.4</span> -->
<!--                   </div> -->
<!--                   <div class="w_center w_55"> -->
<!--                     <div class="progress"> -->
<!--                       <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 25%;"> -->
<!--                         <span class="sr-only">60% Complete</span> -->
<!--                       </div> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                   <div class="w_right w_20"> -->
<!--                     <span>23k</span> -->
<!--                   </div> -->
<!--                   <div class="clearfix"></div> -->
<!--                 </div> -->
<!--                 <div class="widget_summary"> -->
<!--                   <div class="w_left w_25"> -->
<!--                     <span>0.1.5.5</span> -->
<!--                   </div> -->
<!--                   <div class="w_center w_55"> -->
<!--                     <div class="progress"> -->
<!--                       <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 5%;"> -->
<!--                         <span class="sr-only">60% Complete</span> -->
<!--                       </div> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                   <div class="w_right w_20"> -->
<!--                     <span>3k</span> -->
<!--                   </div> -->
<!--                   <div class="clearfix"></div> -->
<!--                 </div> -->
<!--                 <div class="widget_summary"> -->
<!--                   <div class="w_left w_25"> -->
<!--                     <span>0.1.5.6</span> -->
<!--                   </div> -->
<!--                   <div class="w_center w_55"> -->
<!--                     <div class="progress"> -->
<!--                       <div class="progress-bar bg-green" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: 2%;"> -->
<!--                         <span class="sr-only">60% Complete</span> -->
<!--                       </div> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                   <div class="w_right w_20"> -->
<!--                     <span>1k</span> -->
<!--                   </div> -->
<!--                   <div class="clearfix"></div> -->
<!--                 </div> -->

<!--               </div> -->
<!--             </div> -->
<!--           </div> -->

<!--           <div class="col-md-4 col-sm-4 col-xs-12"> -->
<!--             <div class="x_panel tile fixed_height_320 overflow_hidden"> -->
<!--               <div class="x_title"> -->
<!--                 <h2>Event 2</h2> -->
<!--                 <ul class="nav navbar-right panel_toolbox"> -->
<!--                   <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a> -->
<!--                   </li> -->
                  
<!--                   <li><a class="close-link"><i class="fa fa-close"></i></a> -->
<!--                   </li> -->
<!--                 </ul> -->
<!--                 <div class="clearfix"></div> -->
<!--               </div> -->
<!--               <div class="x_content"> -->
<!--                 <table class="" style="width:100%"> -->
<!--                   <tr> -->
<!--                     <th style="width:37%;"> -->
<!--                       <p>Top 5</p> -->
<!--                     </th> -->
<!--                     <th> -->
<!--                       <div class="col-lg-7 col-md-7 col-sm-7 col-xs-7"> -->
<!--                         <p class="">Device</p> -->
<!--                       </div> -->
<!--                       <div class="col-lg-5 col-md-5 col-sm-5 col-xs-5"> -->
<!--                         <p class="">Progress</p> -->
<!--                       </div> -->
<!--                     </th> -->
<!--                   </tr> -->
<!--                   <tr> -->
<!--                     <td> -->
<%--                       <canvas id="canvas1" height="140" width="140" style="margin: 15px 10px 10px 0"></canvas> --%>
<!--                     </td> -->
<!--                     <td> -->
<!--                       <table class="tile_info"> -->
<!--                         <tr> -->
<!--                           <td> -->
<!--                             <p><i class="fa fa-square blue"></i>IOS </p> -->
<!--                           </td> -->
<!--                           <td>30%</td> -->
<!--                         </tr> -->
<!--                         <tr> -->
<!--                           <td> -->
<!--                             <p><i class="fa fa-square green"></i>Android </p> -->
<!--                           </td> -->
<!--                           <td>10%</td> -->
<!--                         </tr> -->
<!--                         <tr> -->
<!--                           <td> -->
<!--                             <p><i class="fa fa-square purple"></i>Blackberry </p> -->
<!--                           </td> -->
<!--                           <td>20%</td> -->
<!--                         </tr> -->
<!--                         <tr> -->
<!--                           <td> -->
<!--                             <p><i class="fa fa-square aero"></i>Symbian </p> -->
<!--                           </td> -->
<!--                           <td>15%</td> -->
<!--                         </tr> -->
<!--                         <tr> -->
<!--                           <td> -->
<!--                             <p><i class="fa fa-square red"></i>Others </p> -->
<!--                           </td> -->
<!--                           <td>30%</td> -->
<!--                         </tr> -->
<!--                       </table> -->
<!--                     </td> -->
<!--                   </tr> -->
<!--                 </table> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->


<!--           <div class="col-md-4 col-sm-4 col-xs-12"> -->
<!--             <div class="x_panel tile fixed_height_320"> -->
<!--               <div class="x_title"> -->
<!--                 <h2>Event 3</h2> -->
<!--                 <ul class="nav navbar-right panel_toolbox"> -->
<!--                   <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a> -->
<!--                   </li> -->
                 
<!--                   <li><a class="close-link"><i class="fa fa-close"></i></a> -->
<!--                   </li> -->
<!--                 </ul> -->
<!--                 <div class="clearfix"></div> -->
<!--               </div> -->
<!--               <div class="x_content"> -->
<!--                 <div class="dashboard-widget-content"> -->
<!--                   <ul class="quick-list"> -->
<!--                     <li><i class="fa fa-calendar-o"></i><a href="#">Settings</a> -->
<!--                     </li> -->
<!--                     <li><i class="fa fa-bars"></i><a href="#">Subscription</a> -->
<!--                     </li> -->
<!--                     <li><i class="fa fa-bar-chart"></i><a href="#">Auto Renewal</a> </li> -->
<!--                     <li><i class="fa fa-line-chart"></i><a href="#">Achievements</a> -->
<!--                     </li> -->
<!--                     <li><i class="fa fa-bar-chart"></i><a href="#">Auto Renewal</a> </li> -->
<!--                     <li><i class="fa fa-line-chart"></i><a href="#">Achievements</a> -->
<!--                     </li> -->
<!--                     <li><i class="fa fa-area-chart"></i><a href="#">Logout</a> -->
<!--                     </li> -->
<!--                   </ul> -->

<!--                   <div class="sidebar-widget"> -->
<!--                     <h4>Profile Completion</h4> -->
<%--                     <canvas width="150" height="80" id="foo" class="" style="width: 160px; height: 100px;"></canvas> --%>
<!--                     <div class="goal-wrapper"> -->
<!--                       <span class="gauge-value pull-left">$</span> -->
<!--                       <span id="gauge-text" class="gauge-value pull-left">3,200</span> -->
<!--                       <span id="goal-text" class="goal-value pull-right">$5,000</span> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->
<!--             </div> -->
<!--           </div> -->

<!--         </div> -->
	<!-- End of events -->
	
	
<!--             Start to do list -->
<!--               <div class="col-md-6 col-sm-6 col-xs-12 list"> -->
<!--                 <div class="x_panel"> -->
<!--                   <div class="x_title"> -->
<!--                     <h2>To Do List <small>Sample tasks</small></h2> -->
<!--                     <ul class="nav navbar-right panel_toolbox"> -->
<!--                       <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a> -->
<!--                       </li> -->
<!--                       <li class="dropdown"> -->
<!--                         <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a> -->
<!--                         <ul class="dropdown-menu" role="menu"> -->
<!--                           <li><a href="#">Settings 1</a> -->
<!--                           </li> -->
<!--                           <li><a href="#">Settings 2</a> -->
<!--                           </li> -->
<!--                         </ul> -->
<!--                       </li> -->
<!--                       <li><a class="close-link"><i class="fa fa-close"></i></a> -->
<!--                       </li> -->
<!--                     </ul> -->
<!--                     <div class="clearfix"></div> -->
<!--                   </div> -->
<!--                   <div class="x_content"> -->

<!--                     <div class=""> -->
<!--                       <ul class="to_do"> -->
<!--                         <li> -->
<!--                           <p> -->
<!--                             <input type="checkbox" class="flat"> Schedule meeting with new client </p> -->
<!--                         </li> -->
<!--                         <li> -->
<!--                           <p> -->
<!--                             <input type="checkbox" class="flat"> Create email address for new intern</p> -->
<!--                         </li> -->
<!--                         <li> -->
<!--                           <p> -->
<!--                             <input type="checkbox" class="flat"> Have IT fix the network printer</p> -->
<!--                         </li> -->
<!--                         <li> -->
<!--                           <p> -->
<!--                             <input type="checkbox" class="flat"> Copy backups to offsite location</p> -->
<!--                         </li> -->
<!--                         <li> -->
<!--                           <p> -->
<!--                             <input type="checkbox" class="flat"> Food truck fixie locavors mcsweeney</p> -->
<!--                         </li> -->
<!--                         <li> -->
<!--                           <p> -->
<!--                             <input type="checkbox" class="flat"> Food truck fixie locavors mcsweeney</p> -->
<!--                         </li> -->
<!--                         <li> -->
<!--                           <p> -->
<!--                             <input type="checkbox" class="flat"> Create email address for new intern</p> -->
<!--                         </li> -->
<!--                         <li> -->
<!--                           <p> -->
<!--                             <input type="checkbox" class="flat"> Have IT fix the network printer</p> -->
<!--                         </li> -->
<!--                         <li> -->
<!--                           <p> -->
<!--                             <input type="checkbox" class="flat"> Copy backups to offsite location</p> -->
<!--                         </li> -->
<!--                       </ul> -->
<!--                     </div> -->
<!--                   </div> -->
<!--                 </div> -->
<!--               </div> -->
<!--               End to do list -->
              
              
	<!-- Start view goal timeline -->
	
	
<!-- 	<section id="about"> -->
<!--         <div class="container"> -->
<!--             <div class="row"> -->
<!--                 <div class="col-lg-12 text-center"> -->
<!--                     <h2 class="section-heading">My goals timeline</h2> -->
<!--                     <h3 class="section-subheading text-muted">You have set these goals for yourself</h3> -->
<!--                 </div> -->
<!--             </div> -->
<!--             <div class="row"> -->
<!--                 <div class="col-lg-12"> -->
<!--                     <ul class="timeline1"> -->
<!--                         <li> -->
<!--                             <div class="timeline1-image"> -->
<!--                                 <img class="img-circle img-responsive" src="resources/img/about/northeasternUniversity.jpg" alt=""> -->
<!--                             </div> -->
<!--                             <div class="timeline1-panel"> -->
<!--                                 <div class="timeline1-heading"> -->
<!--                                     <h4>2014-2015</h4> -->
<!--                                     <h4 class="subheading">Joined northeastern</h4> -->
<!--                                 </div> -->
<!--                                 <div class="timeline1-body"> -->
<!--                                     <p class="text-muted"> Moved to USA to start a new chapter of my life. Northeastern it is baby :)</p> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </li> -->
<!--                         <li class="timeline1-inverted"> -->
<!--                             <div class="timeline1-image"> -->
<!--                                 <img class="img-circle img-responsive" src="resources/img/about/award.png" alt=""> -->
<!--                             </div> -->
<!--                             <div class="timeline1-panel"> -->
<!--                                 <div class="timeline1-heading"> -->
<!--                                     <h4>2013-2014</h4> -->
<!--                                     <h4 class="subheading">Star of the quarter at TCS</h4> -->
<!--                                 </div> -->
<!--                                 <div class="timeline1-body"> -->
<!--                                     <p class="text-muted">Loving all the special treatment!Awarded as the star of the quarter at TCS....</p> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </li> -->
                        
<!--                     </ul> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--     </section> -->
	
	
	
	
	
	<div class="container goalsTimeline">
  <div class="page-header">
    <h2 id="timeline">Your goals timeline</h2>
  </div>
  
<!--    <button type="button" class="btn btn-info btn-block" data-toggle="modal" data-target="#addMemory">Add a memory</button> -->
  
     <ul class="timeline goalNumber">
     <c:choose>
  		<c:when test="${flag == 'CreatedGoal'}">
  			<c:forEach varStatus="i" var="goal" items="${list}"> 
   
   		<c:choose>
   
    	<c:when test="${(i.count mod 2) == 0}">
    	
        	<li>
     			 <div class="timeline-badge"><i class="glyphicon glyphicon-camera"></i></div>
      			 <div class="timeline-panel">
      			
        		 <div class="timeline-heading">
          			  <ul class="nav navbar-right panel_toolbox">
                    <li><span><i class="fa fa-pencil fa-lg" aria-hidden="true"></i></span> &nbsp;
                    	<span><i class="fa fa-trash fa-lg" aria-hidden="true"></i></span>
                    </li>
                 
                 </ul>
          			
          			 <h4 class="timeline-title goalDate">${goal.goalDate}</h4>
        		 </div>
        		<div class="timeline-body goalDescription">
          			<p>${goal.goalDescription}</p>
        		</div>
      			</div>
  		  </li>         
        	
   		</c:when>    
    
    	<c:otherwise>
    	
        	 <li class="timeline-inverted goalNumber"> 
      			<div class="timeline-badge warning"><i class="glyphicon glyphicon-pencil"></i></div>
      			<div class="timeline-panel">
        		<div class="timeline-heading">
          			  <ul class="nav navbar-right panel_toolbox">
                    <li><span><i class="fa fa-pencil fa-lg" aria-hidden="true"></i></span> &nbsp;
                    	<span><i class="fa fa-trash fa-lg" aria-hidden="true"></i></span>
                    </li>
                 
                 </ul>
          			
          			<h4 class="timeline-title goalDate">${goal.goalDate}</h4>
        		</div>
        		<div class="timeline-body goalDescription">
          			<p>${goal.goalDescription}</p>
        		</div>
      			</div>
    		</li>
       
    	</c:otherwise>
	</c:choose>
    
                
  </c:forEach>
  		</c:when>
 
 
 	<c:otherwise>
 		<c:forEach varStatus="i" var="goal" items="${personObj.goalList}"> 
   
   		<c:choose>
   
    	<c:when test="${(i.count mod 2) == 0}">
    	
        	<li>
     			 <div class="timeline-badge"><i class="glyphicon glyphicon-camera"></i></div>
      			 <div class="timeline-panel">
      			
        		 <div class="timeline-heading">
          			  <ul class="nav navbar-right panel_toolbox">
                    <li><span><i class="fa fa-pencil fa-lg" aria-hidden="true"></i></span> &nbsp;
                    	<span><i class="fa fa-trash fa-lg" aria-hidden="true"></i></span>
                    </li>
                 
                 </ul>
          			
          			 <h4 class="timeline-title goalDate">${goal.goalDate}</h4>
        		 </div>
        		<div class="timeline-body goalDescription">
          			<p>${goal.goalDescription}</p>
        		</div>
      			</div>
  		  </li>         
        	
   		</c:when>    
    
    	<c:otherwise>
    	
        	 <li class="timeline-inverted goalNumber"> 
      			<div class="timeline-badge warning"><i class="glyphicon glyphicon-pencil"></i></div>
      			<div class="timeline-panel">
        		<div class="timeline-heading">
          			  <ul class="nav navbar-right panel_toolbox">
                    <li><span><i class="fa fa-pencil fa-lg" aria-hidden="true"></i></span> &nbsp;
                    	<span><i class="fa fa-trash fa-lg" aria-hidden="true"></i></span>
                    </li>
                 
                 </ul>
          			
          			<h4 class="timeline-title goalDate">${goal.goalDate}</h4>
        		</div>
        		<div class="timeline-body goalDescription">
          			<p>${goal.goalDescription}</p>
        		</div>
      			</div>
    		</li>
       
    	</c:otherwise>
	</c:choose>
    
                
  </c:forEach>
 	
 	</c:otherwise>
 	
	</c:choose>

   </ul>
   
     
</div>
			
	<!-- End view goal div -->
        <!-- footer content -->
        <footer>
          <div class="pull-right">
            
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
      
      
      
      <!-- /page content -->
    </div>

  </div>

  <div id="custom_notifications" class="custom-notifications dsp_none">
    <ul class="list-unstyled notifications clearfix" data-tabbed_notifications="notif-group">
    </ul>
    <div class="clearfix"></div>
    <div id="notif-group" class="tabbed_notifications"></div>
  </div>
  
 
	<!-- Modal Windows -->
	
	<!-- Add a memory modal -->
    
    
    <div class="modal fade" id="addMemory" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Post your memory</h4>
        </div>
        <div class="modal-body">
            <form:form action="post.htm" commandName="memory" method="post" class="form-horizontal" role="form">

    		 <div class="form-group">
          
                 <div class="col-sm-9">
                     <label for="memoryDescription">Memory Description:</label>
 					 <textarea class="form-control" rows="5" name="memoryDescription" id="memoryDescription"></textarea>
                 </div>
                 
                 <div class="col-sm-9">
                     <label for="memoryDate">Memory Date:</label>
 					 <input type="text" class="form-control" name="memoryDate" id="memoryDate" />
                 </div>
                 <div class="col-sm-9">
                 <input type="hidden" name="userName" value ="${sessionScope.personObj.userName}">
                  </div>
                  
                 <div class="col-sm-9">
                 <br/>
                 <input type="submit" class="btn btn-info" value="Submit" id="submit">
                 <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                 </div>
   			 </div>
  	
 			 </form:form>
  
        </div>
      
      </div>
      
    </div>
  </div>
  <!-- End of the memory modal -->
  
  
  <!-- Add a goal modal -->
  
  
    <div class="modal fade" id="addGoal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Set your goal</h4>
        </div>
        <div class="modal-body">
            <form:form action="setGoal.htm" commandName="goal" method="post" class="form-horizontal" role="form">

    		 <div class="form-group">
          
                 <div class="col-sm-9">
                     <label for="goalDescription">Goal Description:</label>
 					 <textarea class="form-control" rows="5" name="goalDescription" id="goalDescription"></textarea>
                 </div>
                 
                 <div class="col-sm-9">
                     <label for="goalDate">Goal Date:</label>
 					 <input type="date" class="form-control" name="goalDate" id="goalDate" />
                 </div>
                 <div class="col-sm-9">
                 <input type="hidden" name="userName" value ="${sessionScope.personObj.userName}">
                  </div>
                  
                 <div class="col-sm-9">
                 <br/>
                 <input type="submit" class="btn btn-info" value="Submit" id="goalSubmit">
                 <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                 </div>
   			 </div>
  	
 			 </form:form>
  
        </div>
      
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

  
<!--   <script> -->
//     NProgress.done();
<!--   </script> -->
<!--   <!-- /datepicker --> -->


  <!-- /footer content -->
</body>

</html>

    
  

