<%-- 
    Document   : Gallery
    Created on : 8 Jul, 2025, 6:31:02 PM
    Author     : pulki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            img.hover{
                -webkit-transform:scaleX(-1);
                transform: scaleX(-2);
                
               
            }
          
        </style>
    </head>
    <body>
       <%@include file="Header.jsp"%>
       
       <div class="row">
           <div class="col-sm-12" >
               <div class="col-sm-3"  >
                   <a href="images/gal1.webp">
                   <img src="images/gal1.webp"  style="width:300px;height:300px; border:10px solid yellow; margin: 10%">
                   </a>
               </div>
               <div class="col-sm-3">
                   <a href="images/gal2.webp">
                   <img src="images/gal2.webp" style="width:300px;height:300px;border:10px solid yellow; margin: 10%;">
                   </a>
               </div>
               <div class="col-sm-3">
                   <a href="images/gal3.webp">
                   <img src="images/gal3.webp"  style="width:300px;height:300px;border:10px solid yellow; margin: 10%;">
                   </a>
               </div>
               <div class="col-sm-3">
                   <a href="images/gal4.webp">
                   <img src="images/gal4.webp" style="width:300px;height:300px;border:10px solid yellow; margin: 10%;">
                   </a>
               </div>
           </div>
       </div>
       <br>
       <div class="row">
           <div class="col-sm-12" >
               <div class="col-sm-3"  >
                   <a href="images/gal5.jpg">
                   <img src="images/gal5.jpg"  style="width:300px;height:300px; border:10px solid yellow; margin: 10%">
                   </a>
               </div>
               <div class="col-sm-3">
                   <a href="images/gal6.webp">
                   <img src="images/gal6.webp" style="width:300px;height:300px;border:10px solid yellow; margin: 10%;">
                   </a>
               </div>
               <div class="col-sm-3">
                   <a href="images/gal7.webp">
                   <img src="images/gal7.webp"  style="width:300px;height:300px;border:10px solid yellow; margin: 10%;">
                   </a>
               </div>
               <div class="col-sm-3">
                   <a href="images/gal8.webp">
                   <img src="images/gal8.webp" style="width:300px;height:300px;border:10px solid yellow; margin: 10%;">
                   </a>
               </div>
           </div>
       </div>
       <br>
       <div class="row">
           <div class="col-sm-12" >
               <div class="col-sm-3"  >
                   <a href="images/gal9.webp">
                   <img src="images/gal9.webp"  style="width:300px;height:300px; border:10px solid yellow; margin: 10%">
                   </a>
               </div>
               <div class="col-sm-3">
                   <a href="images/gal10.webp">
                   <img src="images/gal10.webp" style="width:300px;height:300px;border:10px solid yellow; margin: 10%;">
                   </a>
               </div>
               <div class="col-sm-3">
                   <a href="images/gal11.webp">
                   <img src="images/gal11.webp"  style="width:300px;height:300px;border:10px solid yellow; margin: 10%;">
                   </a>
               </div>
               <div class="col-sm-3">
                   <a href="images/gal12.jpg">
                   <img src="images/gal12.jpg" style="width:300px;height:300px;border:10px solid yellow; margin: 10%;">
                   </a>
               </div>
           </div>
       </div>
       
        <%@include file="footer.jsp" %>
    </body>
</html>