<%@page import="MyPack.DBManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>

<%
    String btn=request.getParameter("save");
    if(btn!=null)
    {
        String name=request.getParameter("name");
        String email=request.getParameter("email");
        String mobile=request.getParameter("mobile");
        String msg=request.getParameter("message");
        SimpleDateFormat sm=new SimpleDateFormat();
        String dt=sm.format(new Date());
        
        String cmd="insert into contact(name,email,mobile,msg,cdate) values('"+name+"','"+email+"','"+mobile+"','"+msg+"','"+dt+"')";
        DBManager db=new DBManager();
        
        if(db.MyInsertUpdateDelete(cmd))
            out.print("<script>alert('Enquiry save successfully')</script>");
        else
            out.print("<script>alert('unable to save successfully')</script>");                  
    }
    %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
         
            #con{
                text-align: center;
                color: white;
                font-family: 'Georgia', serif;
                margin-left: 10%;
                margin-top:  20%;
                font-size: 40px;
                
            }
            #para{
                text-align: center;
                color: white;
                font-family: 'Georgia', serif;
                margin-left: 5%;  
                font-size: 20px;
            }
             #txt1{
                 background-color: transparent;
                color:white;
            }
            #txt1::placeholder{
                color:white;
            }
             #txt2{
                 background-color: transparent;
                color:white;
            }
             #txt2::placeholder{
                color:white;
            }
             #txt3{
                 background-color: transparent;
                color:white;
            }
             #txt3::placeholder{
                color:white;
            }
             #txt4{
                 background-color: transparent;
                color:white;
            }
             #txt4::placeholder{
                color:white;
            }
           
        </style>
    </head>
    <body>
        <%@include file="Header.jsp"%>
        <div class="row">
           
            <div class="col-sm-12">
                <div class="col-sm-5"><h1 id="con">Contact Us</h1>
                    <p id="para"> 📍 Address: vikas nagar lucknow<br>
                        📞 Phone: (123) 456-7890<br>

                        📧 Email: contact@fitzonegym.com<br>

                        🕒 Hours: Mon-Sun : 5.00 AM - 11.00 PM
                       
                        
</p></div>
                <div class="col-sm-6 " style="border: 3px solid blue;
                     box-shadow:  0 0 5px white,
        0 0 10px white,
        0 0 20px white,
        0 0 40px white,
        0 0 80px white;
        border-radius: 10px;
        backdrop-filter: blur(5px);
                    
                     margin: 2%;padding: 2.5%">
                    <h2 class="text text-info" style="
                        text-align: center;
                        color: white;
                        
        font-family: monospace
        ">Contact Panel Here
                        <span class="fa fa-phone-square" style="color:#0000ff;font-size: 50px"></span>
                    </h2>
                    <hr style="height: 3px;background: #0000ff;width: 100%">
                    <form action="Contact.jsp" method="post">
                        <div class="col-sm-6">
                           
                            <input type="text"  id="txt1" class="form-control" name="name" required="required" placeholder="Enter Name"><br>
                           
                            <input type="email"  id="txt2" class="form-control" name="email" required="required" placeholder="Enter Email"><br>
                           
                            <input type="number"  id="txt3" class="form-control" name="mobile" required="required" placeholder="Enter Mobile No. ">
                        </div>
                        <div class="col-sm-6">
                            
                            <textarea name="message" style=" background-color: transparent; color: white" id="txt4" class="form-control" style="height:160px" placeholder="Enter Text"></textarea>
                            <br>
                            <input type="submit" name="save" class="form-control btn-danger" value="Enquiry Now">
                        </div>   
                    </form>
                </div>
                <div class="col-sm-3"></div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>