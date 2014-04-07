<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="css/StyleSheet.css" />
</head>
<body>
<div class="header" style="" ><img src="pics/logo.jpg" width="100%"/></div>
<div class="left">
  <ul class="vertical_menu">
   <li>
        <a href="index.jsp">Home</a>
    </li>
    <li>
        <a href="CheckIn.jsp">Traveler CheckIn</a>
    </li>
    <li>
        <a href="CheckOut.jsp">Traveler Checkout</a>
    </li>
    <li>
        <a href="RoomManagement.jsp">Rooms management</a>
    </li>
    <li>
        <a href="Accounting.jsp">Accunting</a>
    </li>
    <li>
        <a href="Reservation.jsp">Reserveation</a>
    </li>
    <li>
        <a href="Reports.jsp">Reports</a>
    </li>
    <li>
        <a href="UserManagement.jsp">User Manegment</a>
    </li>
    </ul>
</div>
<div class="center" >
              <form method="post" action="index.jsp">
						<p></p>
                                   <input type="submit" name="cmd" value="Submit"/>
                 </form>
                <hr/>
</div>
<div class="footer">
</div>
</body>
</html>