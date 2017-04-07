<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<head>
<title>Home</title>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
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
		<div class="banner">
			<!-- Slider-starts-Here -->
			<script src="${pageContext.request.contextPath}/js/responsiveslides.min.js"></script>
				<script>
				    // You can also use "$(window).load(function() {"
				    $(function () {
				      // Slideshow 4
				      $("#slider3").responsiveSlides({
				        auto: true,
				        pager:true,
				        nav:false,
				        speed: 500,
				        namespace: "callbacks",
				        before: function () {
				          $('.events').append("<li>before event fired.</li>");
				        },
				        after: function () {
				          $('.events').append("<li>after event fired.</li>");
				        }
				      });
				
				    });
				  </script>
			<!--//End-slider-script -->
				<div  id="top" class="callbacks_container">
				</div>
			</div>
		</div>
				  <div class="top-games-section">
	 				 <div class="container">
						<div class="col-md-9 g-views">
							<ul id="flexiselDemo3">
								<li>
								<div class="biseller-column">
								<a class="lightbox" href="#goofy">
											   <img src="${pageContext.request.contextPath}/images/s1.jpg"/>
											</a> 
											<div class="lightbox-target" id="goofy">
												  <img src="${pageContext.request.contextPath}/images/s1.jpg"/>
											   <a class="lightbox-close" href="#"> </a>

												<div class="clearfix"> </div>
											</div>
								</div>
							</li>
							<li>
								<div class="biseller-column">
								<a class="lightbox" href="#goofy">
											  <img src="${pageContext.request.contextPath}/images/s2.jpg"/>
											</a> 
											<div class="lightbox-target" id="goofy">
												  <img src="${pageContext.request.contextPath}/images/s2.jpg"/>
											   <a class="lightbox-close" href="#"> </a>

												<div class="clearfix"> </div>
											</div>
								</div>
							</li>
							<li>
								<div class="biseller-column">
								<a class="lightbox" href="#goofy">
											  <img src="${pageContext.request.contextPath}/images/s3.jpg"/>
											</a> 
											<div class="lightbox-target" id="goofy">
												  <img src="${pageContext.request.contextPath}/images/s3.jpg"/>
											   <a class="lightbox-close" href="#"> </a>

												<div class="clearfix"> </div>
											</div>
								</div>
							</li>
							<li>
								<div class="biseller-column">
								<a class="lightbox" href="#goofy">
												<img src="${pageContext.request.contextPath}/images/s1.jpg"/>
											</a> 
											<div class="lightbox-target" id="goofy">
												<img src="${pageContext.request.contextPath}/images/s1.jpg"/>
											   <a class="lightbox-close" href="#"> </a>

												<div class="clearfix"> </div>
											</div>
								</div>
							</li>
							<li>
								<div class="biseller-column">
								<a class="lightbox" href="#goofy">
											  <img src="${pageContext.request.contextPath}/images/s2.jpg"/>
											</a> 
											<div class="lightbox-target" id="goofy">
												  <img src="${pageContext.request.contextPath}/images/s2.jpg"/>
											   <a class="lightbox-close" href="#"> </a>

												<div class="clearfix"> </div>
											</div>
								</div>
							</li>
							<li>
								<div class="biseller-column">
								<a class="lightbox" href="#goofy">
											   <img src="${pageContext.request.contextPath}/images/s1.jpg"/>
											</a> 
											<div class="lightbox-target" id="goofy">
												<img src="${pageContext.request.contextPath}/images/s1.jpg"/>
											   <a class="lightbox-close" href="#"> </a>

												<div class="clearfix"> </div>
											</div>
								</div>
							</li>
							<li>
								<div class="biseller-column">
											<a class="lightbox" href="#goofy">
												<img src="${pageContext.request.contextPath}/images/s2.jpg"/>
											</a> 
											<div class="lightbox-target" id="goofy">
												<img src="${pageContext.request.contextPath}/images/s2.jpg"/>
											   <a class="lightbox-close" href="#"> </a>
												
												<div class="clearfix"> </div>
											</div>
								</div>
							</li>
						</ul>
					<script type="text/javascript">
						 $(window).load(function() {
							$("#flexiselDemo3").flexisel({
								visibleItems:3,
								animationSpeed: 1000,
								autoPlay: true,
								autoPlaySpeed: 3000,    		
								pauseOnHover: true,
								enableResponsiveBreakpoints: true,
								responsiveBreakpoints: { 
									portrait: { 
										changePoint:480,
										visibleItems:3
									}, 
									landscape: { 
										changePoint:640,
										visibleItems:3
									},
									tablet: { 
										changePoint:768,
										visibleItems:3
									}
								}
							});
							
						});
					   </script>
					   <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.flexisel.js"></script>
					</div>   
			</div>
	</div>
    <div class="copyrights">Collect from <a href="http://www.cssmoban.com/" >ä¼ä¸ç½ç«æ¨¡æ¿</a></div>
	<!--start-latest-->
		<div class="latest-post">
			<div class="container">
			        <h3>Latest Games</h3>
			<div class="grid">
				<figure class="effect-hera">
						<img src="${pageContext.request.contextPath}/images/l1.jpg" alt="img07"/>
						<figcaption>
							<h2>Play <span>Games</span></h2>
							<p>
								<a href="#"><i class="download"></i></a>
								<a href="#"><i class="heart"></i></a>
								<a href="#"><i class="service"></i></a>
								<a href="#"><i class="share"></i></a>
							</p>
						</figcaption>			
					</figure>
					<figure class="effect-hera">
						<img src="${pageContext.request.contextPath}/images/l2.jpg" alt="img07"/>
						<figcaption>
							<h2>Play <span>Games</span></h2>
							<p>
								<a href="#"><i class="download"></i></a>
								<a href="#"><i class="heart"></i></a>
								<a href="#"><i class="service"></i></a>
								<a href="#"><i class="share"></i></a>
							</p>
						</figcaption>			
					</figure>
					<figure class="effect-hera">
						<img src="${pageContext.request.contextPath}/images/l3.jpg" alt="img07"/>
						<figcaption>
							<h2>Play <span>Games</span></h2>
							<p>
								<a href="#"><i class="download"></i></a>
								<a href="#"><i class="heart"></i></a>
								<a href="#"><i class="service"></i></a>
								<a href="#"><i class="share"></i></a>
							</p>
						</figcaption>			
					</figure>
					<figure class="effect-hera">
						<img src="${pageContext.request.contextPath}/images/l4.jpg" alt="img07"/>
						<figcaption>
							<h2>Play <span>Games</span></h2>
							<p>
								<a href="#"><i class="download"></i></a>
								<a href="#"><i class="heart"></i></a>
								<a href="#"><i class="service"></i></a>
								<a href="#"><i class="share"></i></a>
							</p>
						</figcaption>			
					</figure>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
<!--start-blog-->
		<div id="blog" class="blog-section">
		   <div class="container">
		         <h3>Blog</h3>
				 <div class="blog">
				   <div class="col-md-4 blog-text">
					   <h5>THU 14 May, 2015</h5>
					   <a href="single.html"><h4>EXCEPTEUR SINT OCCAECAT CUPIDATAT NON</h4></a>
					   <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				   </div>
					<div class="col-md-8 welcome-img">
					 <a href="single.html" class="mask"><img src="${pageContext.request.contextPath}/images/b2.jpg" alt="image" class="img-responsive zoom-img"></a>
					</div>
				   <div class="clearfix"> </div>
			   </div>
			    <div class="blog">
				 <div class="col-md-4 blog-text two">
					   <h5>THU 14 May, 2015</h5>
					  <a href="single.html"><h4>LOREM IPSUM DOLOR SIT AMET CONSE</h4></a>
					   <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				   </div>
					<div class="col-md-8 blog-img two">
					 <a href="single.html" class="mask"><img src="${pageContext.request.contextPath}/images/b3.jpg" alt="image" class="img-responsive zoom-img"></a>
					</div>
				   <div class="clearfix"> </div>
			   </div> 
			    <div class="blog">
				   <div class="col-md-4 blog-text">
					   <h5>THU 14 May, 2015</h5>
					   <a href="single.html"><h4>EXCEPTEUR SINT OCCAECAT CUPIDATAT NON</h4></a>
					   <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
				   </div>
					<div class="col-md-8 welcome-img">
					 <a href="single.html" class="mask"><img src="${pageContext.request.contextPath}/images/b1.jpg" alt="image" class="img-responsive zoom-img"></a>
					</div>
				   <div class="clearfix"> </div>
			   </div>
		</div>
	</div>
	
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