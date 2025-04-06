<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Time</title>
	<script src="/js/app.js"></script>
</head>
<bdoy>
	<div class="time-container">
		<p class="date">
			<fmt:formatDate pattern="h:m a" value="${currentTime}"/>
		</p>
	</div>
<body>
</html>