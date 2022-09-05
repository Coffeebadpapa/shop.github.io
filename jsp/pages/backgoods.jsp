<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<!doctype html>
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
    <title>商品查詢</title>
  </head>
  <body>
    <div class="hd">
        <a href="back.jsp" class="logo"><img src="../assets/images/logo.png" style="width:100px;position: relative;left:15px;"></a>
    </div>
    <div class="hd2">
        <button type="button" class="btn btn-outline-dark"style="position:relative ;left:948px;background-color:#b5bdc4;width:190px;height:100px;font-size:25px;"onclick="location.href='back.jsp'">管 理 者 介 面</button>
    </div>

    <div class="container-fluid">	
    <div class="row">
    <div class="col-md-12">
    <div class="ttt">
        <h2 class="word">EZ CHECK商品查詢</h2>   
    <hr>                 
        <a class="btn btn-primary btn-large" style="position:relative;top:-80px; left:480px;background-color: #475b84;border-color: #475b84;" href="backgoods.jsp">重新整理</a>
    <p>
	<%
		sql="select * from item;";
		ResultSet rs = con.createStatement().executeQuery(sql);
		while(rs.next()){
		String ID = rs.getString("itemid");
		String stock = rs.getString("item_count");
		String price = rs.getString("cash");
		String location = rs.getString("location");
		String address = rs.getString("itemadress");
		String name = rs.getString("itemname");
		String content = rs.getString("p1");
	{
	%>	
	<form method="post" action="alterroom.jsp">
		<span style="font-size:20px; font-weight: bold;">房型編號：</span>
		<input type="text" class="form-control" style="width:200px;position: relative; left:110px;top:-32px;"value="<%=ID%>" name="ID">
    <br>
        <span style="font-size:20px; font-weight: bold;">飯店名稱：</span>
		<input type="text" class="form-control" style="width:200px;position: relative; left:110px;top:-32px;"value="<%=name%>" name="name">
    <br>
        <span style="font-size:20px; font-weight: bold;">飯店地區：</span>
		<input type="text" class="form-control" style="width:200px;position: relative; left:110px;top:-32px;"value="<%=location%>" name="location">
    <br>
        <span style="font-size:20px; font-weight: bold;">飯店地址：</span>
		<input type="text" class="form-control" style="width:250px;position: relative; left:110px;top:-32px;"value="<%=address%>" name="address">
    <br>
        <span style="font-size:20px; font-weight: bold;">價格：</span>
		<input type="text" class="form-control" value="<%=price%>" style="width:200px;position: relative; left:110px;top:-35px;" name="price">
    <br>
        <span style="font-size:20px; font-weight: bold;">數量：</span>
		<input type="text" class="form-control" value="<%=stock%>" style="width:200px;position: relative; left:110px;top:-35px;" name="stock">
    <br>
        <span style="font-size:20px; font-weight: bold;">商品資訊：</span>
    <div class="ps">
    <div class="w1">
    <textarea cols="50" rows="5" name="content"><%=content%></textarea>
    </div>
    </div>
    <br>
		<input type="hidden" name="alter" value="<%=ID%>">
        <button type="submit" class="btn btn-primary btn-large" style="background-color: #475b84;border-color: #475b84;">修改</button>
    </form>
	<%}%>
    <p>
        <form method="post" action="deleteroom.jsp">
        <input type="hidden" name="delete" value="<%=rs.getString(1)%>">
        <button type="submit" class="btn btn-primary btn-large" style="position:relative;left:120px; top:-53px;background-color: #475b84;border-color: #475b84;">刪除該商品</button>
  
		</form>
    </p>
    <hr>
	<%}%>
	
    </p>
    <br><br>
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
