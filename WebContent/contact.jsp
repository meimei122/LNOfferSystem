<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<title>Contact</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/css/style.css" rel='stylesheet' type='text/css' />	
<script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
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
	<!--contact-->
			<div class="contact">
				<div class="container">
					<h3>如果您觉得我们有什么不好，请您及时告知我们来改进，谢谢您宝贵的意见。</h3>
						<div class="contact-top">
							<div class="col-md-8 contact-top-right">
								<form>
									<input type="text" class="text"  value="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name';}">
									 <input type="text" class="text" value="Email Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email Address';}">
									<input type="text" class="text"  value="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject';}">
									<textarea value="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>
									<div class="sub-button">
										<input type="submit" value="SEND">
									</div>
								</form>
							</div>
							<div class="col-md-4 contact-top-left">
							<div class="contact-top-one">
								<h4>Address:</h4>
									<h6>湖北省黄冈市
									<span>新港二路146号,</span>
										黄冈师范学院.
									</h6>
							</div>
							<div class="contact-top-one">
								<h4>Phone:</h4>
									<p>Telephone: +13277412303
									<span></span>
									</p>
							</div>
							<div class="contact-top-one">
								<h4>E-mail:</h4>
								<p><a href="mailto:info@example.com">MR_yangpeng@163.com</a></p>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
					<div style="margin-top: 20px"></div>
				</div>
			</div>
	<!--/contact-->
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