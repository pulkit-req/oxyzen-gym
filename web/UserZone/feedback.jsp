<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="MyPack.DBManager"%>
<%
String id=request.getParameter("btnsave");
if(id!=null){
    String ses=session.getAttribute("uid")+"";
    String rate=request.getParameter("txtrate");
    String msg=request.getParameter("txtmsg");
    SimpleDateFormat sm=new SimpleDateFormat();
    String dt=sm.format(new Date());
    
    String cmd="insert into feedback values('"+ses+"','"+rate+"','"+msg+"','"+dt+"')";
    DBManager db=new DBManager();
    if(db.MyInsertUpdateDelete(cmd))
        out.print("<script>alert('Feedback Submitted')</script>");
    else
        out.print("<script>alert('Unable to submit')</script>");
}
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            #s1,#s2,#s3,#s4,#s5{
                color: white; font-size: 45px;
                cursor: pointer;
              
            }
            #sp1,#sp2,#sp3,#sp4,#sp5{
                display: none;
            }
            .fa-star{
                
                text-shadow:                      
        0 0 2px gold,
        0 0 5px gold,
        0 0 10px gold,
        0 0 15px gold,
        0 0 20px gold;
            }
        </style>
        
    </head>
    <body>
        <%@include file="UserHeader.jsp"%>
        <div class="row">
            <div class="col-sm-12">
                <div class="col-sm-4"></div>
                <div class="col-sm-4 panel panel-body " style=" backdrop-filter:blur(5px);  box-shadow:  0 0 5px white,
        0 0 10px white,
        0 0 20px white,
        0 0 40px white,
        0 0 80px white;
        
        background-color: transparent;">
                    <h3 style="color:white; text-align: center; font-size: 40px">User Feedback</h3>
                    <hr>
                    <label style="color:white; font-size: 20px"><strong>Rate Now</strong></label>
                    <br>
                    <span  class="fa fa-star" id="s1"></span>
                    <span class="fa fa-star" id="s2"></span>
                    <span class="fa fa-star" id="s3"></span>
                    <span class="fa fa-star" id="s4"></span>
                    <span class="fa fa-star" id="s5"></span>
                    <span  class="fa fa-star" id="sp1">1</span>
                    <span class="fa fa-star" id="sp2">2</span>
                    <span class="fa fa-star" id="sp3">3</span>
                    <span class="fa fa-star" id="sp4">4</span>
                    <span class="fa fa-star" id="sp5">5</span>
                    <form action="feedback.jsp" method="post">
                        <input type="hidden" name="txtrate" id="txtrate">
                        <label style="color:white; font-size: 15px"> Write Review</label>
                        <textarea class="form-control" name="txtmsg" style="height:160px; background-color: transparent; color:white;"></textarea><br>
                        <input type="submit"  class="form-control btn-info" name="btnsave" value="Feedback Now"
                               >
                    </form>
                </div>
                <div class="col-sm-4"></div>
            </div>
        </div>
        <script>
                 var total="";
            $(document).ready(function(){
                $("#s1").click(function(){
                    total=$("#s1").text();
                    $("#txtrate").val(total);
                    
                    $("#s1").css("color","gold");
                    $("#s2,#s3,#s4,#s5").css("color","white")
                })
                $("#s2").click(function(){
                    total=$("#sp2").text();
                    $("#txtrate").val(total);
                    $("#s1,#s2").css("color","gold");
                    $("#s3,#s4,#s5").css("color","white")
                    })
                    
                     $("#s3").click(function(){
                    total=$("#sp3").text();
                    $("#txtrate").val(total);
                    $("#s1,#s2,#s3").css("color","gold");
                    $("#s4,#s5").css("color","white")
                    })
                    
                    $("#s4").click(function(){
                    total=$("#sp4").text();
                    $("#txtrate").val(total);
                    $("#s1,#s2,#s3,#s4").css("color","gold");
                    $("#s5").css("color","white")
                    })
                    
                    
                     $("#s5").click(function(){
                    total=$("#sp5").text();
                    $("#txtrate").val(total);
                    $("#s1,#s2,#s3,#s4,#s5").css("color","gold");
                    
                    })
                    
                    
                    
                
            })
        </script>
    </body>
</html>