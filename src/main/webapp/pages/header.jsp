<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/header.css">
</head>
<body>
<div class="navbar">
  <div class="navbar-left">
  <h2>HAMRO ELECTRONICS</h2>
  </div>
  <div class="navbar-center">
  <a href="home.jsp">Home</a>
    <a href="aboutUs.jsp">About Us</a>
    <a href="contactUs.jsp">Contact Us</a>
    </div>
  
  <div class="navbar-right">
    <button class="login-button" onclick="window.location.href='login.jsp'">
  <img src="../images/icon.jpg" alt="Login Icon" width="40" height="40">
  Login
</button>
    <a href="register.jsp">Register</a>
    <img src="../images/cart.jpg" alt="Cart Icon" width="40" height="40">
    <a href="cart.jsp"><i class="fas fa-shopping-cart"></i> Cart</a>

  </div>
</div>
</body>
</html>