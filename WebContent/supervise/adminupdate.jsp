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
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.2.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/supervise/lib/validator/bootstrap.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/supervise/lib/validator/bootstrapValidator.js"></script>
  <jsp:include page="publicpage/header.jsp"></jsp:include>
<div class="content">
   <div class="header">
        <h1 class="page-title">在这里,修改您的信息</h1>
   </div>
   <div class="container-fluid">
        <div class="row-fluid">
           	<div class="modal-body" >
	           	<form id="defaultForm" method="post" action="${pageContext.request.contextPath}/userDo/upUser.do" class="form-horizontal">
            	<div class="form-group">
                    <label class="col-lg-3 control-label">您的用户名：</label>
                    <div class="col-lg-5">
                          <input type="text" class="form-control" name="userName " value="${consumer.userName}" readonly="readonly"/>
                    </div>
                </div>
            	<div class="form-group">
                    <label class="col-lg-3 control-label">我们需要验证您的密码：</label>
                    <div class="col-lg-5">
                          <input type="password" class="form-control" name="oldpasw" />
                    </div>
                </div>
            	<div class="form-group">
                    <label class="col-lg-3 control-label">请输入您要改的电话：</label>
                    <div class="col-lg-5">
                          <input type="text" class="form-control" name="userPhone" placeholder="${consumer.userPhone}"/>
                    </div>
                </div>
            	<div class="form-group">
                    <label class="col-lg-3 control-label">请输入你要改的邮箱：</label>
                    <div class="col-lg-5">
                          <input type="text" class="form-control" name="userEmail" placeholder="${consumer.userEmail}"/>
                    </div>
                </div>
            	<div class="form-group">
                    <label class="col-lg-3 control-label">请输入你要改的地址：</label>
                    <div class="col-lg-5">
                          <input type="text" class="form-control" name="userAdress" placeholder="${consumer.userAdress}"/>
                    </div>
                </div>
            	<div class="form-group">
                    <label class="col-lg-3 control-label">请输入你要改的座右铭：</label>
                    <div class="col-lg-5">
                          <input type="text" class="form-control" name="userMotto" placeholder="${consumer.userMotto	 }"/>
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
		                        message: '您的密码不能为空。'
		                    },
	                        threshold :  6 ,
	                        remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
	                            url: '${pageContext.request.contextPath}/userDo/selpasw.do',//验证地址
	                            message: '您输入的密码不正确。',//提示消息
	                            delay :  1000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
	                            type: 'POST'//请求方式
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