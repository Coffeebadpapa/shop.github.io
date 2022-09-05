<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ include file="config.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../assets/css/h_product.css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/icon/css/all.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/index1.css">
	
    <title>住宿</title>
</head>
    <%{%>
    <body>
    <ul class="nav">
    <a href="index.jsp" class="logo"><img src="../assets/images/logo.png" style="width:100px;"></a>
    <nav class="fun2">
	<% if(session.getAttribute("username")!=null){%>
	<a href="signout.jsp">
    <button type="submit" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" style="position:relative; left:65%;">登出</button>
	</a>
	<button type="button" class="btn btn-primary" onclick="location.href='shoppingcar.jsp'" style="position:relative; left:65%;">預訂清單</button>
	<%}else{%>
	<a href="index.jsp">
    <button type="submit" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" style="position:relative; left:70%;">登入</button>
    </a>
    <button type="button" class="btn btn-primary" onclick="location.href='shoppingcar.jsp'" style="position:relative; left:65%;">預訂清單</button>
	<%}%>
	<div class="dropdown" style="position:relative; left:60%; top:-40px">
    <div class="contain">
    <div class="bar1"></div>
    <div class="bar2"></div>
    <div class="bar3"></div>
    </div>
	
    <div id="myDropdown" class="dropdown-content">
        <a href="hproduct.jsp?location=基隆 Keelung">基隆</a>
        <a href="hproduct.jsp?location=台北 Taipei">台北</a>
        <a href="hproduct.jsp?location=新北 NewTaipei">新北</a>
        <a href="hproduct.jsp?location=宜蘭 Yilan">宜蘭</a>
        <a href="hproduct.jsp?location=桃園 Taoyuan">桃園</a>
        <a href="hproduct.jsp?location=新竹 Hsinchu">新竹</a>
    </div>
    </div>
	</nav>
    </ul>
   
	<%}%>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
 
	<%
		String location=request.getParameter("location");
		String Hsinchu=new String("新竹 Hsinchu");
		String Taipei=new String("台北 Taipei");
		String NewTaipei=new String("新北 NewTaipei");
		String Keelung=new String("基隆 Keelung");
		String Taoyuan=new String("桃園 Taoyuan");
		String Yilan=new String("宜蘭 Yilan");
		
	if(location.equals(Hsinchu))
	{
		String sql2 = "SELECT * FROM item WHERE location='"+location+"'";
		ResultSet rs2 = con.createStatement().executeQuery(sql2);
		
	
		while(rs2.next())
	{%>

	<div class="title">
      <span class="location"><i class="fas fa-map-marker-alt"></i></span>
      <div class="font"><%out.print(rs2.getString("location"));%></div>
    </div>

    <div class="list">
          <a href="product.jsp?page=HC0<%out.print(rs2.getString("pic"));%>">
            <img src="../assets/images/h_hotel/h_hotel<%out.print(rs2.getString("pic"));%>.jpg" class="hotel_p1" style="position:relative;" title="W飯店">
            <div class="hover1">- Read More -</div>
          </a>
          <div class="h_info1">
            <div class="h_title"><%out.print(rs2.getString("itemname"));%></div>
            <div class="h_text"><%out.print(rs2.getString("itemadress"));%></div>
            <div class="ratings">
              <div class="empty_star">★★★★★</div>
              <div class="full_star1">★★★★★</div>
            </div>
            <br><br><br>
            <div class="h_money">TWD <%out.print(rs2.getString("cash"));%>起</div>
			<div>剩餘房間:  <%out.print(rs2.getString("item_count"));%></div>
          </div>
        <hr class="hr1">
	</div>
	<%}%>

	<%}
	else if(location.equals(Taipei))
	{
		String sql2 = "SELECT * FROM item WHERE location='"+location+"'";
		ResultSet rs2 = con.createStatement().executeQuery(sql2);
	%>
	<%
		while(rs2.next())
	{%>

	<div class="title">
      <span class="location"><i class="fas fa-map-marker-alt"></i></span>
      <div class="font"><%out.print(rs2.getString("location"));%></div>
    </div>
    <div class="list">
          <a href="product.jsp?page=TP0<%out.print(rs2.getString("pic"));%>">
            <img src="../assets/images/h_hotel/t_hotel<%out.print(rs2.getString("pic"));%>.png" class="hotel_p1" style="position:relative;" title="W飯店">
            <div class="hover1">- Read More -</div>
          </a>
          <div class="h_info1">
            <div class="h_title"><%out.print(rs2.getString("itemname"));%></div>
            <div class="h_text"><%out.print(rs2.getString("itemadress"));%></div>
            <div class="ratings">
              <div class="empty_star">★★★★★</div>
              <div class="full_star1">★★★★★</div>
            </div>
            <br><br><br>
            <div class="h_money">TWD <%out.print(rs2.getString("cash"));%>起</div>
			<div>剩餘房間:  <%out.print(rs2.getString("item_count"));%></div>
          </div>
        <hr class="hr1">
	</div>
	<%}%>

	<%}
	else if(location.equals(NewTaipei))
	{
		String sql2 = "SELECT * FROM item WHERE location='"+location+"'";
		ResultSet rs2 = con.createStatement().executeQuery(sql2);
	%>
	<%
		while(rs2.next())
	{%>

	<div class="title">
      <span class="location"><i class="fas fa-map-marker-alt"></i></span>
      <div class="font"><%out.print(rs2.getString("location"));%></div>
    </div>
    <div class="list">
          <a href="product.jsp?page=NTC0<%out.print(rs2.getString("pic"));%>">
            <img src="../assets/images/h_hotel/nt_hotel<%out.print(rs2.getString("pic"));%>.jpg" class="hotel_p1" style="position:relative;" title="W飯店">
            <div class="hover1">- Read More -</div>
          </a>
          <div class="h_info1">
            <div class="h_title"><%out.print(rs2.getString("itemname"));%></div>
            <div class="h_text"><%out.print(rs2.getString("itemadress"));%></div>
            <div class="ratings">
              <div class="empty_star">★★★★★</div>
              <div class="full_star1">★★★★★</div>
            </div>
            <br><br><br>
            <div class="h_money">TWD <%out.print(rs2.getString("cash"));%>起</div>
			<div>剩餘房間:  <%out.print(rs2.getString("item_count"));%></div>
          </div>
        <hr class="hr1">
	</div>
	<%}%>
	<%}
	
	else if(location.equals(Keelung))
	{
		String sql2 = "SELECT * FROM item WHERE location='"+location+"'";
		ResultSet rs2 = con.createStatement().executeQuery(sql2);
	%>
	<%
		while(rs2.next())
	{%>

	<div class="title">
      <span class="location"><i class="fas fa-map-marker-alt"></i></span>
      <div class="font"><%out.print(rs2.getString("location"));%></div>
    </div>
    <div class="list">
          <a href="product.jsp?page=KL0<%out.print(rs2.getString("pic"));%>">
            <img src="../assets/images/h_hotel/k_hotel<%out.print(rs2.getString("pic"));%>.jpg" class="hotel_p1" style="position:relative;" title="W飯店">
            <div class="hover1">- Read More -</div>
          </a>
          <div class="h_info1">
            <div class="h_title"><%out.print(rs2.getString("itemname"));%></div>
            <div class="h_text"><%out.print(rs2.getString("itemadress"));%></div>
            <div class="ratings">
              <div class="empty_star">★★★★★</div>
              <div class="full_star1">★★★★★</div>
            </div>
            <br><br><br>
            <div class="h_money">TWD <%out.print(rs2.getString("cash"));%>起</div>
			<div>剩餘房間:  <%out.print(rs2.getString("item_count"));%></div>
          </div>
        <hr class="hr1">
	</div>
	<%}%>
	<%}
	
	else if(location.equals(Taoyuan))
	{
		String sql2 = "SELECT * FROM item WHERE location='"+location+"'";
		ResultSet rs2 = con.createStatement().executeQuery(sql2);
	%>
	<%
		while(rs2.next())
	{%>

	<div class="title">
      <span class="location"><i class="fas fa-map-marker-alt"></i></span>
      <div class="font"><%out.print(rs2.getString("location"));%></div>
    </div>
    <div class="list">
          <a href="product.jsp?page=TC0<%out.print(rs2.getString("pic"));%>">
            <img src="../assets/images/h_hotel/ta_hotel<%out.print(rs2.getString("pic"));%>.jpg" class="hotel_p1" style="position:relative;" title="W飯店">
            <div class="hover1">- Read More -</div>
          </a>
          <div class="h_info1">
            <div class="h_title"><%out.print(rs2.getString("itemname"));%></div>
            <div class="h_text"><%out.print(rs2.getString("itemadress"));%></div>
            <div class="ratings">
              <div class="empty_star">★★★★★</div>
              <div class="full_star1">★★★★★</div>
            </div>
            <br><br><br>
            <div class="h_money">TWD <%out.print(rs2.getString("cash"));%>起</div>
			<div>剩餘房間:  <%out.print(rs2.getString("item_count"));%></div>
          </div>
        <hr class="hr1">
	</div>
	<%}%>
	<%}
	
	else if(location.equals(Yilan))
	{
		String sql2 = "SELECT * FROM item WHERE location='"+location+"'";
		ResultSet rs2 = con.createStatement().executeQuery(sql2);
	%>
	<%
		while(rs2.next())
	{%>

	<div class="title">
      <span class="location"><i class="fas fa-map-marker-alt"></i></span>
      <div class="font"><%out.print(rs2.getString("location"));%></div>
    </div>
    <div class="list">
          <a href="product.jsp?page=YL0<%out.print(rs2.getString("pic"));%>">
            <img src="../assets/images/h_hotel/y_hotel<%out.print(rs2.getString("pic"));%>.jpg" class="hotel_p1" style="position:relative;" title="W飯店">
            <div class="hover1">- Read More -</div>
          </a>
          <div class="h_info1">
            <div class="h_title"><%out.print(rs2.getString("itemname"));%></div>
            <div class="h_text"><%out.print(rs2.getString("itemadress"));%></div>
            <div class="ratings">
              <div class="empty_star">★★★★★</div>
              <div class="full_star1">★★★★★</div>
            </div>
            <br><br><br>
            <div class="h_money">TWD <%out.print(rs2.getString("cash"));%>起</div>
			<div>剩餘房間:  <%out.print(rs2.getString("item_count"));%></div>
          </div>
        <hr class="hr1">
	</div>
	<%}%>
	<%}%>
	
		<div style="clear:both;"></div>

    
    <div class="footer">
      <div class="f_text">Copyright © 2021. All rights reserved.</div>
    </div>
    
</body>
</html>