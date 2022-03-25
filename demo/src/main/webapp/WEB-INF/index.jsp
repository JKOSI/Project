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
    <title>Registration Page</title>
</head>
<body>
    <nav class="navbar navbar-dark bg-dark justify-content-center">
        <span class="navbar-brand mb-0 h1">Wilbur Books</span>
    </nav>
    <span class="d-block p-2 bg-dark text-white">

    <div class="container">
    <div class="row">
        <div class="col">
        <h1>Register</h1>
        <form:form method="POST" action="/registration" modelAttribute="user">
            <div class="form-group">
                <form:label path="firstName">First Name:</form:label>
                <form:errors class="text-danger" path="firstName"/>
                <form:input class="form-control" path="firstName"/>
            </div>
            <div class="form-group">
                <form:label path="lastName">Last Name:</form:label>
                <form:errors class="text-danger" path="lastName"/>
                <form:input class="form-control" path="lastName"/>
            </div>
            <div class="form-group">
            <form:label path="email">Email:</form:label>
                <form:errors class="text-danger" path="email"/>
                <form:input class="form-control" path="email"/>
            </div>
            <div class="form-group">
                <form:label path="password">Password:</form:label>
                <form:password class="form-control" path="password"/>
                <form:errors class="text-danger" path="password"/>
            </div>
            <div class="form-group">
                <form:label path="passwordConfirmation">Password Confirmation:</form:label>
                <form:password class="form-control" path="passwordConfirmation"/>
                <form:errors class="text-danger" path="passwordConfirmation"/>
            </div>
            <br>
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Register</button>
        </form:form>
        </div>
        
    <div class="col">
    <h1>Login</h1>
    <form method="post" action="/login" >
    <p class="text-danger">
        <c:out value="${error}"/>
    </p>
        <div class="form-group">
            <label type="email" for="email">Email</label>
            <input class="form-control"  type="text" id="email" name="email"/>
        </div>
        <div class="form-group">
            <label for="password">Password</label>
            <input class="form-control"  type="password" id="password" name="password"/>
        </div>
        <br>
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">login</button>
    </form>   
    </div> 
    <div class="container d-flex justify-content-center" >
        <img src='<c:url value="/files/wblogin.jpg"></c:url>' />  
    </div>

    </span>
</body>
</html>