<%-- 
    Document   : BookPackage
    Created on : 25 Mar, 2022, 9:48:27 PM
    Author     : 91960
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Package Page</title>
        <link  href="css/Package.css" rel="stylesheet" >
        <style>
            h1{text-align: center;color: blue; font: sans-serif}
            div{text-align: center;color: indigo}
        </style>
    </head>
    <body>
        
        <div class="welcome"><br>
            <h1>BOOK PACKAGE</h1>
            <div class="contain">
                <form >
                    <div class="user-details">
                        <div class="input-box">
                            <span class="details">User Name</span>
                            <input type="text" placeholder="Enter your username" required>
                        </div>
                        <div class="input-box">
                            Package (select):
                            <select name="Package">
                                <option>Select</option>
                                <option>Package 1</option>
                                <option>Package 2</option>
                                <option>Package 3</option>
                            </select>
                        </div>
                        <div class="input-box">
                            <span class="details">Total Persons</span>
                            <input type="text" placeholder="No_Of_Persons" required>
                        </div>
                        <div class="input-box">
                            <span class="details">ID Type</span>
                            <input type="text" placeholder="Type of ID" required>
                        </div>
                        <div class="input-box">
                            <span class="details">ID Number</span>
                            <input type="text" placeholder="Enter ID No." required>
                        </div>
                        <div class="input-box">
                            <span class="details">Phone</span>
                            <input type="text" placeholder="Enter phone no." required>
                        </div>
                        
                        <div class="input-box">
                            <span class="details">Price</span>
                            <input type="text" placeholder="Price" required>
                        </div>
                        <br>
                        <div class="change">
                        <button type="submit">Check Price</button>
                    
                        <button type="submit">Book Package</button>
                    
                        <button type="submit">Back</button></div>
                    </div>
                </form>
            </div>
        </div>
        <div class="square">
            <ul>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        <div class="circle">
            <ul>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
                <li></li>
            </ul>
        </div>
        
    </body>
</html>
