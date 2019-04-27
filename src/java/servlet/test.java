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
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Ruzaik Mh
 */
@WebServlet(name = "test", urlPatterns = {"/test"})
public class test extends HttpServlet {
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
      response.setContentType("text/html");
		
       PrintWriter out = response.getWriter();
       
       NewClass t = new NewClass();
       
       t.setName(request.getParameter("Name"));
       t.setAddress(request.getParameter("Address"));
       
       
       
       
        DB db = new DB();
        Connection conn = db.getConnection();
            if(conn == null){
                out.write("Connection not establish");
            }
            else{
        try {
            Class.forName("com.mysql.jdbc.Driver");
          
            
            Statement st = conn.createStatement();
           
            String q = "insert into test values ('Working','right now')";
            
            st.executeUpdate(q);
            
        } catch (SQLException ex) {
            Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(test.class.getName()).log(Level.SEVERE, null, ex);
        }
       
    
       
    }

    }
    
}
