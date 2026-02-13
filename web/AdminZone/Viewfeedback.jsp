<%-- 
    Document   : ViewContact
    Created on : Jul 14, 2025, 5:08:02 PM
    Author     : ACER
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="MyPack.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/akash.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="aheader.jsp" %>
        <div class="row">
            <div class="col-sm-12">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
    <h2 class="text text-danger text-uppercase">
                       View Enquiry Details Here
                    </h2>
 <table class="table table-responsive" id="example">
     <thead style="background: goldenrod;color:white">
         <tr>
             <th>Userid</th><th>Rate</th><th>Message</th>
             <th>Date</th><th>Action</th>
         </tr>
     </thead>
     <tbody>
         <%
         String cmd="select * from feedback";
         DBManager db=new DBManager();
         ResultSet rs=db.DisplayRecord(cmd);
         while(rs.next())
         {
             %>
             <tr>
                 <td><%=rs.getString("userid")%></td>
              <td><%=rs.getString("rate")%></td>  
               <td><%=rs.getString("msg")%></td>
                <td><%=rs.getString("fdate")%></td>
                 
                  <td>
 <a href="Update.jsp?up=<%=rs.getString("userid")%>" class="btn btn-danger">Update</a>
<a href="Delete.jsp?del=<%=rs.getString("userid")%>" class="btn btn-info">Delete</a>
                  </td>
             </tr>
         <%
         }
         %>
     </tbody>
                    </table>
                </div>
                <div class="col-sm-2"></div>
            </div>
        </div>
     
     <script src="../js/jquery.js"></script>
    
    <script src="../js/akash.js"></script>
    <script>
        $(document).ready(function(){
          $("#example").DataTable();  
        })
    </script>
    </body>
    
</html>