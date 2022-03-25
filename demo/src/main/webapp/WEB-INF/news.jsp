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
                <a class="nav-item nav-link" onclick="window.location.href='/contact/'">Contact</a>
                <a class="nav-item nav-link active text-success ">News</a>
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
        <div class="mx-5">
        <h1>January 13, 1930</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc laoreet lorem ultricies mi lacinia hendrerit. 
            Etiam commodo nisl nec ante rhoncus, at vestibulum lorem vehicula. Nam luctus fringilla dolor,ut egestas 
            lacus ultrices et. Vivamus lectus massa, elementum vitae sem at, gravida commodo arcu. Lorem ipsum dolor 
            sit amet, consectetur adipiscing elit. Aenean scelerisque, lectus vitae convallis sagittis, ipsum ex elementum 
            ex, at viverra odio dolor eget ipsum.Mauris vel blandit dolor, eu blandit ante. Pellentesque et odio eu lacus 
            pellentesque pharetra ac eu lectus. Nullam nec nisi efficitur, convallis nulla non, pretium elit. Nulla ut dui 
            leo. Quisque eu ultricies nisi, sed dapibus purus.
        </p>
        <h1>June 13, 1979</h1>
        <p>
            Sed quis mollis ex, sollicitudin sodales metus. Donec ultricies ipsum in velit posuere dictum. Nulla volutpat pellentesque
            efficitur. Morbi vitae dui dui. Sed placerat semper tincidunt. Fusce pretium nunc ac malesuada lacinia. Cras non bibendum 
            sapien. Maecenas malesuada libero at mauris egestas blandit. Sed aliquam turpis volutpat, iaculis ex sed, tempor urna. 
            Sed risus nisl, ullamcorper rutrum auctor ut, interdum nec neque. Vestibulum eleifend tellus nibh, et fringilla ex maximus nec.
            Mauris ullamcorper lorem ex. Mauris sollicitudin justo mi, eget vehicula arcu mollis et.
            Vestibulum eget nisi dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus id tristique leo. 
            Nulla non orci sem. Nullam placerat, justo id accumsan molestie, tellus augue mattis lorem, at tincidunt justo dui sed erat. 
            Donec ut risus vel turpis gravida aliquet
        </p>
        <h1>October 26, 1985</h1>
        <p>
            Nunc molestie semper bibendum. Fusce eget blandit ex, quis blandit nunc. Aenean dapibus pharetra nisl, eget rhoncus leo.
            Aliquam suscipit vitae metus ac hendrerit. In mauris libero, feugiat sed luctus sit amet, feugiat sit amet turpis. 
            Donec congue feugiat efficitur. Curabitur convallis, risus id ultricies imperdiet, tortor dui rutrum leo, rutrum pharetra
            diam massa et nisl.
        </p>
        <h1>July 4, 1996</h1>
        <p>
            Donec tempor ligula vel finibus lacinia. Nullam ut pulvinar neque. Nullam sollicitudin nulla augue, in egestas dolor 
            pharetra nec. Sed malesuada tincidunt condimentum. Nullam justo libero, mattis in condimentum at, mattis eget erat. 
            Etiam eu nunc hendrerit, vestibulum orci sed, euismod quam. Vestibulum blandit, risus in rhoncus tristique, risus 
            velit gravida est, vitae fringilla odio nunc at magna.
            Vestibulum laoreet egestas magna ac interdum. Proin semper elit a diam mollis fringilla. Ut sit amet finibus tortor. 
            Sed pulvinar orci quis enim auctor, ac euismod ipsum venenatis. Pellentesque erat orci, pellentesque pharetra imperdiet 
            id, mollis in metus. Sed dignissim, sem in bibendum sagittis, ex erat viverra ex, quis lacinia purus sapien ut libero. 
            Mauris porta leo ac dui pulvinar, nec iaculis nulla viverra. Donec lectus felis, iaculis eu odio mollis, consectetur 
            pulvinar metus. Aliquam sed blandit quam. Phasellus dapibus facilisis nisi, eget blandit diam dapibus vitae. Suspendisse 
            id mi ut lectus aliquam luctus nec vitae augue.
        </p>
        <h1>December 21, 2012</h1>
        <p>
            Sed ut enim eros. Proin tellus est, placerat id laoreet a, sollicitudin non ante. Pellentesque placerat nulla orci, 
            ut varius ligula placerat eget. Mauris velit quam, consectetur id velit sed, volutpat bibendum nulla. Sed tristique 
            id lorem quis sodales. Quisque nec sollicitudin lorem. Sed dolor enim, blandit vel quam non, consectetur posuere tellus. 
            In condimentum nunc ex, aliquam lobortis est blandit sed. Phasellus pellentesque, mauris ac porttitor malesuada, nisl 
            nisl accumsan erat, at pharetra elit tortor vel ante. Cras tristique ullamcorper diam, et facilisis tortor mattis eget. 
            Cras fermentum non elit ac porta.
        </p>
        <h1>March 25, 2022</h1>
        <p>
            Vestibulum laoreet egestas magna ac interdum. Proin semper elit a diam mollis fringilla. Ut sit amet finibus tortor. 
            Sed pulvinar orci quis enim auctor, ac euismod ipsum venenatis. Pellentesque erat orci, pellentesque pharetra imperdiet 
            id, mollis in metus. Sed dignissim, sem in bibendum sagittis, ex erat viverra ex, quis lacinia purus sapien ut libero. 
            Mauris porta leo ac dui pulvinar, nec iaculis nulla viverra. Donec lectus felis, iaculis eu odio mollis, consectetur 
            pulvinar metus. Aliquam sed blandit quam. Phasellus dapibus facilisis nisi, eget blandit diam dapibus vitae. Suspendisse 
            id mi ut lectus aliquam luctus nec vitae augue.
            Mauris ullamcorper lorem ex. Mauris sollicitudin justo mi, eget vehicula arcu mollis et.
            Vestibulum eget nisi dolor. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus id tristique leo. 
            Nulla non orci sem. Nullam placerat, justo id accumsan molestie, tellus augue mattis lorem, at tincidunt justo dui sed erat. 
            Donec ut risus vel turpis gravida aliquet.
        </p>
        </div>
    </div>
    </span>
</body>
</html>