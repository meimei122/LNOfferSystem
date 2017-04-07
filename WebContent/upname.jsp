<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="refresh" content="2;url=${pageContext.request.contextPath}/userDo/administrate.do?adminId=${adminId}">
<title>正在为您跳转。。</title>
</head>
<body>
	<div id="div" >
		<a href="${pageContext.request.contextPath}/userDo/administrate.do?adminId=${adminId}"
			style="background-image: url('${pageContext.request.contextPath}/images/upname.png');  
				width:600px; height:300px; display:block;"></a>
	</div>
</body>
