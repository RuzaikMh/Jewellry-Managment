package servlet;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ruzaik Mh
 */
@WebServlet(urlPatterns = {"/DBConnect"})

public interface DBConnect {
	public static Connection newConnection() throws SQLException {
		return DriverManager.getConnection("jdbc:mysql://localhost:3306/jewellry", "root", "1551214374THEaa");
	}
	public static ResultSet DBquery(String query) {
		try{//connect to database
		Connection myc = newConnection();
		//create statement
		Statement mys = myc.createStatement();
		
		//execute sql query
		ResultSet rs = mys.executeQuery(query);
		
		//process results
		return rs;
		}
		catch(Exception ex) {
			ex.printStackTrace();
			return null;

		}
		
	}

}
