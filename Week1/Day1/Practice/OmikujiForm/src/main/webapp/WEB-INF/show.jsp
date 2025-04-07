<%@ page language="java" contentType="text/html; charset=UTF-8"pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
   <div class="container">
      <h1>Here's Your Omikuji </h1>
      <p>
       in <c:out value="${number}"/> year, will live in <c:out value="${city }"/> with <c:out value="${person}"/>  as a roomate, <c:out value="${hobby}"/> for hobby.
       The next time you see <c:out value="${livingThing}"/>, you will have a good luck. also, <c:out value="${message}"/>
      </p>
   </div>
</body>
</html>