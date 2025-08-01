<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Config Page</title>
</head>
<body>

<%
    String greet = (String) request.getAttribute("greeting");

    String name = (String) session.getAttribute("name");
    String password = (String) session.getAttribute("password");
%>

<h3><%= request.getAttribute("greeting") != null ? request.getAttribute("greeting") : "Welcome" %></h3>

<%
    if (name != null && password != null) {
%>
     <p>Name: <%= name %></p>
    <p>Password: <%= password %></p>
    <p>Session: <%= name %></p>
<% } else { %>
    <p>No login data found. Please <a href="login.jsp">login</a>.</p>
<% } %>

<br><a href="index.jsp">Back to Home</a>

</body>
</html>