<%@page import="java.sql.*"%>
<%@page import="MyPack.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Contact</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
<%@include file="aheader.jsp"%>

<div class="container mt-4">
    <div class="row justify-content-center">
        <div class="col-sm-6">
            <h3 class="text-primary text-center">Update Contact Details</h3>
            <hr>

            <%
                String status = "";
                String email = request.getParameter("up"); // coming from Viewcontact.jsp
                String action = request.getParameter("action"); // to detect form submit

                DBManager db = new DBManager();

                if("save".equals(action)) {
                    // Form submitted -> update
                    String name = request.getParameter("txtname");
                    String mobile = request.getParameter("txtmobile");
                    String msg = request.getParameter("txtmsg");

                    try {
                        String sql = "UPDATE contact SET "
                                   + "name='" + name + "', "
                                   + "mobile='" + mobile + "', "
                                   + "msg='" + msg + "' "
                                   + "WHERE email='" + email + "'";
                        boolean result = db.MyInsertUpdateDelete(sql);
                        if(result) {
                            status = "✅ Record updated successfully!";
                        } else {
                            status = "⚠️ Update failed. Record not found.";
                        }
                    } catch(Exception e) {
                        status = "❌ Error: " + e.getMessage();
                    }
                }

                // Always fetch record to show in form
                if(email != null && !email.trim().isEmpty()) {
                    try {
                        String sql2 = "SELECT * FROM contact WHERE email='" + email + "'";
                        ResultSet rs = db.DisplayRecord(sql2);
                        if(rs.next()) {
            %>

            <% if(!status.isEmpty()) { %>
                <div class="alert alert-info"><%=status%></div>
            <% } %>

            <!-- Update Form -->
            <form action="update.jsp" method="post">
                <input type="hidden" name="up" value="<%=rs.getString("email")%>">
                <input type="hidden" name="action" value="save">

                <div class="form-group">
                    <label>Name</label>
                    <input type="text" name="txtname" class="form-control" value="<%=rs.getString("name")%>">
                </div>
                <div class="form-group">
                    <label>Email</label>
                    <input type="text" name="txtemail" class="form-control" readonly value="<%=rs.getString("email")%>">
                </div>
                <div class="form-group">
                    <label>Mobile</label>
                    <input type="text" name="txtmobile" class="form-control" value="<%=rs.getString("mobile")%>">
                </div>
                <div class="form-group">
                    <label>Message</label>
                    <textarea name="txtmsg" class="form-control"><%=rs.getString("msg")%></textarea>
                </div>
                <br>
                <input type="submit" value="Update" class="btn btn-success w-100">
            </form>

            <%
                        } else {
                            out.print("<div class='alert alert-danger'>No record found!</div>");
                        }
                    } catch(Exception e) {
                        out.print("<div class='alert alert-danger'>Error: " + e.getMessage() + "</div>");
                    }
                } else {
                    out.print("<div class='alert alert-warning'>Email parameter missing.</div>");
                }
            %>

            <br>
            <a href="viewcontact.jsp" class="btn btn-primary w-100">Back to View</a>
        </div>
    </div>
</div>
</body>
</html>
