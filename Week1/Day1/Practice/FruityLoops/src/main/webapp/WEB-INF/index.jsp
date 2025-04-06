<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
   <div class="container mt-5">
      <h1 class="mb-4">Fruit Store</h1>
      <table class="table table-striped">
         <thead>
          <tr>
          <th>Name</th>
          <th>Price</th>
          </tr>
         </thead>
         <tbody>
           <c:forEach var="fruit" items="${fruits}">
                 <tr>
                   <td><c:out value="${fruit.name}"/></td>
                   <td class="price">$<c:out value="${fruit.price}"/></td>
                </tr>
          </c:forEach>
         </tbody>
      </table>
   </div>
</body>
</html>