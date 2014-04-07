<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="StyleSheet.css" />
<link rel="stylesheet" type="text/css" href="layout.css" />
<link rel="stylesheet" type="text/css" href="stylenew.css" />
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
					<h2>Wellcome to HMS Hotel management system..</h2>
					<img class="img-indent png" alt="" src="images/1page-img1.png" />
					<p class="alt-top">HMS hotel management system is a web based aplication for managing curomers and hotel rooms, 
					Check in process can be done via check in form. payments can be carried out by payment form. The system was developed
					by JSp, Jdbc and Jquery technologies.
					<div class="clear"></div>
					<div class="line-hor"></div>
					<div class="wrapper line-ver">
						<div class="col-1">
				 			<h3>Today Hotel Offers</h3>
							<ul>
								<li>50% Discount for Restaraunt service</li>
								<li>30% Discount for 3 days+ orders</li>
								<li>FREE drinks and beverages in rooms</li>
							</ul>
						</div>
						<div class="col-2">
				 			<h3>Address</h3>
							<p>Hotel Address: Hotel Berlin, Berlin. Lützowplatz 17. 10785 Berlin, Germany. 
							</p>
							<dl class="contacts-list">
								<dt>E-Mail: info@hotel-berlin.de</dt>
								<dd>Phone: +49(30)26050</dd>
								<dd>Fax:   +49(30)2605392716</dd>
							</dl>
						</div>
					</div>
				</div>
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