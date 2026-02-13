<%@page import="MyPack.DBManager"%>
<%
    String id = request.getParameter("del");

    if(id != null && !id.trim().isEmpty()) {
        String cmd = "DELETE FROM register WHERE name='" + id + "'";

        try {
            DBManager db = new DBManager();
            if(db.MyInsertUpdateDelete(cmd)) {
                out.print("<script>alert('Enquiry deleted'); window.location.href='viewRegister.jsp';</script>");
            } else {
                out.print("<script>alert('No record found'); window.location.href='viewRegister.jsp';</script>");
            }
        } catch(Exception e) {
            out.print("<script>alert('Error: "+e.getMessage()+"'); window.location.href='viewRegister.jsp';</script>");
        }
    } else {
        out.print("<script>alert('Invalid request'); window.location.href='viewRegister.jsp';</script>");
    }
%>
