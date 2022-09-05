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
    <link rel="stylesheet" type="text/css" href="../assets/css/backorder.css">
    <title>訂單查詢</title>
    </head>
    <body>
    <div class="hd">
        <a href="back.jsp" class="logo"><img src="../assets/images/logo.png" style="width:100px;position: relative;left:15px;"></a>
    </div>
    <div class="hd2">
        <p style="font-size: 30px;position: absolute;left:80%;color:aliceblue;top:30px;"><strong>管&nbsp;&nbsp;理&nbsp;&nbsp;者&nbsp;&nbsp;介&nbsp;&nbsp;面</strong></p>
    </div>
	
    <div class="container-fluid">	
    <div class="row">
    <div class="col-md-12">
    <div class="ttt">
    <h2 class="word">EZ CHECK訂單查詢</h2>   
    <hr>
    <a class="btn btn-primary btn-large" style=" position:relative;top:-80px; left:480px;"href="backorder.jsp">重新整理</a>
    
	<%	
	    sql = "SELECT * FROM orders Where username ='"+ session.getAttribute("username") + "'";
		ResultSet rs = con.createStatement().executeQuery(sql);
		sql = "SELECT * FROM user Where username ='"+ session.getAttribute("username") + "'";
		ResultSet rs1 = con.createStatement().executeQuery(sql);
		if(rs.next())
		{				
	
	    if(rs1.next())
		{			
	%>	
	<p>
    <span style="font-size:20px; font-weight: bold;">房型編號：</span><%=rs.getString(5)%>
	<span style="font-size:20px; font-weight: bold;position:absolute; left:400px;">客戶姓名：</span>
	<span style="position: absolute; left:500px"><%=rs.getString(3)%></span>
    <br><br>
    <span style="font-size:20px; font-weight: bold;">飯店名稱：</span><%=rs.getString(6)%>
		
	<span style="font-size:20px; font-weight: bold;position:absolute; left:400px;">手機：</span>
	<span style="position: absolute; left:460px;"><%=rs1.getString(6)%></span>
    <br><br>
    <span style="font-size:20px; font-weight: bold;">價格：</span><%=rs.getString(7)%>
	<span style="font-size:20px; font-weight: bold;position:absolute; left:400px;">E-MAIL：</span>
	<span style="position: absolute; left:490px;"><%=rs1.getString(5)%></span>
    <br><br>
    <span style="font-size:20px; font-weight: bold;">天數：</span><%=rs.getString(4)%>
	<span style="font-size:20px; font-weight: bold;position:absolute; left:400px;">付款方式：</span>
	<span style="position: absolute; left:500px;"><%=rs.getString(2)%></span>
    <br><br>
    <span style="font-size:20px; font-weight: bold;">總價格：</span>
    <p style="font-size:30px;font-weight:bold;color:brown; position:relative; left:100px;top:-52px;">NT.<%=rs.getString(8)%></p>

    <button type="submit" class="btn btn-primary btn-large" style="position:relative;left:250px; top:-110px;">訂單完成</button>
	<hr style="position:relative; top:-60px;">
    
    </p>
	<%}%>
    <%}%>
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