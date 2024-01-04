<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ page import="com.example.demo.entity.Produit" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Product Management System</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
    <style>
        body {
            background-color: #f8f9fa; /* Light gray background color */
        }

        .navbar {
            background-color: #007bff; /* Bootstrap primary color */
        }

        .navbar-brand, .nav-link {
            color: #ffffff !important; /* White text color */
        }

        .card {
            margin-top: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .card-header {
            background-color: #007bff; /* Bootstrap primary color */
            color: #ffffff; /* White text color */
            font-weight: bold;
        }

        .table {
            background-color: #ffffff; /* White background color for the table */
        }

        th, td {
            text-align: center;
        }

        .btn-primary {
            background-color: #007bff; /* Bootstrap primary color */
        }

        .btn-danger {
            background-color: #dc3545; /* Bootstrap danger color */
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Product Management System</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                    aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item"><a class="nav-link active" aria-current="page" href="/">Home</a></li>
                    <li class="nav-item"><a class="nav-link" href="addproduct">Add product</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header text-center">
                        <h4 style="margin-bottom: 0;">All Product Details</h4>
                    </div>
                    <div class="card-body">
                        <table class="table table-bordered">
                            <thead class="table-primary">
                                <tr>
                                    <th scope="col">Id</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Price</th>
                                    <th scope="col">Description</th>
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% List<Produit> products =(List<Produit>) request.getAttribute("products");
                                for (Produit p : products) { %>
                                    <tr>
                                        <th scope="row"><%= p.getId() %></th>
                                        <td><%= p.getName() %></td>
                                        <td><%= p.getPrix() %></td>
                                        <td><%= p.getDescription() %></td>
                                        <td>
                                            <a href="edit/<%= p.getId() %>" class="btn btn-sm btn-primary">Edit</a>
                                            <a href="delete/<%= p.getId() %>" class="btn btn-sm btn-danger">Delete</a>
                                        </td>
                                    </tr>
                                <% } %>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-66qmT6q7xVy1cP3QysxuQ4M4ScLgGJJn9qAocxPSTddA= sha384-Pzjw8L+gGq7p9+33QTYBR0ZpKNTbDIw8nd2o6d8AEwnFrd4C2ZqFl4HqI6AzN5e0"
            crossorigin="anonymous"></script>
</body>
</html>
