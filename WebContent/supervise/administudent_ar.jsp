<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>高中信息添加</title>
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
				$("#ar_money").append(str);
				$('#ar_money').selectpicker('render');
                $('#ar_money').selectpicker('refresh');
			 }
		  });
		 $.ajax({
				 type : "post",
				 url  : "${pageContext.request.contextPath}/data/arc.do",   
				 dataType : "json",
				 success : function(result) {
					var str = '';
					for(var i in result) {
					str += '<option value="'+result[i].classId+'">'+result[i].className+'</option>';
					}
					$("#ar_subject").append(str);
					$('#ar_subject').selectpicker('render');
		           $('#ar_subject').selectpicker('refresh');
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
				$("#ar_identity").append(str);
				$('#ar_identity').selectpicker('render');
	           $('#ar_identity').selectpicker('refresh');
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
				$("#ar_sex").append(str);
				$('#ar_sex').selectpicker('render');
	           $('#ar_sex').selectpicker('refresh');
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
				$("#ar_teaching").append(str);
				$('#ar_teaching').selectpicker('render');
	           $('#ar_teaching').selectpicker('refresh');
			 }
		  });
	});
  </script>
  <script type="text/javascript">
	function saveArts(){
		var url = '${pageContext.request.contextPath}/arts/insert.do';
      $('#ar_form').form('submit',{
          url:url,
          onSubmit: function(){
              return $(this).form('validate');
          },
          success:function(result){
        	  alert(result.Mens)
				if(result.Mens=="insert_success"){
					$.messager.show({
						title:'Message',
						msg:'您的信息添加成功',
						timeout:2000,
						showType:'slide'
					});
				}else if(result.Mens=="insert_fail"){
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
        <h1 class="page-title">I am a 文科生</h1>
   </div>
   <div class="container-fluid">
        <div class="row-fluid">
           	<div class="modal-body" >
            <form id="ar_form" name="ar_form" method="post" class="form-horizontal"> 
			  <div role="tabpanel" class="tab-pane fade in active" id="ps" aria-labelledby="home-tab">
			  	<div class="form-group">
   					 <label  class="col-sm-2 control-label">姓名：</label>
   						<div class="col-sm-10">
     						<input type="text" class="form-control" id="ar_name" name="ar_name" style="width: 200px">
   						</div>
  				</div>
			  	<div class="form-group">
   					 <label  class="col-sm-2 control-label">所在地区：</label>
   					 <div class="col-sm-10">
     					 <input type="text" class="form-control" id="ar_adress" name="ar_adress" style="width: 200px">
   					 </div>
  				</div>
			  	<div class="form-group">
   					 <label  class="col-sm-2 control-label">联系方式：</label>
   					 <div class="col-sm-10">
     					 <input type="text" class="form-control" id="ar_phone" name="ar_phone" style="width: 200px">
   					 </div>
  				</div>
  				 <div class="form-group">
					<label class="col-lg-2 control-label">身份要求：</label>
					<div class="col-sm-10">
						<select class="selectpicker show-tick form-control"  multiple data-live-search="false" multiple data-max-options="1" id="ar_identity" name="ar_identity" style="width: 200px">
						</select>
					</div>
				</div>
  				<div class="form-group">
					<label class="col-lg-2 control-label">性别要求：</label>
					<div class="col-sm-10">
						<select class="selectpicker show-tick form-control" data-live-search="false" id="ar_sex" name="ar_sex" style="width: 200px">
						</select>
					</div>
				</div>
  				<div class="form-group">
					<label class="col-lg-2 control-label">授课方式：</label>
					<div class="col-sm-10">
						<select class="selectpicker show-tick form-control" data-live-search="false" id="ar_teaching" name="ar_teaching" style="width: 200px">
						</select>
					</div>
				</div>
  				 <div class="form-group">
					<label class="col-lg-2 control-label">课时费：</label>
					<div class="col-sm-10">
						<select class="form-control show-tick selectpicker"  data-live-search="false" id="ar_money" name="ar_money" style="width: 200px">
						</select>
					</div>
				</div>
  				 <div class="form-group">
					<label class="col-lg-2 control-label">求教科目：</label>
					<div class="col-sm-10">
						<select class="selectpicker show-tick form-control" multiple data-max-options="5" data-live-search="false" id="ar_subject" name="ar_subject">
						</select>
					</div>
				</div>
				<div class="form-group">
   					 <label  class="col-sm-2 control-label">具体要求：</label>
   					 <div class="col-sm-10">
     					 <input type="text" class="form-control" id="ar_demand"  name="ar_demand">
   					 </div>
  				</div>
				<div class="form-group">
    				<div class="col-sm-offset-2 col-sm-10">
     					 <button type="button" class="btn btn-default" onclick="saveArts()" style="margin-left: 40px;margin-top: 10px">提交</button>
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

