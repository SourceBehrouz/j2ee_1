<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.lang.*"
       import ="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<%@page import="java.lang.*"
        import ="java.sql.*"
        import="java.util.*"
       %>
<%@ taglib uri="taglib61.tld" prefix="cal" %>
<head>
  <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
  <script src="http://jquery.bassistance.de/validate/jquery.validate.js"></script>
  <script src="http://jquery.bassistance.de/validate/additional-methods.js"></script>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
  <link rel="stylesheet" type="text/css" href="StyleSheet.css" />
  <link rel="stylesheet" type="text/css" href="layout.css" />
  <link rel="stylesheet" type="text/css" href="stylenew.css" />
  <link rel="stylesheet" type="text/css" href="style.css" />
  <script>
  $(function() {
    $( "#datepicker" ).datepicker();
  });
  </script>
   <script>
  $(function() {
    $( "#checkoutID" ).datepicker();
  });
  </script>
</head>
<body id="page1" onload="new ElementMaxHeight();">
<div id="main">
<!-- header -->
	<div id="header">
		<div class="row-1">
			<div class="wrapper">
				<div class="logo">
					<h1><a href="index.html">Five Star</a></h1>
					<em>Hotel</em>
					<strong>True Luxury</strong>
				</div>
				<div class="phones">
					49-30-26050<br />
					49-30-2605392716
				</div>
			</div>
		</div>
		<div class="row-2">
	 		<div class="indent">
<!-- header-box begin -->
				<div class="header-box">
					<div class="inner">
						<ul class="nav">
					 		<li><a href="index.jsp">Home</a></li>
							<li><a href="CheckIn.jsp">Check In</a></li>
							<li><a href="CheckOut.jsp">Check Out</a></li>
							<li><a href="Payment.jsp">payment</a></li>
							<li><a href="RoomManagement.jsp">RoomManagement</a></li>
							<li><a href="Reports.jsp">Reports</a></li>
						</ul>
					</div>
				</div>
<!-- header-box end -->
			</div>
		</div>
	</div><div class="ic">Lovely Flash templates from TemplateMonster!</div>
<!-- content -->
	<div id="content">
		<div class="wrapper">
			<div class="aside maxheight">
<!-- box begin -->
				<div class="box maxheight">
					<div class="inner">
						<h3>Reservation:</h3>
						<form action="" id="reservation-form">
					 		<fieldset>
								<div class="field"><label>Check In:</label><select class="select1"><option>30</option></select><select class="select2"><option>April 2009</option></select></div>
								<div class="field"><label>Check Out:</label><select class="select1"><option>01</option></select><select class="select2"><option>May 2009</option></select></div>
								<div class="field">Persons: &nbsp;<input type="text" value="1"/>&nbsp; &nbsp; &nbsp; &nbsp; Rooms:&nbsp; <input type="text" value="1"/></div>
								<div class="button"><span><span><a href="#" onclick="document.getElementById('reservation-form').submit()">Check Availability</a></span></span></div>
							</fieldset>
						</form>
					</div>
				</div>
<!-- box end -->
			</div>
			<div class="content">
				<div class="indent">
					<h2>Wellcome to HMS Hotel management system..</h2>
 <%
    String cmd=request.getParameter("cmd");
    String search=request.getParameter("searchlist");
    String roomnumberp = request.getParameter("roomlist");
    String result="No Result";
    if(cmd==null) cmd="";
    if(cmd.equals("Submit")) {
              String sql="SELECT * FROM rooms, customer_room_checkINOUT WHERE rooms.idRooms = customer_room_checkINOUT.FK_Room and idRooms = " + roomnumberp;
              String url="jdbc:mysql://localhost:3306/hustel_db";
              Class.forName("com.mysql.jdbc.Driver");
             Connection cn = DriverManager.getConnection(url, "root", "beh5713"); ;
              Statement st=cn.createStatement();
              result="";
              ResultSet rs=st.executeQuery(sql);
              while(rs.next()) {
            	  result = result + "<tr >"+"<td>"+rs.getString("RoomNumber")+"</td> <td>"+rs.getString("CheckIn")+"</td><td>"+rs.getString("Checkout")+"</td></tr>";
              }
              result = "<table class='CSSTableGenerator' > <tr class='table1 thead th'><td>ROOM Number</td><td>chck in</td><td>Check out </td></TR>" + result + "</table>";
              rs.close();
              st.close();
              cn.close();
     }  
%>
              <form method="post" action="RoomManagement.jsp">
                <%
                       String sql="select * from rooms";
                       String url="jdbc:mysql://localhost:3306/hustel_db";
                       Class.forName("com.mysql.jdbc.Driver");
                       Connection cn = DriverManager.getConnection(url, "root", "beh5713"); ;
                        Statement st=cn.createStatement();
                        ResultSet re=st.executeQuery(sql);
          				%>
          				<div class="field"><label>Select room number:</label>
						<select name="roomlist" id="roomid">
		 				<%
						while(re.next())
						{
						String un=re.getString("RoomNumber");
						String un2=re.getString("idRooms");
						%>
						<option value="<%= un2%>"><%= un%></option>
						<% 
						}
						%>
						</select>
						</div>
                        <div class="button"><input type="submit" name="cmd" value="Submit"/></div>
                 </form>
               <%=result%>
				</div>
			</div>
		</div>
	</div>
<!-- footer -->
	<div id="footer">
  		<ul class="nav">
	 		<li><a href="index.jsp">Home</a>|</li>
			<li><a href="CheckIn.jsp">Check In</a>|</li>
			<li><a href="CheckOut.jsp">Check Out</a>|</li>
			<li><a href="Reservation.jsp">Reservation</a>|</li>
			<li><a href="Payment.jsp">payment</a>|</li>
			<li><a href="RoomManagement.jsp">Room Managements</a></li>
			<li><a href="Reports.jsp">Reports</a></li>
		</ul>
		<div class="wrapper">
			<div class="fcenter">Copyright (c) 2009 FiveStar Hotel</div>
		</div>
	</div>
</div>
</body>
</html>