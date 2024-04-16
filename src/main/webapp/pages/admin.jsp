<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/stylesheets/admin.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet">
    <title>ADMIN PAGE</title>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="sdbar">
        <div class="topheader">
            <div class="logosec">
            <span id="hd">RKDN Electronic Store</span>
        </div>
              <i class='bx bx-menu' id="menubar"></i>
        </div>
        <ul>
            <li>
                <a href="#">
                    <i class='bx bx-home'></i>
                    <span class="side-item">Home</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class='bx bx-user'></i>
                    <span class="side-item">User Management</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class='bx bx-shopping-bag'></i>
                    <span class="side-item">Product Management</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class='bx bx-cart'></i>
                    <span class="side-item">Order Management</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class='bx bx-exit'></i>
                    <span class="side-item">Logout</span>
                </a>
            </li>
        </ul>
    </div>
    <!-------------->
    <div class="mainpage">
        <span>Dashboard</span>
    <div class="container">
      
        <div class="sales">
        <div class="icon">
            <i class='bx bxs-receipt' ></i>
        </div>
     
        <div class="middle">
        <div class="left">
        
        
        </div>
        <span class="number">Rs 25000</span>
        </div>

        <span class="text">Last 30 days</span>
        </div>

<!--------->

<div class="sales">
    <i class='bx bxs-cart' ></i>
    <div class="middle">
    <div class="left">
    <span class="box-hd">Pending Order</span>

    </div>
    <span class="number"> Rs 25000</span>
    </div>
    <span class="text">Last 30 days</span>
    </div>
</div>
</div>


<!---------->




    <script>
        let menubar = document.querySelector('#menubar'); // Corrected selector to use getElementById
        let sdbar = document.querySelector('.sdbar');
        let bottom = document.querySelector('.bottom');

        menubar.onclick = function(){
        sdbar.classList.toggle('active');
        bottom.classList.toggle('active');

        };
    </script>

   

    



</body>
</html>