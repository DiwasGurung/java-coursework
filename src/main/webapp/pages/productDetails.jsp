<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, model.Product, controller.databaseController" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Details</title>
    <link rel="stylesheet" type="text/css"
    href="${pageContext.request.contextPath}/stylesheets/header.css" />
    <link rel="stylesheet" type="text/css"
    href="${pageContext.request.contextPath}/stylesheets/footer.css" />
   
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
	
	.container {
	    width: 600px;
	    background-color: #fff;
	    padding: 20px;
	    border-radius: 8px;
	    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
	    margin: auto; 
	}
	
	.product-image {
	    float: left; /* Float the image to the left */
	    margin-right: 20px; /* Add some space between image and details */
	}
	
	.product-image img {
	    width: 300px;
	    height: 300px;
	}
	
	.product-details {
	    overflow: hidden; /* Clear the float */
	}

        /* Add any additional styles for this page */
    </style>
    <jsp:include page="header.jsp" />
</head>
<body>
	
    <%
        int productId = Integer.parseInt(request.getParameter("productId"));
        databaseController dbController = new databaseController();
        Product product = dbController.getProductById(productId);
    %>
    <div class="container">
        <div class="product-image">
            <img src="../images/<%= product.getImagePath() %>" alt="Product Image">
        </div>
        <div class="product-details">
            <h1><%= product.getProductName() %></h1>
            <p>Price: $<%= product.getProductPrice() %></p>
            <p>Description: <%= product.getProductDescription() %></p>
            <div class="quantity-control">
                <button onclick="decrementQuantity()">-</button>
                <span class="quantity-display">1</span>
                <button onclick="incrementQuantity()">+</button>
            </div>
            <button class="btn" onclick="addToCart()">Add to Cart</button>
            <button class="btn" onclick="buyNow()">Buy Now</button>
        </div>
    </div>

    <script>
        // JavaScript code for this page
        function incrementQuantity() {
            var quantityDisplay = document.querySelector('.quantity-display');
            var quantity = parseInt(quantityDisplay.innerText);
            quantityDisplay.innerText = quantity + 1;
        }

        function decrementQuantity() {
            var quantityDisplay = document.querySelector('.quantity-display');
            var quantity = parseInt(quantityDisplay.innerText);
            if (quantity > 1) {
                quantityDisplay.innerText = quantity - 1;
            }
        }

        function addToCart() {
            // Implement add to cart functionality
            // You can use AJAX to send the product details and quantity to the server
        }

        function buyNow() {
            // Implement buy now functionality
            // You can redirect to the checkout page or process the purchase here
        }
    </script>
</body>
<jsp:include page="footer.jsp" />
</html>

