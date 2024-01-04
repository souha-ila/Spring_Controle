<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Add Product</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
          crossorigin="anonymous">
   
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Product Management System</a>
        <button class="navbar-toggler" type="button"
                data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                <li class="nav-item"><a class="nav-link active"
                                        aria-current="page" href="/">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="/addproduct">Add
                        product</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header text-center">
                    <h3>Add Product</h3>
                    <c:if test="${not empty msg }">
                        <h5 class="text-success">${msg }</h5>
                        <c:remove var="msg" />
                    </c:if>
                </div>
                <div class="card-body">
                    <form action="addProduct" method="post">
                        <div class="mb-3">
                            <label>Enter Name</label> <input type="text"
                                                               name="name" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label>Enter Description</label> <input type="text"
                                                                     name="description" class="form-control">
                        </div>

                        <div class="mb-3">
                            <label>Enter Price</label> <input type="text" name="prix"
                                                               class="form-control">
                        </div>

                        <button class="btn btn-primary">Submit</button>
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
