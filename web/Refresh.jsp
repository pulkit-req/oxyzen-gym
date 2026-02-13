<%@page import="MyPack.CaptchaCodeManager"%>
<%
    CaptchaCodeManager cg=new CaptchaCodeManager();
    String cp=cg.CaptchaCode();
    out.print(cp);
    %>