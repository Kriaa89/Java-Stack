<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>${book.title}</title>
</head>
<body class="container mt-5">
    <h1>${book.title} by ${book.author}</h1>
    <p>${book.thoughts}</p>
    <p>${book.user.name} read <strong>${book.title}</strong> by <strong>${book.author}</strong>.</p>
    <p>Here are ${book.user.name}'s thoughts:</p>
    <p>${book.thoughts}</p>

    <c:if test="${book.user.id == user.id}">
        <a href="/books/${book.id}/edit" class="btn btn-warning">Edit</a>
        <form action="/books/${book.id}/delete" method="post" style="display: inline;">
            <input type="hidden" name="_method" value="delete">
            <input type="submit" value="Delete" class="btn btn-danger">
        </form>
    </c:if>

    <a href="/books" class="btn btn-secondary">Back to the shelves</a>
</body>
</html>