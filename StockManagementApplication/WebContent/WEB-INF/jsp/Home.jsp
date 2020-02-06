<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: pink;">
<center>
<h1 style="font-size: 50px; font-family: cursive;"><i><u>Home Page</u></i></b></h1>

<a href="AddProduct">ADD PRODUCT</a> |
<a href="ShowProduct">AVAILABLE PRODUCT OR UPDATE </a> |
<a href="AddCartPro">ADD TO CART</a> |
<a href="ShowCart">SHOW CART</a> 

<br>
<br>
<hr>
<br>
<form action="Search" align="right">
<input type="text" name="search">
<input type="submit" value="Search">
</form>
<h1 style="font-size: 50px; font-family: cursive;"><i><u>${msg }</u></i></b></h1>
</center>
</body>
</html>