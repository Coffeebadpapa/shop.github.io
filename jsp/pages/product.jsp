<%@ page import = "java.sql.*, java.util.*"%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ include file= "config.jsp" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="../assets/css/index1.css">
    <link rel="stylesheet" href="../assets/css/index.css">
    <link rel="stylesheet" href="../assets/css/product.css">
    <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha384-vk5WoKIaW/vJyUAd9n/wmopsmNhiy+L2Z+SBxGYnUkunIxVxAv/UtMOhba/xskxh" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../assets/css/animate.min.css">
    <link rel="stylesheet" href="../assets/css/board.css">
    <link rel="stylesheet" href="../assets/css/icon/css/all.css">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Serif+TC:wght@500&display=swap" rel="stylesheet">
    <style>
      body{
        font-family: 'Noto Serif TC', serif ;
      }
    </style>
    <title>飯店</title>
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
	<div class="dropdown" style="position:relative; left:60%;">
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
    <br>
    <%
		String pid = request.getParameter("page");
		session.setAttribute("new_pid",pid);
		String sql3="SELECT * FROM item WHERE itemid = '"+pid+"'";
		ResultSet rs = con.createStatement().executeQuery(sql3);
		while(rs.next())
		{
	%>
    <nav class="productnav">
    <img src="../assets/images/mark1.png" class="img-thumbnail" alt="...">
    <h1 style="position:relative;left:65px;top:5px;width:600px; font-weight: bold;font-family: 'Noto Serif TC', serif ;"><%out.print(rs.getString(7));%></h1>
    <img src="../assets/images/stars5.png" class="img1-thumbnail" alt="...">
    
    <div class="photoya">
    <div class="jquery-script-ads" style="margin:50px auto"></div>
        <a class="btn1" href="#"><img src="<%out.print(rs.getString(17));%>" style="width:700px;height:460px;left:-285px;position: relative;"></a>
    <div class="jquery-script-ads" style="margin:50px auto"></div>
        <a class="btn4" href="#"><img src="<%out.print(rs.getString(18));%>" style="width:250px;height:150px;left:195px;top:-510px;position: relative;"></a>
    <div class="jquery-script-ads" style="margin:50px auto"></div>
        <a class="btn3" href="#"><img src="<%out.print(rs.getString(19));%>" style="width:250px;height:150px;left:195px;top:-555px;position: relative;"></a>   
    <div class="jquery-script-ads" style="margin:50px auto"></div>
        <a class="btn2" href="#"><img src="<%out.print(rs.getString(20));%>" style="width:250px;height:150px;left:195px;top:-600px;position: relative;"></a>
    </div>

    <div id="item" class="insidebox">
        <img src="../assets/images/HI3-1.jpg">
        <b class="insidebox-close js-popup-close">x</b>
    </div>
    <div id="item2" class="insidebox2">
        <img src="../assets/images/HI3-4.jpg">
        <b class="insidebox-close js-popup-close">x</b>
    </div>
    <div id="item3" class="insidebox3">
        <img src="../assets/images/HI3-3.jpg">
        <b class="insidebox-close js-popup-close">x</b>
    </div>
    <div id="item4" class="insidebox4">
        <img src="../assets/images/HI3-2.jpg">
        <b class="insidebox-close js-popup-close">x</b>
    </div>

   	<%
		/*隨機廣告*/
		String sql5="SELECT * FROM `randad`";
        ResultSet rs5=con.createStatement().executeQuery(sql5);
        rs5.last();
        int n1 = rs5.getRow(); 
        Random ran1=new Random();
        int current_adid1=ran1.nextInt(n1)+1;
        sql5="SELECT * FROM `randad` WHERE `adid`= " + current_adid1;
        rs5=con.createStatement().executeQuery(sql5);
        rs5.next();
	%>
    <div id="carouselExampleIndicators" class="carousel slide admargin" data-bs-ride="carousel">
  
    <div class="carousel-inner" style="position:relative;left:80%;top:-1000px;width:200px;">
    <div class="carousel-item active" style="position:relative;width:300px;">
        <img src="../assets/images/randad/<%=rs5.getString(2)%>.jpg" class="d-block w-40" alt="隨機廣告" style="height:250px;"></a>
		<div class="card-body">
			<h5 class="card-title newfont1"><%=rs5.getString(3)%></h5>
			<p class="card-text newfont2"><%=rs5.getString(4)%></p>
		</div>
    </div>
    </div>
    </div>

 
        
    <section class="section1">
    <h4 style="font-weight: bold;padding-left: 10px;font-family: 'Noto Serif TC', serif ;">
		體驗<%out.print(rs.getString(7));%>世界級服務</h4><br>
    <p style="padding-left: 25px;">
        <div class="w1"><%out.print(rs.getString(8));%>
        </div>
    <br>
        <div class="w1"><%out.print(rs.getString(9));%></div>
    <br>
        <div class="w1"><%out.print(rs.getString(10));%></div>
    <br>
        <div class="w1"><%out.print(rs.getString(11));%></div>
    <br>
        <div class="w1"><%out.print(rs.getString(12));%> </div>
    <br>
        <div class="w1">
        <span style="font-weight: bold;"><%out.print(rs.getString(7));%>自 <%out.print(rs.getString(15));%>開始接待旅客入住。
        </div>
    <br>
        <div class="w1">連鎖飯店／品牌: FIH Regent Group</span></p></div>
    </section>
	<%}%>
    <section class="section2">
    <h4 style="font-weight: bold;padding-left: 10px;text-align:center;padding-top:30px;font-family: 'Noto Serif TC', serif ;">住客評分：</h4><br>
    <h5 style="font-weight:bold;padding-left:45px;padding-top:10px;font-family: 'Noto Serif TC', serif ;">員工素質&nbsp;&nbsp;&nbsp;9.3 </h5>
        <div class="progress">
        <div class="progress-bar bg-success" role="progressbar" style="width: 93%" aria-valuenow="93" aria-valuemin="0" aria-valuemax="100"></div>
        </div>
    <br>
    <br>
    <h5 style="font-weight:bold;padding-left:45px;padding-top:10px;font-family: 'Noto Serif TC', serif ;">住宿地點&nbsp;&nbsp;&nbsp;9.1 </h5>
        <div class="progress">
        <div class="progress-bar bg-success" role="progressbar" style="width: 91%" aria-valuenow="91" aria-valuemin="0" aria-valuemax="100"></div>
        </div>
    <br>
    <br>
    <h5 style="font-weight:bold;padding-left:45px;padding-top:10px;font-family: 'Noto Serif TC', serif ;">舒適程度&nbsp;&nbsp;&nbsp;9.3 </h5>
        <div class="progress">
        <div class="progress-bar bg-success" role="progressbar" style="width: 93%" aria-valuenow="93" aria-valuemin="0" aria-valuemax="100"></div>
        </div>
    <h5 style="font-weight:bold;padding-left:45px;padding-top:10px;position: absolute;left:210px; top:95px;font-family: 'Noto Serif TC', serif ;">設施&nbsp;&nbsp;&nbsp;9.3 </h5>
        <div class="progress" style="position: absolute;left:250px;top:145px;">
        <div class="progress-bar bg-success" role="progressbar" style="width: 93%" aria-valuenow="93" aria-valuemin="0" aria-valuemax="100"></div>
        </div>
    <br>
    <br>
	<h5 style="font-weight:bold;padding-left:45px;padding-top:10px;position: absolute;left:210px; top:190px;font-family: 'Noto Serif TC', serif ;">性價比&nbsp;&nbsp;&nbsp;8.2 </h5>
        <div class="progress" style="position: absolute;left:250px;top:240px;">
        <div class="progress-bar bg-success" role="progressbar" style="width: 82%" aria-valuenow="82" aria-valuemin="0" aria-valuemax="100"></div>
        </div>
    <br>
    <br>
	<h5 style="font-weight:bold;padding-left:45px;padding-top:10px;position: absolute;left:210px; top:285px;font-family: 'Noto Serif TC', serif ;">免費WIFI&nbsp;&nbsp;&nbsp;8.7 </h5>
        <div class="progress" style="position: absolute;left:250px;top:335px;">
        <div class="progress-bar bg-success" role="progressbar" style="width: 87%" aria-valuenow="87" aria-valuemin="0" aria-valuemax="100"></div>
        </div>
	</section>
	
    <form  method="get" action="toorder.jsp">
	<div class="search">
        <img src="../assets/images/car.gif"style="width:200px;height:100px;">
        <p style="position: absolute;font-weight: bold;font-size: 28px;left:280px;top:30px">選擇入住日期</p>

    <div class="date">
    <span class="icon2"><i class="far fa-calendar-alt"></i></span>
        <input type="date" id="cdate" placeholder="入住" class="show_text" name="date1">
        <span class="icon2-1"><i class="far fa-calendar-alt"></i></span>
        <input type="date" id="cdate1" placeholder="退房" class="show_text" name="date2">
    </div>
    <div class="w3-container">
        <button  class="w3-button w3-black" style="font-weight: bold;text-align: center;position:absolute;left:1150px;top:30px;">確認</button>
	</form>	
    </nav>
	
	
	    <nav class=bottom1>
        </nav>
        
        <nav class="blackboard">
            <h1 style=" position:absolute; left:41%;font-weight: bold; font-size:50px;top:50px;color:	#8696a7 ;font-family: 'Noto Serif TC', serif;">商品評論</h1>
        <div class="container"> 
        <%
		String sql4="SELECT * FROM board WHERE pid='"+(String)session.getAttribute("new_pid")+"'";
		ResultSet rs4=con.createStatement().executeQuery(sql4);
		rs4.last();//算出共幾筆留言
		int total_content=rs4.getRow();
		out.println("共"+total_content+"筆留言<p>");
		%>
        
		<%
		String sql5="SELECT * FROM board WHERE pid='"+(String)session.getAttribute("new_pid")+"'";
		ResultSet rs5=con.createStatement().executeQuery(sql5);
		while(rs5.next())
		{
	    %>
		 <div class="comment" >
        <div class="user">
            <img src="../assets/images/jj.jpg" class="square" style="width:105px;position: relative;">
        </div>
        <div class="gmail" name="userid">
            <p><%out.print(rs5.getString(2));%></p>
        </div>
        <div class="commentdate">
            <i><%out.print(rs5.getString(4));%></i>
        </div>
        <div class="stars">
            <img src="../assets/images/stars4.png">
        </div>
        <div class="context" name="content">
            <p><%out.print(rs5.getString(3));%></p>
        </div>
		</div>

		<%}%>
		        </div>
        <%
		
		while(rs5.next())
		{
			String name="0";
			name=rs5.getString(5);
			if(name.equals("1")){%>
            <input type="radio" name="stars" checked="checked"/>
            <label id="lablestr"></label>
            <input type="radio" name="stars" value="1"/>
			<label id="lablestr">一星</label>
			<%}%>
			<%if(name.equals("2")){%>
            <input type="radio" name="stars" value="2"/>
			<label id="lablestr">二星</label>
			<%}%>
			<%if(name.equals("3")){%>
            <input type="radio" name="stars" value="3"/>
			<label id="lablestr">三星</label>
			<%}%>
			<%if(name.equals("4")){%>
            <input type="radio" name="stars" value="4"/>
			<label id="lablestr">四星</label>
			<%}%>
			<%if(name.equals("5")){%>
            <input type="radio" name="stars" value="5"/>
			<label id="lablestr">五星</label>
			<%}%>
			<br>
			<%out.print(rs5.getString(2));%><br>
			<%out.print(rs5.getString(3));%>
        </div>
        </div>
		<%}%>
		<form action="board.jsp" method="post">
	
		<div class="write" style="top:300px;left:-100px;">
            <h1 style=" position:absolute; left:50%;font-weight: bold; font-size:50px;top:400px;color:#8696a7 ;font-family: 'Noto Serif TC', serif;">留言專區</h1>
            <div class="boxx" style="position:relative;width:900px;top:500px;left:280px;">
            <div class="star">
              <input type="radio" name="stars" checked="checked"/>
              <label id="lablestr"></label>
              <input type="radio" name="stars" value="1"/>
			  <label id="lablestr">一星</label>
              <input type="radio" name="stars" value="2"/>
			  <label id="lablestr">二星</label>
              <input type="radio" name="stars" value="3"/>
			  <label id="lablestr">三星</label>
              <input type="radio" name="stars" value="4"/>
			  <label id="lablestr">四星</label>
              <input type="radio" name="stars" value="5"/>
			  <label id="lablestr">五星</label>
            </div>
          
          <div class="wr" style="position:relative;width:300px;top:55px;left:210px;">
            <textarea cols="50" rows="5" name="content">
            </textarea>
        </div>
			<input type="hidden" name="board" value="userid">
            <button type="submit" class="btn btn-success" style="position: relative;top:35px;left:400px;">送出</button>
        </div>
		</div>
		    
        

		</form>
		
        <div class="" style="width: 100%; height: 100px;background-color: #003060;position: relative;top:610px;">
            <div class="f_text">Copyright © 2021. All rights reserved.</div>
        </div>


        </nav>



      <script>
        (function ($) {
          $(function () {
            $('.btn1').on('click', function () {
              $('#item').popup({
                time: 1000,
                classAnimateShow: 'flipInX',
                classAnimateHide: 'hinge',
                onPopupClose: function e() {
                  // console.log('0')
                },
                onPopupInit: function e() {
                  // console.log('1')
                }
              });
            });
          });
        })(jQuery);

        (function ($) {
          $(function () {
            $('.btn2').on('click', function () {
              $('#item2').popup({
                time: 1000,
                classAnimateShow: 'flipInX',
                classAnimateHide: 'hinge',
                onPopupClose: function e() {
                  // console.log('0')
                },
                onPopupInit: function e() {
                  // console.log('1')
                }
              });
            });
          });
        })(jQuery);

        (function ($) {
          $(function () {
            $('.btn3').on('click', function () {
              $('#item3').popup({
                time: 1000,
                classAnimateShow: 'flipInX',
                classAnimateHide: 'hinge',
                onPopupClose: function e() {
                  // console.log('0')
                },
                onPopupInit: function e() {
                  // console.log('1')
                }
              });
            });
          });
        })(jQuery);

        (function ($) {
          $(function () {
            $('.btn4').on('click', function () {
              $('#item4').popup({
                time: 1000,
                classAnimateShow: 'flipInX',
                classAnimateHide: 'hinge',
                onPopupClose: function e() {
                  // console.log('0')
                },
                onPopupInit: function e() {
                  // console.log('1')
                }
              });
            });
          });
        })(jQuery);


        $(function() {
  // This button will increment the value
  $('.qtyplus').click(function(e) {
    // Stop acting like a button
    e.preventDefault();
    // Get the field name
    fieldName = $(this).attr('field');
    // Get its current value
    var currentVal = parseInt($('input[name=' + fieldName + ']').val());
    // If is not undefined
    if (!isNaN(currentVal)) {
      // Increment
      $('input[name=' + fieldName + ']').val(currentVal + 1);
    } else {
      // Otherwise put a 0 there
      $('input[name=' + fieldName + ']').val(0);
    }
  });
  // This button will decrement the value till 0
  $(".qtyminus").click(function(e) {
    // Stop acting like a button
    e.preventDefault();
    // Get the field name
    fieldName = $(this).attr('field');
    // Get its current value
    var currentVal = parseInt($('input[name=' + fieldName + ']').val());
    // If it isn't undefined or its greater than 0
    if (!isNaN(currentVal) && currentVal > 0) {
      // Decrement one
      $('input[name=' + fieldName + ']').val(currentVal - 1);
    } else {
      // Otherwise put a 0 there
      $('input[name=' + fieldName + ']').val(0);
    }
  });
});

(function ($) {
          $(function () {
            $('.btn4').on('click', function () {
              $('#item4').popup({
                time: 1000,
                classAnimateShow: 'flipInX',
                classAnimateHide: 'hinge',
                onPopupClose: function e() {
                  // console.log('0')
                },
                onPopupInit: function e() {
                  // console.log('1')
                }
              });
            });
          });
        })(jQuery);


        $(function() {
  // This button will increment the value
  $('.qtyplus2').click(function(e) {
    // Stop acting like a button
    e.preventDefault();
    // Get the field name
    fieldName = $(this).attr('field');
    // Get its current value
    var currentVal = parseInt($('input[name=' + fieldName + ']').val());
    // If is not undefined
    if (!isNaN(currentVal)) {
      // Increment
      $('input[name=' + fieldName + ']').val(currentVal + 1);
    } else {
      // Otherwise put a 0 there
      $('input[name=' + fieldName + ']').val(0);
    }
  });
  // This button will decrement the value till 0
  $(".qtyminus2").click(function(e) {
    // Stop acting like a button
    e.preventDefault();
    // Get the field name
    fieldName = $(this).attr('field');
    // Get its current value
    var currentVal = parseInt($('input[name=' + fieldName + ']').val());
    // If it isn't undefined or its greater than 0
    if (!isNaN(currentVal) && currentVal > 0) {
      // Decrement one
      $('input[name=' + fieldName + ']').val(currentVal - 1);
    } else {
      // Otherwise put a 0 there
      $('input[name=' + fieldName + ']').val(0);
    }
  });
});


$(function() {
  // This button will increment the value
  $('.qtyplus3').click(function(e) {
    // Stop acting like a button
    e.preventDefault();
    // Get the field name
    fieldName = $(this).attr('field');
    // Get its current value
    var currentVal = parseInt($('input[name=' + fieldName + ']').val());
    // If is not undefined
    if (!isNaN(currentVal)) {
      // Increment
      $('input[name=' + fieldName + ']').val(currentVal + 1);
    } else {
      // Otherwise put a 0 there
      $('input[name=' + fieldName + ']').val(0);
    }
  });
  // This button will decrement the value till 0
  $(".qtyminus3").click(function(e) {
    // Stop acting like a button
    e.preventDefault();
    // Get the field name
    fieldName = $(this).attr('field');
    // Get its current value
    var currentVal = parseInt($('input[name=' + fieldName + ']').val());
    // If it isn't undefined or its greater than 0
    if (!isNaN(currentVal) && currentVal > 0) {
      // Decrement one
      $('input[name=' + fieldName + ']').val(currentVal - 1);
    } else {
      // Otherwise put a 0 there
      $('input[name=' + fieldName + ']').val(0);
    }
  });
});
      </script>
      <script src="../../assets/JS/jquery.popup.min.js"></script>
  </nav>
    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
  </body>
  <script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-167622866-1']);
    _gaq.push(['_setDomainName', 'jqueryscript.net']);
    _gaq.push(['_trackPageview']);
  
    (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
    


    
  </script>
</html>