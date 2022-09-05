<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="config.jsp"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../assets/css/backgoods.css">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <style>
      body{
        font-family: "Noto Serif TC", serif;
      }
    </style>
    <title>商品新增</title>
    </head>
    <body>
    <div class="hd">
        <a href="back.jsp" class="logo"><img src="../assets/images/logo.png" style="width:100px;position: relative;left:15px;"></a>
    </div>
    <div class="hd2">
        <button type="button" class="btn btn-outline-dark"style="position:relative ;left:948px;background-color:#b5bdc4;width:190px;height:100px;font-size:25px;"onclick="location.href='back.jsp'">管 理 者 介 面</button>
    </div>
    <div class="ttt"style="position:relative; top:-100px;">
	<form action="newcheck.jsp" method="post">
    <h2 class="word">商品新增</h2>
    <p>
	<!--
    <span style="font-size:20px; font-weight: bold;" name="location"></span>飯店縣市:<br>
        <select class="form-control" id="sel1" name="category">
            <option value="readpeople">台北</option>
            <option value="readpark">新北</option>
            <option value="readold">基隆</option>
            <option value="readold">新竹</option>
            <option value="readold">苗栗</option>
            <option value="readold">宜蘭</option>  
        </select> -->
    <br>
	<span style="font-size:20px; font-weight: bold;"></span>飯店縣市:
        <input type="text" name="location" class="form-control" placeholder="新竹">&nbsp;&nbsp;
    <br>
    <span style="font-size:20px; font-weight: bold;"></span>新增之飯店貨號:
        <input type="text" name="itemid" class="form-control" placeholder="HI3-2">&nbsp;&nbsp;
    <br>
    <span style="font-size:20px; font-weight: bold;"></span>新增之商品名稱:
        <input type="text" name="itemname" class="form-control" placeholder="煙波大飯店新竹館">&nbsp;&nbsp;
    <br>
	<span style="font-size:20px; font-weight: bold;"></span>新增之飯店地址:
        <input type="text" name="itemadress" class="form-control" placeholder="ex:新竹市東區民生路177號">&nbsp;&nbsp;
    <br>
    <span style="font-size:20px; font-weight: bold;"></span>新增之房型價格:
        <input type="text" name="cash" class="form-control" placeholder="ex:10000">&nbsp;&nbsp;
    <br>
    <span style="font-size:20px; font-weight: bold;"></span>新增之數量:
        <input type="text" name="item_count" class="form-control" placeholder="ex:20">&nbsp;&nbsp;
    <br>
	<span style="font-size:20px; font-weight: bold;"></span>新增之飯店開幕時間:
        <input type="text" name="openfor" class="form-control" placeholder="ex:2016 年 5 月 17 日">&nbsp;&nbsp;
    <br>
	
    <span style="font-size:20px; font-weight: bold;"></span>新增之商品內容:
    <textarea  name="p1" class="form-control" rows="5" id="comment"></textarea>

    <br>
    新增飯店之圖片(注意!!僅能上傳圖片格式)
        <Input Type="File" Name="picture">
        <Input Type="Reset" value="清除重選" name="#">
    <br>
	<input type="hidden" name="itemid" value="">
    <button type="submit" class="btn btn-primary btn-large" style="background-color: #475b84;border-color: #475b84;">新增</button>
    </p>
	</form>
    </div>
    </div>
    </div>
    </div>
    </div>
	
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
  </body>
</html>