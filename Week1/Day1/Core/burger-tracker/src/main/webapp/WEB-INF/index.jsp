<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Burger Tracker</title>
    <link rel="stylesheet" href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4 text-center">Burger Tracker</h1>
        
        <div class="card mb-5">
            <div class="card-header bg-primary text-white">
                <h3 class="mb-0">Burger List</h3>
            </div>
            <div class="card-body">
                <table class="table table-striped table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>Burger Name</th>
                            <th>Restaurant Name</th>
                            <th>Rating</th>
                            <th>Notes</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="burger" items="${burgers}">
                            <tr>
                                <td>${burger.burgerName}</td>
                                <td>${burger.restaurantName}</td>
                                <td>${burger.rating}</td>
                                <td>${burger.notes}</td>
                                <td>
                                <a href="/burgers/${burger.id}/edit">
                                  Edit
                                </a>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        
        <div class="card">
            <div class="card-header bg-success text-white">
                <h3 class="mb-0">Add a Burger</h3>
            </div>
            <div class="card-body">
                <form:form action="/burgers" method="post" modelAttribute="burger" class="p-3">
                    <div class="mb-3">
                        <form:label path="burgerName" class="form-label">Burger Name</form:label>
                        <form:input path="burgerName" class="form-control" />
                        <form:errors path="burgerName" class="text-danger"/>
                    </div>
                    <div class="mb-3">
                        <form:label path="restaurantName" class="form-label">Restaurant Name</form:label>
                        <form:input path="restaurantName" class="form-control" />
                        <form:errors path="restaurantName" class="text-danger"/>
                    </div>
                    <div class="mb-3">
                        <form:label path="rating" class="form-label">Rating (1-5)</form:label>
                        <form:input path="rating" type="number"  class="form-control" />
                        <form:errors path="rating" class="text-danger" />
                    </div>
                    <div class="mb-3">
                        <form:label path="notes" class="form-label">Notes</form:label>
                        <form:textarea path="notes" class="form-control"  />
                        <form:errors path="notes" class="text-danger" />
                    </div>
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
    <script src="/webjars/bootstrap/5.2.3/js/bootstrap.bundle.min.js"></script>
</body>
</html>
