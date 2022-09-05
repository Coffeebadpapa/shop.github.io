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
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <script src="../assets/JS/date.js"></script>
    <link rel="stylesheet" href="../assets/css/icon/css/all.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/index1.css">
	<link rel="stylesheet" type="text/css" href="../assets/css/search.css">
    <title>搜尋結果</title>
    </head>
	<body style="background-color: rgb(184, 184, 199);">
		<%
		request.setCharacterEncoding("UTF-8");
		String searchtext = request.getParameter("searchtext");
		ResultSet rss;
		sql = "SELECT * FROM item WHERE `itemname` LIKE '%"+searchtext+"%'";
		rss = con.createStatement().executeQuery(sql);
		%>
        <%
			int count =221829;
			if(rss.next()==false)
			{
		    out.print("<script>alert('查無結果');</script>");
			response.setHeader("refresh","0;URL=index.jsp") ;
			}else{
				rss.beforeFirst();
				while(rss.next()){
			%>
			<div class="row" id="spacing">
			<div class="col-md-4">
			
			<div class="col-md-8" style="position:relative; left:90%;">
			<h3 id="readtitle"><%=rss.getString(7)%></h3>
			<dl>
			<dt>價錢</dt>
			<dd><%=rss.getString(4)%></dd>
			</dl>
			
			<div class="row">
			<div class="col-md-12">
			
			<form method="post" action="product.jsp?page=<%=rss.getString(1)%>">
			
			<input type="hidden" name="productno" value="">
			
			<button type="submit" class="btn btn-success" id="readbtn" style="position: relative; width:150px; top:-25px">立即購買!</button>
			
			</form>
			</div>
			</div>
			</div>
			</div>
			<%count+=1;}
			}%>
			</div>
	</body>
	</html>