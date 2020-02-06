<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color: olive;">

<center><h1 style="font-size: 50px; font-family: cursive;"><i><u>Available Products</u></i></b></h1></center>
<h3><center><table border='1'><tr><th>Name</th><th>Category</th><th>Company</th><th>Quantity</th><th>Price</th><th>Add Cart</th></tr>
<c:forEach var="pdto" items="${plist}"><form action="CartAdded" method="post">
<tr><input type="hidden" name="product_id" value="${pdto.getProduct_id() }">
<td><center><lebel><input type="hidden"  name="pname" value="${pdto.getPname() }">${pdto.getPname() }</lebel></center></td>
<td><center><lebel><input type="hidden" name="category" value="${pdto.getCategory() }">${pdto.getCategory() }</lebel></center></td>
<td><center><lebel><input type="hidden" name="company" value="${pdto.getCompany() }">${pdto.getCompany() }</lebel></center></td>
<td><center><input type=text name="quantity" value="" placeholder='Enter Qty.< ${pdto.getQuantity() }'></center></td>
<td><center><lebel><input type="hidden" name="price" value="${pdto.getPrice() }">${pdto.getPrice() }</lebel></center></td>
<td><center><input type="submit" value="Add Cart"></center></td>
</tr></form>
</c:forEach>
</table>
<a href="Home">Home Page</a>
</body>
</html>
			   