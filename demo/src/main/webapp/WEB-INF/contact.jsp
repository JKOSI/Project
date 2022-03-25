<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
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
                <a class="nav-item nav-link active text-success ">Contact</a>
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
    <div>
        <div class="d-flex justify-content-center">
            <h1>How to reach us</h1>
        </div>
        <div class="mx-5">
            <h3>Phone: 555 2368</h3>
        </div>
        <div class="mx-5">
            <h3>Email: iwanttowork@yourdomain.com </h3>
        </div>
        <div class="mx-5" >
            <h3>Mail: 42 Wallaby Way, Sydney</h3>
        </div>
    </div>
    <div class="container d-flex justify-content-center">
    <img src='<c:url value="/files/wbbrooklyn.jpg"></c:url>' /> 
    </div>
    </span>
</body>
</html>