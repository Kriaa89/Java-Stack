<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Save Travels</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <h1 class="mb-4">Save Travels</h1>
        
        <div class="card mb-5">
            <div class="card-header bg-primary text-white">
                <h2 class="h4 mb-0">All Expenses</h2>
            </div>
            <div class="card-body">
                <table class="table table-striped table-hover">
                    <thead class="table-dark">
                        <tr>
                            <th>Expense</th>
                            <th>Vendor</th>
                            <th>Amount</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="expense" items="${expenses}">
                            <tr>
                                <td><a href="/expenses/${expense.id}">${expense.name}</a></td>
                                <td>${expense.vendor}</td>
                                <td>$${expense.amount}</td>
                                <td>
                                    <div class="d-flex gap-2">
                                        <a href="/expenses/${expense.id}/edit" class="btn btn-sm btn-warning">Edit</a>
                                        <form action="/expenses/${expense.id}" method="post">
                                            <input type="hidden" name="_method" value="delete">
                                            <button class="btn btn-sm btn-danger">Delete</button>
                                        </form>
                                    </div>
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>

        <div class="card">
            <div class="card-header bg-success text-white">
                <h2 class="h4 mb-0">Add an expense</h2>
            </div>
            <div class="card-body">
                <form:form action="/expenses" method="post" modelAttribute="expense" class="row g-3">
                    <div class="col-md-6">
                        <form:label path="name" class="form-label">Expense Name:</form:label>
                        <form:input path="name" class="form-control"/>
                        <form:errors path="name" class="text-danger"/>
                    </div>
                    <div class="col-md-6">
                        <form:label path="vendor" class="form-label">Vendor:</form:label>
                        <form:input path="vendor" class="form-control"/>
                        <form:errors path="vendor" class="text-danger"/>
                    </div>
                    <div class="col-md-6">
                        <form:label path="amount" class="form-label">Amount:</form:label>
                        <form:input path="amount" type="number" step="0.01" class="form-control"/>
                        <form:errors path="amount" class="text-danger"/>
                    </div>
                    <div class="col-md-6">
                        <form:label path="description" class="form-label">Description:</form:label>
                        <form:textarea path="description" class="form-control" rows="3"/>
                        <form:errors path="description" class="text-danger"/>
                    </div>
                    <div class="col-12">
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>
