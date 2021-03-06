<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default rounded borders and increase the bottom margin */
    .navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */
     .jumbotron {
      margin-bottom: 0;
      background-color: currentColor;
      padding-top: 28px;
    padding-bottom: 12px;
    }
   
    /* Add a gray background color and some padding to the footer */
    footer {
      background-color: #f2f2f2;
      padding: 25px;
    }
  </style>

</head>
<body>
<div class="jumbotron">
  <div class="container text-center">
    <h1 style="background-color: cadetblue;">Fidelity</h1>
    <p>Trading Window</p>
  </div>
</div>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">FD</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="viewstocks.htm">Market Watch</a></li>
        <li><a href="viewwatchlist.htm">View WatchList</a></li>
        <li><a href="viewownedstock.htm">Owned Stocks</a></li>
        <li><a href="buyequity.htm">Buy Equity</a></li>
        <li><a href="#">Latest Stock Events</a></li>
        <li><a href="viewtradeorder.htm">View Trade Orders</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      <li><span class="glyphicon glyphicon-user" > Welcome ${user.firstName}<b>&nbsp;Login time :&nbsp; <font color="#FF0000">
	<%= new java.util.Date() %>
	</font></b></span></li>
        <li><a href="logout.htm"><span class="glyphicon glyphicon-user"></span> Logout</a></li>
        
      </ul>
    </div>
  </div>
</nav>
<h2>Buy Equity</h2>
<center>
<form:form action="great.htm" commandName="tradeOrder" method="post">

<table>
<tr>
    <td>Stock Name:</td>
    <td><form:input path="stockId" value="${id}" size="30" /> <font color="red"><form:errors path="stockId"/></font></td>
</tr>

<tr>
    <td>Trader Id:</td>
    <td><form:input path="traderId" value="${user.id}" size="30" /> <font color="red"><form:errors path="traderId"/></font></td>
</tr>

<tr>
    <td>Buy date:</td>
    <td><form:input path="buyDate" value="<%=new java.util.Date()%>" size="30" /> <font color="red"><form:errors path="buyDate"/></font></td>
</tr>


<tr>
    <td>Buy Price:</td>
    <td><form:input path="buyPrice" size="30" /> <font color="red"><form:errors path="buyPrice"/></font></td>
</tr>

<tr>
    <td>Status:</td>
    <td>  <form:select path="status" >
  <form:option value="Buy">Buy</form:option>
  <form:option value="Fully Executed">Fully Executed</form:option>
  
	</form:select>
	
	</td>
    
    
<%--     <td><form:password path="status" size="30" /> <font color="red"><form:errors path="status"/></font></td> --%>
</tr>

 <tr>
    <td>Type:</td>
    <td>  <form:select path="type">
  <form:option value="0">Buy</form:option>
  <form:option value="1">Sell</form:option>
  
	</form:select>
	
	</td>
    
<%--     <td><form:input path="type" size="30" /> <font color="red"><form:errors path="type"/></font></td> --%>
</tr> 

<tr>
    <td>Quantity:</td>
    <td><form:input path="qty" size="30" /> <font color="red"><form:errors path="qty"/></font></td>
</tr>

<tr>
    <td>Instrument:</td>
    <td>  <form:select path="instrument">
  <form:option value="equity">Equity</form:option>
  <form:option value="future">Future</form:option>
  <form:option value="option">Option</form:option>
	</form:select>
	
	</td>
    
    
<%--     <td><form:input path="instrument" size="30" /> <font color="red"><form:errors path="instrument"/></font></td> --%>
</tr>

<tr>
    <td>Trigger Price:</td>
    <td><form:input path="triggerPrice" size="30" value="${currentPrice}" /> <font color="red"><form:errors path="triggerPrice"/></font></td>
</tr>



<tr>
    <td colspan="2"><input type="submit" value="Place Order" style="
    background-color: darkcyan;
    color: white;
"/></td>
</tr>
</table>

</form:form>
</center>

</body>
</html>