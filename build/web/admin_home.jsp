<%-- 
    Document   : Admin_home
    Created on : 28 Apr, 2022, 3:56:26 PM
    Author     : Shivangi
--%>
<%@page import="newpackage.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% User Auser = (User) session.getAttribute("logAuser");
        response.setHeader("Cache-Control","no-cache, no-store, must-revalidate");
    if(Auser==null){
        response.sendRedirect("index.jsp");
    }
    int id=Auser.getId();
    String userNme=Auser.getName();
    session.setAttribute("userID",id);
    session.setAttribute("userName", userNme);
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
   
    <link href="css/style1.css" rel="stylesheet" type="text/css"/>
    <!-- Boxicons CDN Link -->
    <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
   </head>



<body>
    <div class="sidebar">
    <div class="logo-details">
      <i class='bx bxl-c-plus-plus'></i>
      <span class="logo_name">Holidazzle</span>
      
    </div>
    
  
      <ul class="nav-links">
        <li>
          <a href="#" class="active">
            <i class='bx bx-grid-alt' ></i>
            <span class="links_name">Admin Home</span>
          </a>
        </li>
        <li>
          <a href="admin_destination.jsp">
            <i class='bx bx-box' ></i>
            <span class="links_name">Destinations</span>
          </a>
        </li>
        <li>
          <a href="destination_hotelcrud.jsp">
            <i class='bx bx-list-ul' ></i>
            <span class="links_name">Hotels</span>
          </a>
        </li>
        <li>
          <a href="admin_packages.jsp">
            <i class='bx bx-pie-chart-alt-2' ></i>
            <span class="links_name">Packages</span>
          </a>
        </li>
        <li>
          <a href="A_book.jsp">
            <i class='bx bx-coin-stack' ></i>
            <span class="links_name">View Bookings</span>
          </a>
        </li>
        <li>
          <a href="LogoutServlet">
            <i class='bx bx-log-out' ></i>
            <span class="links_name">Logout</span>
          </a>
        </li>
        
  </div>
  <section class="home-section">
      
    <nav>
      <div class="sidebar-button">
        <i class='bx bx-menu sidebarBtn'></i>
        <span class="dashboard">Dashboard</span>
      </div>
      <div class="search-box">
        <input type="text" placeholder="Search...">
        <i class='bx bx-search' ></i>
      </div>
        
      <div class="profile-details">
        <!--<img src="images/profile.jpg" alt="">-->
<%--        <span class="admin_name">Welcome,<%= user.getName()+user.getId()%></span>--%>
<
        <i class='bx bx-chevron-down' ></i>
        
      </div>
    </nav>
<video autoplay loop class="back-video" muted >
          <source src="video.mp4" type="video/mp4">
      </video>

    
  </section>
   
  <script>
   let sidebar = document.querySelector(".sidebar");
let sidebarBtn = document.querySelector(".sidebarBtn");
sidebarBtn.onclick = function() {
  sidebar.classList.toggle("active");
  if(sidebar.classList.contains("active")){
  sidebarBtn.classList.replace("bx-menu" ,"bx-menu-alt-right");
}else
  sidebarBtn.classList.replace("bx-menu-alt-right", "bx-menu");
}
 </script>

</body>

</html>



