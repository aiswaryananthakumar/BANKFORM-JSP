<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Bank Registration Form</title>

<style>
    body { font-family: Arial; background: #eef; }
        .form-box { background: white; padding: 20px; width: 500px; margin: 30px auto; border-radius: 8px; box-shadow: 0 0 10px gray; }
        input, select, textarea { width: 100%; padding: 8px; margin: 8px 0; }
        h2 { text-align: center; color: #007BFF; }
        button { background: #007BFF; color: white; border: none; padding: 10px; font-size: 16px; width: 100%; border-radius: 4px; }
</style>

</head>

<body>

<div class="form-box">
    <h2>Bank Account Registration</h2>
    <form action="register.jsp" method="post">
        <input type="text" name="name" placeholder="Full Name" required />
        <input type="email" name="email" placeholder="Email" required />
        <input type="text" name="phone" placeholder="Phone Number" required />
        <select name="gender">
            <option>Male</option><option>Female</option><option>Other</option>
        </select>
        <input type="date" name="dob" required- />
        <textarea name="address" placeholder="Address" rows="3"></textarea>
        <input type="text" name="city" placeholder="City" />
        <input type="text" name="state" placeholder="State" />
        <input type="text" name="country" placeholder="Country" />
        <input type="text" name="pincode" placeholder="Pincode" />
        <select name="accountType">
            <option>Savings</option><option>Current</option><option>Fixed Deposit</option>
        </select>
        <input type="text" name="aadhar" placeholder="Aadhar Number" />
        <input type="text" name="pan" placeholder="PAN Number" />
        <input type="text" name="nominee" placeholder="Nominee Name" />
        <input type="text" name="deposit" placeholder="Initial Deposit Amount" />

        <button type="submit">Register</button>
    </form>
</div>

    <a href="login.jsp">Login</a><br><br>
    <a href="config.jsp">Config</a><br><br>
    <a href="bankForm.jsp">Bank Customer Registration</a><br><br>
    <a href="bankRegistration.jsp">JSTL Tags for Bank</a><br><br>

</body>
</html>