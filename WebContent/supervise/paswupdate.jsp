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
<%--   <script type="text/javascript" src="${pageContext.request.contextPath}/supervise/lib/validator/jquery-1.10.2.min.js"></script> --%>
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/supervise/lib/validator/bootstrap.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/supervise/lib/validator/bootstrapValidator.js"></script>
  <jsp:include page="publicpage/header.jsp"></jsp:include>
<div class="content">
   <div class="header">
        <h1 class="page-title">在这里,修改您的密码</h1>
   </div>
   <div class="container-fluid">
        <div class="row-fluid">
           	<div class="modal-body" >
	           	<form id="defaultForm" method="post" action="${pageContext.request.contextPath}/userDo/uppasw.do" class="form-horizontal">
            	<div class="form-group">
                    <label class="col-lg-3 control-label">请输入您的旧密码：</label>
                    <div class="col-lg-5">
                          <input type="password" class="form-control" name="oldpasw" />
                    </div>
                </div>
            	<div class="form-group">
                    <label class="col-lg-3 control-label">请输入您的新密码：</label>
                    <div class="col-lg-5">
                          <input type="password" class="form-control" name="password" />
                    </div>
                </div>
            	<div class="form-group">
                    <label class="col-lg-3 control-label">请确定您的新密码：</label>
                    <div class="col-lg-5">
                          <input type="password" class="form-control" name="confirmPassword" />
                    </div>
                </div>
	            <div  align="center">
					 <button type="submit" class="btn btn-primary" style="margin-top: 10px;margin-right:40px;" name="signup" value="Sign up">确定</button>
				</div>
				</form>
            </div>
  		</div>
   </div>
</div>    
    <script type="text/javascript">
	  $(document).ready(function() {
		    $("#defaultForm").bootstrapValidator({
		    	feedbackIcons: {
		    			valid: 'glyphicon glyphicon-ok',
		   				invalid: 'glyphicon glyphicon-remove',
		    			validating: 'glyphicon glyphicon-refresh'
					},
		        //字段验证
		        fields: {
		            //旧密码
		            oldpasw: {
		                validators: {
		                    notEmpty: {
		                        message: '您的旧密码不能为空。'
		                    },
	                        threshold :  6 ,
	                        remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
	                            url: '${pageContext.request.contextPath}/userDo/selpasw.do',//验证地址
	                            message: '您输入的密码不正确。',//提示消息
	                            delay :  2000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
	                            type: 'POST'//请求方式
	                        }
		                }
	           		},
	           		//新密码
		            password: {
		                validators: {
		                    notEmpty: {
		                        message: '您的新密码不能为空。'
		                    },
		                    different: {
		                        field: 'oldpasw',
		                        message: '您的新密码不能喝旧密码相同。'
		                    },
		                    stringLength:{
	                            min: 6,
	                            max: 18,
	                            message: '您的新密码长度必须在6到18位之间。'
	                        },
	                        regexp: {
	                            regexp: /^[a-zA-Z0-9_]+$/,
	                            message: '您的密码只能包含大写、小写、数字和下划线。'
	                        }
		                    
		                }
	           		},
	           		//确定新密码
		            confirmPassword: {
		                validators: {
		                    notEmpty: {
		                        message: '您两次输入的密码不相同，请重新输入密码。'
		                    },
		                    identical: {
		                        field: 'password',
		                        message: '您输入的密码与新密码不同。'
		                    }
		                }
		            }
		        }
		    })
  });
  </script>
  <jsp:include page="publicpage/footer.jsp"></jsp:include>    
  </body>
</html>
