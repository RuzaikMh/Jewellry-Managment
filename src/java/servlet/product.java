/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;



import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.*;


/**
 * Servlet implementation class product
 */
@WebServlet(name = "product",urlPatterns = {"/product"})

public class product extends HttpServlet {
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// TODO Auto-generated method stub
		
		
		  productdetails product = new productdetails();
		product.setProductid(request.getParameter("productid"));
		product.setProductname(request.getParameter("productname"));
		product.setProductprice(Double.parseDouble(request.getParameter("productprice")));
		product.setCategory(request.getParameter("category"));
		product.setQty(Integer.parseInt(request.getParameter("qty")));
		product.setPicture(request.getParameter("picture"));
		product.setWeight(Double.parseDouble(request.getParameter("weight")));
		product.setDescription(request.getParameter("description"));
		
		response.setContentType("text/html");
        
        PrintWriter out = response.getWriter();
        
        out.write(product.toString());
        DB db = new DB();
        Connection conn = db.getConnection();
            if(conn == null){
                out.write("Connection not establish");
            }
            
            
                
                try {
					Class.forName("com.mysql.jdbc.Driver");
				
					 
	                String query = "INSERT INTO `jewellry`.`products` (`id`,`Pname`,`category`,`description`,`qty`,`weight`,`price`,`image`)" +"values (?,?,?,?,?,?,?,?)";
	                
	                
	                PreparedStatement pstatement = conn.prepareStatement(query);
	                pstatement.setString(1, product.getProductid());
	                pstatement.setString(2, product.getProductname());
	                pstatement.setString(3, product.getCategory());
	                pstatement.setString(4, product.getDescription());
	                pstatement.setInt(5, product.getQty());
	                pstatement.setDouble(6, product.getWeight());
	                pstatement.setDouble(7, product.getProductprice());
	                pstatement.setString(8, product.getPicture());
	                
	                
	                int Results;
	    			
	                Results  = pstatement.executeUpdate();
	                
	                request.getRequestDispatcher("/AddProducts.jsp").forward(request, response);
                
                } catch (ClassNotFoundException | SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
               
                
                
           
        }
		
		
	}


