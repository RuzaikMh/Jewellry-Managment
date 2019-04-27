package Controller;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Controller.DBconnection;

import Model.User;
/**
 * Servlet implementation class Register
 */
@WebServlet("/Register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
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
	
		
		
		User user = new User();

		user.setFname(request.getParameter("firstname"));
		user.setLname(request.getParameter("lastname"));
		user.setEmail(request.getParameter("email"));
	
		user.setCountry(request.getParameter("country"));
		user.setTelNo(request.getParameter("telNo"));
		user.setUname(request.getParameter("username"));
		user.setPassword(request.getParameter("password"));
		user.setConfPassword(request.getParameter("confirmPassword"));
		

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
				
		DBconnection db = new DBconnection();
		Connection conn = db.getConnection();



		if (conn == null) {
			out.write("Connection Not Established");
		}
			
			
			else {
				try {
					Statement st = conn.createStatement();
					String sql = "select * from login where firstname = '"
							+ user.getFname() + "' or email = '" + user.getEmail()
							+ "'";
					ResultSet rs = st.executeQuery(sql);

			

					 if (!user.getPassword().equals(user.getConfPassword())) {
						Object message = "Password not maching";
						request.setAttribute("passwordErr", message);
						request.getRequestDispatcher("/register2.jsp").forward(
								request, response);
						
					}

					else if (!user.getEmail().matches(
							"^[A-Z0-9a-z._%+-]+@[A-Z0-9a-z]+\\.[A-Za-z]{2,6}$")) {
						Object message = "Use Standered email";
						request.setAttribute("emailErr", message);
						request.getRequestDispatcher("/register2.jsp").forward(
								request, response);
						
					}

					else {


				String sql2 = "insert into login (firstname,lastname,email,country,telno,username,password)"
						+ "values(?,?,?,?,?,?,?)";

				PreparedStatement pre = conn.prepareStatement(sql2);

				
				pre.setString(1, user.getFname());
				pre.setString(2, user.getLname());
				pre.setString(3, user.getEmail());
				pre.setString(4, user.getCountry());
				pre.setString(5, user.getTelNo());
				pre.setString(6, user.getUname());
				pre.setString(7, user.getPassword());
				
				
				
				
				pre.execute();
				
				Object message = user.getUname();
				
				request.setAttribute("message", message);
				
				request.getRequestDispatcher("/Login3.jsp").forward(request,
						response);
				//request.getRequestDispatcher("/header.jsp").forward(request, response);

			
					}} catch (Exception e) {
			System.out.println("Got an exception");
			System.out.println(e.getMessage());
		}

	}

	}
}
