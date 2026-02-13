<%@page import="java.sql.ResultSet"%>
<%@page import="MyPack.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    boolean updated = false;
    String errorMsg = null;

    // Handle form submit (POST)
    if ("POST".equalsIgnoreCase(request.getMethod()) && request.getParameter("btnupdate") != null) {
        String emailHidden = request.getParameter("emailHidden"); // unique key
        String name   = request.getParameter("name");
        String mobile = request.getParameter("mobile");
        String addr   = request.getParameter("add");
        String gen    = request.getParameter("gen");
        String pass   = request.getParameter("pass");

        try {
            DBManager db = new DBManager();
            String sql = "UPDATE register SET "
                       + "name='" + name + "', "
                       + "mobile='" + mobile + "', "
                       + "`add`='" + addr + "', "
                       + "gen='" + gen + "', "
                       + "pass='" + pass + "' "
                       + "WHERE email='" + emailHidden + "'";

            updated = db.MyInsertUpdateDelete(sql);

            if (updated) {
%>
                <script>
                    alert("Data updated successfully!");
                    window.location.href = "viewRegister.jsp";
                </script>
<%
            } else {
                errorMsg = "Update failed. Please check if the email exists.";
            }
        } catch (Exception e) {
            errorMsg = "Error: " + e.getMessage();
        }
    }
%>

<!DOCTYPE html>
<html>
<head>
    <title>Update Registration</title>
    <link rel="stylesheet"
          href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<%@include file="aheader.jsp" %>

<div class="container">
    <h2 class="text-danger text-uppercase">Update Registration</h2>

    <%
        // Show form only if not updated
        if (!updated) {
            String emailKey = request.getParameter("up");
            if (emailKey != null) {
                DBManager db = new DBManager();
                ResultSet rs = db.DisplayRecord("SELECT * FROM register WHERE email='" + emailKey + "'");
                if (rs.next()) {
    %>
    <form method="post" action="RegUpdate.jsp">
        <div class="form-group">
            <label>Name</label>
            <input type="text" name="name" class="form-control" value="<%= rs.getString("name") %>" required>
        </div>

        <div class="form-group">
            <label>Email (not editable)</label>
            <input type="email" class="form-control" value="<%= rs.getString("email") %>" disabled>
            <input type="hidden" name="emailHidden" value="<%= rs.getString("email") %>">
        </div>

        <div class="form-group">
            <label>Mobile</label>
            <input type="text" name="mobile" class="form-control" value="<%= rs.getString("mobile") %>" required>
        </div>

        <div class="form-group">
            <label>Address</label>
            <input type="text" name="add" class="form-control" value="<%= rs.getString("add") %>" required>
        </div>

        <div class="form-group">
            <label>Gender</label>
            <select name="gen" class="form-control">
                <option <%= "Male".equalsIgnoreCase(rs.getString("gen")) ? "selected" : "" %>>Male</option>
                <option <%= "Female".equalsIgnoreCase(rs.getString("gen")) ? "selected" : "" %>>Female</option>
                <option <%= "Other".equalsIgnoreCase(rs.getString("gen")) ? "selected" : "" %>>Other</option>
            </select>
        </div>

        <div class="form-group">
            <label>Password</label>
            <input type="text" name="pass" class="form-control" value="<%= rs.getString("pass") %>" required>
        </div>

        <button type="submit" name="btnupdate" class="btn btn-success">Update</button>
        <a href="viewRegister.jsp" class="btn btn-default">Cancel</a>
    </form>

    <%
                } else {
    %>
        <div class="alert alert-danger">No record found for email <%= emailKey %></div>
    <%
                }
            } else {
    %>
        <div class="alert alert-warning">No email provided for update (?up=email)</div>
    <%
            }
        }
        if (errorMsg != null) {
    %>
        <div class="alert alert-danger"><%= errorMsg %></div>
    <%
        }
    %>
</div>
</body>
</html>
