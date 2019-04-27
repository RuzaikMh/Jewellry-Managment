/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

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
import servlet.AddSupplier;
import servlet.DB;
import servlet.SP;

/**
 *
 * @author Ruzaik Mh
 */
@WebServlet(name = "Test", urlPatterns = {"/Test"})
public class Test extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
   protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException{
   
       SP sp = new SP();
       int rowCount = Integer.parseInt(request.getParameter("count"));
       
       if(rowCount == 1){
       
       sp.setCategory(request.getParameter("Category" + 1));
       sp.setQty(Integer.parseInt(request.getParameter("Qty1")));
       sp.setPrice(Double.parseDouble(request.getParameter("Pirce1")));
       sp.setDisc(Double.parseDouble(request.getParameter("Disc1")));
       sp.setTax(Double.parseDouble(request.getParameter("Tax1")));
       sp.setAmount(Double.parseDouble(request.getParameter("Amount1")));
       
       
      response.setContentType("text/html");
        
        PrintWriter out = response.getWriter();
       
         DB db = new DB();
        Connection conn = db.getConnection();
            if(conn == null){
                out.write("Connection not establish");
            }
			
        try {
           
            Class.forName("com.mysql.jdbc.Driver");
            
            String query = "INSERT INTO `jewellry`.`test`(`Category`,`Qty`,`Price`,`Disc`,`Tax`,`Amount`)" +"values (?,?,?,?,?,?)";
            
            
            PreparedStatement pstatement = conn.prepareStatement(query);
            pstatement.setString(1, sp.getCategory());
            pstatement.setInt(2, sp.getQty());
            pstatement.setDouble(3, sp.getPrice());
            pstatement.setDouble(4, sp.getDisc());
            pstatement.setDouble(5, sp.getTax());
            pstatement.setDouble(6, sp.getAmount());
            
            
            int Results;
			
            Results  = pstatement.executeUpdate();
             request.getRequestDispatcher("/addSupply.jsp").forward(request,response);
            
            
        } catch (SQLException ex) {
            Logger.getLogger(AddSupplier.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddSupplier.class.getName()).log(Level.SEVERE, null, ex);
        }
       
       }
       
       else{
            
            
            
            
                
                
                


                   response.setContentType("text/html");

                     PrintWriter out = response.getWriter();

                      DB db = new DB();
                     Connection conn = db.getConnection();
                         if(conn == null){
                             out.write("Connection not establish");
                         }

                     try {

                         Class.forName("com.mysql.jdbc.Driver");

                         
                         String query = "INSERT INTO `jewellry`.`test`(`Category`,`Qty`,`Price`,`Disc`,`Tax`,`Amount`)" +"values (?,?,?,?,?,?)";
                    for(int x = 1; x < (rowCount+1); x++ ){

                         PreparedStatement pstatement = conn.prepareStatement(query);
                         pstatement.setString(1, request.getParameter("Category" + x));
                         pstatement.setInt(2, Integer.parseInt(request.getParameter("Qty" + x)));
                         pstatement.setDouble(3,Double.parseDouble(request.getParameter("Pirce" + x)));
                         pstatement.setDouble(4, Double.parseDouble(request.getParameter("Disc" + x)));
                         pstatement.setDouble(5, Double.parseDouble(request.getParameter("Tax" + x)));
                         pstatement.setDouble(6, Double.parseDouble(request.getParameter("Amount" + x)));


                         int Results;

                         Results  = pstatement.executeUpdate();
                         
                         }

            } catch (SQLException ex) {
                Logger.getLogger(AddSupplier.class.getName()).log(Level.SEVERE, null, ex);
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(AddSupplier.class.getName()).log(Level.SEVERE, null, ex);
            }
       
       
       
       
             request.getRequestDispatcher("/addSupply.jsp").forward(request,response);
   
       }
   }

   

}
