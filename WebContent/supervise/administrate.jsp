<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>信息管理</title>
    <meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/index.css">
  </head>
  <body class="body"> 
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
  <!--<![endif]-->
  <jsp:include page="publicpage/header.jsp"></jsp:include>
  
<div class="content">
   <div class="header">
            <h1 class="page-title">您的信息</h1>
   </div>
   <div class="container-fluid">
        <div class="row-fluid">
           	<div class="modal-body" >
        <form id="registerForm">
		<div class="col-lg-3"></div>
		<div id="content" class="rgTable col-lg-6">
			<div id="input" align="left">
				<label class="nameLable"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>您的姓名：</label>
				<input type="text" class="form-control"  disabled="disabled"  aria-describedby="basic-addon1" value="${userMes.username}" />
			</div>
			<div id="input" align="left">
				<label class="loginLable"><span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>您的登录名：</label>
				<input type="text"  class="form-control" disabled="disabled"  aria-describedby="basic-addon1" value="${userMes.adminName}"/>
			</div>
			<div id="input" align="left">
				<label class="phoneLable"><span class="glyphicon glyphicon-phone-alt" aria-hidden="true"></span>您的电话：</label>
				<input type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1" value="${userMes.userphone}"/>
			</div>
			<div id="input" align="left">
				<label class="emailLable"><span class="glyphicon glyphicon-envelope" aria-hidden="true"></span>您的Email：</label>
				<input type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1"value="${userMes.useremail}"/>
			</div>
			<div id="input" align="left">
				<label class="adressLable"><span class="glyphicon glyphicon-home" aria-hidden="true"></span>您的地址：</label>
				<input type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1" value="${userMes.userAdress}"/>
			</div>
			<div id="input" align="left">
				<label class="sitLabel"><span class="glyphicon glyphicon-heart" aria-hidden="true"></span>您的座右铭：</label>
				<input type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1" value="${userMes.usermotto}"/>
			</div>
			<div id="input" align="left">
				<label class="userType"><span class="glyphicon glyphicon-star" aria-hidden="true"></span>您是：</label>
				<input type="text"  class="form-control"disabled="disabled"  aria-describedby="basic-addon1"value="${userMes.typecontest}"/>
			</div>
			<div id="input" align="left">
				<label class="registerTime"><span class="glyphicon glyphicon-calendar" aria-hidden="true"></span>您注册的时间：</label>
				<input type="text" class="form-control"  disabled="disabled"  aria-describedby="basic-addon1"value="${userMes.createDate}" />
			</div>
		</div>
		<div class="col-lg-3"></div>
	</form>
           		
	         </div>  
  		</div>
   </div>
</div>
  <jsp:include page="publicpage/footer.jsp"></jsp:include>    
  </body>
</html>


