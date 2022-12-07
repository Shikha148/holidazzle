<%-- 
    Document   : Personal
    Created on : 2 Apr, 2022, 8:24:10 PM
    Author     : 91960


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/personalDetails.css" rel="stylesheet" type="text/css"/>
              

        </head>
    <body>
        <div class="regform"><h1> Add your Details... </h1></div>
    <div class="mane">
        
        <form action="addPersonalDetails.jsp" method="post">
            <div id="name">
                <h2 class="name">Name</h2>
                <input class="firstname" type="text" name="first_name"><br>
                <label class="firstlabel">first name</label>
                <input class="lastname" type="text" name="last_name">
                <label class="lastlabel">last name</label>
            </div>
            <h2 class="name">Country</h2>
            <input class="country" type="text" name="country">

            <div id="name">
                <h2 class="name">Address</h2>
                <input class="firstinput" type="text" name="landmark">
                <label class="firsthlabel">house no/flat no/street no</label>
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
            
            <input class="number" type="text" name="phone">
            <label class="phone-number">Phone Number</label>

            <h2 class="name"> ID type</h2>
            <select class="option" name="subject">
                <option disabled="disabled" selected="selected">--Choose your ID type</option>
                <option> Adhaar Card</option>
                <option> Passport</option>
                <option> Driving License</option>

            </select>
            
            
            <h2 class="name"> Id Number</h2>
            <input class="number" type="text" name="idnumber"><br>
            
            <h2 class="name"> Age</h2>
            <input class="number" type="text" name="age"><br>
            
           
            <div id="name">
                <label class="name"> Gender</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" class="radio" id="male" name="gender" value="male">
                <label for="male" class="radio">Male</label>&nbsp;&nbsp;&nbsp;
                <input type="radio" class="radio" id="female" name="gender" value="female">
                <label for="female" class="radio">Female</label>
            </div>

            <button type="submit">Add</button>
        </form>
    </div>
    </body>
     
</html>



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
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/personalDetails.css" rel="stylesheet" type="text/css"/>
              

        </head>
    <body>
        <div class="regform"><h1> Add your Details... </h1></div>
    <div class="mane">
        
        <form action="addPersonalDetails.jsp" method="post">
            <div id="name">
                <h2 class="name">Name</h2>
                <input class="firstname" type="text" name="first_name"><br>
                <label class="firstlabel">first name</label>
                <input class="lastname" type="text" name="last_name">
                <label class="lastlabel">last name</label>
            </div>
            <h2 class="name">Country</h2>
            <input class="country" type="text" name="country">

            <div id="name">
                <h2 class="name">Address</h2>
                <input class="firstinput" type="text" name="landmark">
                <label class="firsthlabel">house no/flat no/street no</label>
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
            
            <input class="number" type="text" name="phone">
            <label class="phone-number">Phone Number</label>

            <h2 class="name"> ID type</h2>
            <select class="option" name="subject">
                <option disabled="disabled" selected="selected">--Choose your ID type</option>
                <option> Adhaar Card</option>
                <option> Passport</option>
                <option> Driving License</option>

            </select>
            
            
            <h2 class="name"> Id Number</h2>
            <input class="number" type="text" name="idnumber"><br>
            
            <h2 class="name"> Age</h2>
            <input class="number" type="text" name="age"><br>
            
            <%--<div class="wrapper">
                <input class="file-upload-input" type="file" onchange="readURL(this)" accept="Image/*" >
            </div>--%>
            <div id="name">
                <label class="name"> Gender</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="radio" class="radio" id="male" name="gender" value="male">
                <label for="male" class="radio">Male</label>&nbsp;&nbsp;&nbsp;
                <input type="radio" class="radio" id="female" name="gender" value="female">
                <label for="female" class="radio">Female</label>
            </div>

            <button type="submit">Add</button>
        </form>
    </div>
    </body>
     
</html>
