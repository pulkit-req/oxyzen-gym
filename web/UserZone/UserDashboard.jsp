<%-- 
    Document   : Dashboard
    Created on : Jul 14, 2025, 5:07:28 PM
    Author     : pulki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css">

        <style>
            .box{
                min-height:200px;background: transparent;
                backdrop-filter: blur(10px);
                height: 200px;
                width: 150px;
                padding:2%;margin:4%;
                border-radius: 5px;
                box-shadow: 0px 0px 10px 0px white;
               color:white;font-weight: border;
               font-size: 30px;
              
              
            }
            h2
            {
                text-align:center;
                background: Solid white;
                font-weight:bold;
                
                
            }
        </style>
    </head>
    <body>
        <%@include file="UserHeader.jsp" %>
        <div class="row" >
            <div class="col-sm-12">
                <div class="col-sm-1"></div>
                <div class="col-sm-10" >
                    <h2 class="text text-denger text-capitalize" style="color:white; font-size: 45px;">User Dashboard</h2>
                    <hr style="background: maroon;height: 3px;">
                    <a href="MyProfile.jsp">
                        <div class="col-sm-3 box"> 
                            <div><span class="fa fa-user" style="font-size:100px;
                                       margin-left: 10px;
                                       margin-top: 10px;"></span></div>
                            <label style="font-size: 40px;"> MY PROFILE</label></div>
                    </a>
                   
                        <a href="membership.jsp">
                        <div class="col-sm-3 box">
                            <div><span class="fa-solid fa-id-card" style="font-size:100px;
                                       margin-left: 10px;
                                       margin-top: 10px;"></span></div>
                            <label style="font-size: 40px;"> GALLERY</label></div>
                    </a>
                    <a href="DietPlan.jsp">
                    <div class="col-sm-3 box">
                        <div><span class="fa fa-cutlery"  style="font-size:100px;
                                       margin-left: 10px;
                                       margin-top: 10px;"></span></div>
                            <label style="font-size: 40px;"> DIET PLAN</label></div>

                    </a>
                    <a href="ChangePassword.jsp">
                        <div class="col-sm-3 box">
                            <div><span class="fa fa-key" style="font-size:100px;
                                       margin-left: 10px;
                                       margin-top: 10px;"></span></div>
                            <label style="font-size: 25px;"> CHANGE PASSWORD</label></div>  
                    </a>
                    <a href="feedback.jsp">
                    <div class="col-sm-3 box">
                        <div><span class="fa fa-comment"  style="font-size:100px;
                                       margin-left: 10px;
                                       margin-top: 10px;"></span></div>
                            <label style="font-size: 40px;"> FEEDBACK</label></div>
                    </a>
                    <a href="complain.jsp">
                        <div class="col-sm-3 box">
                            <div><span class="fa fa-exclamation-triangle" style="font-size:100px;
                                       margin-left: 10px;
                                       margin-top: 10px;"></span></div>
                            <label style="font-size: 40px;"> COMPLAIN</label></div>          
                    </a>
                </div>
                <div class="col-sm-1"></div>
            </div>
        </div>
    </body>
</html>