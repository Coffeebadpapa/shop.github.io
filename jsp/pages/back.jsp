<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../assets/css/back.css">
    <link rel="icon" type="image/x-icon" href="../assets/images/logo.ico">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC:wght@500&display=swap" rel="stylesheet">
    <title>後台</title>
    <style>
      body{
        font-family: "Noto Serif TC", serif;
      }
    </style>
  </head>
  <body>
    <div class="hd">
      <a href="index.jsp" class="logo"><img src="../assets/images/logo.png" style="width:100px;position: relative;left:15px;"></a>
    </div>
    <div class="hd2">
      <p style="font-size: 30px;position: absolute;left:80%;color:aliceblue;top:30px;"><strong>管&nbsp;&nbsp;理&nbsp;&nbsp;者&nbsp;&nbsp;介&nbsp;&nbsp;面</strong></p>
    </div>
    <div class="im1">
      
      <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="../assets/images/HI4-4.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
           <img src="../assets/images/HI3-2.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
          <img src="../assets/images/HI3-3.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
        </div>



        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner3">
          <div class="carousel-item active">
            <img src="../assets/images/HI4-3.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="../assets/images/KL2-3.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
           <img src="../assets/images/KL5-3.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
    </div>
      <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner4">
          <div class="carousel-item active">
            <img src="../assets/images/KL2-4.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="../assets/images/KL5-2.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
           <img src="../assets/images/KL6-1.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
        </div>


        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-inner6">
          <div class="carousel-item active">
            <img src="../assets/images/NTC1-2.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
           <img src="../assets/images/NTC2-2.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
           <img src="../assets/images/NTC4-2.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
        </div>
        
        <div class="pose">
          <img src="../assets/images/logo.png" style="width:240px;height:240px;">
         </div>

        <div class="poseword">
          <p style="font-size: 35px;"><strong>後&nbsp;&nbsp;&nbsp;&nbsp;台&nbsp;&nbsp;&nbsp;&nbsp;管&nbsp;&nbsp;&nbsp;&nbsp;理</strong></p>
        </div>
        <div class="bkbk">
          <img src="../assets/images/bkbk.jpg" style="position:relative;width:379px;;height:500px;">
        </div>
        <div class="buttonn">
        <button type="button" class="btn btn-outline-dark" onclick="location.href='backmembers.jsp'">會員管理</button>
        </div>
        <div class="buttonn1">
        <button type="button" class="btn btn-outline-dark" onclick="location.href='backgoods.jsp'">商品管理</button>
        </div>
        <div class="buttonn2">
        <button type="button" class="btn btn-outline-dark" onclick="location.href='backorder.jsp'">訂單管理</button>
        </div>
        <div class="buttonn3">
          <button type="button" class="btn btn-outline-dark" onclick="location.href='backcheck.jsp'">商品新增</button>
        </div>
    </div>
    <div class="footer">
      <div class="f_text">Copyright © 2021. All rights reserved.</div>
    </div>
  </body>


    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
</html>