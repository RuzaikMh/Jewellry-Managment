/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.Items;
/**
 *
 * @author PATHMANATHAN
 */
@WebServlet(name = "viewItem", urlPatterns = {"/viewItem"})
public class viewItem extends HttpServlet {

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
	
		
	PrintWriter out = response.getWriter();
		
		Items item=new Items();
		
		HttpSession session=request.getSession();  
		
		item.SetItemNo(request.getParameter("uid"));
		
                DBconnection db = new DBconnection();
		Connection conn = db.getConnection();
		
		try{
			
			Statement st = conn.createStatement();
			String sql = "select id,Pname,category,description,qty,weight,price,image from item where id = '"+item.GetItemNo()+"'";
			ResultSet rs = st.executeQuery(sql);
			
			while(rs.next()){
				
				
                                item.SetItemNo(rs.getString(1));
                                item.SetProductName(rs.getString(2));
                                item.SetCategory(rs.getString(3));
                                item.SetDescription(rs.getString(4));
                                item.SetQty(rs.getInt(5));
                                item.SetWeight(rs.getDouble(6));
                                item.SetPrice(rs.getDouble(7));
                                item.SetPimage(rs.getString(8));
                                
                                
				
			}
			
			request.setAttribute("item", item);
			request.getRequestDispatcher("/displayItem1.jsp").forward(request,response);
		}
		catch(Exception p){
			System.out.println(p);
		}
		
	}

}