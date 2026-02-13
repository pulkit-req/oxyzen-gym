<%-- 
    Document   : DietPlan
    Created on : 23 Aug, 2025, 5:42:01 PM
    Author     : pulki
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #dietplan{
              background-color: greenyellow;
              color: #1A1A1A;
              font-size: 30px;
               font-weight: bold;
             border: none;
             border-radius: 5px;
              text-align: center;
              height: 50px;
            }
            #heading{
               color: white;
                text-align: center;
                font-size: 70px;
                 font-weight: bold;
            }
            .article-banner__image{
                text-align: center;
              
            }
            #para1{
                margin-top: 6rem;
                margin-left: 3rem;
                color: #f59e42;
                font-size: 20px;
                font-weight: normal;
                text-transform: capitalize;
            }
            #para2{
                margin-left: 3rem;
                color:#f59e42;
                font-size: 20px;
                font-weight: normal;
                text-transform: capitalize;
            }
             #day{
                margin-left: 3rem;
                color:#fcd703;
                font-size: 25px;
                font-weight: normal;
                text-transform: capitalize;
            }
            .all-heading{
                margin-left: 3rem;
                color: rgb(252, 157, 3);
                font-size: 25px;
                font-weight: bold;
                text-transform: capitalize;
            }
        </style>
    </head>
    <body>
          <%@include file="UserHeader.jsp" %>
          <div class="row">
              <div class="col-sm-12">
                   <div class="col-sm-5"></div>
              <div class="col-sm-2" id="dietplan">Diet Plan</div>
              <div class="col-sm-5"></div>
              </div>
          </div>
          <h1 id="heading" >Diet For Gym Beginners </h1>
          <div class="article-banner__image">
              <img src="images/diet.webp" style="height: 550px; width: 70%;">          
          </div>
          <p id="para1">When you start your fitness journey, 
              it is important to understand that your body is fueled by the nutrition you provide.
              That’s why we cannot stress enough the importance of a healthy and balanced diet.
              Whether you want to gain muscle mass, lose weight, or maintain your fitness, 
              it can all be achieved with the right gym diet. 
              This blog discusses what foods you should add to your diet 
              and a specific gym diet plan for beginners.</p>
          <br>
          <h1 style=" text-transform: uppercase; color:red;margin-left: 3rem;font-weight: bold;
            ">Foods You Should Add To Your Diet Plan</h1>
       
          <p id="para2">As a beginner, you should be very mindful of your diet. 
              Let’s discuss what foods you should incorporate into your gym diet:</p>
          <br>
          <h2 class="all-heading">Carbohydrates</h2>
          <p id="para2">It's a common misconception that to improve health or lose weight, 
              one must eliminate carbohydrates. This is not the case. 
              Carbohydrates are the primary source of sustained energy for your bodies.<br><br>
               They come in two forms – simple and complex. Complex carbs, 
                while taking longer to digest, provide a steady release of energy.
                 To determine the best carbohydrate sources for your needs, 
                     consult with your dietician and trainer.</p>
          <br>
  
           <h2 class="all-heading">Proteins</h2>
           <br>
           <p id="para2">Proteins, a vital component of your diet, are especially important for engaging in regular
               workouts or gym sessions.
               While natural foods like dairy products, eggs, and chicken can provide your daily protein
               intake, intense workouts require high quality protein for muscle building, 
               reducing fatigue and muscle soreness, and enhancing strength and stamina.
               <br>
               <br>
           To ensure you're meeting these needs,
           consider incorporating premium quality GNC whey protein supplements into your routine.</p>
           <br>
           <h2 class="all-heading">Fats</h2>
           <br>
           <p id="para2">Fats are often misunderstood as the main cause of weight gain. However, this is a myth. When consumed in the right quantity, healthy fats can be beneficial for your body. They aid in the proper absorption and transportation of nutrients, contributing to overall health.
               To learn which healthy fats are suitable for your fitness routine, consult with your dietician.</p>
               <br>
               <h1 style=" text-transform: uppercase; color:red;margin-left: 3rem;font-weight: bold;
            ">Best Foods For Gym Beginners</h1>
               <br>
                <p id="para2">Many beginner-level fitness enthusiasts and gym goers get confused about what pre 
                    and post-workout foods they should have. Focus on 
                    carbohydrates as all pre-workout meals or snacks 
                    to give the body energy to last the full session</p>
               <br>
               <br>
               <p id="para2">Try to eat simple carbs instead of complex carbs before your workouts. And it is advisable to eat complex carbs at least 2 hours before you work out. 
                   You can also include GNC pre-workout supplements in your routine. 
                   Some of the best pre-workout foods are:</p>
               <br>
               <ul id="para2">
                 <li>Cereal and granola</li>
                 <li>Bananas</li>
                 <li>Yogurt with fruits and nuts</li>
                   <li>Pre-workout smoothie</li>
                  <li>Oatmeal</li>
                    </ul>
               <br>
               <br>
               <p id="para2">Once your workout is done, you need to focus on
                   recovery and reduce muscle breakdown and soreness. Providing the right nutrition will help achieve all these fitness goals.
                   One of the best post-workout foods is a whey protein supplement.</p>
               
               <br>
               <br>
               <p id="para2">You can have it within 30 minutes
                   of completing your workout. Some of 
                   the other foods that you can have post workouts are:</p>
               <br>
               <br>
                <ul id="para2">
                 <li>Whole grain toast with peanut butter</li>
                 <li>Apple with peanut butter</li>
                 <li>Whole grain toast with avocado</li>
                   <li>Whey protein smoothies</li>
                 </ul>
               <br>
                <h1 style=" text-transform: uppercase; color:red;margin-left: 3rem;font-weight: bold;
            ">7-Day Diet For Gym Beginners</h1>
              
                <p id="para2">You can have it within 30 minutes
                   of completing your workout. Some of 
                   the other foods that you can have post workouts are:</p>
                <br>
                <p id="day"><strong>Day 1</strong></p>
                 <ul id="para2">
                     <li>Breakfast<br>
Oats and banana pancakes + protein shake</li>
                     <li>Lunch<br>
1 bowl salad + 2 multigrain rotis + Spinach and chicken/ paneer curry</li>
                     <li>Pre-Workout Snack<br>
2 bananas</li>
                     <li>Dinner<br>
1 cup sprouts salad + 1 cup brown rice + 1 cup peas and paneer curry</li>
                 </ul>
                 <p id="day"><strong>Day 2</strong></p>
                  <ul id="para2">
                      <li>Breakfast<br>
Oats with Greek yogurt and seasonal fruits</li>
                      <li>Lunch<br>
1 bowl salad + 2 multigrain rotis + 1 cup fish curry/ vegetable curry</li>
                      <li>Pre-Workout Snack<br>
Avocado with multigrain toast</li>
                      <li>Dinner<br>
1 bowl salad + Daliya with vegetables</li>
                 </ul>
                    <p id="day"><strong>Day 3</strong></p>
                <ul id="para2">
                      <li>
                          Breakfast<br>
2 multigrain toasts + 2 boiled eggs + protein shake</li>
                      <li>Lunch<br>
1 bowl salad + quinoa upma + grilled chicken</li>
                      <li>Pre-Workout Snack<br>
Mixed nuts and dry fruits + fruit of choice</li>
                      <li>Dinner<br>
1 bowl salad + 1 cup brown rice + 1 cup vegetable/ chicken curry + 1 cup cucumber raita</li>
                 </ul>
                      <p id="day"><strong>Day 4</strong></p>
                      <ul id="para2">
                          <li> Breakfast<br>
Oatmeal with honey and nuts + 1 glass of fresh fruits/ vegetable juice</li>
                          <li>Lunch<br>
1 bowl salad + grilled chicken + 2 wholegrain toasts</li>
                          <li>Pre-Workout Snack<br>
Whole grain toast with peanut butter</li>
                          <li>Dinner<br>
1 bowl salad + 1 cup brown rice + 1 cup methi chicken/ paneer</li>
                 </ul>
                        <p id="day"><strong>Day 5</strong></p>
                      <ul id="para2">
                          <li>
                              Breakfast<br>
2 wholegrain toasts + 2 scrambled eggs + whey protein shake/ smoothie </li>
                          <li>Lunch<br>
1 bowl salad + Grilled chicken/ paneer and vegetables chapati rolls</li>
                          <li>Pre-Workout Snack<br>
2 bananas</li>
                          <li>Dinner<br>
1 bowl sprouts salad + Chicken/ vegetables stir fry</li>
                 </ul>
                            <p id="day"><strong>Day 6</strong></p>
                      <ul id="para2">
                          <li>Breakfast<br>
Oatmeal with skimmed milk, nuts, and fruits </li>
                          <li>Lunch<br>
1 bowl vegetable salad + Whole grain chicken/ paneer wraps</li>
                          <li>Pre-Workout Snack<br>
Apple with peanut butter</li>
                          <li>Dinner<br>
1 cup boiled sweet potato + 1 cup brown rice pulao + 1 cup salad</li>
                 </ul>
                            <p id="day"><strong>Day 7</strong></p>
                      <ul id="para2">
                          <li>Breakfast<br>
2 wholegrain toasts with avocado spread + whey protein smoothie </li>
                          <li>Lunch<br>
1 bowl salad + 1 cup whole wheat pasta</li>
                          <li>Pre-Workout Snack<br>
Granola bar or cereal</li>
                          <li>Dinner<br>
1 cup Peas and broccoli salad + 1 cup brown rice pulao</li>
                 </ul>
                            <h1 style=" text-transform: uppercase; color:red;margin-left: 3rem;font-weight: bold;
            ">Dos & Don'ts of Nutrition For Gym Beginners</h1>
                            <p id="para2">If you're a novice at the gym, there are several nutrition rules you should abide by.</p>
                        
                <ul id="para2">
                          <li>Keep yourself hydrated and drink at least 8 – 10 glasses of water a day </li>
                          <li>Cut down aerated drinks and packaged juices from your diet</li>
                          <li>Consume all three macros – carbohydrates, proteins, and fats</li>
                          <li>Add a source of protein to all three meals of your day</li>
                          <li>Do not skip breakfast or workout on an empty stomach in the morning</li>
                          <li>Don't eat complex carbs too close to the time of your workout</li>
                          <li>Cut down on alcohol and smoking and reduce stress as much as possible</li>
                 </ul>
    

               
    </body>
</html>
