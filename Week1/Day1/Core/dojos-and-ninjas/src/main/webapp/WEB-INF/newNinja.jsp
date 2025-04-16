<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Ninja</title>
</head>
<body>
    <h1>Add Ninja to Dojo</h1>
    <form action="/ninjas" method="post">
        <label for="dojo">Select Dojo:</label>
        <select name="dojo" id="dojo">
            <c:forEach var="dojoItem" items="${dojos}">
                <option value="${dojoItem.id}">${dojoItem.name}</option>
            </c:forEach>
        </select>
        <br />
        
        <label for="firstName">First Name:</label>
        <input type="text" id="firstName" name="firstName" required />
        <br />
        
        <label for="lastName">Last Name:</label>
        <input type="text" id="lastName" name="lastName" required />
        <br />
        
        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required />
        <br />
        
        <button type="submit">Create Ninja</button>
    </form>
</body>
</html>

</html>