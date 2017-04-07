<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Gallery</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel='stylesheet' type='text/css' />	
<script src="js/jquery-1.11.1.min.js"></script>
<!--webfonts-->
<link href='http://fonts.useso.com/css?family=Fugaz+One|Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
	<!--start-home-->
	<div id="home" class="header">
		<div class="header-top">
			<div class="container">
			<div class="head-nav">
				<%@include file="publicpage/hPage.jsp" %>
				<!--script-for-menu-->
				<script>
				$( "span.menu" ).click(function() {
				  $( ".top-menu" ).slideToggle( "slow", function() {
				    // Animation complete.
				  });
				});
			</script>
			<!--script-for-menu-->
			</div>
		  </div>
		</div> 
		<!-- banner-bottom -->
		<div class="banner two">
		</div>
	</div>
	<!--games-->
	<div class="gallery">
		<div class="container">
		         <h3>Gallery</h3>
			<div class="portfolio-bottom">
				<div class="gallery-one">
					<div class="col-md-4 gallery-left">
						<a href="images/l1.jpg" class=" mask b-link-stripe b-animate-go   swipebox"  title="Image Title">
								<img src="images/l1.jpg" alt="" class="img-responsive zoom-img"/>
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/l2.jpg" class=" mask b-link-stripe b-animate-go   swipebox"  title="Image Title">
								<img src="images/l2.jpg" alt="" class="img-responsive zoom-img"/>
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/l4.jpg" class=" mask b-link-stripe b-animate-go   swipebox"  title="Image Title">
								<img src="images/l4.jpg" alt="" class="img-responsive zoom-img"/>
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/l3.jpg" class=" mask b-link-stripe b-animate-go   swipebox"  title="Image Title">
								<img src="images/l3.jpg" alt="" class="img-responsive zoom-img"/>
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/l5.jpg" class=" mask b-link-stripe b-animate-go   swipebox"  title="Image Title">
								<img src="images/l5.jpg" alt="" class="img-responsive zoom-img"/>
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/l6.jpg" class=" mask b-link-stripe b-animate-go   swipebox"  title="Image Title">
								<img src="images/l6.jpg" alt="" class="img-responsive zoom-img"/>
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/l9.jpg" class=" mask b-link-stripe b-animate-go   swipebox"  title="Image Title">
								<img src="images/l9.jpg" alt="" class="img-responsive zoom-img"/>
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/l7.jpg" class=" mask b-link-stripe b-animate-go   swipebox"  title="Image Title">
								<img src="images/l7.jpg" alt="" class="img-responsive zoom-img"/>
						</a>
					</div>
					<div class="col-md-4 gallery-left">
						<a href="images/l8.jpg" class=" mask b-link-stripe b-animate-go   swipebox"  title="Image Title">
								<img src="images/l8.jpg" alt="" class="img-responsive zoom-img"/>
						</a>
					</div>
					<div class="clearfix"> </div>
				</div>
			</div>
		</div>
	</div>
	<!--swipebox -->	
			<link rel="stylesheet" href="css/swipebox.css">
				<script src="js/jquery.swipebox.min.js"></script> 
				<script type="text/javascript">
					jQuery(function($) {
						$(".swipebox").swipebox();
					});
				</script>
			<!--//swipebox Ends -->

   <!--footer--->
		<%@include file="publicpage/footer.jsp" %>
			<!--start-smoth-scrolling-->
			<script type="text/javascript">
								jQuery(document).ready(function($) {
									$(".scroll").click(function(event){		
										event.preventDefault();
										$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
									});
								});
								</script>
							<!--start-smoth-scrolling-->
						<script type="text/javascript">
									$(document).ready(function() {
										/*
										var defaults = {
								  			containerID: 'toTop', // fading element id
											containerHoverID: 'toTopHover', // fading element hover id
											scrollSpeed: 1200,
											easingType: 'linear' 
								 		};
										*/
										
										$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>

</body>
</html>