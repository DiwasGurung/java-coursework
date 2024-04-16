package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.*;
import java.util.*;

import utils.stringUtils;

public class databaseController {
	public Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName("com.mysql.jdbc.Driver");
		String url = "jdbc:mysql://localhost:3306/electonics";
		String user = "root";
		String pass = "";
		return DriverManager.getConnection(url, user, pass);
	}

	public List<Product> getAllproducts(){
		List <Product> products=new ArrayList<Product>();
		
		try(Connection con=getConnection()) {
			PreparedStatement pst=con.prepareStatement(stringUtils.GET_PRODUCTS);
			ResultSet rs=pst.executeQuery();
			while(rs.next()) {
				int productId = rs.getInt("productId");
	            String productName = rs.getString("productName");
	            double productPrice = rs.getDouble("productPrice");
	            String category = rs.getString("category");
	            String productDescription = rs.getString("productDescription");
	            String imagePath = rs.getString("images");

	            Product product = new Product(productId, productName, productPrice, category, productDescription, imagePath);
	            products.add(product);
			}
		}catch(Exception e){
			e.printStackTrace();
			
		}
		return products;
	}
	public Product getProductById(int productId) {
        Product product = null;

        try (Connection con = getConnection()) {
            String query = "SELECT * FROM products WHERE productId = ?";
            PreparedStatement pst = con.prepareStatement(query);
            pst.setInt(1, productId);
            ResultSet rs = pst.executeQuery();
            if (rs.next()) {
                String productName = rs.getString("productName");
                double productPrice = rs.getDouble("productPrice");
                String category = rs.getString("category");
                String productDescription = rs.getString("productDescription");
                String imagePath = rs.getString("images");

                product = new Product(productId, productName, productPrice, category, productDescription, imagePath);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return product;
    }
}
