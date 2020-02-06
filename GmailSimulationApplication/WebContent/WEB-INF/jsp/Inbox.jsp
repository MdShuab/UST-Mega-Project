<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inbox</title>


<style>

body {margin:0;
 	background: url("https://cdn.pixabay.com/photo/2020/01/28/11/13/mathematics-4799469_960_720.jpg");
  	background-repeat: no-repeat;
  	background-size:cover;
  } 
   
   
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  position: fixed;
  top: 0;
  width: 100%;
}   

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {
  background-color: #111;
}

.active {
  background-color: #4CAF50;
}






/* ================================== */
.navbar {
  overflow: hidden;
  background-color: #333;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}


/* Table STyle  Code */
table,th,td{
    /* border: 1px solid black;
border-collapse: collapse; */
/* text-align: center; */
font-size: 25px;
font-family:monospace;
border-radius: 50px;

}

table{
 margin-top: 100px;
margin-left: 388px; 
    width: 700px;
    height: 500px;
     outline: none;
}
th{
    background-color: lightseagreen;
}
tr:nth-child(even){
    background-color: rgba(97, 97, 230, 0.507);
}
tr:nth-child(odd){
    background-color: rgb(207, 243, 207);
}
#row1{

    background-color: rgb(247, 146, 146);
}
td:hover{
    background-color:green;
    color: white;
    cursor: pointer;
    transform: scale(1.2,1.2);
    transition: all 1s;
}

</style>

</head>
<body style="background-color:pink">


<div class="navbar">
 <a class="active" href="Home">HOME</a>


  <div class="dropdown">
    <button class="dropbtn">INBOX
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Inbox">INBOX MAIL</a>
      <a href="dinbox">DELETED INBOX MAIL</a>
      <a href="rStoreInbx">RESTORE INBOX MAIL</a>
    </div>
  </div>

  <div class="dropdown">
    <button class="dropbtn">DRAFT
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="Draft">DRAFT MAIL</a>
      <a href="ddraft">DELETED DRAFT MAIL</a>
      <a href="rStoreDarft">RESTORE DRAFT MAIL</a>
    </div>
  </div>
  
  
  
  <div class="dropdown">
    <button class="dropbtn">SENT
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
     <a href="SentInbox">SENT MAIL</a>
      <a href="dsentf">DELETED SENT MAIL</a>
      <a href="rStoreSent">RESTORE SENT MAIL</a>
    </div>
  </div>
  
  
 <a href="Compose">COMPOSE MAIL</a>
  <a href="ChangePw">CHANGE PASSWORD</a>
  <div class="dropdown">
    <button class="dropbtn">MY ACCOUNT
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="Profile">PROFILE</a>
      <a href="AccDelete">DELETE ACCOUNT</a>
      <a href="Logout">LOGOUT</a>
    </div>
  </div>
   </div>
  <br>
<div style="background-color:background;"><br><center><h1 style="color:yellow;">INBOX</h1></center><br></div>
<table border='1' width="600"><tr><th>Subject</th><th>Delete</th></tr>
<c:forEach var="idto" items="${plist}">
<tr id="row1">
<td><i>&nbsp&nbspSub: ${idto.getMsub() }</i><p align="right"><i><u>Time:${idto.getMailTime() }</u></i><p><center>
<a href='InboxMailShow?id=${idto.getInfid()}'><i>${idto.getUsent() }</i></a></center></td>
<td><center><a href='DeleteInbox?id=${ idto.getInfid()}'><i>Delete</i></a></center></td></tr>
</c:forEach>
</table>
<br><br><br><br><br><br><br><br>
</body>
</html>
<!-- idto.getMailTime().getDate() idto.getMailTime().getHours() idto.getMailTime().getMinutes() -->