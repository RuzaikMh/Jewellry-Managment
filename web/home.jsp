<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<%
	if (session.getAttribute("username") == null) {
%>
<jsp:include page="Homepage1.jsp"></jsp:include>
<%
	} else {
%>
<jsp:include page="afterLogin.jsp"></jsp:include>
<%
	}
%>
<body>

</body>
</html>