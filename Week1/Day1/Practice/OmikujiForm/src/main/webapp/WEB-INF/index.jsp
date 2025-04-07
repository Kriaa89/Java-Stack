<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="container">
      <h1>Send an Omikuji</h1>
      <div class="container mt-4">
        <form action="/omikuji" method="post">
           <div class="form-group">
              <label for="number">Pick any number from 5 to 25</label>
              <input type="number" name="number" required>
           </div>
           <div class="form-group">
              <label for="city">Enter the name of the city</label>
              <input type="text" name="city" required>
           </div>
           <div class="form-group">
              <label for="person">Enter the name of the person</label>
              <input type="text" name="person" required>
           </div>
           <div class="form-group">
              <label for="hobby">Enter the name of the hobby</label>
              <input type="text" name="hobby" required>
           </div>
           <div class="form-group">
              <label for="livingThing">Enter the name of the living Thing</label>
              <input type="text" name="livingThing" required>
           </div>
           <div class="form-group">
              <label for="message">Enter the name of the living Thing</label>
              <input type="text" name="message" required>
           </div>
           <p>Send and Show a friend</p>
           <input type="submit" value="Send">
        </form>
      </div>
    </div>
</body>
</html>