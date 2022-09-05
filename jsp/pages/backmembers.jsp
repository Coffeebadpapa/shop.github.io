<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file="config.jsp"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="../assets/css/backmembers.css">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>會員查詢</title>
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
	
	
        <h2 class="word">EZ CHECK會員查詢</h2>
        <a class="btn btn-primary btn-large" style=" position:relative;top:-80px; left:450px;"href="backmembers.jsp">重新整理</a>
    <p>
	<%  
	    sql = "SELECT * FROM user";
		ResultSet rs = con.createStatement().executeQuery(sql);
		while(rs.next())
	{%> 
    <hr>
        <span style="font-size:20px; font-weight: bold;">會員姓名：</span><%=rs.getString(2)%>
        <br>
        <span style="font-size:20px; font-weight: bold;">帳號：</span><%=rs.getString(3)%>
        <br>
        <span style="font-size:20px; font-weight: bold;">密碼：</span><%=rs.getString(4)%>
        <br>
        <span style="font-size:20px; font-weight: bold;">手機：</span><%=rs.getString(6)%>
        <br>
        <span style="font-size:20px; font-weight: bold;">地址：</span><%=rs.getString(7)%>
        <br>
        <span style="font-size:20px; font-weight: bold;">電子郵件：</span><%=rs.getString(5)%>
        <br>
    <p>
	<form method="post" action="deletemember.jsp" >
        <input type="hidden" name="userid" value="<%=rs.getString(1)%>">
        <button type="submit" class="btn btn-primary btn-large">刪除該會員</button>
	</form>
	
	<%}%>
	
	<br>
    </p>
    <hr>
    </p>
	</div>
    </div>
    </div>
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