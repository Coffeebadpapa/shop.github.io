<%@ page import = "java.sql.*, java.util.*,  java.text.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>

<%
try
{
    request.setCharacterEncoding("UTF-8");
	
	String itemid=request.getParameter("itemid");
	String location=request.getParameter("location");
	String item_count=request.getParameter("item_count");
	String cash=request.getParameter("cash");
	String picture=request.getParameter("picture");
	String itemadress=request.getParameter("itemadress");
	String itemname=request.getParameter("itemname");
	String openfor=request.getParameter("openfor");
	String p1=request.getParameter("p1");
	
	sql="INSERT item (itemid,location, item_count, cash, picture, itemadress,itemname,openfor,p1)";
	sql+="VALUES ('" + itemid+ "', ";
	sql+="'"+ location+"', "; 
	sql+="'"+ item_count+"', "; 
	sql+="'"+ cash+"', "; 
	sql+="'"+ picture+"', ";  
	sql+="'"+ itemadress+"', ";  
	sql+="'"+ itemname+"', ";  
	sql+="'"+ openfor+"', ";   
	sql+="'"+ p1+"')"; 
				
	con.createStatement().execute(sql);	 //執行SQL
	con.close();						 //關閉連線
	out.print("<script>alert('飯店新增成功！');</script>"); 
	response.setHeader("refresh","0;URL=backcheck.jsp");
}
catch ( SQLException e)
{
	out.print(e.toString());
		   
}
%>
</body>
</html>