<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ page import = "java.sql.*, java.util.*"%>
<%@ include file="config.jsp"%>

<%
    if(request.getParameter("ID") != "" && request.getParameter("name") != "" && request.getParameter("location") != ""&& request.getParameter("address") != ""&& request.getParameter("price") != ""&& request.getParameter("stock") != ""&& request.getParameter("content") != "")
	{
		request.setCharacterEncoding("utf-8");
		String alter = request.getParameter("alter");
		String item_count =request.getParameter("stock");
        String price = request.getParameter("price");
		String content = request.getParameter("content");
        byte[] bytes = content.getBytes("ISO-8859-1");
		content = new String(bytes, "UTF-8");
		
        String name = request.getParameter("name");
		bytes = name.getBytes("ISO-8859-1");
		name = new String(bytes, "UTF-8");
		String ID = request.getParameter("ID");
		bytes = ID.getBytes("ISO-8859-1");
		ID = new String(bytes, "UTF-8");
		String address = request.getParameter("address");
		bytes = address.getBytes("ISO-8859-1");
		address = new String(bytes, "UTF-8");
		
		
		sql = "Update `item` Set `item_count` = '"+item_count+"', `cash` ='"+price+"', `p1` ='"+content+"', `itemname` ='"+name+"', `cash` ='"+price+"', `itemadress` ='"+address+"' WHERE `itemid` ='"+alter+"'"; 
        con.createStatement().executeUpdate(sql);	
        con.close();
		out.print("<script>alert('修改成功！'); self.location=document.referrer; </script>");
        response.sendRedirect("backgoods.jsp");
    }
    else
	{
		out.println("<script>alert('修改失敗！'); self.location=document.referrer; </script>");
	}
%>