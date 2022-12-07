<%-- 
    Document   : index
    Created on : 17 Feb, 2022, 2:46:42 AM
    Author     : Shivam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <div class="box">
                <img class="avatar" src="img/user-avatar.png">
                <h1>
                    Login Account</h1>
                <form action="LoginServlet" method="post">
                    <p>
                        Useremail</p>
                    <input type="email" placeholder="Username" name="email" required>
                    <p>
                        Password</p>
                    <input type="password" placeholder="Password" name="password" required>
                    <input type="submit" value="Login">
                    <%--<a href="#">Forget Password?</a>--%>
                    <div class="right">
                    <a href="AdminLogin.jsp">Admin Login</a>
                    </div>
                    <a href="registration.jsp">Create New Account</a><br>
                    
                </form>
            </div>
        </div>
    </body>
</html>
