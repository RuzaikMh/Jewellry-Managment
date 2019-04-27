<%-- 
    Document   : insert
    Created on : Jul 8, 2017, 6:34:28 PM
    Author     : cyclingbd007
--%>

<%@page import="DBhelper.DBConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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



        <form name="edit_form" action="journalcontroller" method="post">
            <%
                String jid = request.getParameter("jid");

                Connection con = DBConnect.getConnection();
                String sql = "select * from journal where jid=" + jid;
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery(sql);
                if (rs.next()) {
            %>
            <table class="blueTable">
                <tr>
                    <th colspan="3">Update Journal entries</th>
                </tr>
                <tr>
                    <td> JID</td>
                    <td>:</td>
                    <td><input type="text" name="jid" value="<%= rs.getInt("jid") %>"/></td>
                </tr>
                <tr>
                    <td>Date</td>
                    <td>:</td>
                    <td><input type="date" name="date" value="<%= rs.getString("date") %>"/></td>
                </tr>
                  <tr>
                    <td> name</td>
                    <td>:</td>
                    <td><input type="text" name="name" value="<%= rs.getString("name") %>"/></td>
                </tr>
                <tr>
                    <td>Debit</td>
                    <td>:</td>
                    <td><input type="text" name="debit" value="<%= rs.getDouble("debit") %>"/></td>
                </tr>
                <tr>
                    <td>Credit</td>
                    <td>:</td>
                    <td><input type="text" name="credit" value="<%= rs.getDouble("credit") %>"/></td>
                </tr>
                  <tr>
                    <td>Remarks</td>
                    <td>:</td>
                    <td><input type="text" name="remarks" value="<%= rs.getString("remarks") %>"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td><input type="submit" name="update" value="Update"/></td>
                </tr>

                <tr style="text-align:center;">
                    <td colspan="3">
                        <font color="green">
                        <%
                            if (session.getAttribute("sm") != null) {
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
                    <td colspan="3">
                        <a href="index.jsp">Home</a>
                    </td>
                </tr>
            </table>
            <% }%>
        </form>

    </body>
</html>
