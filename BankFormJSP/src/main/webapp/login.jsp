<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>

<style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            margin-top: 100px;
        }

        input {
            margin: 10px;
            padding: 8px;
        }
    </style>
    
</head>
<body>

<h2>Login</h2>
    <form action="config" method="get">
        Name: <input type="text" name="name" placeholder="Enter Name"><br><br>
        Password: <input type="password" name="password" placeholder="Enter Password"><br><br>
        <input type="submit" value="Login"><br>
    </form>

</body>
</html>