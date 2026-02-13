<%-- 
    Document   : Viewcontact
    Created on : Jul 14, 2025, 5:07:56 PM
    Author     : pulki
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
                      View Enquiry Details Here
                      
                     </h2>
                  <table class="table table-respnosive" id="example"
                         <thead>
                          <tr>
                              <th>S.NO</th><th>Name</th><th>Email</th>
                              <th>Mobile</th><th>Message</th>
                              <th>Date</th><th>Action</th>
                              
                          </tr>
                      </thead>
                      <tbody>
                        <%
    DBManager db = new DBManager();
    ResultSet rs = db.DisplayRecord("SELECT * FROM contact");
    int sno = 1;   // start serial number from 1
    while(rs.next()){
%>
                                          <tr>
                      <td><%= sno++ %></td>
                      <td><%=rs.getString("name")%></td>
                      <td><%=rs.getString("email")%></td>
                      <td><%=rs.getString("mobile")%></td>
                      <td><%=rs.getString("msg")%></td>
                      <td><%=rs.getString("cdate")%></td>
                      <td>
                          <a href="update.jsp?up=<%=rs.getString("email")%>"class="btn btn-danger">Upadte</a>
                           <a href="delete.jsp?del=<%=rs.getString("email")%>"class="btn btn-info">Delete</a>
                      </td>
                  </tr>
                  <%
                  }
    
                     %>
                     
                      </tbody>
                  </table>
                  </div>
               
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