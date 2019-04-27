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
@WebServlet(name = "addSupply", urlPatterns = {"/addSupply"})
public class addSupply extends HttpServlet {

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
    
        SupplyDetails sp1 = new SupplyDetails();
        
        sp1.setInvoiceNo(Integer.parseInt(request.getParameter("Invoice")));
        sp1.setDate(request.getParameter("Date"));
        sp1.setSupplierName(request.getParameter("SupplierName"));
        sp1.setDiscount(Double.parseDouble(request.getParameter("Discount")));
        sp1.setPaymentType(request.getParameter("PaymentType"));
        sp1.setCategory(request.getParameter("Category"));
        sp1.setQty(Integer.parseInt(request.getParameter("Qty")));
        sp1.setWeight(Double.parseDouble(request.getParameter("Weight")));
        sp1.setUnitPrice(Double.parseDouble(request.getParameter("UnitPrice")));
        sp1.setTotal(Double.parseDouble(request.getParameter("Total")));
        sp1.setDescription(request.getParameter("Description"));
        
        response.setContentType("text/html");
        
        PrintWriter out = response.getWriter();
       
         DB db = new DB();
        Connection conn = db.getConnection();
            if(conn == null){
                out.write("Connection not establish");
            }
			
        try {
           
            Class.forName("com.mysql.jdbc.Driver");
            
            String query = "INSERT INTO `jewellry`.`supply` (`InvoiceNo`,`Date`,`Name`,`Discount`,`PaymentType`,`Category`,`Qty`,`Weight`,`UnitPrice`,`Total`,`Description`)" +"values (?,?,?,?,?,?,?,?,?,?,?)";
            
            
            PreparedStatement pstatement = conn.prepareStatement(query);
            pstatement.setInt(1, sp1.getInvoiceNo());
            pstatement.setString(2, sp1.getDate());
            pstatement.setString(3, sp1.getSupplierName());
            pstatement.setDouble(4, sp1.getDiscount());
            pstatement.setString(5, sp1.getPaymentType());
            pstatement.setString(6, sp1.getCategory());
            pstatement.setInt(7, sp1.getQty());
            pstatement.setDouble(8, sp1.getWeight());
            pstatement.setDouble(9, sp1.getUnitPrice());
            pstatement.setDouble(10, sp1.getTotal());
            pstatement.setString(11, sp1.getDescription());
          
            
            int Results;
			
            Results  = pstatement.executeUpdate();
             request.getRequestDispatcher("/addSupply.jsp").forward(request,response);
            
            
        } catch (SQLException ex) {
            Logger.getLogger(AddSupplier.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddSupplier.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
