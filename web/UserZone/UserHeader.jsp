<style>
    #MyNavbar ul li a{
        color:white;
    }
    .navbar{
        backdrop-filter: blur(10px);
    }
   body{
                margin: 0;
    padding: 0;
    height: 100vh;
    background-image: url('images/ubg.jpg');
    background-size: cover;        
    background-repeat: no-repeat; 
    background-position: center; 
  background-attachment: fixed;
            }
</style>

<link href="../css/bootstrap.min.css" rel="stylesheet">
<link href="../css/font-awesome.min.css" rel="stylesheet">
<script src="../js/jquery.js"></script>
<script src="../js/bootstrap.min.js"></script>
<div class="container-fluid"> 
    
       <!--code for navbar-->
        <div class="row">
            <nav class="navbar" style="background:transparent ;border-bottom: 2px solid white;"> 
             <div class="container-fluid">
                 <div class="navbar-header">
  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#MyNavbar">
  </button>
      <span class="icon-bar"></span>  
       <span class="icon-bar"></span>  
        <span class="icon-bar"></span>            
                 </div>
                 <div class="collapse navbar-collapse" id="MyNavbar">
                     <ul class="nav navbar-nav">
                         <li>
                             <a href="UserDashboard.jsp">User Dashboard</a>
                         </li>
                         <li>
                             <a href="MyProfile.jsp">My Profile</a>
                         </li>
                        
                         <li>
                             <a href="ChangePassword.jsp">Change Password</a>
                         </li>
                           <li>
                             <a href="membership.jsp">Membership</a>
                         </li>
                         <li> 
                             <a href="complain.jsp">Complain</a>
                         </li>
                         
                         
                         <li>
                             <a href="feedback.jsp">Feedback</a> 
                         </li>  
                          <li>
                             <a href="Logout.jsp">Logout</a>
                         </li>
                       
                     </ul>
                        
                 </div>
        </div>
        </div>
        </nav>
        </div>
        
        <!--end code for navbar--->
            
            </div
        </div>
    </div>