<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<html>
  <head>
    <title>留言</title>
  </head>
<body>
<%
    try 
    {
		if(session.getAttribute("username")==null)
        {
%>
    <script>alert('請先登入會員喔！');document.location ='index.jsp'</script>
<%
	}
    else
    {
		String new_email=request.getParameter("userid");
        String new_pid = (String)session.getAttribute("new_pid");
        String new_content=new String(request.getParameter("content").getBytes("ISO-8859-1"),"utf-8");
        String new_stars=request.getParameter("stars");
        java.sql.Date new_date=new java.sql.Date(System.currentTimeMillis());
        
        sql="insert board(userid,content,putdate,stars,pid)";
        sql+="value('" +session.getAttribute("username")+"', ";
        sql+="'"+new_content+"',";
        sql+="'"+new_date+"',";
        sql+="'"+new_stars+"',";
        sql+="'"+new_pid+"')";
        con.createStatement().execute(sql);
        response.sendRedirect("product.jsp?page="+new_pid+"");
        con.close();      
	}
    }
    catch (SQLException sExec) 
    {
        out.println("SQL錯誤"+sExec.toString());
    }
%>
</body>
</html>