

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div>
       <h1>You have visited <a href="/">Home</a> <c:out value="${count}"/>Time(s)</h1>
       <a href="/">Visit again</a>
    </div>
</body>
</html>