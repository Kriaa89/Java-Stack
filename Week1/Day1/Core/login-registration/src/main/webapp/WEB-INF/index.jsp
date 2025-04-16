<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login and Registration</title>
</head>
<body>
    <h1>Register</h1>
    <form:form action="/register" modelAttribute="newUser" method="post">
        <form:errors path="*" cssClass="error" />
        <p>
            <form:label path="userName">User Name:</form:label>
            <form:input path="userName" placeholder="Enter your username"/>
        </p>
        <p>
            <form:label path="email">Email:</form:label>
            <form:input path="email" placeholder="Enter your email"/>
        </p>
        <p>
            <form:label path="password">Password:</form:label>
            <form:input path="password" type="password" placeholder="Enter your password"/>
        </p>
        <p>
            <form:label path="confirm">Confirm Password:</form:label>
            <form:input path="confirm" type="password" placeholder="Confirm your password"/>
        </p>
        <input type="submit" value="Register"/>
    </form:form>

    <h1>Login</h1>
    <form:form action="/login" modelAttribute="newLogin" method="post">
        <form:errors path="*" cssClass="error" />
        <p>
            <form:label path="email">Email:</form:label>
            <form:input path="email" placeholder="Enter your email"/>
            <form:errors path="email" cssClass="error"/>
        </p>
        <p>
            <form:label path="password">Password:</form:label>
            <form:input path="password" type="password" placeholder="Enter your password"/>
            <form:errors path="password" cssClass="error"/>
        </p>
        <input type="submit" value="Login"/>
    </form:form>
</body>
</html>
