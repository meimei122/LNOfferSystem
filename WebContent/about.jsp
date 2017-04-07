<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>About</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<!--webfonts-->
<link href='http://fonts.useso.com/css?family=Fugaz+One|Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//webfonts-->
</head>
<body>
	<!--start-home-->
	<!--start-home-->
	<div id="home" class="header">
		<div class="header-top">
			<div class="container">
				<div class="head-nav">
				<!-- 包含页面 -->
					<%@include file="publicpage/hPage.jsp" %>
				</div>
		  	</div>
		</div> 
	</div>
	<!--about-->
		<div class="about">
			<div class="container">
			 	<h3>About Us</h3>
			 		<div class="input-group">
  						<span class="input-group-addon" id="basic-addon1">身份要求 ：</span>
  							<a href="javascript:1" class="navbar-text" style="margin-left: 80px">大学生家教</a>
  							<a href="javascript:2" class="navbar-text" style="margin-left: 40px">教育机构</a>
  							<a href="javascript:3" class="navbar-text" style="margin-left: 40px">在职教师</a>
  							<a href="javascript:4" class="navbar-text" style="margin-left: 40px">辅导机构</a>
					</div>
  					<div class="input-group">
  						<span class="input-group-addon" id="basic-addon1">性别要求 ：</span>
  							<a href="javascript:1" class="navbar-text" style="margin-left: 80px">男</a>
  							<a href="javascript:2" class="navbar-text" style="margin-left: 40px">女</a>
					</div>
			</div>
		</div>
	<!--start-latest-->
		<div class="latest-post two">
			<div class="container">
			        <h3>Latest Games</h3>
			<div class="grid">
				<div class="effect-hera">
					<div class="col-xs-6">
						<div class="panel panel-info">
  							  <div class="panel-heading">
    						  </div>
    					<div class="panel-body">
    						<ul class="list-inline">
  								<li><span class="input-group-addon">姓名 ：1</span></li>
  								<li><span class="input-group-addon">性别 ：2</span></li>
		  						<li><span class="input-group-addon">我是 ：3</span></li>
		  						<li><span class="input-group-addon">擅长 ：3</span></li>
		  						<li><span class="input-group-addon">科目 ：3</span></li>
		  						<li><button  type="button" class="bbtn btn-primary btn-sm"data-toggle="modal" data-target="#myModal" onclick="findMes(${PrimaryStu.pr_id})">详细信息</button></li>
							</ul>
   						</div>
   						</div>
					</div>
					<div class="col-xs-6">
						<div class="panel panel-info">
  							  <div class="panel-heading">
    						  </div>
    					<div class="panel-body">
    						<div class="input-group">
  								<span class="input-group-addon" id="basic-addon1">姓名 ：</span>
							</div>
							<div class="input-group">
  								<span class="input-group-addon" id="basic-addon1">性别 ：</span>
							</div>
							<div class="input-group">
  								<span class="input-group-addon" id="basic-addon1">电话 ：</span>
							</div>
							<div class="input-group">
  								<span class="input-group-addon" id="basic-addon1">邮箱 ：</span>
							</div>
							<div class="input-group">
  								<span class="input-group-addon" id="basic-addon1">年龄 ：</span>
							</div>
							<div class="input-group">
  								<span class="input-group-addon" id="basic-addon1">地址 ：</span>
							</div>
							<div class="input-group">
  								<span class="input-group-addon" id="basic-addon1">我是 ：</span>
							</div>
							<div class="input-group">
  								<span class="input-group-addon" id="basic-addon1">科目 ：</span>
							</div>
							<div class="input-group">
  								<span class="input-group-addon" id="basic-addon1">科目 ：</span>
							</div>
							<div class="input-group">
  								<span class="input-group-addon" id="basic-addon1">科目 ：</span>
							</div>
							<div class="input-group">
  								<span class="input-group-addon" id="basic-addon1">科目 ：</span>
							</div>
   						</div>
   						</div>
					</div>
				</div>
				</div>
				<div class="clearfix"> </div>
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