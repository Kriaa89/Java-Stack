<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit Burger</title>
    <link rel="stylesheet" href="/webjars/bootstrap/5.2.3/css/bootstrap.min.css">
</head>
<body>
    <div class="container mt-5">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h1>Edit Burger</h1>
            <a href="/" class="btn btn-secondary">Back to Burgers</a>
        </div>
        
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h3 class="mb-0">Edit Your Burger</h3>
            </div>
            <div class="card-body">
                <form:form action="/burgers/${burger.id}" method="post" modelAttribute="burger" class="p-3">
                    <input type="hidden" name="_method" value="put">
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
                        <form:input path="rating" type="number" class="form-control" />
                        <form:errors path="rating" class="text-danger" />
                    </div>
                    <div class="mb-3">
                        <form:label path="notes" class="form-label">Notes</form:label>
                        <form:textarea path="notes" class="form-control" rows="3" />
                        <form:errors path="notes" class="text-danger" />
                    </div>
                    <div class="d-grid">
                        <button type="submit" class="btn btn-primary">Update Burger</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>
