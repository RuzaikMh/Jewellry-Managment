<%-- 
    Document   : viewUser
    Created on : Apr 8, 2019, 9:28:20 PM
    Author     : PATHMANATHAN
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <%

	PreparedStatement pstatement = null;
      
        try {
             Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        Connection conn = null;
	Statement st = null;
	ResultSet rs = null;
      %>
<!DOCTYPE html>
 <html lang="en"> 
<head>
	<meta charset="utf-8">
	<title>Ramani jewelry</title>
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, minimum-scale=1, user-scalable=no">
	<link rel="stylesheet" media="all" href="css/style1.css">
	<!--[if lt IE 9]>
		
<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
	
<![endif]-->
</head>

<body>

     <%
		
		String uname=(String)session.getAttribute("username");
                String uid=(String)session.getAttribute("uid");
	%>
	<header id="header">
	<div class="container">
	<a href="index.html" id="logo" title="Ramani jewelry">Ramani jewelry</a>
	<div class="right-links">
	
<ul>
 <!--<li><a href="cart.html"><span class="ico-products"></span>3 products, $4 500.00</a></li> -->
					
<li><a href="#"><span class="ico-account"></span><%=uname%></a</li>

<li><a href="logout"><span class="ico-signout"></span>Sign out</a></li>
</ul>
</div>
</div>
		
<!-- / container -->
	
</header>
<body>
    
    

<caption>
					<h2>User Details</h2>
				</caption>
	
			<table  border="1">
				
				
				 <tr>
                          <td>Customer ID</td>
                          <td>First Name</td>
                          <td>Last Name</td>
                          <td>Email</td>
                          <td>country</td>
                          <td>TelNo</td>
                          <td>UserName</td>
                          <td>Password</td>
                          <td>Edit</td>
                      </tr>
                      
                      <% 
                        try{
                              conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jewellry?useSSL=false", "root", "1551214374THEaa");
                              st = conn.createStatement();
                              String sql ="SELECT * FROM login where uid=uid ";
                              rs = st.executeQuery(sql);
                              
                              while(rs.next()){
                        
                      %>
                      <tr>
                      <td><%=rs.getString(1) %></td>
                      <td><%=rs.getString(2) %></td>
                      <td><%=rs.getString(3) %></td>
                      <td><%=rs.getString(4) %></td>
                      <td><%=rs.getString(5) %></td>
                      <td><%=rs.getInt(6) %></td>
                      <td><%=rs.getString(7) %></td>
                      <td><%=rs.getString(8) %></td>
                   <td>
                       
                           
                      </td>
                      </tr>
                        <% 
                              }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                  %>
                      
                        </table>

	
    
    
    
</body>
