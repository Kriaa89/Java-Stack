<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>     
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Edit Book</title>
</head>
<body class="container mt-5">
    <h1 class="mb-4">Edit Book</h1>
    <form:form action="/books/${book.id}" method="post" modelAttribute="book" class="needs-validation">
        <input type="hidden" name="_method" value="put">
        <div class="mb-3">
            <form:label path="title" class="form-label">Title</form:label>
            <form:errors path="title" class="text-danger"/>
            <form:input path="title" class="form-control"/>
        </div>
        <div class="mb-3">
            <form:label path="author" class="form-label">Author</form:label>
            <form:errors path="author" class="text-danger"/>
            <form:textarea path="author" class="form-control"/>
        </div>
        <div class="mb-3">
            <form:label path="thoughts" class="form-label">Thoughts</form:label>
            <form:errors path="thoughts" class="text-danger"/>
            <form:textarea path="thoughts" class="form-control"/>
        </div>   
        <input type="submit" value="Submit" class="btn btn-primary"/>
    </form:form>
</body>
</html>

