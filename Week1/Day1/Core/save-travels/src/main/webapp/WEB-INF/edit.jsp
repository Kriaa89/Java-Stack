<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Edit Expense</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header bg-warning">
                <h1 class="h3 mb-0">Edit Expense</h1>
            </div>
            <div class="card-body">
                <form:form action="/expenses/${expense.id}" method="post" modelAttribute="expense" class="row g-3">
                    <input type="hidden" name="_method" value="put">
                    
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
                    
                    <div class="col-12 d-flex gap-2">
                        <button type="submit" class="btn btn-primary">Update</button>
                        <a href="/" class="btn btn-secondary">Cancel</a>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</body>
</html>


