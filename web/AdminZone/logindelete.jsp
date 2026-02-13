<%@page import="MyPack.DBManager"%>
<%
    String id = request.getParameter("del");

    if(id != null && !id.trim().isEmpty()) {
        String cmd = "DELETE FROM login WHERE userid='" + id + "'";

        try {
            DBManager db = new DBManager();
            if(db.MyInsertUpdateDelete(cmd)) {
                out.print("<script>alert('Enquiry deleted'); window.location.href='viewLogin.jsp';</script>");
            } else {
                out.print("<script>alert('No record found'); window.location.href='viewLogin.jsp';</script>");
            }
        } catch(Exception e) {
            out.print("<script>alert('Error: "+e.getMessage()+"'); window.location.href='viewLogin.jsp';</script>");
        }
    } else {
        out.print("<script>alert('Invalid request'); window.location.href='viewLogin.jsp';</script>");
    }
%>
