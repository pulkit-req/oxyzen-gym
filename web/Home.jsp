<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   
    <style>
            #content{
                padding:2%;
                box-shadow: 0px 0px 5px 0px lightgray
                
            }
            #content p{
                font-size: 20px;
            }
        </style>

        
    </head>
    <body >
       
         <%@include file="Header.jsp" %>
         <div class="row">
             <div class="col-sm-12">
             <div class="col-sm-6">
                 <h1 style="font-size: 60px; font-family: 'Anton', sans-serif;
                     color: #ffffff; margin-top: 20%"><strong>BEST PREMIUM GYM IN<br> LUCKNOW<br></strong></h1>
       
                 <p style="color:#ffffff; font-size: 20px">Start Your Fitness Journey With Oxyzen Gym With Cafe, Steam Rooms, Premium Equipments, Free Coffee, Best Trainers And Many More</p>
             </div>
                 <div class="col-sm-6">
                     <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
      <img src="images/img.jpg" alt="Chania" style="height:450px;width:100%" class="img img-responsive">
      <div class="carousel-caption">
        <h3>trademile machine</h3>
        <p>We Provide Best facilities to our customer</p>
      </div>
    </div>

    <div class="item">
      <img src="images/img2.jpg" alt="NO PAIN NO GAIN" style="height:450px;width:100%" class="img img-responsive">
      <div class="carousel-caption">
        <h3>Dumbles Stand</h3>
        <p>different type of weight is available</p>
      </div>
    </div>

    <div class="item">
      <img src="images/img3.jpg" alt="ITS GONA BE HARD BUT HARD DOES NOT MEAN IMPOSSIBLE" style="height:450px;width:100%" class="img img-responsive">
      <div class="carousel-caption">
        <h3>Best Equipment</h3>
        <p>Advanced level Equipment are Available</p>
      </div>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right"></span>
    <span class="sr-only">Next</span>
  </a>
</div>
                 </div>
         </div>
    </div>
         <div class="row">
             <div class="col-sm-12"></div>
         </div>
         <div class="row">
             <div class="col-sm-12">
                 <img src="images/img4.png" style="height: 350px; width: 100%; margin-top: 50px; margin-bottom: 50px;">
             </div> 
         </div>
         <div class="row">
             <div class="col-sm-12">
                 <div class="col-sm-5">
                     <h3 style="color: yellow; font-size:45px; margin-left: 30px;">
                         <strong>ABOUT US</strong></h3>
                     <h2 style="color: white; margin-left: 30px;">
                         <strong>WELCOME TO OXYZEN GYM</strong></h2>
                      <h3 style="color: yellow; font-size:20px; margin-left: 35px;">
                          <strong>Best Premium Fitness Gym In Lucknow</strong></h3><br>
                     <p style="color:#ffffff; margin-left:30px; font-size: 20px; ">At the GYM, our mission is to provide you with the
                         ultimate fitness experience,once that focuses on your
                         specific fitness needs. Helps you achieve the result and 
                         invigorates your soul. We guarantee the highest quality 
                         equipment and training programs available,an expert staff,
                         special amenities that are often not found in other health 
                         clubs, attentive service and truly sophisticated surroundings.
                         Our every fitness training center is committed to
                         being a unique fitness training center in Lucknow.
</p>
                 </div>
             </div>
         </div>
                 
       
        

        <%@include file="footer.jsp" %>
    </body>
</html>