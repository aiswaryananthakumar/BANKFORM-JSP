<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Submission Result</title>
</head>
<body>

<h2>Registration Details</h2>
    <%
        String[] fields = {
            "fullName", "dob", "gender", "email", "mobile",
            "aadhar", "pan", "accountType", "branch", "deposit",
            "address", "city", "state", "postalCode", "nominee"
        };

        for (String field : fields) {
            String value = request.getParameter(field);
            out.println("<p>" + field + ": " + value + "</p>");
        }

        String loginUser = (String) session.getAttribute("n");
        if (loginUser != null) {
            out.println("<p>Form submitted by: " + loginUser + "</p>");
        }
    %>
    <br><a href="index.jsp">Back to Home</a>

</body>
</html>