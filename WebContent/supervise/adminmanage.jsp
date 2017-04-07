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
  </head>
  <body class="body"> 
  <!--<![endif]-->
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/supervise/lib/validator/bootstrap.min.js"></script>
  <jsp:include page="publicpage/header.jsp"></jsp:include>
  <script type="text/javascript">
  	function updateStatus(tutorId){
  		alert(tutorId);
  	}
  </script>
<div class="content">
   <div class="header">
        <h1 class="page-title">Admin Message</h1>
   </div>
   <div class="container-fluid">
        <div class="row-fluid">
           	<div class="modal-body" >
           	<form action="">
           		<table class="table table-hover">
           			<thead>
           				<tr>
           					<th>姓名</th>
           					<th>年级</th>
           					<th>职业</th>
           					<th>课程</th>
           					<th>信息状态</th>
           					<th>操作</th>
           				</tr>
           			</thead>
           			<tbody>
           			<c:forEach items="${tutorDto}" var="TutorDto">
           				<tr>
           					<td>${TutorDto.tutorName}</td>
           					<td>${TutorDto.gradeContxt}</td>
           					<td>${TutorDto.tutorContxt}</td>
           					<td>${TutorDto.classname}</td>
           					<td>${TutorDto.statusId eq 1?"已发布":"已删除"}</td>
           					<td>
           						<button class="btn btn-info btn-xs" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>详细</button>
           						<c:if test="${TutorDto.statusId==1}">
           						<button class="btn btn-danger btn-xs" onclick="updateStatus(${TutorDto.tutorId});"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除</button>
           						</c:if>
           					</td>
           				</tr>
           			</c:forEach>
           			</tbody>
           		</table>
           	</form>
            </div>
  		</div>
   </div>
</div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
			    <h4 class="modal-title" id="myModalLabel">详细信息</h4>
			</div>
			<div class="modal-body" >
				  <div class="input-group">
  					<span class="input-group-addon" id="basic-addon1">您的注册姓名：</span>
  					<input id="primary_name" type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
				</div>
  				<div class="input-group">
  					<span class="input-group-addon" id="basic-addon1">您的授课经验：</span>
  					<input id="primary_adress" type="text" class="form-control" disabled="disabled" aria-describedby="basic-addon1">
				</div>
			  	<div class="input-group">
			  		<span class="input-group-addon" id="basic-addon1">您擅长于年级：</span>
			  		<input id="primary_phone" type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
				</div>
			  	<div class="input-group">
			  		<span class="input-group-addon" id="basic-addon1">您擅长的科目：</span>
			  		<input id="primary_phone" type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
				</div>
			  	<div class="input-group">
			  		<span class="input-group-addon" id="basic-addon1">您的授课方式：</span>
			  		<input id="primary_identity" type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
				</div>
			  	<div class="input-group">
			  		<span class="input-group-addon" id="basic-addon1">您的期望薪酬：</span>
					<input id="primary_sex"type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
				</div>
			  	<div class="input-group">
			  		<span class="input-group-addon" id="basic-addon1">您的自我简介：</span>
						<input id="primary_teaching"type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
				</div>
			  	<div class="input-group">
			  		<span class="input-group-addon" id="basic-addon1">您的提交时间：</span>
			  		<input id="primary_date" type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
				</div>
			</div>
			<div class="modal-footer">
       			 <button type="button" class="btn btn-default" data-dismiss="modal">确定</button>
     		</div>
		</div>
	</div>
</div>
  <jsp:include page="publicpage/footer.jsp"></jsp:include>    
  </body>
</html>