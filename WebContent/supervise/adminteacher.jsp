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
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/locale/easyui-lang-zh_CN.js"></script>
  <jsp:include page="publicpage/header.jsp"></jsp:include>
  <script type="text/javascript">
  $(document).ready(function(){
		 $.ajax({
			 type : "post",
			 url  : "${pageContext.request.contextPath}/data/sex.do",   
			 dataType : "json",
			 success : function(result) {
				var str = '';
				for(var i in result) {
				str += '<option value="'+result[i].sexId+'">'+result[i].sexContxt+'</option>';
				}
				$("#tutorSexId").append(str);
				$('#tutorSexId').selectpicker('render');
	           $('#tutorSexId').selectpicker('refresh');
			 }
		  });
		 $.ajax({
			 type : "post",
			 url  : "${pageContext.request.contextPath}/data/ttype.do",   
			 dataType : "json",
			 success : function(result) {
				var str = '';
				for(var i in result) {
				str += '<option value="'+result[i].tutorTypeId+'">'+result[i].tutorContxt+'</option>';
				}
				$("#tutorTypeId").append(str);
				$('#tutorTypeId').selectpicker('render');
	           $('#tutorTypeId').selectpicker('refresh');
			 }
		  });
		 $.ajax({
			 type : "post",
			 url  : "${pageContext.request.contextPath}/data/ttime.do",   
			 dataType : "json",
			 success : function(result) {
				var str = '';
				for(var i in result) {
				str += '<option value="'+result[i].tutorTimeId+'">'+result[i].timeContxt+'</option>';
				}
				$("#tutorTimeId").append(str);
				$('#tutorTimeId').selectpicker('render');
	           $('#tutorTimeId').selectpicker('refresh');
			 }
		  });
		 $.ajax({
			 type : "post",
			 url  : "${pageContext.request.contextPath}/data/tmethod.do",   
			 dataType : "json",
			 success : function(result) {
				var str = '';
				for(var i in result) {
				str += '<option value="'+result[i].methodId+'">'+result[i].methodContext+'</option>';
				}
				$("#menthId").append(str);
				$('#menthId').selectpicker('render');
	           $('#menthId').selectpicker('refresh');
			 }
		  });
		 $.ajax({
			 type : "post",
			 url  : "${pageContext.request.contextPath}/data/tgrade.do",   
			 dataType : "json",
			 success : function(result) {
				var str = '';
				for(var i in result) {
				str += '<option value="'+result[i].tutorGradeId+'">'+result[i].gradeContxt+'</option>';
				}
				$("#tutorGradeId").append(str);
				$('#tutorGradeId').selectpicker('render');
	           $('#tutorGradeId').selectpicker('refresh');
			 }
		  });
		 $.ajax({
				 type : "post",
				 url  : "${pageContext.request.contextPath}/data/prc.do",   
				 dataType : "json",
				 success : function(result) {
					var str = '';
					for(var i in result) {
					str += '<option value="'+result[i].classId+'">'+result[i].className+'</option>';
					}
					$("#tutorSubject").append(str);
					$('#tutorSubject').selectpicker('render');
		           $('#tutorSubject').selectpicker('refresh');
				 }
			  });
		 $.ajax({
			 type : "post",
			 url  : "${pageContext.request.contextPath}/data/price.do",   
			 dataType : "json",
			 success : function(result) {
				var str = '';
				for(var i in result) {
				str += '<option value="'+result[i].priceId+'">'+result[i].priceNumber+'</option>';
				}
				$("#priceId").append(str);
				$('#priceId').selectpicker('render');
                $('#priceId').selectpicker('refresh');
			 }
		  });
	});
  </script>
  <script type="text/javascript">
  		function subjectShow(){
  			$("#tutorSubject").empty();//清空下拉框
  			var select = $("#tutorGradeId").val();
  			if(select == 1){
  				 $.ajax({
  					 type : "post",
  					 url  : "${pageContext.request.contextPath}/data/prc.do",   
  					 dataType : "json",
  					 success : function(result) {
  						var str = '';
  						for(var i in result) {
  						str += '<option value="'+result[i].classId+'">'+result[i].className+'</option>';
  						}
  						$("#tutorSubject").append(str);
  						$('#tutorSubject').selectpicker('render');
  			           $('#tutorSubject').selectpicker('refresh');
  					 }
  				  });
  			 }else{
  				 $.ajax({
  					 type : "post",
  					 url  : "${pageContext.request.contextPath}/data/arc.do",   
  					 dataType : "json",
  					 success : function(result) {
  						var str = '';
  						for(var i in result) {
  						str += '<option value="'+result[i].classId+'">'+result[i].className+'</option>';
  						}
  						$("#tutorSubject").append(str);
  						$('#tutorSubject').selectpicker('render');
  			           $('#tutorSubject').selectpicker('refresh');
  					 }
  				  });
  			 }
  		}
  </script>
   <script type="text/javascript">
  	 function saveTeacher(){
  		    $('#signupForm').form('submit',{
  		        url:"${pageContext.request.contextPath}/tutor/insert.do",
  		        dataType : "json",
  		        onSubmit: function(){
  		            return $(this).form('validate');
  		        },
  		        success:function(result){
  					if(result=="ok"){
  						$.messager.show({
  		 					title:'Message',
  		 					msg:'您的信息添加成功',
  		 					timeout:2000,
  		 					showType:'slide'
  						});
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
<div class="content">
   <div class="header">
        <h1 class="page-title">I am a 老师</h1>
   </div>
   <div class="container-fluid">
        <div class="row-fluid">
           	<div class="modal-body" >
            	   <div class="container-fluid">
        <div class="row-fluid">
           	<div class="modal-body" >
            <form id="signupForm" class="form-horizontal" method="post" >
			<div class="form-group">
				<label class="col-sm-2 control-label" for="username">您的姓名</label>
				<div class="col-sm-10">
     				<input type="text" class="form-control" id="tutorName" name="tutorName" style="width: 200px">
   				</div>
			</div>
			<div class="form-group">
					<label class="col-lg-2 control-label">您是</label>
					<div class="col-sm-10" style="width: 230px">
						<select class="selectpicker show-tick form-control" data-live-search="false" id="tutorSexId" name="tutorSexId" >
						</select>
					</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="password">您的电话</label>
				<div class="col-sm-10">
					<input type="text" value="" class="form-control" name="tutorPhone" id="tutorPhone" style="width: 200px">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="passwordAgain">您的邮箱</label>
				<div class="col-sm-10">
					<input type="text" value="" class="form-control" style="width: 200px" id="tutorEmail" name="tutorEmail">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="userTel">您的年龄</label>
				<div class="col-sm-10">
					<input type="text" value="" class="form-control" style="width: 200px" name="tutorAge" id="tutorAge">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="userAdress">您的地址</label>
				<div class="col-sm-10">
					<input type="text" value="" class="form-control" style="width: 200px" name="userAdress" id="userAdress">
				</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="userEmail">您的经验</label>
				<div class="col-sm-10" style="width: 230px">
						<select class="selectpicker show-tick form-control" data-live-search="false" id="tutorTimeId" name="tutorTimeId" >
						</select>
				</div>
			</div>
			<div class="form-group">
					<label class="col-lg-2 control-label">您是</label>
					<div class="col-sm-10" style="width: 230px">
						<select class="selectpicker show-tick form-control" 
								data-live-search="false" id="tutorTypeId" name="tutorTypeId" >
						</select>
					</div>
			</div>
			<div class="form-group">
					<label class="col-lg-2 control-label">您擅长于</label>
					<div class="col-sm-10" style="width: 230px">
						<select class="selectpicker show-tick form-control"
								data-live-search="false" id="tutorGradeId" name="tutorGradeId"  onchange="subjectShow()">
						</select>
					</div>
					<div class="col-sm-10" style="width: 400px">
						<select class="form-control show-tick selectpicker" multiple data-max-options="5" data-live-search="false" id="tutorSubject" name="tutorSubject" >
						</select>
					</div>
			</div>
			<div class="form-group">
					<label class="col-lg-2 control-label">您的授课方式</label>
					<div class="col-sm-10" style="width: 230px">
						<select class="selectpicker show-tick form-control" data-live-search="false" id="menthId" name="menthId" >
						</select>
					</div>
			</div>
			<div class="form-group">
					<label class="col-lg-2 control-label">您的期望薪酬</label>
					<div class="col-sm-10" style="width: 230px">
						<select class="selectpicker show-tick form-control" data-live-search="false" id="priceId" name="priceId" >
						</select>
					</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 control-label" for="userMotto">您的自我简介</label>
				<div class="col-sm-10">
					<textarea class="form-control" rows="4"  name="tutorPresent" id="tutorPresent"></textarea>
				</div>
			</div>
			<div style="margin-left: 170px" >
				<button type="button" class="btn btn-primary" onclick="saveTeacher()" style="width: 200px" >提交</button>
			</div>
			</form>
            </div>
  		</div>
   </div>
            </div>
  		</div>
   </div>
</div>    
    
  <jsp:include page="publicpage/footer.jsp"></jsp:include>    
  </body>
</html>
