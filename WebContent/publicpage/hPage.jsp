<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-select.css">
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/themes/default/easyui.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/themes/icon.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.js"></script>
<script type="text/javascript"src="${pageContext.request.contextPath}/js/bootstrap-select.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/plugins/locale/easyui-lang-zh_CN.js"></script>
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrapValidator.min.js"></script>
<div class="logo">
	<a href="${pageContext.request.contextPath}/indexAction/index.do"><h1>家教<span>中心</span></h1></a>
			<div align="right">
				<input type="hidden" value="${userName}" id="userName" name="userName">
				<c:if test="${userName == null}">
				<A style="background: rgb(0, 142, 173); padding: 7px 10px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold;" 
href="${pageContext.request.contextPath}/admin/login.do">登录</A> 
				</c:if>
				<c:if test="${userName != null}">
				<div class="dropdown">
				<label>欢迎${userName}</label>
  					<button class="btn btn-default dropdown-toggle btn-xs" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
						管理
						<span class="caret"></span>
					</button>
				<ul class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenu1" >
   					 <li ><a  tabindex="-1"  href="${pageContext.request.contextPath}/userDo/administrate.do"><span class="glyphicon glyphicon-user" ></span>我的信息</a></li>
   					 <c:if test="${userTypeId==2}">
   					 <li ><a  tabindex="-1"  href="${pageContext.request.contextPath}/indexAction/pr.do"><span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span>我要请家教</a></li>
   					 </c:if>
   					 <c:if test="${userTypeId==1}">
   					 <li ><a  tabindex="-1"  href="${pageContext.request.contextPath}/indexAction/at.do"><span class="glyphicon glyphicon-hand-right" aria-hidden="true"></span>我要做家教</a></li>
    				 </c:if>
    				 <li ><a  href="${pageContext.request.contextPath}/admin/login.do"><span class="glyphicon glyphicon-off" aria-hidden="true"></span>退出登录</a></li>
				</ul>
				</div>
				</c:if>
				<c:if test="${userName == null}">
				<A style="background: rgb(0, 142, 173); padding: 7px 10px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold;" 
href="${pageContext.request.contextPath}/indexAction/register.do">注册</A>
				</c:if>
			</div>
</div>
	<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
<div class="clearfix"></div>
<span class="menu"></span>
	<div class="top-menu" align="center" style="margin-left: 40px">
		<ul>
			<li class="active"><a class="color1" href="${pageContext.request.contextPath}/indexAction/index.do"  >主页</a></li>
			<li><a class="color3" href="${pageContext.request.contextPath}/primary/message.do">我是学生</a></li>
			<li><a class="color2" href="${pageContext.request.contextPath}/indexAction/about.do">家教信息</a></li>
			<li><a class="color6" href="${pageContext.request.contextPath}/indexAction/contact.do">联系我们</a></li>
			<li><a class="color3" href="gallery.jsp">Gall</a></li>
		</ul>
</div>