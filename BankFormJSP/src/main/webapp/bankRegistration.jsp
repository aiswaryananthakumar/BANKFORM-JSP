<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bank Registration Form</title>
</head>
<body>

<%
    String[] accountTypes = {"Savings", "Current", "Fixed Deposit"};
    pageContext.setAttribute("accountTypes", accountTypes);
%>

<c:choose>
    
    <c:when test="${empty param.name}">
        <h2>Bank Registration Form</h2>
        
        <form method="post">
            1. Name: <input type="text" name="name" required /><br/><br/>
            2. Email: <input type="email" name="email" required /><br/><br/>
            3. Gender:
            <select name="gender">
                <option value="Male">Male</option>
                <option value="Female">Female</option>
                <option value="Other">Other</option>
            </select><br/><br/>

            4. Mobile Number: <input type="text" name="mobile" pattern="[0-9]{10}" required /><br/><br/>
            5. Address: <input type="text" name="address" required /><br/><br/>

            6. Date of Birth: <input type="date" name="dob" required /><br/><br/>
            7. Aadhar Number: <input type="text" name="aadhar" pattern="[0-9]{12}" required /><br/><br/>
            8. Account Type:
            <select name="accountType">
                <c:forEach var="type" items="${accountTypes}">
                    <option value="${type}">${type}</option>
                </c:forEach>
            </select><br/><br/>

            9. Initial Deposit: <input type="number" name="balance" required /><br/><br/>
            10. Nominee Name: <input type="text" name="nominee" /><br/><br/>

            <input type="submit" value="Register" />
        </form>
    </c:when>

    <c:otherwise>
        <h2>Registration Successful!</h2>

        <c:set var="balance" value="${param.balance}" />
        <c:set var="minBalance" value="1000" />
        <p><b>Name:</b> <c:out value="${param.name}" /></p>
        <p><b>Email:</b> <c:out value="${param.email}" /></p>
        <p><b>Gender:</b> <c:out value="${param.gender}" /></p>
        <p><b>Mobile:</b> <c:out value="${param.mobile}" /></p>
        <p><b>Address:</b> <c:out value="${param.address}" /></p>
        <p><b>Date of Birth:</b> <c:out value="${param.dob}" /></p>
        <p><b>Aadhar Number:</b> <c:out value="${param.aadhar}" /></p>
        <p><b>Account Type:</b> <c:out value="${param.accountType}" /></p>
        <p><b>Initial Deposit:</b> ₹<c:out value="${param.balance}" /></p>
        <p><b>Nominee:</b> <c:out value="${param.nominee}" /></p>

        <c:choose>
            <c:when test="${balance lt minBalance}">
                <p style="color:red;"><b>Note:</b> Initial deposit is below 1000 minimum.</p>
            </c:when>
            <c:otherwise>
                <p style="color:green;">Account is eligible for activation.</p>
            </c:otherwise>
            </c:choose>
    </c:otherwise>
</c:choose>

</body>
</html>