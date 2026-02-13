<%
String id=session.getAttribute("uid")+"";
if(id!=null || id!="")
{
    session.invalidate();
    response.sendRedirect("../login.jsp");
}
else
{
    response.sendRedirect("../login.jsp");
}
%>