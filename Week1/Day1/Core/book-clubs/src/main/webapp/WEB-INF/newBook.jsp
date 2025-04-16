<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Add a Book</title>
</head>
<body class="container mt-5">
    <h1 class="mb-4">Add a Book to Your Shelf!</h1>
    <form:form action="/books" method="post" modelAttribute="book" class="needs-validation">
        <div class="mb-3">
            <form:label path="title" class="form-label">Title:</form:label>
            <form:input path="title" class="form-control" />
            <form:errors path="title" class="text-danger" />
        </div>
        <div class="mb-3">
            <form:label path="author" class="form-label">Author:</form:label>
            <form:input path="author" class="form-control" />
            <form:errors path="author" class="text-danger" />
        </div>
        <div class="mb-3">
            <form:label path="thoughts" class="form-label">My thoughts:</form:label>
            <form:textarea path="thoughts" class="form-control" />
            <form:errors path="thoughts" class="text-danger" />
        </div>
        <input type="submit" value="Submit" class="btn btn-primary" />
    </form:form>
    <a href="/books" class="btn btn-secondary mt-3">Back to the shelves</a>
</body>
</html>
