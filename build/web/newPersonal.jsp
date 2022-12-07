<%-- 
    Document   : Personal
    Created on : 2 Apr, 2022, 8:24:10 PM
    Author     : 91960
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" >
        <style type="text/css">
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
            .wrapper{
                height: 300px;
                width:300px;
                position: relative;
                border:5px solid #fff;
                border-radius: 100%;
                background: url('img/id.jpg');
                background-size: 100% 100%;
                margin: 100px auto;
                overflow: hidden;
            }
            .file-upload-input{
                position: absolute;
                bottom: 0;
                outline: none;
                color: transparent;
                width: 100%;
                box-sizing: border-box;
                padding: 15px 120px;
                cursor: pointer;
                transition: 0.5s;
                background: rgba(0,0,0,0.5);
                opacity: 0.4;
            }
            .file-upload-input::-webkit-file-upload-button{
                visibility: hidden;
            }
            .file-upload-input::before{
                content:'Upload';
                content:'\f030';
                font-family: fontAwesome;
                font-size: 50px;
                color: #fff;
                display: inline-block;
                -webkit-user-select:none;
            }
            
            .file-upload-input::after{
                content: 'Update';
                font-family: 'arial';
                font-weight: bold;
                color:#fff;
                display: block;
                top:65px;
                font-size: 14px;
                position: absolute;
            }
            .file-upload-input:hover{
                opacity:1;
            }
       
   </style>
    <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
    </head>
    <body>
        <div class="regform"><h1> Add your Details... </h1></div>
    <div class="mane">
        <form>
            <h2 class="name">Username</h2>
            <input class="uname" type="text" name="user_name"><br>
            <div id="name">
                <h2 class="name">Name</h2>
                <input class="firstname" type="text" name="first_name" value="shikha"><br>
                <label class="firstlabel">first name</label>
                <input class="lastname" type="text" name="last_name">
                <label class="lastlabel">last name</label>
            </div>
            <h2 class="name">Country</h2>
            <input class="country" type="text" name="country">

            <div id="name">
                <h2 class="name">Address</h2>
                <input class="firstinput" type="text" name="landmark">
                <label class="firsthlabel">landmark</label>
                <input class="secondinput" type="text" name="pincode">
                <label class="secondlabel">pincode</label>
            </div>
            <div id="name">
                <input class="thirdinput" type="text" name="city">
                <label class="thirdlabel">city</label>
                <input class="fourthinput" type="text" name="state">
                <label class="fourthlabel">state</label>
            </div>


            <h2 class="name">Email</h2>
            <input class="email" type="text" name="email">

            <h2 class="name"> Phone</h2>
            <input class="code" type="text" name="area_code">
            <label class="area-code">Area Code</label>
            <input class="number" type="text" name="phone">
            <label class="phone-number">Phone Number</label>

            <h2 class="name"> ID type</h2>
            <select class="option" name="subject">
                <option disabled="disabled" selected="selected">--Choose your ID type</option>
                <option> Adhaar Card</option>
                <option> Passport</option>
                <option> Driving License</option>

            </select>
            <div class="wrapper">
                <input class="file-upload-input" type="file" onchange="readURL(this)" accept="Image/*" >
            </div>
            <div id="name">
                <label class="name"> Gender</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" class="radio" id="male" name="gender" value="male">
                <label for="male" class="radio">Male</label>&nbsp;&nbsp;&nbsp;
                <input type="radio" class="radio" id="female" name="gender" value="female">
                <label for="female" class="radio">Female</label>
            </div>

            <button type="submit">Add</button>
            <button type="submit">Reset</button>
        </form>
    </div>
    </body>
</html>
