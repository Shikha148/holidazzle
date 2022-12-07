<%-- 
    Document   : Packages
    Created on : Apr 5, 2022, 10:18:35 PM
    Author     : Parmanand.Saumya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=Poppins&display=swap" rel="stylesheet">
        <style>
            *{
                padding: 0;
                margin: 0;
                font-family: 'Poppins', sans-serif;

            }
            body{
                background-image:url(img/hm.jpg);
            }

            html {
                padding:15px 15px 0;
                font-family:sans-serif;
                font-size:14px;
            }
            .hero{
                width: 80%;
                height: 450px;
                position: relative;
                margin: 50px auto; 
            }

            p, h3 {
                margin-bottom:15px;
            }

            .btn-box{
                padding:100px;
                width:70%;
                background:#696969;
                margin-left: 80px;
                margin-right: 50px;
                height:350px;
            }

            .tabss{
                width: 80%;
                height: 40px;
                position: relative;
                margin: 10px auto;
                display: flex;
                border-bottom: 1px solid #ccc;
            }
            .btn-box p{
                color: #ff7846;
                font-size: 170px;
                font-family: 'Poppins', sans-serif;
            }
            .tabss li {
                list-style:none;
                display:inline;
                background: transparent;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 24px 16px;
                margin-left: 50px;
                margin-right: 60px;
                font-size: 25px;
                font-weight: bold;
                alignment-adjust: central;
            }
            .tabss a {
                padding:5px 10px;
                display:inline-block;
                background:#666;
                color:#fff;
                text-decoration:none;
                width:150px;
            }

            .tabss li.active a{
                background:#ff7846;
                color:#00;

            }

            .tab_content {
                display: none;
            }
            .content-right img{
                width: 350px;
                margin-top: -630px;
                margin-right: 50px;
            }
            .tab_content{
                display: none;
                justify-content: center;
                align-items: center;
                margin: 0% auto;
                position: relative;
                transition: 0.3s;
            }
            .content-left{
                text-align: left;
            }
            .content-left p{
                font-size: 20px;
                padding: 30px 0;
                /*text-align: center;*/
                margin-left: 50px;
            }
            .content-left h1{
                margin-left: 30px;
                font-size: 40px;
            }
            .content-left button{
                width: 250px;
                display: block;
                padding: 10px 8px;
                border-radius: 20px;
                text-decoration: none;
                background-color: #ff7846;
                color: #fff;
                text-align: center;
            }
            .content-right{
                text-align: right;
                margin-top: -100px;
            }
            .content-left h2{
                margin-left: 80px;
                font-size: 25px;
                text-align: center;
            }
        </style>

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js">
        </script>
        <script>

            // Wait until the DOM has loaded before querying the document
            $(document).ready(function () {

                //Active tab selection after page load       
                $('#tabs').each(function () {

                    // For each set of tabs, we want to keep track of
                    // which tab is active and it's associated content
                    var $active, $content, $links = $(this).find('a');

                    // If the location.hash matches one of the links, use that as the active tab.
                    // If no match is found, use the first link as the initial active tab.
                    $active = $($links.filter('[href="' + location.hash + '"]')[0]
                            || $links[0]);

                    $active.parent().addClass('active');

                    $content = $($active.attr('href'));
                    $content.show();
                });

                $("#tabs li").click(function () {

                    // First remove class "active" from currently active tab
                    $("#tabs li").removeClass('active');

                    // Now add class "active" to the selected/clicked tab
                    $(this).addClass("active");

                    // Hide all tab content
                    $(".tab_content").hide();

                    // Here we get the href value of the selected tab
                    var selected_tab = $(this).find("a").attr("href");

                    var starting = selected_tab.indexOf("#");
                    var sub = selected_tab.substring(starting);

                    //write active tab into cookie

                    //$(sub).show();
                    $(sub).fadeIn();
                    // At the end, we add return false so that the click on the
                    // link is not executed
                    return false;
                });
            });

        </script>

    </head>
    <body>
        <div class="hero">
            <ul id='tabs' class="tabss">
                <li><a href='#tab1'>Package 1</a></li>
                <li><a href='#tab2'>Package 2</a></li>
                <li><a href='#tab3'>Package 3</a></li>
            </ul>
            <div class="btn-box">
                <div id='tab1' class="tab_content" >
                    <div class="content-left">
                        <h1>Gold Package</h1>
                        <p>5 Days and 6 Nights<br>
                            Airport Assistance at Airport<br>
                            Half day city tour<br>
                            Welcome drinks on Arrival<br>
                            Daily Buffet<br>
                            English Speaking guide
                        </p>

                        <button>Book Now</button>
                        <h2 class="sp"> Summer Special</h2>
                    </div>
                    <div class="content-right">
                        <img src="img/a.png">
                    </div>

                </div>
                <div id='tab2' class="tab_content" >
                    <div class="content-left">
                        <h1>Silver Package</h1>
                        <p>
                            4 Days and 3 Nights
                            <br>
                            Meet and Greet at Airport
                            <br>
                            Toll free tickets
                            <br>
                            Welcome Drinks on arrival
                            <br>
                            Night Safari
                            <br>
                            Cruise with dinner 
                            <br>
                            <br>
                            <button>Book Now</button>
                        </p>
                        <h2 class="sp"> Winter Special</h2>
                    </div>
                    <div class="content-right">
                        <img src="img/g2.jpg">
                    </div>

                </div>
                <div id='tab3' class="tab_content" >
                    <div class="content-left">
                        <h1>Normal Package</h1>
                        <p>
                            3 Days and 3 Nights
                            <br>
                            Meet and Greet at Airport
                            <br>
                            Toll free and entrance free-<br>tickets
                            <br>
                            Welcome Drinks on arrival
                            <br>
                            Night Safari
                            <br>
                            <button>Book Now</button>
                        </p>
                        <h2 class="sp">Holiday Special</h2>
                    </div>
                    <div class="content-right">
                        <br>
                        <img src="img/bgg.jpg">
                    </div>

                </div>
            </div>      
        </div>
    </body>
</html>
