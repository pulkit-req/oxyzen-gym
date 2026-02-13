<%-- 
    Document   : ChangePassword
    Created on : 14 Jul, 2025, 5:09:24 PM
    Author     : pulki
--%>

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
                  <div class="col-sm-4"></div>
                  <div class="col-sm-4">
                      <h3>Change password</h3>
                      <hr>
                      <form action="ChangePassword.jsp" method="post">
                          Enter old password
                          <input type="password" name="oldpass"class="form-control">
                          Enter new password
                          <input type="password" name="newpass"class="form-control">
                           Enter Confirm password
                          <input type="password" name="cpass"class="form-control">
                          <br>
                          <input type="submit" class="form-control btn-warning"
                                 value="Change Password"name="btnsave">
                      </form>
                  </div>
                      
              </div>
          </div>
    </body>
</html>
