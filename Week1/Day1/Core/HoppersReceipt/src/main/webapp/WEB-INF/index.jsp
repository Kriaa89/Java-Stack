<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Demo JSP</title>
    </head>
<body>
   <div>
	<h1><c:out value="${name}"/></h1>
	<h2><c:out value="${itemName}"/></h2>
	<h2><c:out value="${description}"/></h2>
	<h2><c:out value="${vendor}"/></h2>
   </div>
   
</body>
</html>