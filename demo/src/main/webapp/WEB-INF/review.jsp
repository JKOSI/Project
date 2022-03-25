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
<title>Review</title>
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
                <a class="nav-item nav-link" onclick="window.location.href='/home/'">Home </a>
                <a class="nav-item nav-link" onclick="window.location.href='/about/'">About</a>
                <a class="nav-item nav-link" onclick="window.location.href='/contact/'">Contact</a>
                <a class="nav-item nav-link" onclick="window.location.href='/news/'">News</a>
                <a class="nav-item nav-link active text-success">Store Review</a>
            </div>
            </div>
        </div>
                <form id="logoutForm" action="/logout">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">logout</button>
                </form>
    </nav>
    <span class="d-block p-2 bg-dark text-white">
    <div>
    <div class="mx-5">
        <h1>Details</h1>
        <p>Posted by: ${review.poster.firstName}</p>
        <p>Title: ${review.title}</p>
        <p>Review: ${review.review}</p>
        <c:if test="${review.poster.id==userId}">
            <input type="submit" onclick="window.location.href='/home/${review.id}/edit'" class="btn btn-outline-success" value="Edit"/>
        </c:if>
        </div>
</div>
</span>
</body>
</html>