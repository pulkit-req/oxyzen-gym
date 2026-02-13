<%@page import="java.sql.ResultSet"%>
<%@page import="MyPack.DBManager"%>
<%@page import="MyPack.CaptchaCodeManager"%>
<%
CaptchaCodeManager cg=new CaptchaCodeManager();
String cp=cg.CaptchaCode();
%>
<%
String btn=request.getParameter("btnlogin");
if(btn!=null)
{
    String userid=request.getParameter("txtid");
    String pass=request.getParameter("txtpass");
    String cph=request.getParameter("txtcph");
  String captcha=request.getParameter("txtcaptcha");
  if(cph.equals(captcha))
  {
      String cmd="select * from login where userid='"+userid+"' and passwd='"+pass+"'";
      DBManager db=new DBManager();
      ResultSet rs=db.DisplayRecord(cmd);
      if(rs.next())
      {
          String type=rs.getString("type");
          if(type.equals("utype"))
          {
              session.setAttribute("uid",userid);
response.sendRedirect("UserZone/UserDashboard.jsp");
          }
          else if(type.equals("admin"))
          {
    session.setAttribute("aid",userid);
response.sendRedirect("AdminZone/Dashboard.jsp");               }
          else
          {
out.print("<script>alert('invalid type')</script>");
          }
      }
      else
      out.print("<script>alert('Invalid userid and password')</script>");
  }    
  
  else
  {
  out.print("<script>alert('Captcha code not match')</script>");
  }
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #txt1::placeholder
            {
                color: white;
            }
             #txt2::placeholder
            {
                color: white;
            }
             #txt3::placeholder
            {
                color: white;
            }
        </style>
    </head>
    
    <body>
    <%@include file="Header.jsp" %>
    <div class="row">
        <div class="col-sm-12">
            <div class="col-sm-4"></div>
            <div class="col-sm-4 panel panel-body"
                 style="padding:2%;margin: 2%;border: 3px solid blue;
                     box-shadow:  0 0 5px white,
        0 0 10px white,
        0 0 20px white,
        0 0 40px white,
        0 0 80px white;
        border-radius: 10px;
        backdrop-filter: blur(5px);
                     background-color: transparent;">
                <h3 style="color: white;  text-align: center;
                    font-size: 35px;
                    
        font-family: monospace">Login Panel Here
                    <span class="fa fa-spin" style="font-size: 40px;color:teal"></span>
                </h3>
                <br>
          <form action="login.jsp" method="post">
              
              <input type="text" class="form-control"  name="txtid" id="txt1" placeholder="Enter UserId" style="background-color: transparent; color: white;">
              <br>
              <input type="password" class="form-control" name="txtpass" id="txt2" placeholder="Enter Password" style="background-color: transparent; color: white;">
              <br>
              <div class="col-sm-12" style="padding:0px">
                  <div class="col-sm-3" style="padding:0px">
                      <br>       
                      <input type="text" class="form-control" name="txtcph" value="<%=cp%>" value="<%=cp%> " readonly="readonly" style="background-color: transparent; color: white">
                  </div>
                  <div class="col-sm-2" style="margin-top: 5%;">
                      <span class="fa fa-refresh" style="font-size: 40px; cursor: pointer" id="sprefesh"></span>
                  </div>
      <div class="col-sm-7" style="padding:0px">
          <br>      
          <input type="text" class="form-control" name="txtcaptcha" id="txt3" placeholder="Enter Captcha" style="background-color: transparent; color: white;">
                      
                      
                  </div>
              </div>
                  
                    <input type="submit" class="btn btn-danger" name="btnlogin" value="Login Now" style="margin-top: 3%">
<a href="Registration.jsp" style="margin-left: 4%; color: #104b82">
                      Create New Account
                  </a>
          </form>
            </div>
            <div class="col-sm-4"></div>
        </div>
    </div>
                  <script>
                     $(document).ready(function(){
                         $("#sprefesh").click(function(){
                             $.ajax({
                                 type:"Post",
                                 url:"Refresh.jsp",
                                 success:function(data)
                                 {
                                     $("input[name='txtcph']").val(data);
                                 }
                             })
                         })
                     })
                     </script>
    </body>
</html>