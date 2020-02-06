<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body style="background-color: silver;">
<center>
<h1 style="font-size: 50px; font-family: cursive;"><i><u>Add Product</u></i></b></h1>
<hr>
<br>
<br>
<fieldset style="width:350px">
<form action="ProductAdd"  method="post" >
<pre>
<h1>Add Product</h1><h2><b>
 Name:    <input type="text" name="pname"  required="required"><br>
 Category:<input type="text" name="category"  required="required"><br>
 Company: <input type="text" name="company"  required="required"><br>
 Quantity:<input type="text" name="quantity"  required="required"><br>
 Price:   <input type="text" name="price"  required="required"><br>
<input  type="submit" value="Add Product"></b></h2>
</pre>
</form>
<a href="Home">Home</a>
</fieldset>
</center>
</body>
</html>