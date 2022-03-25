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
                <a class="nav-item nav-link active text-success ">About</a>
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

    <div>
        <div class="d-flex justify-content-center">
            <h1>A long time ago...</h1>
        </div>
        <div class="mx-5">
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc laoreet lorem ultricies mi lacinia hendrerit. 
            Etiam commodo nisl nec ante rhoncus, at vestibulum lorem vehicula. Nam luctus fringilla dolor,ut egestas 
            lacus ultrices et. Vivamus lectus massa, elementum vitae sem at, gravida commodo arcu. Lorem ipsum dolor 
            sit amet, consectetur adipiscing elit. Aenean scelerisque, lectus vitae convallis sagittis, ipsum ex elementum 
            ex, at viverra odio dolor eget ipsum.Mauris vel blandit dolor, eu blandit ante. Pellentesque et odio eu lacus 
            pellentesque pharetra ac eu lectus. Nullam nec nisi efficitur, convallis nulla non, pretium elit. Nulla ut dui 
            leo. Quisque eu ultricies nisi, sed dapibus purus.
        </p>
        <p class="text-decoration-underline">
            Sed quis mollis ex, sollicitudin sodales metus. Donec ultricies ipsum in velit posuere dictum. Nulla volutpat pellentesque
            efficitur. Morbi vitae dui dui. Sed placerat semper tincidunt. Fusce pretium nunc ac malesuada lacinia. Cras non bibendum 
            sapien. Maecenas malesuada libero at mauris egestas blandit. Sed aliquam turpis volutpat, iaculis ex sed, tempor urna. 
            Sed risus nisl, ullamcorper rutrum auctor ut, interdum nec neque. Vestibulum eleifend tellus nibh, et fringilla ex maximus nec.
            Donec tempor ligula vel finibus lacinia. Nullam ut pulvinar neque. Nullam sollicitudin nulla augue, in egestas dolor 
            pharetra nec. Sed malesuada tincidunt condimentum. Nullam justo libero, mattis in condimentum at, mattis eget erat. 
            Etiam eu nunc hendrerit, vestibulum orci sed, euismod quam. Vestibulum blandit, risus in rhoncus tristique, risus 
            velit gravida est, vitae fringilla odio nunc at magna.
        </p>
        <p>
            <s>
            Nunc molestie semper bibendum. Fusce eget blandit ex, quis blandit nunc. Aenean dapibus pharetra nisl, eget rhoncus leo.
            Aliquam suscipit vitae metus ac hendrerit. In mauris libero, feugiat sed luctus sit amet, feugiat sit amet turpis. 
            Donec congue feugiat efficitur. Curabitur convallis, risus id ultricies imperdiet, tortor dui rutrum leo, rutrum pharetra
            diam massa et nisl.
            </s>
            Donec tempor ligula vel finibus lacinia. Nullam ut pulvinar neque. Nullam sollicitudin nulla augue, in egestas dolor 
            pharetra nec. Sed malesuada tincidunt condimentum. Nullam justo libero, mattis in condimentum at, mattis eget erat. 
            Etiam eu nunc hendrerit, vestibulum orci sed, euismod quam. Vestibulum blandit, risus in rhoncus tristique, risus 
            velit gravida est, vitae fringilla odio nunc at magna.
        </p>
        <p>
        <strong>
            Donec tempor ligula vel finibus lacinia. Nullam ut pulvinar neque. Nullam sollicitudin nulla augue, in egestas dolor 
            pharetra nec. Sed malesuada tincidunt condimentum. Nullam justo libero, mattis in condimentum at, mattis eget erat. 
            Etiam eu nunc hendrerit, vestibulum orci sed, euismod quam. Vestibulum blandit, risus in rhoncus tristique, risus 
            velit gravida est, vitae fringilla odio nunc at magna.
            Cras vel lobortis nisl. Etiam dictum quam nibh, 
            ac viverra odio malesuada a. Suspendisse fermentum nunc in lorem condimentum pulvinar.
            Aenean diam ex, vestibulum sit amet sem et, varius bibendum sapien. Mauris egestas est nec felis dictum 
            faucibus ac eu eros. Quisque finibus vehicula consectetur. Mauris blandit finibus lectus, 
            id consequat diam tempus at. Praesent eget risus dolor.
        </strong>
        </p>
        <p>
            Sed ut enim eros. Proin tellus est, placerat id laoreet a, sollicitudin non ante. Pellentesque placerat nulla orci, 
            ut varius ligula placerat eget. Mauris velit quam, consectetur id velit sed, volutpat bibendum nulla. Sed tristique 
            id lorem quis sodales. Quisque nec sollicitudin lorem. Sed dolor enim, blandit vel quam non, consectetur posuere tellus. 
            In condimentum nunc ex, aliquam lobortis est blandit sed. Phasellus pellentesque, mauris ac porttitor malesuada, nisl 
            nisl accumsan erat, at pharetra elit tortor vel ante. Cras tristique ullamcorper diam, et facilisis tortor mattis eget. 
            Cras fermentum non elit ac porta.
        </p>
        <p>
        <em>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc laoreet lorem ultricies mi lacinia hendrerit. 
            Etiam commodo nisl nec ante rhoncus, at vestibulum lorem vehicula. Nam luctus fringilla dolor,ut egestas 
            lacus ultrices et. Vivamus lectus massa, elementum vitae sem at, gravida commodo arcu. Lorem ipsum dolor 
            sit amet, consectetur adipiscing elit. Aenean scelerisque, lectus vitae convallis sagittis, ipsum ex elementum 
            ex, at viverra odio dolor eget ipsum.Mauris vel blandit dolor, eu blandit ante. Pellentesque et odio eu lacus 
            pellentesque pharetra ac eu lectus. Nullam nec nisi efficitur, convallis nulla non, pretium elit. Nulla ut dui 
            leo. Quisque eu ultricies nisi, sed dapibus purus.
        </em>
        </p>
        <p>
            Sed ut enim eros. Proin tellus est, placerat id laoreet a, sollicitudin non ante. Pellentesque placerat nulla orci, 
            ut varius ligula placerat eget. Mauris velit quam, consectetur id velit sed, volutpat bibendum nulla. Sed tristique 
            id lorem quis sodales. Quisque nec sollicitudin lorem. Sed dolor enim, blandit vel quam non, consectetur posuere tellus. 
            In condimentum nunc ex, aliquam lobortis est blandit sed. Phasellus pellentesque, mauris ac porttitor malesuada, nisl 
            nisl accumsan erat, at pharetra elit tortor vel ante. Cras tristique ullamcorper diam, et facilisis tortor mattis eget. 
            Cras fermentum non elit ac porta.
            Donec tempor ligula vel finibus lacinia. Nullam ut pulvinar neque. Nullam sollicitudin nulla augue, in egestas dolor 
            pharetra nec. Sed malesuada tincidunt condimentum. Nullam justo libero, mattis in condimentum at, mattis eget erat. 
            Etiam eu nunc hendrerit, vestibulum orci sed, euismod quam. Vestibulum blandit, risus in rhoncus tristique, risus 
            velit gravida est, vitae fringilla odio nunc at magna.
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc laoreet lorem ultricies mi lacinia hendrerit. 
            Etiam commodo nisl nec ante rhoncus, at vestibulum lorem vehicula. Nam luctus fringilla dolor,ut egestas 
            lacus ultrices et. Vivamus lectus massa, elementum vitae sem at, gravida commodo arcu. Lorem ipsum dolor 
            sit amet, consectetur adipiscing elit. Aenean scelerisque, lectus vitae convallis sagittis, ipsum ex elementum 
            ex, at viverra odio dolor eget ipsum.Mauris vel blandit dolor, eu blandit ante. Pellentesque et odio eu lacus 
            pellentesque pharetra ac eu lectus. Nullam nec nisi efficitur, convallis nulla non, pretium elit. Nulla ut dui 
            leo.
        </p>
        <p>
            Morbi vel turpis et odio consectetur suscipit. Ut sit amet arcu non sem malesuada euismod ac ullamcorper ante. 
            Integer tempus arcu ut augue interdum consectetur. Vestibulum ante ipsum primis in faucibus orci luctus et 
            ultrices posuere cubilia curae; Integer nunc nulla, posuere nec arcu et, iaculis pharetra felis. Nulla 
            sollicitudin ex quam, non faucibus metus suscipit sit amet. Cras vel lobortis nisl. Etiam dictum quam nibh, 
            ac viverra odio malesuada a. Suspendisse fermentum nunc in lorem condimentum pulvinar.
            Aenean diam ex, vestibulum sit amet sem et, varius bibendum sapien. Mauris egestas est nec felis dictum 
            faucibus ac eu eros. Quisque finibus vehicula consectetur. Mauris blandit finibus lectus, 
            id consequat diam tempus at. Praesent eget risus dolor. Phasellus ultricies iaculis mi et consectetur. 
            Mauris consequat a risus sed commodo. Nam at convallis massa. Pellentesque habitant morbi tristique senectus et netus et 
            malesuada fames ac turpis egestas. Aliquam erat volutpat.
        </p>

        </div>
    </div>
    </span>
</body>
</html>