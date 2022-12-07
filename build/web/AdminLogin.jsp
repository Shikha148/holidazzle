<%-- 
    Document   : AdminLogin
    Created on : 20 Feb, 2022, 8:21:08 AM
    Author     : Shivam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="box">
                <img class="avatar" src="img/user-avatar.png">
                <h1>
                    Admin Account</h1>
                <form action="AdminLoginServlet" method="post">
                    <p>
                        Username</p>
                    <input type="text" placeholder="Username" name="email" required>
                    <p>
                        Password</p>
                    <input type="password" placeholder="Password" name="password" required>
                    <input type="submit" value="Login">
                    
                    
                </form>
            </div>
        </div>
    </body>
</html>
