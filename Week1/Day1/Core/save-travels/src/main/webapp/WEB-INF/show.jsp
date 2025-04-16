<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Expense Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
    <div class="container mt-5">
        <div class="card">
            <div class="card-header bg-primary text-white">
                <h1 class="h3 mb-0">Expense Details</h1>
            </div>
            <div class="card-body">
                <div class="row mb-3">
                    <div class="col-md-3 fw-bold">Expense Name:</div>
                    <div class="col-md-9">${expense.name}</div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-3 fw-bold">Vendor:</div>
                    <div class="col-md-9">${expense.vendor}</div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-3 fw-bold">Amount:</div>
                    <div class="col-md-9">$${expense.amount}</div>
                </div>
                <div class="row mb-3">
                    <div class="col-md-3 fw-bold">Description:</div>
                    <div class="col-md-9">${expense.description}</div>
                </div>
            </div>
            <div class="card-footer">
                <a href="/" class="btn btn-primary">Back to Dashboard</a>
            </div>
        </div>
    </div>
</body>
</html>

