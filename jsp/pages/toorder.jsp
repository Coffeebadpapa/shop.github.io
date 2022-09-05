<!-- Step 0: import library -->
<%@ page import = "java.sql.*, java.util.*,  java.text.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@include file="config.jsp" %>
<%

	if(session.getAttribute("username") != null)
	{
		if(request.getParameter("date1") !=""&& request.getParameter("date2") != "")
		{
		String no=(String)session.getAttribute("new_pid");
		String xxx=request.getParameter("date1");
		String yyy=request.getParameter("date2");
		String name=(String)session.getAttribute("username");
		
		sql="INSERT buy (itemid,username,datein,dateout) ";
		sql+="VALUES ('" + no + "', ";
		sql+="'"+ name +"', ";
		sql+="'"+ xxx +"', ";
		sql+="'"+ yyy +"' ) ";

		con.createStatement().execute(sql);
		con.close();	 //執行SQL
		out.println("<script>alert('預定成功');</script>");
		response.setHeader("refresh","0;URL=index.jsp") ;
		}
	
		else{
		out.println("<script>alert('填寫日期');</script>");
	    response.setHeader("refresh","0;URL=index.jsp") ;
		}
	}
	else
	{%>
	<script>alert('請先登入會員喔！');document.location ='index.jsp'</script>
	<%}	

%>
</body>
</html>








		 
