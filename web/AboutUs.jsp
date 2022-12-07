<%-- 
    Document   : AboutUs
    Created on : Mar 25, 2022, 10:59:06 PM
    Author     : Parmanand.Saumya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }
            .contact
            {
                position: relative;
                min-height: 100vh;
                padding: 50px 100px;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                background: url(img/bg.jpg);
                background-size: cover;
            }
            .contact .content
            {
                max-width: 800px;
                text-align: center;
            }
            .contact .content h2
            {
                font-size: 36px;
                font-weight: 500;
                color: #fff;
            }
            .contact .content p
            {
                font-weight: 300;
                color: #fff;
            }
            .container
            {
                width: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-top: 30px;
            }
            .container .contactInfo
            {
                width: 50%;
                display: flex;
                flex-direction: column;
            }
            .container .contactInfo .box
            {
                position: relative;
                padding: 20px e;
                display: flex;
            }
            .container .contactInfo .box .icon
            {
                min-width: 60px;
                height: 60px;
                background: #fff;
                display: flex;
                justify-content: center;
                align-items: center;
                border-radius: 50%;
                font-size: 22px;
            }
            .container .contactInfo .box .text
            {
                display: flex;
                margin-Left: 20px;
                font-size: 16px;
                color: #fff;
                flex-direction: column;
                font-weight: 300;
            }
            .container .contactInfo .box .text h3
            {
                font-weight: 500;
                color: #00bcd4;
            }
            .contactForm
            {
                width: 40%;
                padding: 40px;
                background: #fff;
            }
            .contactForm h2
            {
                font-size: 30px;
                color: #333;
                font-weight: 500;
            }
            .contactForm .inputBox
            {
                position: relative;
                width: 100%;
                margin-top: 10px;
            }
            .contactForm .inputBox input,
            .contactForm .inputBox textarea
            {
                width: 100%;
                padding: 5px 0;
                font-size: 16px;
                margin: 10px 0;
                border: none;
                border-bottom: 2px solid #333;
                outline: none;
                resize: none;
            }
            .contactForm .inputBox span
            {
                position: absolute;
                Left: 0;
                padding: 5px e;
                font-size: 16px;
                margin: 10px e;
                pointer-events: none;
                transition: 0.5s;
                color: #666;
            }
            .contactForm .inputBox input:focus ~ span,
            .contactForm .inputBox input:valid ~ span,
            .contactForm .inputBox textarea:focus ~ span,
            .contactForm .inputBox textarea:valid ~ span
            {
                color: #e91e63;
                font-size: 12px;
                transform: translateY(-20px);
            }
            .contactForm .inputBox input [type="submit"]
            {
                width: 100px;
                background: #00bcd4;
                color: #fff;
                border: none;
                cursor: pointer;
                padding: 10px;
                font-size: 18px;
            }
        </style>
    </head>
    <body>
        <section class="contact">
            <div class="content">
                <h2>Contact Us</h2>
                <p>Holidazzle</p>
            </div>
            <center>
            <div class="container">
                <div class="contactInfo">
                    <div class="box">
                        <div class="icon"><i class="fa fa-map-marker" aria-hidden="true"></i></div>
                        <div class="text">
                            <h3>Address</h3>
                            <p>Sector 37C, <br>Gurugram, Haryana,<br>122004</p>
                        </div>
                    </div>
                    <br>
                    <div class="box">
                        <div class="icon"><i class="fa fa-phone" aria-hidden="true"></i></div>
                        <div class="text">
                            <h3>Phone</h3>
                            <p>9871106617</p>
                        </div>
                    </div>
                    <br>
                    <div class="box">
                        <div class="icon"><i class="fa fa-envelope-o" aria-hidden="true"></i></div>
                        <div class="text">
                            <h3>Email</h3>
                            <p>holidazzle46@gmail.com</p>
                        </div>
                    </div>
                </div>
             <%--   <div class="contactForm">
                    
                    <form onsubmit="javascript: sendEmail();">
                        <h2>Send Message</h2>
                        <br>
                        <div class="inputBox">
                            <input type="text" id="name" required="required">
                            <span>Full Name</span>
                        </div>
                        <br>
                        <div class="inputBox">
                            <input type="email" id="email" required="required">
                            <span>Email</span>
                        </div>
                        <div class="inputBox">
                            <input type="text" id="phone" required="required">
                            <span>Phone</span>
                        </div>
                        <br>
                        <div class="inputBox">
                            <textarea required="required" id="message"></textarea>
                            <span>Type your Message...</span>
                        </div>
                        <br>
                        <div class="inputBox">
                            <input type="submit" name="sendmessage" value="Send">
                        </div>

                    </form>
                </div>--%>
            </div>
            </center>
        </section> 
       
    </body>
</html>
