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
        <style>
            .box{
                min-height:200px;background: teal;
                padding:4%;margin:2%;
                box-shadow: 0px 0px 10px 0px grey;
               color:white;font-weight: border;
               text-align: center;border-color:blue;
            }
            h2
            {
                text-align:center;
                background: Solid maroon;
                font-weight:bold;
            }
        </style>
    </head>
    <body>
        <%@include file="aheader.jsp" %>
        <div class="row">
            <div class="col-sm-12">
                <div class="col-sm-1"></div>
                <div class="col-sm-10">
                    <h2 class="text text-denger text-capitalize">Arcane Dashboard</h2>
                    <hr style="background: maroon;height: 3px;">
                    <a href="ChangePassword.jsp">
                    <div class="col-sm-3 box">Change Password</div>
                    </a>
                    <a href="Dashboard.jsp">
                        <div class="col-sm-3 box">Dashboard</div>
                    </a>
                    <a href="ViewRegister.jsp">
                    <div class="col-sm-3 box">view Register</div>
                    </a>
                    <a href="ViewLogin.jsp">
                    <div class="col-sm-3 box">View Login</div>
                    </a>
                    <a href="ViewContact.jsp">
                    <div class="col-sm-3 box">view Contact</div>
                    </a>
                    <a href="Contact.jsp">
                    <div class="col-sm-3 box">Contact</div>
                    </a>
                  <a href="Contact.jsp">
                    <div class="col-sm-3 box">Contact</div>
                    </a>
                    <a href="Contact.jsp">
                    <div class="col-sm-3 box">Contact</div>
                    </a>
                  
                    <a href="Contact.jsp">
                    <div class="col-sm-3 box">Contact</div>
                    </a>
                  
                  
                </div>
                <div class="col-sm-1"></div>
            </div>
        </div>
    </body>
</html>