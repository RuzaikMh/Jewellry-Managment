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
import javax.servlet.http.HttpSession;

import Controller.DBconnection;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public login() {
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
		
		
		String passuname = request.getParameter("uname");
		String passpwd = request.getParameter("password");
		String dbuname = null,dbpassword=null,dbUid=null;
		
	

		response.setContentType("text/html");
		PrintWriter write=response.getWriter();
		
		DBconnection db = new DBconnection();
		Connection conn = db.getConnection();
		
		if (conn == null)
			write.write("Connection Not Established");

		else {
			write.write("Connection Established");

			String message=null;	
			String sql = "select uid,username,password from login where username='"+passuname+"'";
			try {
				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(sql);
				
			
				while (rs.next()) {
					dbUid=(rs.getString(1));
					dbuname=(rs.getString(2));
					dbpassword=(rs.getString(3));
			
				
				}

				if ( dbuname.equals(passuname) && dbpassword.equals(passpwd)) {
					HttpSession session = request.getSession();
					
					session.setAttribute("loggedAs", "user");
					session.setAttribute("uid", dbUid);
					session.setAttribute("username", dbuname);
					session.setAttribute("password", dbpassword);
				
			
					
					message = (String) session.getAttribute("username");
					request.setAttribute("message", message);
				
					//request.getRequestDispatcher("/afterlogheader.jsp").forward(request,response);
					request.getRequestDispatcher("/home.jsp").forward(request,response);
					
					
				}
				else{
					

					 Object message1 = "Username or Password is wrong";
					request.setAttribute("error", message1);
					request.getRequestDispatcher("/Login3.jsp").forward(request,response);
					
				}
				}catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}


	}
	}}
		
