<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Date</title>
	<script src="/js/app.js"></script>
</head>
<bdoy>
	<div class="date-container">
		<p class="date">
			<fmt:formatDate pattern="EEEE, 'the' d 'of' MMMM, yyyy" value="${currentDate}"/>
		</p>
	</div>
<body>
</html>