<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>


<style>
body {margin:0;
 	background: url("https://d2v9y0dukr6mq2.cloudfront.net/video/thumbnail/yRF5c-O/elegant-professional-sophisticated-business-corporate-motion-background-seamless-loop-green_rlvylywdg_thumbnail-full12.png");
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
      <a  href>DELETE ACCOUNT</a>
      <a href="Logout">LOGOUT</a>
    </div>
  </div>
</div>
<div>
<center><h1 style="background-color:background;"><b><i><marquee truespeed="truespeed">WELCOME TO MY MAIL SIMULATION APP</marquee></i></b></h1></center>
</div>
<h2 style="color:white;" ><lebel>LOGIN ID:${name}</lebel></h2>


</body>
</html>