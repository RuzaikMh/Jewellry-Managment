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
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Model.Journal;
import DBhelper.DBConnect;
/**
 *
 * @author agith
 */
@WebServlet(name = "journalcontroller", urlPatterns = {"/journalcontroller"})
public class journalcontroller extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();

     
        
        
        if (request.getParameter("insert") != null) {

            //int id = Integer.parseInt(request.getParameter("id"));
            //String name = request.getParameter("name");
            //String NIC = request.getParameter("NIC");
       int jid = Integer.parseInt(request.getParameter("jid"));
       String date = request.getParameter("date");
       String name= request.getParameter("name");
       double debit = Double.parseDouble(request.getParameter("debit"));
       double credit = Double.parseDouble(request.getParameter("credit"));
       String remarks = request.getParameter("remarks");
            //customer p = new customer();
            Journal j = new Journal();
            //p.setId(id);
            //p.setName(name);
            //p.setNIC(NIC);
       j.setJid(jid);
       j.setDate(date);
       j.setName(name);
       j.setDebit(debit);
       j.setCredit(credit);
       j.setRemarks(remarks);
       
       

            try {
                Connection con = DBConnect.getConnection();
                String sql = "insert into journal (jid, date,name,debit,credit,remarks) values (?, ?, ?,?,?,?)";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setInt(1, j.getJid());
                pst.setString(2, j.getDate());
                pst.setString(3, j.getName());
                pst.setDouble(4,j.getDebit() );
                pst.setDouble(5, j.getCredit());
                pst.setString(6, j.getRemarks());
                int value = pst.executeUpdate();
                if (value > 0) {
                    request.getSession().setAttribute("sm", "Product Saved Successfully");
                } else {
                    request.getSession().setAttribute("em", "Product not saved");
                }

                request.getRequestDispatcher("/addJournal.jsp").forward(request, response);

            } catch (SQLException ex) {
                out.println(ex.getMessage());
            }

        }
        
        
       
        if(request.getParameter("update") != null){
         //int id = Integer.parseInt(request.getParameter("id"));
           // String name = request.getParameter("name");
            //String NIC = request.getParameter("NIC");
int jid = Integer.parseInt(request.getParameter("jid"));
       String date = request.getParameter("date");
       String name= request.getParameter("name");
       double debit = Double.parseDouble(request.getParameter("debit"));
       double credit = Double.parseDouble(request.getParameter("credit"));
       String remarks = request.getParameter("remarks");

             Journal j = new Journal();
           
       j.setJid(jid);
       j.setDate(date);
       j.setName(name);
      j.setDebit(debit);
       j.setCredit(credit);
       j.setRemarks(remarks);

            try {
                Connection con = DBConnect.getConnection();
                String sql = "update journal set  date=?, name=?, debit=?, credit=?, remarks=? where jid=?";
                PreparedStatement pst = con.prepareStatement(sql);
              
                pst.setString(1, j.getDate());
                pst.setString(2, j.getName());
                pst.setDouble(3,j.getDebit() );
                pst.setDouble(4, j.getCredit());
                pst.setString(5, j.getRemarks());
                pst.setInt(6, j.getJid());
                int value = pst.executeUpdate();
                if (value > 0) {
                    request.getSession().setAttribute("sm", "Product Update Successfully");
                } else {
                    request.getSession().setAttribute("em", "Product not update");
                }

                request.getRequestDispatcher("/updateJournal.jsp?jid=" + jid).forward(request, response);

            } catch (SQLException ex) {
                out.println(ex.getMessage());
            }
        }
        
        if((request.getParameter("jid")) != null && request.getParameter("for").equalsIgnoreCase("delete")){
            int id = Integer.parseInt(request.getParameter("jid"));

            Journal j = new Journal();
            j.setJid(id);
      

            try {
                Connection con = DBConnect.getConnection();
                String sql = "delete from journal where jid=?";
                PreparedStatement pst = con.prepareStatement(sql);
                pst.setInt(1, j.getJid());
                int value = pst.executeUpdate();
                if (value > 0) {
                    request.getSession().setAttribute("sm", "Product deleted Successfully");
                } else {
                    request.getSession().setAttribute("em", "Product not deleted");
                }

                request.getRequestDispatcher("/editJournal.jsp").forward(request, response);

            } catch (SQLException ex) {
                out.println(ex.getMessage());
            }
        }
         
    }
       
   
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
