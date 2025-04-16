<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Login and Registration</title>
</head>
<body class="container mt-5">
    <h1 class="mb-4">Register</h1>
    <form:form action="/register" modelAttribute="newUser" method="post" class="needs-validation">
        <form:errors path="*" cssClass="text-danger" />
        <div class="mb-3">
            <form:label path="name" class="form-label">Name:</form:label>
            <form:input path="name" placeholder="Enter your name" class="form-control"/>
        </div>
        <div class="mb-3">
            <form:label path="email" class="form-label">Email:</form:label>
            <form:input path="email" placeholder="Enter your email" class="form-control"/>
        </div>
        <div class="mb-3">
            <form:label path="password" class="form-label">Password:</form:label>
            <form:input path="password" type="password" placeholder="Enter your password" class="form-control"/>
        </div>
        <div class="mb-3">
            <form:label path="confirm" class="form-label">Confirm Password:</form:label>
            <form:input path="confirm" type="password" placeholder="Confirm your password" class="form-control"/>
        </div>
        <input type="submit" value="Register" class="btn btn-primary"/>
    </form:form>

    <h1 class="mt-5">Login</h1>
    <form:form action="/login" modelAttribute="newLogin" method="post" class="needs-validation">
        <form:errors path="*" cssClass="text-danger" />
        <div class="mb-3">
            <form:label path="email" class="form-label">Email:</form:label>
            <form:input path="email" placeholder="Enter your email" class="form-control"/>
        </div>
        <div class="mb-3">
            <form:label path="password" class="form-label">Password:</form:label>
            <form:input path="password" type="password" placeholder="Enter your password" class="form-control"/>
        </div>
        <input type="submit" value="Login" class="btn btn-primary"/>
    </form:form>
</body>
</html>
