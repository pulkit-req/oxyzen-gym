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
    </head>
    <body>
        <%@include file="aheader.jsp" %>
        <div class="row">
            <div class="col-sm-12">
                <div class="col-sm-2"></div>
                <div class="col-sm-8">
    <h2 class="text text-danger text-uppercase">
                       View Registration Details Here
                    </h2>
 <table class="table table-responsive" id="example">
     <thead style="background: goldenrod;color:white">
         <tr>
             <th>Name</th><th>Email</th><th>Mobile</th><th>Address</th><th>Gender</th><th>Password</th>
             <th>Date</th><th>Action</th>
         </tr>
     </thead>
     <tbody>
         <%
         String cmd="select * from register";
         DBManager db=new DBManager();
         ResultSet rs=db.DisplayRecord(cmd);
         while(rs.next())
         {
             %>
             <tr>
                 <td><%=rs.getString("name")%></td>
              <td><%=rs.getString("email")%></td>  
               <td><%=rs.getString("mobile")%></td>
               <td><%=rs.getString("add")%></td>
               <td><%=rs.getString("gen")%></td>
               <td><%=rs.getString("pass")%></td>
                <td><%=rs.getString("rdate")%></td>
                
                  <td>
 <a href="RegUpdate.jsp?up=<%=rs.getString("email")%>" class="btn btn-danger">Update</a>
<a href="Regdelete.jsp?del=<%=rs.getString("name")%>" class="btn btn-info">Delete</a>
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
    </body>
</html>