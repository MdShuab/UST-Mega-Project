<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: yellow;">

<center><h1 style="font-size: 50px; font-family: cursive;"><i><u>Available Products</u></i></b></h1></center>
<h3><center><table border='1'><tr><th>ORDER ID</th><th>Name</th><th>Category</th><th>Company</th><th>Quantity</th><th>PRICE/PRODUCT</th><th>TOTAL PRICE</th><th>TOTAL PRICE WITH GST</th></tr>
<c:forEach var="ppdto" items="${plist}">

<td><center>${ppdto.getOrder_id()}</center></td>
<c:forEach var="pdto" items="${ppdto.getPlist()}">
<td><center>${pdto.getPname() }</center></td>
<td><center>${pdto.getCategory() }</center></td>
<td><center>${pdto.getCompany() }</center></td>
<td><center>${ppdto.getTotal_price()/pdto.getPrice()}</center></td>
<td><center>${pdto.getPrice() }</center></td>
</c:forEach>
<td><center>${ppdto.getTotal_price() }</center></td> 
<td><center>${ppdto.getTotal_price_with_gst() }</center></td>

<%-- <td><center><a href='DeleteProduct?pid=${ppdto.getOrder_id() }'>Delete</a></center></td> --%></tr>
</c:forEach>
</table>
<a href="Home">Home Page</a>
</body>
</html>
			   