<%-- 
    Document   : viewPersonalDetails
    Created on : Mar 25, 2022, 11:46:40 AM
    Author     : Parmanand.Saumya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            *{
                margin:0;
                padding:0;
            }
            body{
                background-image:url(img/l1.jpg);
                background-position:center;
                background-size:cover;
                font-family:sans-serif;
                margin-top:40px;
            }
            .regform{
                width:800px;
                background-color:rgb(0,0,0,0.6);
                margin:auto;
                color:#FFFFFF;
                padding:10px 0px 10px 0px;
                text-align:center;
                border-radius:15px 15px 0px 0px;I
            }
            .mane{
                background-color:rgb(0,0,0,0.5);
                width:800px;
                margin:auto;
            }
            form{
                padding:10px;
            }
            #name {
                width:100%;
                height:100px;
            }
            .uname{
                position:relative;
                left:200px;
                top:-37px;
                line-height:40px;
                border-radius:6px;
                padding:0 22px;
                font-size:16px;
            }
            .name {
                margin-left:25px;
                margin-top:30px;
                width:125px;
                color:white;
                font-size:18px;
                font-weight:700;
            }
            .firstname{
                position:relative;
                left:200px;
                top:-37px;
                line-height:40px;
                border-radius:6px;
                padding:0 22px;
                font-size:16px;
            }
            .lastname{
                position:relative;
                left:417px;
                top:-80px;
                line-height:40px;
                border-radius:6px;
                padding:0 22px;
                font-size:16px;
                color:#555;
            }
            .firstlabel{
                position:relative;
                color:#E5E5E5;
                text-transform:capitalize;
                font-size:14px;
                left:203px;
                top:-45px;
            }
            .lastlabel{
                position:relative;
                color:#E5E5E5;
                text-transform:capitalize;
                font-size:14px;
                left:175px;
                top:-45px;
            }
            .country{
                position:relative;
                left:200px;
                top:-37px;
                line-height:40px;
                width:480px;
                border-radius:6px;
                padding:0 22px;
                font-size:16px;
                color:#555;
            }
            .firstinput{
                position:relative;
                left:200px;
                top:-37px;
                line-height:40px;
                border-radius:6px;
                padding:0 22px;
                font-size:16px;
                width:280px;
            }
            .firsthlabel{
                position:relative;
                color:#E5E5E5;
                text-transform:capitalize;
                font-size:14px;
                left:-127px;
                top:-2px;

            }
            .secondinput{
                position:relative;
                left:157px;
                top:-37px;
                line-height:40px;
                border-radius:6px;
                padding:0 22px;
                font-size:16px;
                color:#555;
                width:125px;
            }
            .secondlabel{
                position:relative;
                color:#E5E5E5;
                text-transform:capitalize;
                font-size:14px;
                left:-15px;
                top:-5px;
            }
            .thirdinput{
                position:relative;
                left:200px;
                top:-25px;
                line-height:40px;
                border-radius:6px;
                padding:0 22px;
                font-size:16px;
            }
            .thirdlabel{
                position:relative;
                color:#E5E5E5;
                text-transform:capitalize;
                font-size:14px;
                left:-42px;
                top:9px;
            }
            .fourthinput{
                position:relative;
                left:207px;
                top:-25px;
                line-height:40px;
                border-radius:6px;
                padding:0 22px;
                font-size:16px;
                color:#555;
            }
            .fourthlabel{
                position:relative;
                color:#E5E5E5;
                text-transform:capitalize;
                font-size:14px;
                left:-32px;
                top:9px;
            }

            .email{
                position: relative;
                left:200px;
                top:-37px;
                line-height: 40px;
                width:480px;
                border-radius: 6px;
                padding: 0 22px;
                font-size: 16px;
                color: #555;
            }
            .code{
                position:relative;
                left:200px;
                top:-37px;
                line-height: 40px;
                width:95px;
                border-radius: 6px;
                padding: 0 22px;
                font-size: 16px;
                color: #555;
            }
            .number{
                position:relative;
                left:200px;
                top:-37px;
                line-height: 40px;
                width:255px;
                border-radius: 6px;
                padding: 0 22px;
                font-size: 16px;
                color: #555;
            }
            .area-code{
                position:relative;
                color:#E5E5E5;
                text-transform:capitalize;
                font-size:16px;
                left:54px;
                top:-4px;
            }
            .phone-number{
                position:relative;
                color:#E5E5E5;
                text-transform:capitalize;
                font-size:16px;
                left:-100px;
                top:-2px;
            }
            .option{
                position:relative;
                left:200px;
                top:-37px;
                line-height: 40px;
                width:532px;
                height:40px;
                border-radius: 6px;
                padding: 0 22px;
                font-size: 16px;
                color: #555;
                outline:none;
                overflow:hidden;
            } I
            .option option{
                font-size:20px;
            }
            #coustomer{
                margin-left:25px;
                color:white;
                font-size:18px;
            }
            .radio{

                padding-right:70px;
                font-size:20px;
                margin-left:25px;
                margin-top:15px;
                color:white;
            }
            .radio input{
                width:20px;
                height:20px;
                border-radius:50%;
                cursor:pointer;
                outline:none; I
            }
            button{
                background-color:#3BAF9F;
                display:block;
                margin:20px 0px 0px 20px;
                text-align:center;
                border-radius:12px;
                border: 2px solid #366473;
                padding:14px 110px;
                outline:none;
                color:white;
                cursor:pointer;
                transition:0.25px;
            }
            button:hover{
                background-color:#5390F5;
            }
        </style>
    </head>
    <body>
        <div class="regform"><h1>Your Details... </h1></div>
        <div class="mane">
            <form>
                <h2 class="name">Username</h2>
                <label class="uname"> shikha</label><br>

                <h2 class="name">Name</h2>
                <label class="firstname"></label><br>

                <label class="lastname"></label>

                <h2 class="name">Country</h2>
                <label class="country"></label>


                <h2 class="name">Address</h2>
                <label class="firstinput"></label>

                <label class="secondinput"></label>

                <label class="thirdinput"></label>

                <label class="fourthinput"></label>

                <h2 class="name">Gender</h2>
                <label class="gender"></label>

                <h2 class="name">Email</h2>
                <label class="email"></label>

                <h2 class="name"> Phone</h2>
                <label class="code"></label>

                <label class="number"></label>


                <h2 class="name"> ID type</h2>
                <label class="option"></label>

                <button type="submit">back</button>
                <button type="submit">update</button>
            </form>
        </div>
    </body>
</html>
