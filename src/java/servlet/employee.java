/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ruzaik Mh
 */
@WebServlet(name = "employee", urlPatterns = {"/employee"})
public class employee extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
     
        
           employeedetails emp = new employeedetails();
           emp.setEmployeeid(request.getParameter("Employee ID"));
           emp.setFirstname(request.getParameter("First Name"));
           emp.setLastname(request.getParameter("Last Name"));     
           emp.setGender(request.getParameter("Gender"));
           emp.setPhone(Integer.parseInt(request.getParameter("Pnumber")));
           emp.setEmail(request.getParameter("Email"));
           emp.setAddress(request.getParameter("Address"));
            emp.setCity(request.getParameter("City"));
           emp.setDate(request.getParameter("date"));
           emp.setStatus(request.getParameter("status"));
           emp.setUsername(request.getParameter("userName"));
           emp.setPassword(request.getParameter("password"));
           
            response.setContentType("text/html");
        
        PrintWriter out = response.getWriter();
       
         DB db = new DB();
        Connection conn = db.getConnection();
            if(conn == null){
                out.write("Connection not establish");
            }
            
            
        try {
            
             String query="INSERT INTO `jewellry`.`employee`(`employeeid`,`firstname`,`lastname`,`gender`,`primaryphone`,`email`,`address`,`city`,`dateofbirth`,`status`,`username`,`password`)"+ "values(?,?,?,?,?,?,?,?,?,?,?,?)";
            
             
             PreparedStatement pstatement=conn.prepareStatement(query);
             pstatement.setString(1, emp.getEmployeeid());
             pstatement.setString(2, emp.getFirstname());    
             pstatement.setString(3, emp.getLastname());
             pstatement.setString(4, emp.getGender());    
             pstatement.setInt(5, emp.getPhone());
             pstatement.setString(6, emp.getEmail());    
             pstatement.setString(7, emp.getAddress());
             
             pstatement.setString(8, emp.getCity());    
             pstatement.setString(9, emp.getDate());
             
              pstatement.setString(10, emp.getStatus());
              pstatement.setString(11, emp.getUsername());
              pstatement.setString(12, emp.getPassword());
             
             pstatement.execute();
            
					
            
        } catch (SQLException ex) {
            Logger.getLogger(employee.class.getName()).log(Level.SEVERE, null, ex);
        }
            
            
            }
			
            
       
    }


           
           
    
    
    
    


