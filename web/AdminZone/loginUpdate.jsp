<%@page import="java.sql.ResultSet"%>
<%@page import="MyPack.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Login</title>
</head>
<body>
<%@include file="aheader.jsp" %>

<div class="row">
    <div class="col-sm-12">
        <div class="col-sm-3"></div>
        <div class="col-sm-6 panel panel-body">
            <h3 class="text-center text-info">Update Login Details</h3>
            <hr>

            <%
                String userid = request.getParameter("up");
                DBManager db = new DBManager();
                String msg = "";

                // If form submitted
                if(request.getParameter("btnupdate") != null) {
                    String passwd = request.getParameter("txtpasswd");
                    String type = request.getParameter("txttype");

                    String updateCmd = "UPDATE login SET passwd='" + passwd + 
                                       "', type='" + type + 
                                       "' WHERE userid='" + userid + "'";

                    boolean result = db.MyInsertUpdateDelete(updateCmd);

                    if(result) {
                        msg = "Login details updated successfully!";
                        // Redirect back to view page
                        response.sendRedirect("viewLogin.jsp");
                    } else {
                        msg = "Update failed. Try again.";
                    }
                }

                // Fetch old values
                String selectCmd = "SELECT * FROM login WHERE userid='" + userid + "'";
                ResultSet rs = db.DisplayRecord(selectCmd);
                if(rs.next()) {
            %>

            <!-- Update Form -->
            <form method="post">
                <label>User ID</label>
                <input type="text" name="txtuserid" class="form-control" readonly 
                       value="<%= rs.getString("userid") %>">

                <label>Password</label>
                <input type="text" name="txtpasswd" class="form-control" 
                       value="<%= rs.getString("passwd") %>">

                <label>Type</label>
                <input type="text" name="txttype" class="form-control" 
                       value="<%= rs.getString("type") %>">

                <br>
                <input type="submit" name="btnupdate" value="Update" 
                       class="btn btn-success form-control">
            </form>

            <% } %>

            <p style="color:green"><%= msg %></p>
        </div>
        <div class="col-sm-3"></div>
    </div>
</div>

</body>
</html>
