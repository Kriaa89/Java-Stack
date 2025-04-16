<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Welcome, ${user.name}</title>
</head>
<body class="container mt-5">
    <h1>Welcome, ${user.name}!</h1>
    <div class="mb-3">
        <a href="/logout" class="btn btn-danger">Logout</a>
        <a href="/books/new" class="btn btn-success">+ Add a Book to Your Shelf</a>
    </div>

    <h2>Books from everyone's shelves:</h2>
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Title</th>
                <th>Author Name</th>
                <th>Posted By</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="book" items="${books}">
                <tr>
                    <td><a href="/books/${book.id}">${book.title}</a></td>
                    <td>${book.author}</td>
                    <td>${book.user.name}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
