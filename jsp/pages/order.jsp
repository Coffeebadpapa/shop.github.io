<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.text.*"%>
<%@include file="config.jsp" %>
<%
    try
    {
        request.setCharacterEncoding("UTF-8");
    
        if(session.getAttribute("username")!=null){
        String username=session.getAttribute("username").toString();
		String payway=request.getParameter("payway");
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
        String itemid=rs.getString("itemid");
        String sqlProduct="select * from item where itemid='"+itemid+"'";
        ResultSet rsProduct=con.createStatement().executeQuery(sqlProduct);
        rsProduct.next();
		String q =rsProduct.getString("itemid");
		String t =rsProduct.getString("item_count");
		int uu = Integer.parseInt(t);
        String p_name= rsProduct.getString("itemname");
        String p_picture=rsProduct.getString("picture");
        int p_price= rsProduct.getInt("cash");
        total += (p_price*(m / (1000 * 60 * 60 * 24)));
		int king = uu -1 ;
 		String w = Integer.toString(king);
		
 		sql = "Update `item` Set `item_count` ='"+w+"' WHERE `itemid` ='"+q+"'"; 
 		con.createStatement().execute(sql);
 		sql="INSERT orders (payway,username, day, itemid, p_name, p_price,total)";
 		sql+="VALUES ('" + payway+ "', ";
 		sql+="'"+ username+"', "; 
 		sql+="'"+ day+"', "; 
 		sql+="'"+ itemid+"', "; 
 		sql+="'"+ p_name+"', ";  
 		sql+="'"+ p_price+"', "; 
 		sql+="'"+ total+"')"; 
 		con.createStatement().execute(sql);
 		sql = "DELETE FROM `buy` WHERE `username`='"+username+"'";
		}
 		con.createStatement().execute(sql);
 		con.close();

        }
        out.print("<script>");
        out.print("alert('結帳成功')");
        out.print("</script>");
        response.setHeader("refresh","0;URL=index.jsp");
    }
	
    catch(SQLException s)
    {
        out.print(s.toString());
    }
%>
