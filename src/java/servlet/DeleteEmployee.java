/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
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
@WebServlet(name = "DeleteEmployee", urlPatterns = {"/DeleteEmployee"})
public class DeleteEmployee extends HttpServlet {

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            
            String num = request.getParameter("delete");
            
            PrintWriter out = response.getWriter();
       
         DB db = new DB();
        Connection conn = db.getConnection();
            if(conn == null){
                out.write("Connection not establish");
            }
            
            try {
                Statement st = conn.createStatement();
                String query = "Delete from employee where employeeid ='"+num+"'";
                
                   int rs = st.executeUpdate(query);
             request.getRequestDispatcher("/editemployee.jsp").forward(request,response);
                
            } catch (SQLException ex) {
                Logger.getLogger(DeleteEmployee.class.getName()).log(Level.SEVERE, null, ex);
            }
            
    }
}
    
    

