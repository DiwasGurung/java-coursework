<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="controller.databaseController"%>
<%@ page import="model.Product"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Product Listing</title>
    <style>
	body {
	    font-family: Arial, sans-serif;
	    margin: 0;
	    padding: 0;
	    background-color: #f5f5f5;
	}
	
	.container {
	    display: flex;
	    flex-wrap: wrap;
	    justify-content: center;
	    padding: 20px;
	}
	
	.product-details {
    width: 180px;
    height: 250px; 
    margin: 10px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    overflow: hidden;
    cursor: pointer;
    transition: transform 0.3s ease;
	}
	
	.product-image img {
	    width: 180px; 
	    height: 150px; 
	}
	
	.product-details:hover {
	    transform: translateY(-5px);
	}
	
	.
	
	.product-info {
	    padding: 10px;
	}
	
	.product-info h1 {
	    font-size: 16px;
	    margin-bottom: 5px;
	}
	
	.product-price {
	    font-size: 14px;
	    font-weight: bold;
	    margin-bottom: 5px;
	}
	
	.product-description {
	    font-size: 14px;
	}
    </style>
</head>
<body>
    <div class="container">
        <%
        	
            // Create an instance of the database controller
            databaseController dbController = new databaseController();

            // Get all products from the database
            List<Product> products = dbController.getAllproducts();

            // Loop through the products and display them
            for (Product p : products) {
        %>
        <a href="productDetails.jsp?productId=<%= p.getProductId() %>">
            <div class="product-details">
                <div class="product-image">
                	<img src="../images/<%= p.getImagePath() %>" alt="Product Image">
                	</div>
                	<div class="product-info">
                    <h1><%= p.getProductName() %></h1>
                    <div class="product-price">$<%= p.getProductPrice() %></div>
                    <div class="product-description"><%= p.getProductDescription() %></div>
                </div>
            </div>
        </a>
        <%
            }
        %>
    </div>
</body>
</html>
