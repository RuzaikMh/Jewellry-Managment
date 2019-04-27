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
@WebServlet(name = "updateCustomer", urlPatterns = {"/updateCustomer"})
public class updateCustomer extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
   
   * 
   * */
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
           User s1 = new User();
        
        
        s1.setUid(request.getParameter("cId"));
        s1.setFname(request.getParameter("fname"));
        s1.setLname(request.getParameter("lname"));
        s1.setEmail(request.getParameter("email"));
        s1.setCountry(request.getParameter("City"));
        s1.setTelNo(request.getParameter("telno"));
        s1.setUname(request.getParameter("uname"));
        s1.setPassword(request.getParameter("password"));
        
        response.setContentType("text/html");
        
        PrintWriter out = response.getWriter();
       
         DB db = new DB();
        Connection conn = db.getConnection();
            if(conn == null){
                out.write("Connection not establish");
            }
			
        try {
           
            Class.forName("com.mysql.jdbc.Driver");
            
            String query = "update login set `uid`=?,`firstname`=?,`lastname`=?,`email`=?,`country`=?,`telno`=?,`username`=?,`password`=? where uid='"+s1.getUid()+"'";
            
            
            PreparedStatement pstatement = conn.prepareStatement(query);
            pstatement.setString(1, s1.getUid());
            pstatement.setString(2, s1.getFname());
            pstatement.setString(3, s1.getLname());
            pstatement.setString(4, s1.getEmail());
            pstatement.setString(5, s1.getCountry());
            pstatement.setString(6, s1.getTelNo());
            pstatement.setString(7, s1.getUname());
            pstatement.setString(8, s1.getPassword());
            
            
            int Results;
			
            Results  = pstatement.executeUpdate();
            
            Object result = "Customer" +" " + s1.getFname() +"'s " +"Records updated";
            
            request.getRequestDispatcher("/ViewCustomer.jsp").forward(request,response);
            
        } catch (SQLException ex) {
            Logger.getLogger(AddSupplier.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddSupplier.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
