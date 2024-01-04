<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.example.demo.entity.Produit" %>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Product</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
    <!-- Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"
          integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8sh+WyNtv5HIc2K5tr5NQdb4PvymdS2t9j2OO6"
          crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa; /* Light gray background color */
        }

        .navbar {
            background-color: #6c757d; /* Grey color for the navbar */
        }

        .navbar-brand {
            color: #fff;
            font-size: 24px;
        }

        .navbar-toggler-icon {
            color: #fff;
        }

        .nav-link {
            color: #fff !important;
            font-size: 18px;
        }

        .card {
            margin-top: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #6c757d; /* Green color */
            color: #ffffff; /* White text color */
            font-weight: bold;
            text-align: center;
        }

        .form-control {
            border: 2px solid #6c757d; /* Green border for form controls */
        }

        .btn-primary {
            background-color: #6c757d; /* Green color */
            border: none;
        }

        .btn-primary:hover {
            background-color: #6c757d; /* Darker green on hover */
        }
    </style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#"><i class="fas fa-cogs"></i> Product Management System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="#"><i class="fas fa-home"></i> Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#"><i class="fas fa-edit"></i> Edit product</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header">
                    <h3><i class="fas fa-edit"></i> Edit Product</h3>
                </div>
                <div class="card-body">
                    <form action="${pageContext.request.contextPath}/edit/${product.id}" method="post">
                        <input type="hidden" name="id" value="${product.id}">
                        <div class="mb-3">
                            <label for="productName">Product Name</label>
                            <input type="text" name="name" id="productName" class="form-control" value="${product.name}">
                        </div>
                        <div class="mb-3">
                            <label for="productDescription">Product Description</label>
                            <input type="text" name="description" id="productDescription" class="form-control" value="${product.description}">
                        </div>
                        <div class="mb-3">
                            <label for="productPrice">Product Price</label>
                            <input type="text" name="prix" id="productPrice" class="form-control" value="${product.prix}">
                        </div>

                        <button class="btn btn-primary"><i class="fas fa-save"></i> Update</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS and Popper.js -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-66qmT6q7xVy1cP3QysxuQ4M4ScLgGJJn9qAocxPSTddA= sha384-Pzjw8L+gGq7p9+33QTYBR0ZpKNTbDIw8nd2o6d8AEwnFrd4C2ZqFl4HqI6AzN5e0"
        crossorigin="anonymous"></script>
</body>
</html>
