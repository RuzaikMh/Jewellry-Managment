package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Model.Items;
/**
 * Servlet implementation class AddItems
 */
@WebServlet("/AddItems")
public class AddItems extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddItems() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		
		
		Items I1=new Items();
		
		HttpSession session = request.getSession();
		
	
		I1.SetItemNo(request.getParameter("ItemNo"));
		I1.SetCategory(request.getParameter("Category"));
		I1.SetProductName(request.getParameter("ProductName"));
		I1.SetPrice(Double.parseDouble(request.getParameter("Price")));
		I1.SetDescription(request.getParameter("Description"));
		I1.SetQty(Integer.parseInt(request.getParameter("Qty")));
		I1.SetWeight(Double.parseDouble(request.getParameter("Weight")));
		I1.SetPimage(request.getParameter("Pimage"));
		
		
		response.setContentType("text/html");
                 response.setContentType("image/png");
		PrintWriter out = response.getWriter();
		
		DBconnection db = new DBconnection();
		Connection conn = db.getConnection();
		
		if (conn == null) {
			out.write("Connection Not Established");
		} else {
			try {
				
				
				String sql2="insert into item(id,Pname,category,description,qty,weight,price,image)"
				+ "values(?,?,?,?,?,?,?,?)";
				
				PreparedStatement pre = conn.prepareStatement(sql2);
				
				
				pre.setString(1, I1.GetItemNo());
				pre.setString(2, I1.GetProductName());
				pre.setString(3, I1.GetCategory());
				pre.setString(4, I1.GetDescription());
				pre.setInt(5, I1.GetQty());
				pre.setDouble(6, I1.GetWeight());
				pre.setDouble(7, I1.GetPrice());
				pre.setString(8, I1.GetPimage());
				
				pre.execute();

				
				request.getRequestDispatcher("/login.jsp").forward(request,
						response);
			} catch (Exception e) {
				System.out.println("Got an exception");
				System.out.println(e.getMessage());
			

	}
		}
	
	}
}
