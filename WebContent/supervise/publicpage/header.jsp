<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css"  />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/supervise/lib/validator/bootstrapValidator.css"/>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap-select.css" >
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/supervise/stylesheets/theme.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/supervise/lib/font-awesome/css/font-awesome.css"/>
<link rel='stylesheet' type="text/css" href="${pageContext.request.contextPath}/css/style.css"   />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/themes/default/easyui.css"  />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/themes/icon.css" />
<script type="text/javascript"src="${pageContext.request.contextPath}/js/bootstrap-select.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-1.9.1.js"></script>
    <!-- Demo page code -->

    <style type="text/css">
        #line-chart {
            height:300px;
            width:800px;
            margin: 0px auto;
            margin-top: 1em;
        }
        .brand { font-family: georgia, serif; }
        .brand .first {
            color: #ccc;
            font-style: italic;
        }
        .brand .second {
            color: #fff;
            font-weight: bold;
        }
        .nav-list a{
        	font-size: 15px;
        }
        .on{
        	background-color: #e0e0e8;
        }
    </style>


    <!-- Le fav and touch icons -->
    <link rel="shortcut icon" href="../assets/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="../assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="../assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="../assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="../assets/ico/apple-touch-icon-57-precomposed.png">
<body>
	<div class="navbar">
        <div class="navbar-inner">
                <ul class="nav pull-right">
                    <li id="fat-menu" class="dropdown">
                        <a href="#" role="button" class="dropdown-toggle" data-toggle="dropdown">
                            <i class="icon-user"></i>${userName}
                            <i class="icon-caret-down"></i>
                        </a>

                        <ul class="dropdown-menu">
                            <li><a tabindex="-1" href="${pageContext.request.contextPath}/indexAction/index.do">主页</a></li>
                            <li class="divider"></li>
                            <li><a tabindex="-1"href="javascript:window.close()">退出</a></li>
                        </ul>
                    </li>
                </ul>
                <a class="brand" href="${pageContext.request.contextPath}/indexAction/index.do"><span class="first">Tutor</span> <span class="second">Center</span></a>
        </div>
    </div>
    <div class="sidebar-nav">
        <a href="#dashboard-menu"  data-toggle="collapse" aria-expanded="true" aria-controls="dashboard-menu" class="nav-header" ><span class="glyphicon glyphicon-user" aria-hidden="true"></span>用户</a>
        <ul id="dashboard-menu" class="nav nav-list collapse in">
        	<li><a href="${pageContext.request.contextPath}/userDo/administrate.do">个人信息</a></li>
        </ul>	
        <c:if test="${userTypeId==2}">
		<a href="#addstuMes-menu" class="nav-header" data-toggle="collapse" ><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>我要请家教</a>
        <ul id="addstuMes-menu" class="nav nav-list collapse in">
        	<li><a href="${pageContext.request.contextPath}/indexAction/pr.do">初中</a></li>
        	<li><a href="${pageContext.request.contextPath}/indexAction/ar.do">高中</a></li>
        </ul>
        </c:if>
        <c:if test="${userTypeId==1}">
        <a href="#addteaMes-menu" class="nav-header" data-toggle="collapse" ><span class="glyphicon glyphicon-thumbs-up" aria-hidden="true"></span>我要做家教</a>
        <ul id="addteaMes-menu" class="nav nav-list collapse in">
        	<li><a href="${pageContext.request.contextPath}/userDo/at.do">我的家教信息</a></li>
        </ul>
        </c:if>
		<a href="#updateMes-menu" class="nav-header" data-toggle="collapse" ><span class="glyphicon glyphicon-edit" aria-hidden="true"></span>我要改信息</a>
        <ul id="updateMes-menu" class="nav nav-list collapse in">
        	<li><a href="${pageContext.request.contextPath}/userDo/au.do">信息修改</a></li>
        	<li><a href="${pageContext.request.contextPath}/userDo/nu.do">登录名修改</a></li>
        	<li><a href="${pageContext.request.contextPath}/userDo/pu.do">登录密码修改</a></li>
        </ul>
        
		<a href="#manageMes-menu" class="nav-header" data-toggle="collapse" ><span class="glyphicon glyphicon-cog" aria-hidden="true"></span>我要管理信息</a>
        <ul id="manageMes-menu" class="nav nav-list collapse in">
        	<li><a href="${pageContext.request.contextPath}/tutor/adminmanage.do">信息管理</a></li>
        </ul>
       
    </div>
</body>
	<script type="text/javascript">
		$(".nav-header").on('click',function(){
			var ul = $(this).next();
			if(ul.hasClass("in")){
				ul.removeClass("in");
			}else{
				ul.addClass("in");
			}
		});
		/* $(document).ready(function(){
			$(".nav-list li").on('click',function(){
				debugger;
				$(".nav-list").find("li").removeClass("on");
				$(this).addClass("on");
			});  
		}); */
	</script>
</html>