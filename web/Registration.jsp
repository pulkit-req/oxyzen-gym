<%@page import="MyPack.DBManager"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%
    String id=request.getParameter("btn-save");
    if(id!=null)
    {
        String name=request.getParameter("txtname");
        String email=request.getParameter("txtemail");
        String mob=request.getParameter("txtmobile");
        String add=request.getParameter("txtadd");
        String gen=request.getParameter("gender");
        String pass=request.getParameter("txtpass");
        String cpass=request.getParameter("txtcpass");
        SimpleDateFormat sm=new SimpleDateFormat();
        String dt=sm.format(new Date());
        
        if(cpass.equals(pass))
        {
            String cmd="insert into register values('"+name+"','"+email+"','"+mob+"','"+add+"','"+gen+"','"+pass+"','"+dt+"')";
            String cmd2="insert into login values('"+email+"','"+pass+"','utype','"+dt+"')";
            DBManager db=new DBManager();
            if(db.MyInsertUpdateDelete(cmd) && db.MyInsertUpdateDelete(cmd2))
                    out.print("<script>alert('Registration Save')</script>");
            else
                   out.print("<script>alert('Unable to Save')</script>"); 
        }
        else
            out.print("<script>alert('Password and confirm Password not match')</script>");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #txt1{
                background-color: transparent;
                color: white;
            }
            #txt1::placeholder{
                color: white;
            }
             #txt2{
                background-color: transparent;
                color: white;
            }
             #txt2::placeholder{
                color: white;
            }
             #txt3{
                background-color: transparent;
                color: white;
            }
             #txt3::placeholder{
                color: white;
            }
             #txt4{
                background-color: transparent;
                color: white;
            }
             #txt4::placeholder{
                color: white;
            }
             #txt5{
                background-color: transparent;
                color: white;
            }
             #txt5::placeholder{
                color: white;
            }
             #txt6{
                background-color: transparent;
                color: white;
            }
             #txt6::placeholder{
                color: white;
            }
        </style>
    </head>
    <body>
        <%@include file="Header.jsp"%>
             <div class="container">
                <div class="row">
                <div class="col-sm-2"></div>
                <div class="col-sm-8 panel panel-body" style="padding:2%;margin: 2%;border: 3px solid blue;
                     box-shadow:  0 0 5px white,
        0 0 10px white,
        0 0 20px white,
        0 0 40px white,
        0 0 80px white;
        border-radius: 10px;
        backdrop-filter: blur(5px);
                     background-color: transparent;">
                    <h2 class="text text-info " style="text-align: center;
                        color: white; font-size: 45px;">
                        <span class="fa fa-envelope-square" style="font-size:45px; background-color: transparent"></span> Registration Panel</h2>
                    <hr style="background:white; height:3px">
                    <form action="Registration.jsp" method="post">
                    <div class="col-sm-6">
                        
                        <input type="text" class="form-control" placeholder="Enter Your Name" id="txt1" name="txtname">
                        <br>
                        <input type="email" class="form-control" placeholder="Enter Email" id="txt2" name="txtemail">
                        <br>
                        <input type="number" class="form-control" placeholder="Enter Mobile Number" id="txt3" name="txtmobile">
                        <br>
                        <input type="text" class="form-control" placeholder="Address" id="txt4" name="txtadd">
                        
                    </div>
                    <div class="col-sm-6">
                        <select name="gender" class="form-control" required style=" color:white; background-color: transparent;">
                            <option value="" style="color:black" disabled selected>Select Gender</option>
                            <option value="male" style="color:black">Male</option>
                            <option value="female" style="color:black">Female</option>
                            <option value="other" style="color:black">Other</option>
    </select>
                        <br>

                        <input type="password" class="form-control" placeholder="Enter Password" id="txt5" name="txtpass">
                        <br>
                        <input type="password" class="form-control" placeholder="Confirm Password" id="txt6" name="txtcpass">
                        <br>
                        <input type="submit" class="form-control btn-warning" value="Register" name="btn-save">
                    </div>
                    </form>
                    
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>
             <br>
             <br>
        <%@include file="footer.jsp"%>
    </body>
</html>