<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>家教中心</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-select.css">
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/css/style.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/resources/style/register.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/themes/default/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/themes/icon.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript"src="${pageContext.request.contextPath}/js/bootstrap-select.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/locale/easyui-lang-zh_CN.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	 $.ajax({
		 type : "post",
		 url  : "${pageContext.request.contextPath}/data/type.do",   
		 dataType : "json",
		 success : function(result) {
			var str = '';
			for(var i in result) {
			str += '<option value="'+result[i].userTypeId+'">'+result[i].typecontest+'</option>';
			}
			$("#userTypeId").append(str);
			$('#userTypeId').selectpicker('render');
           $('#userTypeId').selectpicker('refresh');
		 }
	  });
	 $.ajax({
		 type : "post",
		 url  : "${pageContext.request.contextPath}/data/question.do",   
		 dataType : "json",
		 success : function(result) {
			var str = '';
			for(var i in result) {
			str += '<option value="'+result[i].questionId+'">'+result[i].problemContent+'</option>';
			}
			$("#questionid").append(str);
			$('#questionid').selectpicker('render');
           $('#questionid').selectpicker('refresh');
		 }
	  });
});
</script>
<script type="text/javascript">
function saveUser(){
	var url = '${pageContext.request.contextPath}/userDo/insert.do';
    $('#signupForm').form('submit',{
        url:url,
        dataType : "json",
        onSubmit: function(){
            return $(this).form('validate');
        },
        success:function(result){
			if(result=="ok"){
				window.location.href="${pageContext.request.contextPath}/indexAction/jump.do";
			}else if(result=="a_erro"){
					$.messager.show({
 					title:'Message',
 					msg:'您的信息添加失败，请联系我们',
 					timeout:2000,
 					showType:'slide'
 				});
            }else{
            	$.messager.show({
					title:'Message',
					msg:'您添加的信息已经存在，请勿重复提交',
					timeout:2000,
					showType:'slide'
				});
            }
        }
    });
	}	

</script>
</head>
<body class="loginbody">
<div>
	<div class="loginbox registbox">
		<div class="logo-a">
			<a target="_Blank" tabindex="-1" href="${pageContext.request.contextPath}/indexAction/index.do">
				<img src="${pageContext.request.contextPath}/resources/images/logo-a.png">
			</a>
		</div>
		<div class="login-content reg-content">
			<div class="loginbox-title">
				<h3>注册</h3>
			</div>
			<form id="signupForm" class="form-horizontal" method="post">
			<div class="form-group">
				<label class="col-sm-2 control-label" for="username">您的姓名</label>
				<div class="col-sm-10">
     				<input type="text" class="form-control" id="userName" name="userName" style="width: 200px">
   				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="password">您的密码</label>
				<div class="col-sm-10">
				<input type="password" value="" class="form-control" name="adminPasw" id="adminPasw" style="width: 200px">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="passwordAgain">请确认密码</label>
				<div class="col-sm-10">
				<input type="password" value="" class="form-control" style="width: 200px" id="passwordAgain">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="userTel">您的电话</label>
				<div class="col-sm-10">
				<input type="text" value="" class="form-control" style="width: 200px" name="userPhone" id="userPhone">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="userEmail">您的Email</label>
				<div class="col-sm-10">
				<input type="text" value="" class="form-control" style="width: 200px" name="userEmail" id="userEmail">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="userAdress">您的地址</label>
				<div class="col-sm-10">
				<input type="text" value="" class="form-control" style="width: 200px" name="userAdress" id="userAdress">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="userMotto">您的座右铭</label>
				<div class="col-sm-10">
				<input type="text" value="" class="form-control" style="width: 200px" name="userMotto" id="userMotto">
				</div>
			</div>
			<div class="form-group">
					<label class="col-lg-2 control-label">密保问题</label>
					<div class="col-sm-10" style="width: 230px">
						<select class="selectpicker show-tick form-control" data-live-search="false" id="questionid" name="questionid" >
								<option value="0">请选择</option>
						</select>
					</div>
					<input type="text" value="" class="form-control" style="width: 200px" name="problemContent" id="problemContent">
			</div>
			<div class="form-group">
					<label class="col-lg-2 control-label">您是</label>
					<div class="col-sm-10" style="width: 230px">
						<select class="selectpicker show-tick form-control" data-live-search="false" id="userTypeId" name="userTypeId" >
						</select>
					</div>
			</div>
			<div align="center" >
				<button type="button" class="btn btn-primary" style="width: 200px" onclick="saveUser()">注册</button>
			</div>
			</form>
			<div class="go-regist">
				已有帐号,请<a href="${pageContext.request.contextPath}/admin/login.do" class="link">登录</a>
			</div>
</div>
	<div id="footer" align="center">
	<div class="dblock">
		<div class="inline-block copyright">
			<p><a href="#">关于我们</a> | <a href="${pageContext.request.contextPath}/indexAction/contact.do">客服反馈</a> | <a href="#">隐私政策</a></p>
			<p> Copyright © 2017 家教中心</p>
		</div>
	</div>
	</div>
	
</div>
</div>
</body>
</html>