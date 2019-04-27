<%-- 
    Document   : index
    Created on : Jul 8, 2017, 3:43:35 PM
    Author     : cyclingbd007
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DBhelper.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" type="text/css" href="css/design.css">
        <title>JSP Page</title>
    </head>
    <body>



       <table class="blueTable">
            <tr>
                <th colspan="6">Journal Entries List</th>
            </tr>
            <tr>
                <th>JID</th>
                <th>Date</th>
                <th>name</th>
                <th>debit</th>
                <th>credit</th>
                <th>remarks</th>
                <th colspan="2">Action</th>
            </tr>
            <%
                Connection con = DBConnect.getConnection();
                String sql = "select * from journal";
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(sql);
                while (rs.next()) {

            %>
            <tr>
                <td><%= rs.getInt("jid") %></td>
                <td><%= rs.getString("date") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getInt("debit") %></td>
                 <td><%= rs.getInt("credit") %></td>
                  <td><%= rs.getString("remarks") %></td>
                <td><a href="edit.jsp?jid=<%= rs.getInt("jid") %>">Edit</a></td>
                <td><a href="journalcontroller?jid=<%= rs.getInt("jid") %>&&for=delete">Delete</a></td>
            </tr>
            <% } %>
            <tr style="text-align:center;">
                <td colspan="6">
                    <font color="green">
                    <%                            if (session.getAttribute("sm") != null) {
                            out.println(session.getAttribute("sm"));
                            session.setAttribute("sm", null);
                        }
                    %>
                    </font>
                    <font color="red">
                    <%
                        if (session.getAttribute("em") != null) {
                            out.println(session.getAttribute("em"));
                            session.setAttribute("em", null);
                        }
                    %>
                    </font>
                </td>
            </tr>
            <tr style="text-align: center;">
                <td colspan="6">
                    <a href="insert.jsp">Insert</a>
                </td>
            </tr>
        </table>


    </body>
</html>
