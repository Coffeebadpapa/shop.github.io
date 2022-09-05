<!DOCTYPE html>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="../assets/css/shopping car.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/index1.css">
    <link href="https://fonts.googleapis.com/earlyaccess/cwtexyen.css" rel="stylesheet">
    <title>預訂清單</title>
  </head>
  <body>
    <ul class="nav">
        <a href="index.jsp" class="logo"><img src="../assets/images/logo.png" style="width:100px;"></a>
    <nav class="fun2">
	</nav>
    </ul>
    <br>

    <img src="../assets/images/buy.webp" style="width:10%;position:absolute;left:1050px;top:130px;">
    <div class="row" id="allcar">
        <div class="col-md-12" >
        <h3 class="yourcar"><mark>預訂清單</mark></h3>
		
    <!--(橫)商品、總計-->
    <div class="row" id="cartitle">
        <div class="col-md-3">
        <h3 class="topfont"></h3>
        </div>
    <div class="col-md-3">
        <h3 class="topfont">飯店房型</h3>
    </div>
    <div class="col-md-3">
        <h3 class="topfont">住宿日期</h3>
    </div>
    <div class="col-md-3">
        <h3  class="topfont">總天數與價格</h3>
    </div>
    </div>
    <hr>
			
    <%
        if(session.getAttribute("username")!=null){
        String username=session.getAttribute("username").toString();
        sql="select * from buy where username='"+ username+"'";
        ResultSet rs=con.createStatement().executeQuery(sql);
        int total=0;
        while(rs.next()){
        String no=rs.getString("no");
        String datein=rs.getString("datein");
        String dateout=rs.getString("dateout");
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        long m = sdf.parse(dateout).getTime() - sdf.parse(datein).getTime();
        String day= String.valueOf(m / (1000 * 60 * 60 * 24));
        String g=rs.getString("no");
        String x=rs.getString("itemid");
        String sqlProduct="select * from item where itemid='"+x+"'";
        ResultSet rsProduct=con.createStatement().executeQuery(sqlProduct);
        rsProduct.next();
        String p_name= rsProduct.getString("itemname");
        String p_picture=rsProduct.getString("picture");
        int p_price= rsProduct.getInt("cash");
        total += (p_price*(m / (1000 * 60 * 60 * 24)));
    %>
	
    <div class="row" id="cartitle">
        <div class="col-md-3">
        <span class="kkkk">
        <img src="<%=p_picture%>" style="width:180%">
        </span>
    </div>
	<div class="col-md-3">
        <div class="kkk"><%=p_name%><br></div>
    </div>
	<div class="col-md-3">
        <div class="kk"> <%=datein%><br>～<br><%=dateout%></div>
    </div>
    <div class="col-md-3">
        <div class="kkk">NT.<%=p_price%>* <%=day%></div>
		
		<form  action="delecar.jsp" method="post" >
		<input type="hidden" name="don" value="<%=g%>">
        <button type="submit" class="btn btn-success" id="carbtn" style="position:relative;left:230px;top:75px;">取消預訂</button>
		</form>
    </div>
    </div>
    <br><br>
	<%}%>
	<hr>
    <div class="row">
		<div class="col-md-12">
		<h3 class="jjj">TOTAL：NT.<%=total%></h3>
		</div>
	</div>
	<%}%>
    <button type="button" class="btn btn-primary" style="position:relative;left:600px;" data-bs-toggle="modal" data-bs-target="#exampleModal">下單</button>
    <!-- Modal -->

	<form  action="order.jsp" method="post" >
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
    <div class="modal-content">
    <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">付款方式</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
    </div>
    <div class="modal-body" style="padding:2rem;">
    <br>
    <div class="mb-3">
    <div class="form-check-inline">
	
        <img src="../assets/images/atm.png"style="width: 60px ; position:absolute; left:80px;top:25px;">&nbsp;&nbsp;

        <img src="../assets/images/money.png"style="width: 60px ; position:absolute; left:210px;top:25px;">&nbsp;&nbsp;

        <img src="../assets/images/line.png"style="width: 60px ; position:absolute; left:340px;top:25px;">&nbsp;&nbsp;
       
	   <div class="pay" style="position:relative; top:60px;left:160px;">
        <p>選擇付款方式</p>
        <div class="payb">
            <select class="sb" size="1" name="payway">
                <option>ATM付款</option>
                <option>現金付款</option> 
                <option>銀行轉帳</option> 
            </select> 
        </div>
    </div>
    <br>
    </div>
    </div>
	</div>
	
    <div class="modal-footer">
	
	    <input type="hidden" name="payway" value="payway">
        <button type="submit" class="btn btn-primary">確認付款</button>
    </div>
	
    </div>
    </div>
    </div>
	</form>

    </div>
    </div>
	
		
    <div class="footer1">
    <div class="f_text">Copyright © 2021. All rights reserved.</div>
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