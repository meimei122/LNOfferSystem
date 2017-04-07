<!DOCTYPE HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>我要找家教</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfonts-->
<link href='http://fonts.useso.com/css?family=Fugaz+One|Raleway:400,100,200,300,500,600,700,800,900' rel='stylesheet' type='text/css'>
<!--//webfonts-->
<!-- EasyUi script -->
    	<script type="text/javascript">
   		function findMes(id){
    		var ps_id = id;
    		$.post({
                 url:"${pageContext.request.contextPath}/primary/showMes.do?id="+id,
                 success:function(result){
                	 document.getElementById("primary_name").value=result.pr_name;
                	 document.getElementById("primary_subject").value=result.pr_subject;
                	 document.getElementById("primary_adress").value=result.pr_adress;
                	 document.getElementById("primary_phone").value=result.pr_phone;
                	 document.getElementById("primary_identity").value=result.pr_identity;
                	 document.getElementById("primary_demand").value=result.pr_demand;
                	 document.getElementById("primary_date").value=result.pr_date;
                	 document.getElementById("primary_teaching").value=result.pr_teaching;
                	 document.getElementById("primary_money").value=result.pr_money;
                	 document.getElementById("primary_sex").value=result.pr_sex;
                 }
             })
    	} 


    	</script>

</head>
<body>
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
<div class="typrography">
	 <div class="container">
	      <h3 class="type">读书不趁早，后来徒悔懊。 ——《清诗铎·趁早歌》</h3>
<div class="page-header">
    <!-- 信息处理 -->
    <h1>信息查询栏</h1>
    	<div id="myMessage" class="bs-example bs-example-tabs" role="tabpanel" data-example-id="togglable-tabs">
	<ul id="myTab" class="nav nav-tabs" role="tablist">
		<li role="presentation"><a href="#ps_mes" role="tab" id="profile-tab" data-toggle="tab" aria-controls="profile">初中</a></li>
		<li role="presentation" class="dropdown"><a href="#" id="myTabDrop1" class="dropdown-toggle" data-toggle="dropdown" aria-controls="myTabDrop1-contents">高中<span class="caret"></span></a>
			<ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1" id="myTabDrop1-contents">
			  <li><a href="#arts" tabindex="-1" role="tab" id="dropdown2-tab" data-toggle="tab" aria-controls="dropdown2">文科</a></li>
			  <li><a href="#science" tabindex="-1" role="tab" id="dropdown1-tab" data-toggle="tab" aria-controls="dropdown1">理科</a></li>
			</ul>
		</li>
	</ul>
	<div id="myMesContent" class="tab-content">
		<div class="tab-pane fade in active"  id="ps_mes" >
			<table class="table table-hover" style="font-family: 宋体">
				<tr>
					<th>发布者</th>
					<th>所在地区</th>
					<th>联系方式</th>
					<th>身份要求</th>
					<th>性别要求</th>
					<th>求教科目</th>
					<th>上传时间</th>
					<th>查看详细</th>
				</tr>
				<c:forEach items="${priResult.rows}" var="PrimaryStu">
					<tr>
						<td>${PrimaryStu.pr_name}</td>
						<td>${PrimaryStu.pr_adress}</td>
						<td>${PrimaryStu.pr_phone}</td>
						<td>${PrimaryStu.pr_identity}</td>
						<c:if test="${PrimaryStu.pr_sex == 0}">
							<td>不限</td>
						</c:if>
						<c:if test="${PrimaryStu.pr_sex == 1}">
							<td>男</td>
						</c:if>
						<c:if test="${PrimaryStu.pr_sex == 2}">
							<td>女</td>
						</c:if>
						<td>${PrimaryStu.pr_subject}</td>
						<td>${PrimaryStu.pr_date}</td>
						<td>
						<button  type="button" class="btn btn-default"data-toggle="modal" data-target="#myModal" onclick="findMes(${PrimaryStu.pr_id})">详细信息</button>
						</td>
					</tr> 
				</c:forEach>
			</table>
		<!-- 分页 -->
		<nav aria-label="..." >
  			<ul class="pagination pagination-lg">
  				<!-- 1 -->
  				<c:choose>
  					<c:when	test="${priResult.page.currentPage <=1 }">
  						<c:forEach var="num" begin="${priResult.pageMap.startNum}" end = "${priResult.pageMap.endNum}" step="1">
    						<li><a href="${pageContext.request.contextPath}/primary/message.do?curPage=${num}">${num}</a></li>
    					</c:forEach>
  						<li><a href="${pageContext.request.contextPath}/primary/message.do?curPage=${priResult.page.currentPage+1}" aria-label="Next"><span aria-hidden="true">下一页</span></a></li>
  					</c:when>
  					<c:when test="${priResult.page.currentPage >= priResult.page.pageNum}">
    					<li ><a href="${pageContext.request.contextPath}/primary/message.do?curPage=${priResult.page.currentPage-1}"  aria-label="Previous"><span aria-hidden="true">上一页</span></a></li>
  						<c:forEach var="num" begin="${priResult.pageMap.startNum}" end = "${priResult.pageMap.endNum}" step="1">
    						<li><a href="${pageContext.request.contextPath}/primary/message.do?curPage=${num}">${num}</a></li>
    					</c:forEach>
  					</c:when>
  					<c:otherwise>
  						<li><a href="${pageContext.request.contextPath}/primary/message.do?curPage=${priResult.page.currentPage-1}"  aria-label="Previous"><span aria-hidden="true">上一页</span></a></li>
  						<c:forEach var="num" begin="${priResult.pageMap.startNum}" end = "${priResult.pageMap.endNum}" step="1">
    						<li><a href="${pageContext.request.contextPath}/primary/message.do?curPage=${num}">${num}</a></li>
    					</c:forEach>
    					<li><a href="${pageContext.request.contextPath}/primary/message.do?curPage=${priResult.page.currentPage+1}" aria-label="Next"><span aria-hidden="true">下一页</span></a></li>
  					</c:otherwise>
  				</c:choose>
  				<li  role="presentation"><span  class="label label-info" style="font-family:宋体">第${priResult.page.currentPage}页/共${priResult.page.pageNum}页</span></li>
  </ul>
</nav>
		</div >
		<div class="tab-pane fade" id="arts">
			<p>1asda</p>
		</div>
		<div class="tab-pane fade" id="science">
			<p>1211212</p>
		</div>
	</div>
    </div>
    </div>
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
										
										//$().UItoTop({ easingType: 'easeOutQuart' });
										
									});
								</script>
		<a href="#home" id="toTop" class="scroll" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- model -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
<div class="modal-dialog" role="document">
<div class="modal-content">
<div class="modal-header">
    <h4 class="modal-title" id="myModalLabel">详细信息</h4>
</div>
<div class="modal-body" >
  	<div class="input-group">
  		<span class="input-group-addon" id="basic-addon1">发布用户</span>
  		<input id="primary_name" type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
	</div>
  	<div class="input-group">
  		<span class="input-group-addon" id="basic-addon1">所在地区</span>
  		<input id="primary_adress" type="text" class="form-control" disabled="disabled" aria-describedby="basic-addon1">
	</div>
  	<div class="input-group">
  		<span class="input-group-addon" id="basic-addon1">联系电话</span>
  		<input id="primary_phone" type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
	</div>
  	<div class="input-group">
  		<span class="input-group-addon" id="basic-addon1">身份要求</span>
  		<input id="primary_identity" type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
	</div>
  	<div class="input-group">
  		<span class="input-group-addon" id="basic-addon1">性别要求</span>
		<input id="primary_sex"type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
	</div>
  	<div class="input-group">
  		<span class="input-group-addon" id="basic-addon1">授课次数</span>
			<input id="primary_teaching"type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
	</div>
  	<div class="input-group">
  		<span class="input-group-addon" id="basic-addon1">课时费用</span>
		<input id="primary_money"type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
	</div>
  	<div class="input-group">
  		<span class="input-group-addon" id="basic-addon1">求教科目</span>
  		<input id="primary_subject" type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
	</div>
  	<div class="input-group">
  		<span class="input-group-addon" id="basic-addon1">具体要求</span>
  		<input id="primary_demand" type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
	</div>
  	<div class="input-group">
  		<span class="input-group-addon" id="basic-addon1">提交时间</span>
  		<input id="primary_date" type="text" class="form-control" disabled="disabled"  aria-describedby="basic-addon1">
	</div>
</div> 
<!-- 关闭按钮 -->
<div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" >Close</button>
</div>
</div>
</div>
</div>	
</body>
</html>