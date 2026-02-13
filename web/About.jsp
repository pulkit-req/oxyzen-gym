<%-- 
    Document   : About
    Created on : 24 Jul, 2025, 9:45:56 PM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
    <style>
    #capt
    {
      font-family:papyrus;
      font-size:30px;
      text-align: center;  
      color: yellow;
    }
    #para
    {
      font-family: Andale Mono, monospace;
      font-size: 20px;
      color: white;
      margin-left: 10px;
      margin-right: 100px;
      padding-left: 50px;
      padding-right: 50px;
      text-align: right;
      text-align: left;
    }
    #para1
    {
      font-family: Andale Mono, monospace;
      font-size: 20px;
      color: white;
      margin-left: 0px;
      margin-right: 50px;
      padding-left: 50px;
      padding-right: 50px;
      text-align: right;
      text-align: left;
    }
    
   </style>
    </head>
    <body >
        <%@include file="Header.jsp" %>
        <div class="row">
            <div class="col-sm-12 image">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
                <img src="images/img3.jpg" style="heigth:150px; width: 100%">
                </div>
                <div class="col-sm-2"></div>
            </div>
                <div class="col-sm-12">
                <h1 align="center" style="color: yellow; font-family: script bold italic;"><u>ABOUT THE GYM</u></h1>
                <div class="col-sm-12" id="capt"><b><u>Take care of your body,It's the only place you have to live.</b></u></div>
                </div>
               </div>
            <br>
            <div class="row">
            <div class="col-sm-12">
                <p id="para">At the GYM, our mission is to 
                        provide you with the ultimate fitness experience,once that
                       focuses on your specific fitness needs.Helps you achieve the
                       result and invigorates your soul. We guarantee the highest 
                       quality equipment and training programs available,an expert staff,
                       special amenities that are often not found in other health clubs,
                       attentive service and truly sophisticated surroundings. 
                    Our every fitness training center is committed to being a unique fitness training center in Noida.</p>
                <br>
                    <p id="para1">We believe in being different not merely for the sake of being dissimilar but,different by being the best in the fitness industry.
                        We set out with one simple and honest goal in mind to be sensitive to our members needs and fitness requirements.
                        Our ideology is to provide our members with the best fitness technologies and services that no others can provide.
                        We listen, we are sensitive to your needs, and most importantly,we thus know what you, as a GYM-goer, want.
                    </p></div>
            </div>
            
            <br>
            <%@include file="footer.jsp" %>
    </body>
</html>