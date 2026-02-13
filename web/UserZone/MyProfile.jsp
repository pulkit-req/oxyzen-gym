<%@page import="MyPack.DBManager"%>
<%@page import="java.sql.ResultSet"%>
<%
String btn=request.getParameter("btnsave");
String ses=request.getParameter("uid")+"";
if(btn!=null)
{
    String name=request.getParameter("txtname");
     String email=request.getParameter("txtemail");
     String mobile=request.getParameter("txtmobile");
      String add=request.getParameter("txtadd");
      
     
 String cmd="update register set name='"+name+"',mobile='"+mobile+"',add='"+add+"', where email='"+email+"'";
    DBManager db1=new DBManager();
     if(db1.MyInsertUpdateDelete(cmd))
          out.print("<script>alert('Record Updated')</script>");
     else
         out.print("<script>alert('unable to update')</script>");
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .label{
               
                color: white;
                
            }
        </style>
        <script>
            function check()
            {
                txtemail.readOnly=true;
               
            }
        </script>
    </head>
    <body onload="check()">
        <%@include file="UserHeader.jsp" %>
        <div class="row">
            <div class="col-sm-12">
                <div class="col-sm-4"></div>
                <div class="col-sm-4" style="border: 3px solid blue;
                     box-shadow:  0 0 5px white,
        0 0 10px white,
        0 0 20px white,
        0 0 40px white,
        0 0 80px white;
        border-radius: 10px;
        backdrop-filter: blur(5px);
                    margin: 2%;padding: 4%">
                    <h3 style="color:white; text-align: center; text-transform: uppercase; font-size: 30px;
                        text-shadow:0 0 10px blue,
        0 0 20px blue,
        0 0 40px blue,
        0 0 80px blue; ">My Profile Panel</h3>
        <hr style="background: teal;height: 3px">
        
            <%
String id=session.getAttribute("uid")+"";
String cmd="select * from register where email='"+id+"'";
DBManager db=new DBManager();
ResultSet rs=db.DisplayRecord(cmd);
if(rs.next())
{
%>
            
        <form action="MyProfile.jsp" method="post">
            <label class=" label" style=" font-size: 20px;">Your Name </label>
            <input type="text" value="<%=rs.getString("name")%>" class="form-control" name="txtname"><br>
             <label class=" label" style=" font-size: 20px;">Your Email </label>
             <input type="text" value="<%=rs.getString("email")%>" id="txtemail" class="form-control" name="txtemail"><br>
             <label class=" label" style=" font-size: 20px;">Your Mobile Number</label>
             <input type="text" class="form-control" name="txtmobile" value="<%=rs.getString("mobile")%>"><br>
             <label class=" label" style=" font-size: 20px;"> Address</label>
             <input type="text" class="form-control" name="txtadd" value="<%=rs.getString("add")%>"><br>
             <label class=" label" style=" font-size: 20px;">Your Gender</label>
             <input type="text" class="form-control" name="txtgender" value="<%=rs.getString("gen")%>"><br>
             <br>
       
             <input type="submit" class="btn btn-success" value="Update" name="btnsave">
        </form>
             <%
}
%> 
        
                </div>
                <div class="col-sm-4"></div>
            </div>
        </div>
    </body>
</html>