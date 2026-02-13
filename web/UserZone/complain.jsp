<%@page import="MyPack.DBManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
    String btn=request.getParameter("save");
    if(btn!=null)
    {
        String name=request.getParameter("txtname");
        String mobile=request.getParameter("txtmob");
        String msg=request.getParameter("message");
        SimpleDateFormat sm=new SimpleDateFormat();
        String dt=sm.format(new Date());
        
        String cmd="insert into complain(name,mobile,msg,cdate) values('"+name+"','"+mobile+"','"+msg+"','"+dt+"')";
        DBManager db=new DBManager();
        
        if(db.MyInsertUpdateDelete(cmd))
            out.print("<script>alert('Complain Submit successfully')</script>");
        else
            out.print("<script>alert('unable to Submit successfully')</script>");                  
    }
    %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #txt1{
                background-color: transparent; 
                color: white;
            }
            #txt1::placeholder{
                color: white
            }
            #txt2{
                background-color: transparent; 
                color: white;
            }
             #txt2::placeholder{
                color: white
            }
             #txt3{
                background-color: transparent; 
                color: white;
            }
            
             #txt3::placeholder{
                color: white
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
        0 0 80px white;">Complain Page</h3>
                   <br>
                   <form action="complain.jsp" method="post">
                       <input type="text" class="form-control"  name="txtname" id="txt1" 
                              placeholder="Enter Name" 
                              style="background-color: transparent; color: white;">
                       <br>
                       <input type="number" class="form-control" name="txtmob" id="txt2"
                              placeholder="Enter Number">
                       <br>
                       <textarea name="message"  class="form-control"
                                 id="txt3" placeholder="Enter Text"></textarea>
                       <br>
                       <input type="submit" class="form-control btn btn-danger" name="save" value="Submit">
                   </form>
               </div>
           </div>
       </div>
    </body>
</html>
