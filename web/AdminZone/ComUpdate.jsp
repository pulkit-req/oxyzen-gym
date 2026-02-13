<%@page import="java.sql.ResultSet"%>
<%@page import="MyPack.DBManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Update Complain</title>
</head>
<body>
<%@include file="aheader.jsp" %>

<%
    String name = request.getParameter("up");  // complain primary identifier
    DBManager db = new DBManager();
    String msg = "", mobile = "", cdate = "";

    // When form is submitted
    if(request.getParameter("update") != null) {
        String newMobile = request.getParameter("mobile");
        String newMsg    = request.getParameter("msg");
        String newDate   = request.getParameter("cdate");

        String updateQuery = "UPDATE complain SET mobile='" + newMobile +
                             "', msg='" + newMsg + "', cdate='" + newDate +
                             "' WHERE name='" + name + "'";

        if(db.MyInsertUpdateDelete(updateQuery)) {
            out.print("<script>alert('Complain Updated Successfully'); window.location.href='viewComplain.jsp';</script>");
        } else {
            out.print("<script>alert('Update failed!');</script>");
        }
    } else {
        // First load → fetch current data
        String query = "SELECT * FROM complain WHERE name='" + name + "'";
        ResultSet rs = db.DisplayRecord(query);
        if(rs.next()) {
            mobile = rs.getString("mobile");
            msg    = rs.getString("msg");
            cdate  = rs.getString("cdate");
        }
    }
%>

<div class="row">
    <div class="col-sm-3"></div>
    <div class="col-sm-6">
        <h2 class="text text-primary">Update Complain</h2>
        <form method="post">
            <div class="form-group">
                <label>Name</label>
                <input type="text" name="name" value="<%=name%>" readonly class="form-control"/>
            </div>
            <div class="form-group">
                <label>Mobile</label>
                <input type="text" name="mobile" value="<%=mobile%>" class="form-control"/>
            </div>
            <div class="form-group">
                <label>Message</label>
                <textarea name="msg" class="form-control"><%=msg%></textarea>
            </div>
            <div class="form-group">
                <label>Date</label>
                <input type="text" name="cdate" value="<%=cdate%>" class="form-control"/>
            </div>
            <button type="submit" name="update" class="btn btn-success">Update</button>
            <a href="viewComplain.jsp" class="btn btn-secondary">Cancel</a>
        </form>
    </div>
    <div class="col-sm-3"></div>
</div>

</body>
</html>
