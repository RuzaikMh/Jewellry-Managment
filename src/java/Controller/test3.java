/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author PATHMANATHAN
 */
@WebServlet(name = "test3", urlPatterns = {"/test3"})
public class test3 extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
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
        String s1=null;
        DBconnection db = new DBconnection();
		Connection conn = db.getConnection();
           response.setContentType("image/jpeg");
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet test3</title>");            
            out.println("</head>");
            out.println("<body>");
            
             out.print("<h1>Products List</h1>");
		out.print("<table border=5 style=width:100% >"
                                +"<tr>"
				+ "<th>ID</th>"
				+ "<th>Name</th>"
				+ "<th>Category</th>"
				+ "<th>Qty</th>"
				+ "<th>Weight</th>"
				+ "<th>Price</th>"
				+ "<th>Description</th>"
				+ "<th>Image</th>"
				+"</tr>");
                                
                
                
		String query = "select * from item";
           try{     Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(query);
			while(rs.next()) {
				out.print("<tr><td>");
				out.print(rs.getString(1));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString(2));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString(3));
				out.print("</td>");
				
				out.print("<td>");
				out.print(rs.getInt(5));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getDouble(6));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getDouble(7));
				out.print("</td>");
				out.print("<td>");
				out.print(rs.getString(4));
				out.print("</td>");
				out.print("<td>");
                              //  s1=rs.getString(8);
				//out.print("<img src= '  C:/Users/PATHMANATHAN/Documents/NetBeansProjects/My project/web/images/p2.jpg   '/>");
                               
                                out.print("<img src= '"+rs.getString(8) + "' height='250' width='300' />");
                             
                                //out.print("<img src= '"+s1+ "' height='250' width='300' />");
                              //  out.write("<table><td><imgborder='4' src='"+rs.getString(8) +"' alt='' /><td></table>");
				out.print("</td>");
                                out.print("<td>");
                                out.print("<form method='POST' action='viewItem'>");
                                out.print("<input type='hidden' name='uid' value='"+rs.getString(1) +"' />");
                                out.print("<input type='submit'value='Read More' class='select-button' />");
				out.print("</form>");
				out.print("</tr>");
			}
                        
			
				 out.print("</table>");
            out.println("</body>");
            out.println("</html>");
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
                
                
                
                
            
        
        
        
        
        
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
