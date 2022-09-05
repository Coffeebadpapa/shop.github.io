<%@page import = "java.sql.*" %>
<%@page pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("utf-8");
	String username=request.getParameter("username");
	String name=request.getParameter("name");
	String password=request.getParameter("password");
	String email=request.getParameter("email");
	String phone=request.getParameter("phone");
	String address=request.getParameter("address");
	String password2=request.getParameter("password2");
if(password2.equals(password))
{    
  try
  {  
    //載入資料庫驅動程式 
    Class.forName("com.mysql.jdbc.Driver");
    try
	{
        //建立連線
      String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
      String sql;
      Connection con = DriverManager.getConnection(url, "root", "1234");
      if(con.isClosed())
        out.println("連線建立失敗");
	  	else
      {
        sql = "CREATE DATABASE IF NOT EXISTS `dbezcheck`;";
        con.createStatement().execute(sql);
        //選擇資料庫
        sql = "USE `dbezcheck`";
          if(!con.createStatement().execute(sql))
          {
            if(request.getParameter("username")!="")
            {    
              sql = "SELECT * FROM `user` WHERE `username`='" +username+ "'"  ; 
              ResultSet paperrs =con.createStatement().executeQuery(sql);
                if(paperrs.next())
                {
                  out.print("<script>alert('此帳號已被註冊過');</script>"); 
                  response.setHeader("refresh","0;URL=index.jsp");
                }
                else
                {
					//讀出目前的會員編號最大值
					PreparedStatement pstmt = null;			   
			        sql = "Select `userid` From `user` Order By `userid` ASC";
					paperrs =con.createStatement().executeQuery(sql);
					int nowNumber = 1;
					if(paperrs.last())
					nowNumber = paperrs.getInt(1) + 1;//再加一	   
					
					
					sql="INSERT user(userid,name,username,password,email,phone,address)"+" VALUES ('" + nowNumber +  "','" + name +  "','" + username + "','" + password + "','" + email + "','" + phone + "','" + address+"')";
      	      		boolean no= con.createStatement().execute(sql); //執行成功傳回false
      	      		//int no=con.createStatement().executeUpdate(sql); //可回傳異動數
      	     	  	if(!no)
      	      		{
      		      		session.setAttribute("username",request.getParameter("username"));
        				out.print("<script>alert('註冊成功');</script>"); 
                        response.setHeader("refresh","0;URL=index.jsp");
      		      	}
          		  	else
      	    	  	{
           		  		out.print("<script>alert('請輸入資料');</script>"); 
                    response.setHeader("refresh","0;URL=index.jsp");
      	      		}
                }
            }
            else
            {
              out.print("<script>alert('發生錯誤');</script>"); 
              response.setHeader("refresh","0;URL=index.jsp"); 
            }
          }  
          else
            out.println("dbezcheck建立失敗！");
      }
		  con.close();
    }      
    catch (SQLException sExec) 
    {
      out.println("SQL錯誤!" + sExec.toString());
    }

    }       
    catch (ClassNotFoundException err) 
    {
      out.println("class錯誤" + err.toString());
    }    
}
else
{
  out.print("<script>alert('確認密碼填寫不正確');</script>"); 
response.setHeader("refresh","0;URL=index.jsp");
}    
%>      