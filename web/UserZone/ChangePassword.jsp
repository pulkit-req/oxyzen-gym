<%@page import="MyPack.DBManager"%>
<%
    String id=request.getParameter("btnsave");
    if(id!=null){
        String sid=session.getAttribute("uid")+"";
        String op=request.getParameter("oldpass");
        String np=request.getParameter("newpass");
        String cp=request.getParameter("cpass");
        if(cp.equals(np))
        {
            String cmd="update login set passwd='"+np+"'where userid='"+sid+"' and passwd='"+op+"'";
            DBManager db=new DBManager();
            if(db.MyInsertUpdateDelete(cmd))
                out.print("<script>alert('Password changed')</script>");
            else
                out.print("<script>alert('unable to changed')</script>");
        }
        else
        {
            out.print("<script>alert('New password and confirm password not match')</script>");
        }
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%@include file="UserHeader.jsp" %>
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
