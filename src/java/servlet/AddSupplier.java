package servlet;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


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
@WebServlet(name = "AddSupplier",urlPatterns = {"/AddSupplier"})
public class AddSupplier extends HttpServlet {

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
    
        Supplier sp1 = new Supplier();
        
        sp1.setName(request.getParameter("Name"));
        sp1.setOpeningBalance(Double.parseDouble(request.getParameter("OpeningBalance")));
        sp1.setOpeningType(request.getParameter("OpeningType"));
        sp1.setPnumber(Integer.parseInt(request.getParameter("Pnumber")));
        sp1.setAnumber(Integer.parseInt(request.getParameter("Anumber")));
        sp1.setEmail(request.getParameter("Email"));
        sp1.setAddress(request.getParameter("Address"));
        sp1.setCity(request.getParameter("City"));
        sp1.setAccName(request.getParameter("AccName"));
        sp1.setAccNumber(request.getParameter("AccNumber"));
        
        response.setContentType("text/html");
        
        PrintWriter out = response.getWriter();
       
        
         DB db = new DB();
        Connection conn = db.getConnection();
            if(conn == null){
                out.write("Connection not establish");
            }
			
        try {
           
            Class.forName("com.mysql.jdbc.Driver");
            
            String query = "insert into supplier(`Name`,`Opening Balance`,`Opening Type`,`Primary Phone`,`Alternate Phone`,`Email`,`Address`,`City`,`Account Name`,`Account Number`)" +"values (?,?,?,?,?,?,?,?,?,?)";
            
            
            PreparedStatement pstatement = conn.prepareStatement(query);
            pstatement.setString(1, sp1.getName());
            pstatement.setDouble(2, sp1.getOpeningBalance());
            pstatement.setString(3, sp1.getOpeningType());
            pstatement.setInt(4, sp1.getPnumber());
            pstatement.setInt(5, sp1.getAnumber());
            pstatement.setString(6, sp1.getEmail());
            pstatement.setString(7, sp1.getAddress());
            pstatement.setString(8, sp1.getCity());
            pstatement.setString(9, sp1.getAccName());
            pstatement.setString(10, sp1.getAccNumber());
            
            int Results;
			
            Results  = pstatement.executeUpdate();
             request.getRequestDispatcher("/AddSupplier.jsp").forward(request,response);
            
        } catch (SQLException ex) {
            Logger.getLogger(AddSupplier.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(AddSupplier.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}