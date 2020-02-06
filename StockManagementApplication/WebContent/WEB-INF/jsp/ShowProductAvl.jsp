<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: teal;">

<center><h1 style="font-size: 50px; font-family: cursive;"><i><u>All Products Available</u></i></b></h1></center>
<h3><center><table border='1'><tr><th>Name</th><th>Category</th><th>Company</th><th>Quantity</th><th>Price</th><th>Modify</th><th>Delete</th></tr>
<c:forEach var="pdto" items="${plist}"><form action="UpdateProduct" method="post">
<tr><input type="hidden" name="product_id" value="${pdto.getProduct_id() }">
<td><center><input type="text" name="pname" value="${pdto.getPname() }"></center></td>
<td><center><input type="text" name="category" value="${pdto.getCategory() }"></center></td>
<td><center><input type="text" name="company" value="${pdto.getCompany() }"></center></td>
<td><center><input type="text" name="quantity" value="${pdto.getQuantity() }"></center></td>
<td><center><input type="text" name="price" value="${pdto.getPrice() }"></center></td>
<td><center><input type="submit" value="Update"><%-- <a href='UpdateProduct?pid=${pdto.getProduct_id() }'>Update</a> --%></center></td>
<td><center><a href='DeleteProduct?pid=${pdto.getProduct_id() }'>Delete</a></center></td></tr></form>
</c:forEach>
</table>
<a href="Home">Home Page</a>
</body>
</html>
			   