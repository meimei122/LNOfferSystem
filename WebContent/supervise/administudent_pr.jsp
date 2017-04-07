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
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.min.js"></script>
  	<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery.easyui.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/locale/easyui-lang-zh_CN.js"></script>
  <jsp:include page="publicpage/header.jsp"></jsp:include>
   <script type="text/javascript">
  $(document).ready(function(){
		 $.ajax({
			 type : "post",
			 url  : "${pageContext.request.contextPath}/data/price.do",   
			 dataType : "json",
			 success : function(result) {
				var str = '';
				for(var i in result) {
				str += '<option value="'+result[i].priceId+'">'+result[i].priceNumber+'</option>';
				}
				$("#pr_money").append(str);
				$('#pr_money').selectpicker('render');
                $('#pr_money').selectpicker('refresh');
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
					$("#pr_subject").append(str);
					$('#pr_subject').selectpicker('render');
		           $('#pr_subject').selectpicker('refresh');
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
				$("#pr_identity").append(str);
				$('#pr_identity').selectpicker('render');
	           $('#pr_identity').selectpicker('refresh');
			 }
		  });
		 $.ajax({
			 type : "post",
			 url  : "${pageContext.request.contextPath}/data/allSex.do",   
			 dataType : "json",
			 success : function(result) {
				var str = '';
				for(var i in result) {
				str += '<option value="'+result[i].sexId+'">'+result[i].sexContxt+'</option>';
				}
				$("#pr_sex").append(str);
				$('#pr_sex').selectpicker('render');
	           $('#pr_sex').selectpicker('refresh');
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
				$("#pr_teaching").append(str);
				$('#pr_teaching').selectpicker('render');
	           $('#pr_teaching').selectpicker('refresh');
			 }
		  });
	});
  </script>
  <script type="text/javascript">
  function saveUser(){
		var url = '${pageContext.request.contextPath}/primary/insert.do';
      $('#ps_form').form('submit',{
          url:url,
          onSubmit: function(){
              return $(this).form('validate');
          },
          success:function(result){
				if(result.resultMes=="insert_success"){
					$.messager.show({
						title:'Message',
						msg:'您的信息添加成功',
						timeout:2000,
						showType:'slide'
					});
					
				}else if(result.resultMes=="insert_fail"){
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
  <body class="body"> 
  <!--<![endif]-->
<div class="content">
   <div class="header">
        <h1 class="page-title">I am a 初中生</h1>
   </div>
   <div class="container-fluid">
        <div class="row-fluid">
           	<div class="modal-body" >
            <form id="ps_form" name="ps_form" method="post" class="form-horizontal"> 
			  <div role="tabpanel" class="tab-pane fade in active" id="ps" aria-labelledby="home-tab">
			  	<div class="form-group">
   					 	<label  class="col-sm-2 control-label">姓名：</label>
   						<div class="col-sm-10">
     						<input type="text" class="form-control" id="pr_name" name="pr_name" style="width: 200px">
   						</div>
  				</div>
			  	<div class="form-group">
   					 <label  class="col-sm-2 control-label">所在地区：</label>
   					 <div class="col-sm-10">
     					 <input type="text" class="form-control" id="pr_adress" name="pr_adress" style="width: 200px">
   					 </div>
  				</div>
			  	<div class="form-group">
   					 <label  class="col-sm-2 control-label">联系方式：</label>
   					 <div class="col-sm-10">
     					 <input type="text" class="form-control" id="pr_phone" name="pr_phone" style="width: 200px">
   					 </div>
  				</div>
  				 <div class="form-group">
					<label class="col-lg-2 control-label">身份要求：</label>
					<div class="col-sm-10">
						<select class="selectpicker show-tick form-control" multiple data-max-options="1"  multiple data-live-search="false" id="pr_identity" name="pr_identity" style="width: 200px">
						</select>
					</div>
				</div>
  				<div class="form-group">
					<label class="col-lg-2 control-label">性别要求：</label>
					<div class="col-sm-10">
						<select class="selectpicker show-tick form-control" data-live-search="false" id="pr_sex" name="pr_sex" style="width: 200px">
						</select>
					</div>
				</div>
  				<div class="form-group">
					<label class="col-lg-2 control-label">授课次数：</label>
					<div class="col-sm-10">
						<select class="selectpicker show-tick form-control" data-live-search="false" id="pr_teaching" name="pr_teaching" style="width: 200px">
						</select>
					</div>
				</div>
  				 <div class="form-group">
					<label class="col-lg-2 control-label">课时费：</label>
					<div class="col-sm-10">
						<select class="selectpicker show-tick form-control" data-live-search="true" id="pr_money" name="pr_money" style="width: 200px">
						</select>
					</div>
				</div>
  				 <div class="form-group">
					<label class="col-lg-2 control-label">求教科目：</label>
					<div class="col-sm-10">
						<select class="form-control show-tick selectpicker" multiple data-max-options="5" data-live-search="false"  id="pr_subject" name="pr_subject" style="width: 200px">
						</select>
					</div>
				</div>
				<div class="form-group">
   					 <label  class="col-sm-2 control-label">具体要求：</label>
   					 <div class="col-sm-10">
     					 <input type="text" class="form-control" id="pr_demand"  name="pr_demand">
   					 </div>
  				</div>
				<div class="form-group">
    				<div class="col-sm-offset-2 col-sm-10">
     					 <button type="button" class="btn btn-default" onclick="saveUser()" style="margin-left: 40px;margin-top: 10px">提交</button>
   					 </div>
			    </div>
			  </div>
		</form>
            </div>
  		</div>
   </div>
</div>
    
  <jsp:include page="publicpage/footer.jsp"></jsp:include>    
  </body>
</html>

