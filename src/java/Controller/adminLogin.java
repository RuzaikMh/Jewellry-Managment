package controller;

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

/**
 * Servlet implementation class adminLogin
 */
@WebServlet("/adminLogin")
public class adminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public adminLogin() {
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
		
		String uname = request.getParameter("uname");
		String password = request.getParameter("password");
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
			String sql = "select adminId,uname,password from admins where uname='"+uname+"'";
			try {
				Statement st = conn.createStatement();
				ResultSet rs = st.executeQuery(sql);
				
				int count = 0;
				while (rs.next()) {
					dbUid=(rs.getString(1));
					dbuname=(rs.getString(2));
					dbpassword=(rs.getString(3));
			
					count += 1;
				}

				if (count == 1 && dbuname.equals(uname) && dbpassword.equals(password)) {
					HttpSession session = request.getSession();
					
					session.setAttribute("loggedAs", "admin");
					session.setAttribute("uid", dbUid);
					session.setAttribute("username", dbuname);
					session.setAttribute("password", dbpassword);
				
			
					
					message = (String) session.getAttribute("username");
					request.setAttribute("message", message);
				
					
					request.getRequestDispatcher("/demo.jsp").forward(request,response);
				//	request.getRequestDispatcher("/afterLoginHeader.jsp").forward(request,response);
					
				}
				else
					{
					 Object message1 = "Username or Password is wrong";
					request.setAttribute("error", message1);
					request.getRequestDispatcher("/adminlogin.jsp").forward(request,response);
					}
				}catch (SQLException e) {
					
					// TODO Auto-generated catch block
					e.printStackTrace();
				}


	}

}
}
