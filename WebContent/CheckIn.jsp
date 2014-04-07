<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.lang.*"
       import ="java.sql.*"%>
<%@ taglib uri="taglib61.tld" prefix="cal" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <script src="//code.jquery.com/jquery-1.9.1.js"></script>
  <script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<link rel="stylesheet" type="text/css" href="StyleSheet.css" />
<link rel="stylesheet" type="text/css" href="layout.css" />
<link rel="stylesheet" type="text/css" href="stylenew.css" />
<link rel="stylesheet" type="text/css" href="style.css" />
<script src="maxheight.js" type="JAS/javascript"></script>
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
        <script type="text/javascript">
            function validate()
            {
                var a = document.getElementById("nameInput");
                var b = document.getElementById("familyInput");
                var c = document.getElementById("nationality");
                var d = document.getElementById("nationalId");
                var valid = true;
                if(a.value.length<=0 || b.value.length<=0 || c.value.length<=0 || d.value.length<=0)
                    {
                        alert("Don't leave the field empty!");
                        valid = false;
                    }
                    else{
                        if(!IsNumeric(a.value) || !IsNumeric(b.value))
                            alert("Enter all the fileds!");
                    valid = false;
                }
                return valid;
            };

        </script>
 <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<link rel="stylesheet" type="text/css" href="css/StyleSheet.css" />
<title>Insert title here</title>
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
							<li><a href="CheckIN.jso">Check In</a></li>
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
					<h2>Enter All the fileds..</h2>
				<%
				    String cmd=request.getParameter("cmd");
				    String nameInputp=request.getParameter("nameInput");
				    String familyInputp=request.getParameter("familyInput");
				    String nationalityp=request.getParameter("nationality");
				    String nationalIdp=request.getParameter("nationalId");
				    String datepickerp=request.getParameter("ndatepicker");
				    String checkoutIDp=request.getParameter("ncheckoutID");
				    String roomp=request.getParameter("roomname");
				   int IDType=0;
					String result ="enter data!";
				    if(cmd==null) cmd="";
				    if(cmd.equals("Insert")) 
				    {
				       		try
				       		{	  String sql="INSERT INTO customers( Name, family, IDType, IDNumber, Nationality) "+
				            	  "VALUES ('"+nameInputp+"','"+familyInputp+"',"+IDType+",'"+nationalIdp+"','"+nationalityp+"')";
				                  String url="jdbc:mysql://localhost:3306/hustel_db";
				                  Class.forName("com.mysql.jdbc.Driver");
				                  Connection cn = DriverManager.getConnection(url, "root", "beh5713"); ;
				              	  Statement st=cn.createStatement();
				                  int rs=st.executeUpdate(sql,Statement.RETURN_GENERATED_KEYS);
				                  ResultSet res = st.getGeneratedKeys();
				                  int risultato=-1;
				                  if (res.next()){
				                      risultato=res.getInt(1);
				                  }
				                  sql="INSERT INTO hustel_db.customer_room_checkinout (FK_Room,FK_Customer,CheckIN,CheckOut, current_guest)"+
				                  "VALUES ("+roomp+","+risultato+","+datepickerp+","+checkoutIDp+",1)";
				                  url="jdbc:mysql://localhost:3306/hustel_db";
				                  rs=st.executeUpdate(sql);
				                  result = "Inserted successfully"+checkoutIDp;
				                  st.close();
				                  cn.close();
				       		} catch( Exception e){
				       			e.printStackTrace();
				       		}
				    }
				    
				%>
				              <form method="post" action="CheckIn.jsp" onsubmit="return validate();">
				                     <div class="Insertcontainer">
				                     <div class="field"><label>Name:</label>
				                     <input type="text" name="nameInput" value=""/></div><br/>
				                     <div class="field"><label>Family:</label>
				                     <input type="text" name="familyInput" value=""/></div><br/>
				                     <div class="field"><label>Country:</label>
				                     <input type="text" name="nationality" value=""/></div><br/>
									 <div class="field"><label>ID:</label>
				                     <input type="text" name="nationalId" value=""/></div><br/>
				                      <%
				                       String sql="select * from rooms";
				                       String url="jdbc:mysql://localhost:3306/hustel_db";
				                       Class.forName("com.mysql.jdbc.Driver");
				                      Connection cn = DriverManager.getConnection(url, "root", "beh5713"); ;
				                       Statement st=cn.createStatement();
				                       ResultSet re=st.executeQuery(sql);
				          				%>
										<div class="field"><label>Room Number:</label>
										<select name="roomname" id="roomid">
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
										</select></div>
										<div class="field"><label>CheckIn Date:</label>
									    <input id="datepicker" name="ndatepicker" type="text" />
									    </div>
										<div class="field">
										<label>CheckOut Date:</label>
									<input id="checkoutID" name="ncheckoutID" type="text" /></div> 
									 <input type="submit" name="cmd" value="Insert"/>
									<br/>
				             </form>
				                <p></p>
				         <%=result%>
 			</div>
		</div>
	</div>
<!-- footer -->
	<div id="footer">
  		<ul class="nav">
	 		<li><a href="index.jsp">Home</a>|</li>
			<li><a href="CheckIN.jso">Check In</a>|</li>
			<li><a href="CheckOut.jsp">Check Out</a>|</li>
			<li><a href="Reservation.jsp">Reservation</a>|</li>
			<li><a href="Payment.jsp">Payment</a>|</li>
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