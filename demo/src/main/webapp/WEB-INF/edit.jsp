<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Course</title>
</head>
<body>
<div>
<h1>Edit Store Review</h1>
<form:form action="/home/${review.id}/edit" method="post" modelAttribute="review">
    <input type="hidden" name="_method" value="put">
    <p>
        <form:label path="title">title</form:label>
        <form:errors path="title"/>
        <form:input path="title"  name="title"/>
    </p>
    <p>
        <form:label path="review">Review</form:label>
        <form:errors path="review"/>
        <form:textarea path="review" value="review"/>
    </p>
    <form:hidden value="${userId}" path="poster"/>
    <input type="submit" class="btn btn-secondary" value="Update"/>
    </form:form>
    <br>
    <c:if test="${review.poster.id==userId}">
    <input type="submit" onclick="window.location.href='/home/${review.id}/delete'" class="btn btn-secondary" value="Delete"/>
</c:if>
    </div>
</body>
</html>