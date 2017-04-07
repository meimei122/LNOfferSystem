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
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.10.2.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/supervise/lib/validator/bootstrap.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/supervise/lib/validator/bootstrapValidator.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery.easyui.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/locale/easyui-lang-zh_CN.js"></script>
  <jsp:include page="publicpage/header.jsp"></jsp:include>
<div class="content">
   <div class="header">
        <h1 class="page-title">在这里,修改您的登录名</h1>
   </div>
   <div class="container-fluid">
        <div class="row-fluid">
           	<div class="modal-body" >
	           <form id="defaultForm" action="${pageContext.request.contextPath}/userDo/upName.do"  method="post" class="form-horizontal">
	           	<div class="form-group">
	  					<label class="col-lg-3 control-label">您原先的登陆名</label>
	  				<div class="col-lg-5">
	  					<input  name="adminName" value="${adminName.adminName}" type="text" class="form-control" readonly="readonly">
					</div>
				</div>
	            <div class="form-group">
	  					<label class="col-lg-3 control-label">您要改的登陆名</label>
	  				<div class="col-lg-5">
	  					<input name="username" type="text" class="form-control">
					</div>
				</div>
				<div  align="center">
	     			<button type="submit" class="btn btn-primary" style="margin-top: 10px;margin-right:40px;">确定</button>
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
		        	username: {
		                validators: {
		                    notEmpty: {
		                        message: '用户名不能为空。'
		                    },
		                    stringLength:{
	                            min: 6,
	                            max: 18,
	                            message: '用户名长度必须在6到18位之间。'
	                        },
	                        regexp: {
	                            regexp: /^[a-zA-Z0-9_]+$/,
	                            message: '用户名只能包含大写、小写、数字和下划线。'
	                        },
	                        threshold :  6 ,
	                        remote: {//ajax验证。server result:{"valid",true or false} 向服务发送当前input name值，获得一个json数据。例表示正确：{"valid",true}  
	                            url: '${pageContext.request.contextPath}/userDo/selName.do',//验证地址
	                            message: '用户名已经存在',//提示消息
	                            delay :  2000,//每输入一个字符，就发ajax请求，服务器压力还是太大，设置2秒发送一次ajax（默认输入一个字符，提交一次，服务器压力太大）
	                            type: 'POST'//请求方式
	                        }
	                        /* , 
	                        different: {
		                        field: 'adminName',
		                        message: '新用户名不能和旧用户名相同。'
		                    } */
		                }
	           		}
		        }
		    })
  });
  </script>
  <jsp:include page="publicpage/footer.jsp"></jsp:include>    
  </body>
</html>
