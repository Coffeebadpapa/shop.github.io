<%@page contentType="text/html;charset=utf-8" language="java" import="java.sql.*"%>
<%@include file="config.jsp" %>

<%
	if(request.getParameter("password") != "" && request.getParameter("name") != "" && request.getParameter("account") != ""&& request.getParameter("email") != ""&& request.getParameter("phone") != "")
	{	
		String xx = request.getParameter("confirm");
		String username = request.getParameter("account");
		String password = request.getParameter("password");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String phone = request.getParameter("phone");
		
		sql = "UPDATE `user` SET `password` = '"+password+"', `name` = '"+name+"', `username` = '"+username+"', `email` ='"+email+"', `phone` ='"+phone+"' WHERE `userid` ='"+xx+"'"; //用?取代字串相加
		con.createStatement().execute(sql);
		con.close();
		out.print("<script>alert('修改成功');</script>");
	    response.setHeader("refresh","0;URL=person.jsp") ;
	}
	else
	{
		out.println("<script>alert('修改失敗');</script>");
	    response.setHeader("refresh","0;URL=person.jsp") ;
	}
%>