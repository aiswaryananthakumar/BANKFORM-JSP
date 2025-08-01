<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Registration</title>

 <style>
        body { text-align: center; font-family: Arial; }
        label { width: 180px; display: inline-block; margin-right: 10px; }
    </style>
    
</head>
<body>

<h2>Bank Customer Registration</h2>

    <form action="success.jsp">
        <label>Full Name:</label><input type="text" name="fullName"><br><br>
        <label>Date of Birth:</label><input type="date" name="dob"><br><br>
        <label>Gender:</label>
        <select name="gender">
            <option>Male</option>
            <option>Female</option>
            <option>Other</option>
        </select><br><br>
        <label>Email:</label><input type="email" name="email"><br><br>
        <label>Mobile Number:</label><input type="text" name="mobile"><br><br>
        <label>Aadhar Number:</label><input type="text" name="aadhar"><br><br>
        <label>PAN Number:</label><input type="text" name="pan"><br><br>
        <label>Account Type:</label>
        <select name="accountType">
        <option>Savings</option>
            <option>Current</option>
        </select><br><br>
        <label>Branch:</label><input type="text" name="branch"><br><br>
        <label>Initial Deposit:</label><input type="number" name="deposit"><br><br>
        <label>Address:</label><input type="text" name="address"><br><br>
        <label>City:</label><input type="text" name="city"><br><br>
        <label>State:</label><input type="text" name="state"><br><br>
        <label>Postal Code:</label><input type="text" name="postalCode"><br><br>
        <label>Nominee Name:</label><input type="text" name="nominee"><br><br>
        <input type="submit" value="Submit">
    </form>
    
     <%
        String loginName = (String) session.getAttribute("n");
        if (loginName != null) {
            out.println("<p>Logged in as: " + loginName + "</p>");
        }
      %>

</body>
</html>