<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE hibernate-configuration SYSTEM
    "classpath://org/hibernate/hibernate-configuration-3.0.dtd">
<%@ page session="false" %>


<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>A walk to remember-a personlized timeline</title>

    <!-- Bootstrap Core CSS -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="resources/css/agency.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">A walk to remember</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#services">Services</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#portfolio">Portfolio</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#about">About</a>
                    </li>
                    
                    <li>
                        <a class="page-scroll" href="#contact">Contact</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header -->
    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-heading">Things end but memories last forever!</div>
                <div class="intro-lead-in">Let us help you capture these sweet memories</div>
                <a href="#services" class="page-scroll btn btn-xl">Tell Me More</a>
                <a href="#joinUsModal" class="page-scroll btn btn-xl" data-toggle="modal">Join Us</a>
            </div>
        </div>
    </header>

    <!-- Services Section -->
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Services</h2>
                    <h3 class="section-subheading text-muted">What can we do for you?</h3>
                </div>
            </div>
            <div class="row text-center">
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-trophy fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Cherish your achievements</h4>
                    <p class="text-muted">We will help you walk down the memory lane. Recollect all the beautiful moments of your life and cherish them forever</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-instagram fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Post memories</h4>
                    <p class="text-muted">Open your heart here! You can post memories, add photographs, write your thoughts down by just posting a memory on your timeline</p>
                </div>
                <div class="col-md-4">
                    <span class="fa-stack fa-4x">
                        <i class="fa fa-circle fa-stack-2x text-primary"></i>
                        <i class="fa fa-calendar fa-stack-1x fa-inverse"></i>
                    </span>
                    <h4 class="service-heading">Set goals for yourself</h4>
                    <p class="text-muted">You can set goals for your future and we would plan ways in which you could achieve them</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Portfolio Grid Section -->
    <section id="portfolio" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">What interests you?</h2>
                    <h3 class="section-subheading text-muted">Choose the topics that interests you the most and we will keep you posted about the latest events</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal1" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="resources/img/portfolio/yoga.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Yoga</h4>
                        <p class="text-muted">Be fit and healthy</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="resources/img/portfolio/dressesAndShoes.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Dresses and Shoes</h4>
                        <p class="text-muted">Are you a shopaholic?</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="resources/img/portfolio/travel.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Travelling</h4>
                        <p class="text-muted">Do you love to travel?</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal4" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="resources/img/portfolio/learning.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Study material</h4>
                        <p class="text-muted">Find best of the online tutorials here</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal5" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="resources/img/portfolio/food.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Food recipies</h4>
                        <p class="text-muted">Get instant recipies here</p>
                    </div>
                </div>
                <div class="col-md-4 col-sm-6 portfolio-item">
                    <a href="#portfolioModal6" class="portfolio-link" data-toggle="modal">
                        <div class="portfolio-hover">
                            <div class="portfolio-hover-content">
                                <i class="fa fa-plus fa-3x"></i>
                            </div>
                        </div>
                        <img src="resources/img/portfolio/homedecor.jpg" class="img-responsive" alt="">
                    </a>
                    <div class="portfolio-caption">
                        <h4>Home Decor</h4>
                        <p class="text-muted">Redecorate your house with the best interior designers</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- About Section -->
    <section id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">My Timeline</h2>
                    <h3 class="section-subheading text-muted">This is how your timeline would look</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <ul class="timeline">
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="resources/img/about/northeasternUniversity.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>2014-2015</h4>
                                    <h4 class="subheading">Joined northeastern</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted"> Moved to USA to start a new chapter of my life. Northeastern it is baby :)</p>
                                </div>
                            </div>
                        </li>
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="resources/img/about/award.png" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>2013-2014</h4>
                                    <h4 class="subheading">Star of the quarter at TCS</h4>
                                </div>
                                <div class="timeline-body">
                                    <p class="text-muted">Loving all the special treatment!Awarded as the star of the quarter at TCS....</p>
                                </div>
                            </div>
                        </li>
                        <li>
                            <div class="timeline-image">
                                <img class="img-circle img-responsive" src="resources/img/about/beaches.jpg" alt="">
                            </div>
                            <div class="timeline-panel">
                                <div class="timeline-heading">
                                    <h4>2012-2013</h4>
                                    <h4 class="subheading">Beautiful beaches of Kerela</h4>
                                </div>
                                <div class="timeline-body">
                                    <p>Love these beaches.... I wish I could stay here all my life....Love you Verkala :)</p>
                                </div>
                            </div>
                        </li>
            
                        <li class="timeline-inverted">
                            <div class="timeline-image">
                                <h4>That is 
                                    <br>my
                                    <br>Story!</h4>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    
    
    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Contact Us</h2>
                    <h3 class="section-subheading text-muted">Lorem ipsum dolor sit amet consectetur.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-12">
                    <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Your Name *" id="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Your Email *" id="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" placeholder="Your Phone *" id="phone" required data-validation-required-message="Please enter your phone number.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Your Message *" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-xl">Send Message</button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Your Website 2014</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

    <!-- Portfolio Modals -->
    <!-- Use the modals below to showcase details about your portfolio projects! -->

    <!-- Portfolio Modal 1 -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>Yoga</h2>
                            <p class="item-intro text-muted">Keep yourself healthy and fit by doing simple exercise</p>
                            <img class="img-responsive img-centered" src="resources/img/portfolio/yoga.jpg" alt="">
                            <p>Yoga is a physical, mental, and spiritual practice or discipline which originated in India. There is a broad variety of schools, practices, and goals in Hinduism, Buddhism and Jainism. Among the most well-known types of yoga are Hatha yoga and Rāja yoga</p>
                            <p>
                               
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 2 -->
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Shopping sales and discounts</h2>
                            <p class="item-intro text-muted">If you love to shop, just look out for best deals and discounts here</p>
                            <img class="img-responsive img-centered" src="resources/img/portfolio/dressesAndShoes.jpg" alt="">
                            <p>Get the best price for everything that you need. We would provide you with the best deals and discounts</p>
                            
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 3 -->
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>Travelling</h2>
                            <p class="item-intro text-muted">If you love to travel join our blog to check the most adventurous trips near you</p>
                            <img class="img-responsive img-centered" src="resources/img/portfolio/travel.jpg" alt="">
                            <p>If travelling is your life and you are looking for the perfect get away, let us know your preference and we will plan the best trips for you  </p>
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 4 -->
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>Study Material</h2>
                            <p class="item-intro text-muted">Are you someone who is contantly looking for e-learning methods?</p>
                            <img class="img-responsive img-centered" src="resources/img/portfolio/learning.jpg" alt="">
                            <p>Just tell us what do you want to learn and we would give you the best means to learn it within no time. Let us worry about your learning material, registration process and quick reminders</p>
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 5 -->
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>Food recipies</h2>
                            <p class="item-intro text-muted">We show some of the easiest means by which you can cook delicious food within no time</p>
                            <img class="img-responsive img-centered" src="resources/img/portfolio/food.jpg" alt="">
                            <p>Enjoy making delcious food of all cuisines within no time. Just watch our famous chef cooking the most easiest and quickest recipies to fill your tummy</p>
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 6 -->
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>Home Decor</h2>
                            <p class="item-intro text-muted">Redesign your house with the best designers</p>
                            <img class="img-responsive img-centered" src="resources/img/portfolio/homedecor.jpg" alt="">
                            <p> Beautiful home leads to peaceful minds. Decorate your home with the world class designs and best decorators</p>
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
     <div class="portfolio-modal modal fade" id="joinUsModal" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body register">
                        	<h2>REGISTER WITH US</h2>
                           		<ul class="nav nav-tabs">
  									<li class="active" ><a href="#userRegister" data-toggle="tab">User Registration</a></li>
 									<li><a href="#advertiserRegister" data-toggle="tab">Advertiser Registration</a></li>
									<li><a href="#login" data-toggle="tab">Login</a></li>
								</ul>
								
							<div class="tab-content clearfix">
							<div id="userRegister" class="tab-pane active">
							<br/>
                            <form:form action="registerUser.htm" commandName="user" method="post" class="form-horizontal" role="form">
<!--                             <form class="form-horizontal" role="form"> -->
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="fname">First Name:</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="fname" placeholder="Enter first name" name="firstName" />
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="name">Last Name:</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="lname" placeholder="Enter last name" name="lastName" />
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="email">Email:</label>
                                    <div class="col-sm-9"> 
                                        <input type="email" class="form-control" id="email" placeholder="Enter email address" name="emailAddress" />
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="username">Username:</label>
                                    <div class="col-sm-9"> 
                                        <input type="text" class="form-control" id="username" placeholder="Enter username" name="userName" />
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="password">Password:</label>
                                    <div class="col-sm-9"> 
                                        <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" />
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="retype_password">Retype password:</label>
                                    <div class="col-sm-9"> 
                                        <input type="password" class="form-control" id="retypepassword" placeholder="Retype password">
                                    </div>
                                </div>
                                
                                <input type="submit" class="btn btn-primary" value="Submit" />
                                <input type="reset" class="btn btn-primary" value="Reset" />
                                  
<!--                             </form> -->
                                </form:form>
                                </div>
                                
                                <div id="login" class="tab-pane">
							<br/>
                            <form:form action="login.htm" commandName="person" method="post" class="form-horizontal" role="form">

                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="uname">User Name:</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="uname" placeholder="Enter user name" name="userName" />
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="password">Password:</label>
                                    <div class="col-sm-9">
                                        <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" />
                                    </div>
                                </div>
                                
                                <input type="submit" class="btn btn-primary" value="Submit" />
                                <input type="reset" class="btn btn-primary" value="Reset" />
                                  
                                </form:form>
                                </div>
                                
                                <div id="advertiserRegister" class="tab-pane">
                                <br />
                                	 <form:form action="registerAdvertiser.htm" commandName="advertiser" method="post" class="form-horizontal" role="form">
<!--                             <form class="form-horizontal" role="form"> -->
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="fname">First Name:</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="fname" placeholder="Enter first name" name="firstName" />
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="name">Last Name:</label>
                                    <div class="col-sm-9">
                                        <input type="text" class="form-control" id="lname" placeholder="Enter last name" name="lastName" />
                                    </div>
                                </div>
                                
                              
                                
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="username">Username:</label>
                                    <div class="col-sm-9"> 
                                        <input type="text" class="form-control" id="username" placeholder="Enter username" name="userName" />
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="password">Password:</label>
                                    <div class="col-sm-9"> 
                                        <input type="password" class="form-control" id="password" placeholder="Enter password" name="password" />
                                    </div>
                                </div>
                                
                                <div class="form-group">
                                    <label class="control-label col-sm-3" for="retype_password">Retype password:</label>
                                    <div class="col-sm-9"> 
                                        <input type="password" class="form-control" id="retypepassword" placeholder="Retype password">
                                    </div>
                                </div>
                                
                                <input type="submit" class="btn btn-primary" value="Submit" />
                                <input type="reset" class="btn btn-primary" value="Reset" />
                                  
<!--                             </form> -->
                                </form:form>
                                </div>
                                </div>
                            </div>


                            
                            
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>

    <!-- jQuery -->
    <script src="resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="resources/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="resources/js/classie.js"></script>
    <script src="resources/js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="resources/js/jqBootstrapValidation.js"></script>
    <script src="resources/js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="resources/js/agency.js"></script>

</body>

</html>

