<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Electronics Store Login</title>
  <style>
    body {
	    font-family: Arial, sans-serif;
	    margin: 0;
	    padding: 0;
	    background-color: #f5f5f5;
	    display: flex;
	    flex-direction: column; /* Align content vertically */
	    min-height: 100vh; /* Ensure content takes up at least the full height of the viewport */
	}
    .login-container {
      background-color: #ffffff;
      padding: 30px;
      border-radius: 25px;
      box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
      width: 300px;
      margin: auto;
    }
    .login-container h2 {
      text-align: center;
      margin-bottom: 20px;
    }
    .login-container label {
      display: block;
      margin: 8px;
      
    }
    .login-container input[type="text"],
    .login-container input[type="password"] {
      width: calc(100% - 22px); /* Adjusting for padding and border */
      padding: 10px;
      margin-bottom: 15px;
      box-sizing: border-box;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    .login-container button[type="submit"] {
      width: calc(80% - 22px); 
      padding: 12px;
      margin-left: 30px;
      margin-top: 10px;
      margin-bottom: 15px;
      box-sizing: border-box;
      border: none;
      border-radius: 5px;
      background-color: #4caf50;
      color: white;
      cursor: pointer;
      font-size: 16px;
    }
    .login-container button[type="submit"]:hover {
      background-color: #45a049;
    }
    .signup-link {
      display: block;
      text-align: center;
      text-decoration: underline;
      color: #333;
      font-size: 14px;
      margin: 20px;
    }
  </style>
  <jsp:include page="header.jsp" />
</head>
<body>
  <div class="login-container">
    <h2>Login</h2>
    <form action="LoginServlet" method="post">
      <label for="username">Username</label>
      <input type="text" id="username" name="username" placeholder="Username" required>
      <label for="password">Password</label>
      <input type="password" id="password" name="password" placeholder="Password" required>
      <button type="submit">Login</button>
    </form>
    <a href="signup.jsp" class="signup-link">Not a member? Sign up</a>
  </div>
  <jsp:include page="footer.jsp" />
</body>
</html>
