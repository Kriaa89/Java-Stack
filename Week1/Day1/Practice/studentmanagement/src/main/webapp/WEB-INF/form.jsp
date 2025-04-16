<%@ page language="java" contentType="text/html; charset=UTF-8" 
pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Student Registration</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="row justify-content-center">
            <div class="col-md-6">
                <div class="card shadow">
                    <div class="card-header bg-primary text-white">
                        <h3 class="mb-0">Student Registration Form</h3>
                    </div>
                    <div class="card-body">
                        <form:form method="post" modelAttribute="userForm" action="/save">
                            <div class="mb-3">
                                <label for="name" class="form-label">Name:</label>
                                <form:input path="name" id="name" class="form-control"/>
                            </div>
                            <div class="mb-3">
                                <label for="email" class="form-label">Email:</label>
                                <form:input path="email" id="email" class="form-control"/>
                            </div>
                            <div class="mb-3">
                                <label for="course" class="form-label">Course:</label>
                                <form:select path="course" id="course" class="form-select">
                                    <form:option value="java">Java</form:option>
                                    <form:option value="python">Python</form:option>
                                    <form:option value="javascript">JavaScript</form:option>
                                </form:select>
                            </div>
                            <div class="d-grid">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- Bootstrap JS Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

