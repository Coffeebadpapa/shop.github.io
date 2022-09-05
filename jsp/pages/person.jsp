<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="config.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/icon/css/all.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/index1.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/person.css">
    <link rel="icon" type="image/x-icon" href="../assets/images/logo.ico">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC:wght@500&display=swap" rel="stylesheet">
    <title>個人資料修改</title>
</head>
<body>
    <ul class="nav">
        <a href="index.jsp" class="logo"><img src="../assets/images/logo.png" style="width:100px;"></a>
        <nav class="fun">
  
  <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary" onclick="location.href='shoppingcar.jsp'">
  預訂清單
    </button>
    </nav>
    </ul>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>	
    <form action="altermember.jsp" method="post">
    <div class=""style="    background-color: #f5efe9;position: relative;left: 15%;top: 20px;width: 70%; margin-bottom:100px;">
    <div class="topic" style="position:relative; padding-top:60px;">
    <h2><mark>個 人 資 料 修 改</mark></h2>
    </div>
	<%
		sql = "SELECT * FROM user where username ='"+ session.getAttribute("username") + "' ";
		ResultSet rs = con.createStatement().executeQuery(sql);
		while(rs.next())
	{%>	
    <div class="content" style="position:relative; width:500px;">
    <div class="c_text">會員帳號
	<input type="text" name="account" size="10" class="form-control" value="<%=rs.getString(3)%>"></div>
    <div class="c_text">會員密碼
		<input type="text" name="password" size="10" class="form-control" value="<%=rs.getString(4)%>"></div>
    <div class="c_text">會員姓名
		<input type="text" name="name" size="10" class="form-control" value="<%=rs.getString(2)%>"></div>
    <div class="c_text">電子信箱
		<input type="text" name="email" size="30" class="form-control" value="<%=rs.getString(5)%>"></div>
    <div class="c_text">手機號碼
		<input type="text" name="phone" size="30" class="form-control" value="<%=rs.getString(6)%>"></div>
    </div>
	<%}%>
    <hr class="line1">
    <div class="buyed">
    <div style="font-size: 30px;text-align: center;"><mark>消費記錄</mark></div>
    <br><br><br>
    <div class="buy_con" style="left:17%;">
    <table>
    <tr>
    <th>訂房天數</th>
    <th>飯店名稱</th>
    <th>金額</th>
    </tr>
	<%	
	    sql = "SELECT * FROM orders Where username ='"+ session.getAttribute("username") + "' Order By username DESC";
		ResultSet rs1 = con.createStatement().executeQuery(sql);
		while(rs1.next())
		{				
	%>
    <tr>
        <td><%=rs1.getString(4)%></td>
        <td><%=rs1.getString(6)%></td>
        <td><%=rs1.getString(8)%></td>
    <%}%>
	</tr>
    </table>
    </div>
    </div>
	
    <hr class="line2">
    <div class="type">
    <div style="font-size: 30px;text-align: center;"><mark>留言記錄</mark></div>
    <br><br><br>
    <div class="type_con" style="left:17%;">
    <table>
    <tr>
    <th>留言日期</th>
    <th>留言內容</th>
    </tr>
	<%	
	    sql = "SELECT * FROM board Where userid ='"+ session.getAttribute("username") + "' Order By userid DESC";
	    ResultSet rs2 = con.createStatement().executeQuery(sql);
	    while(rs2.next())
		{
	%>
    <tr>
		<td><%=rs2.getString(4)%></td>
		<td><%=rs2.getString(3)%></td>
    <%}%>
	</tr>
    </table>

    </div>
    </div>
	<%
		sql = "SELECT * FROM user";
		ResultSet rs3 = con.createStatement().executeQuery(sql);
		while(rs3.next())
	{%>	
	<input type="hidden" name="confirm" value="<%=rs3.getString(1)%>">
	<%}%>
    <button class="btn_con" style="position:relative; top:48%;margin-bottom:50px;">確認</button>
    </div>
	
	</form>

   

    <div class="" style="    width: 100%; height: 150px;background-color: #003060; position: relative;">
        <div class="f_text">Copyright © 2021. All rights reserved.</div>
    </div>
</body>
</html>