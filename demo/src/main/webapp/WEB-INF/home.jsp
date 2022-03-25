<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<title>Wilbur</title>
</head>
<body>


    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container">
            <a class="navbar-brand">Wilbur Books</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
            <div class="navbar-nav">
                <a class="nav-item nav-link active text-success">Home </a>
                <a class="nav-item nav-link" onclick="window.location.href='/about/'">About</a>
                <a class="nav-item nav-link" onclick="window.location.href='/contact/'">Contact</a>
                <a class="nav-item nav-link" onclick="window.location.href='/news/'">News</a>
                <a class="nav-item nav-link" onclick="window.location.href='/home/new'">Store Review</a>
            </div>
            </div>
        </div>
                <form id="logoutForm" action="/logout">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">logout</button>
                </form>
    </nav>
    <span class="d-block p-2 bg-dark text-white">

    <div class="d-flex justify-content-center">
        <h2>Welcome, <c:out value="${user.firstName}" /></h2>
        <br>
    </div>
    <div class="mx-5">
        <h3 class="text-success">Classics</h3>
        <table class="table table-dark">
            <thead>
                <tr>
                    <th>Title</th>
                    <th>Author</th>
                    <th>Price</th>
                </tr>
            </thead>
            <tbody>
                    <tr>
                        <td> Dracula</td>
                        <td> Bram Stroker</td>
                        <td> $9.99</td>
                    </tr>
                    <tr>
                        <td> Frankenstein</td>
                        <td> Mary Shelley</td>
                        <td> $11.99</td>
                    </tr>
                    <tr>
                        <td> Of Mice and Men</td>
                        <td> John Steinbeck</td>
                        <td> $5.99</td>
                    </tr>
            </tbody>
        </table>
    </div>
    <div class="container d-flex justify-content-center">
        <div class="row">
            <div class="col">
                <img src='<c:url value="/files/wbDracula.jpg"></c:url>' />  
            </div>
            <div class="col">
                <img src='<c:url value="/files/wbfrankenstein.jpg"></c:url>' />  
            </div>
            <div class="col">
                <img src='<c:url value="/files/wbofmice.jpg"></c:url>' />  
            </div>
        </div>
    </div>
    <div class="mx-5">
        <h3 class="text-warning">Reviews of Wilbur Books</h3>
        <table class="table table-dark">
            <thead>
                <tr>
                    <th>Poster</th>
                    <th>Title</th>
                    <th>Review</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${reviews}" var="review">
                <tr>
                    <td> ${review.poster.firstName}</td>
                    <td><a class="text-warning"  href="/home/${review.id}"> ${review.title} </a></td>
                    <td> ${review.review}</td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <div>
        <img src='<c:url value="/files/wbopen3.jpg"></c:url>' />  
    </div>
</span>
</body>
</html>