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
<title>New Review</title>
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
<div class="mx-5">
    <h1>We would love to hear your feedback!</h1>
    <form:form action="/home/create" method="post" modelAttribute="newReview">
            <div class="form-group">
                <form:label path="title">Title:</form:label>
                <form:errors class="text-danger" path="title"/>
                <form:input class="form-control w-25 p-3" path="title"/>
            </div>
            <div class="form-group">
                <form:label path="review">Review:</form:label>
                <form:errors class="text-danger" path="review"/>
                <form:input class="form-control w-50 p-3" path="review"/>
            </div>
            <!-- Hidden Input for userId -->
            <form:input type="hidden" value="${userId}" path="poster"/>
            <br>
            <input type="submit" class="btn btn-outline-success" value="Submit"/>
    </form:form>  
</div>
    <div>
        <pre>
            ____________________________________________________
            |____________________________________________________|
            | __     __   ____   ___ ||  ____    ____     _  __  |
            ||  |__ |--|_| || |_|   |||_|**|*|__|+|+||___| ||  | |
            ||==|^^||--| |=||=| |=*=||| |~~|~|  |=|=|| | |~||==| |
            ||  |##||  | | || | |W.B|||-|  | |==|+|+||-|-|~||__| |
            ||__|__||__|_|_||_|_|___|||_|__|_|__|_|_||_|_|_||__|_|
            ||_______________________||__________________________|
            | _____________________  ||      __   __  _  __    _ |
            ||=|=|=|=|=|=|=|=|=|=|=| __..\/ |  |_|  ||#||==|  / /|
            || | | | | | | | | | | |/\ \  \\|++|=|  || ||==| / / |
            ||_|_|_|_|_|_|_|_|_|_|_/_/\_.___\__|_|__||_||__|/_/__|
            |____________________ /\~()/()~//\ __________________|
            | __   __    _  _     \_  (_ .  _/ _    ___     _____|
            ||~~|_|..|__| || |_ _   \ //\\ /  |=|__|~|~|___| | | |
            ||--|+|^^|==|1||2| | |__/\ __ /\__| |==|x|x|+|+|=|=|=|
            ||__|_|__|__|_||_|_| /  \ \  / /  \_|__|_|_|_|_|_|_|_|
            |_________________ _/    \/\/\/    \_ _______________|
            | _____   _   __  |/      \../      \|  __   __   ___|
            ||_____|_| |_|##|_||   |   \/ __|   ||_|==|_|++|_|-|||
            ||______||=|#|--| |\   \   o    /   /| |  |~|  | | |||
            ||______||_|_|__|_|_\   \  o   /   /_|_|__|_|__|_|_|||
            |_________ __________\___\____/___/___________ ______|
            |__    _  /    ________     ______           /| _ _ _|
            |\ \  |=|/   //    /| //   /  /  / |        / ||%|%|%|
            | \/\ |*/  .//____//.//   /__/__/ (_)      /  ||=|=|=|
          __|  \/\|/   /(____|/ //                    /  /||~|~|~|__
            |___\_/   /________//   ________         /  / ||_|_|_|
            |___ /   (|________/   |\_______\       /  /| |______|
                /                  \|________)     /  / | |
        </pre>
    </div>
</span>
</body>
</html>