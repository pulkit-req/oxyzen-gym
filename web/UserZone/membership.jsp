<%@page import="MyPack.DBManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
    String btn=request.getParameter("save");
    if(btn!=null)
    {
        String name=request.getParameter("txtname");
        String email=request.getParameter("txtemail");
        String mob=request.getParameter("txtmob");
        String plan=request.getParameter("plan");
        SimpleDateFormat sm=new SimpleDateFormat();
        String dt=sm.format(new Date());
        
        String cmd="insert into membership(name,email,mobile,plan,mdate) values('"+name+"','"+email+"','"+mob+"','"+plan+"','"+dt+"')";
        DBManager db=new DBManager();
        
        if(db.MyInsertUpdateDelete(cmd))
            out.print("<script>alert('MemberShip successfull')</script>");
        else
            out.print("<script>alert('MenberShip Failed')</script>");                  
    }
    %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #txt1::placeholder{
                color:white;
            }
            </style>
            
    </head>
    <body>
       <%@include file="UserHeader.jsp" %>
       <div class="row">
           <div class="col-sm-12">
               <div class="col-sm-4"></div>
               <div class="col-sm-4 panel panel-body" style="background-color: transparent;
                     box-shadow:  0 0 5px white,
        0 0 10px white,
        0 0 20px white,
        0 0 40px white,
        0 0 80px white;
        border-radius: 10px;
        margin: 2%;padding: 2.5% ; backdrop-filter:blur(5px);">
                   <h3 style="color:black; font-size: 40px; text-align: center;
                       text-shadow:                      
        0 0 5px white,
        0 0 10px white,
        0 0 20px white,
        0 0 40px white,
        0 0 80px white;">Join Us</h3>
                   <br>
                   <form action="membership.jsp" method="post">
                       <input type="text" class="form-control"  name="txtname" id="txt1" 
                              placeholder="Enter Name" 
                             style=" color:white; background-color: transparent;">
                       <br>
                       <input type="text" class="form-control" name="txtemail" style=" color:white; background-color: transparent;"
                              id="txt1" placeholder="Enter Email">
                       <br>
                       <input type="number" class="form-control" name="txtmob" style=" color:white; background-color: transparent;"
                            id="txt1"  placeholder="Enter Mobile Number">
                       <br>
                        <select name="plan" class="form-control" required style=" color:white; background-color: transparent;">
                            <option value="" style="color:black" disabled selected>Select Plan</option>
                            <option value="Monthly" style="color:black">Monthly - ₹999</option>
                            <option value="Quarterly" style="color:black">Quarterly - ₹2499</option>
                            <option value="Yearly" style="color:black">Yearly - ₹7999</option>
    </select>
                       <br>
                       <input type="submit" class="form-control btn btn-danger" name="save" value="Submit">
                   </form>
               </div>
           </div>
       </div>
    </body>
</html>
