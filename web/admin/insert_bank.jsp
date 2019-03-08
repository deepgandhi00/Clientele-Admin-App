<%-- 
    Document   : insert_bank.jsp
    Created on : 14 Dec, 2017, 5:42:48 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<!doctype html>

<html>
<head>

<link  rel="stylesheet"   href="css/bootstrap.css">
<link   rel="stylesheet"  href="css/bootstrap-theme.css">
<link   rel="stylesheet"  href="css/font-awesome.css">

        <script  type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <script  type="text/javascript" src="js/bootstrap.js"></script>
        <script  type="text/javascript" src="js/animationCounter.js"></script>
        <script  type="text/javascript" src="js/scrollspy.js"></script>
         <script  type="text/javascript" src="js/editjs.js"></script>
         
         
         <!-- ------------------- custom javascripts -------------- -->
        <script  type="text/javascript" src="js/ajaxjs.js"></script>
        <script  type="text/javascript" src="js/spancrossjs.js"></script>
        <script  type="text/javascript" src="js/del_tab_row.js"></script>
        <script  type="text/javascript" src="js/ins_tab_row.js"></script>
        <script  type="text/javascript" src="js/fileup.js"></script>
        <script  type="text/javascript" src="js/hidespancross.js"></script>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Banks</title>       
</head>

<body style="background-color: white;">
    <c:catch var="e">
    <c:import  url="header.jsp"/>
    <div class=" col-xs-12 c" id="c"  style="padding:0px; margin:0px; float:right;background-color: white;">

    <!--looped data that is in database-->
   <sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />
    
            <button type="button" class="cstbtnprimary" data-toggle="modal" data-target="#myModal">Insert</button>
            
            <jsp:include page="ajax_ins_bank_row.jsp"/> 
</div>
    
    <!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Insert Bank</h4>
      </div>
      <div class="modal-body">
        
          <!------------------------forms---------------------------* -->
          <div class="form-group">
          <form class="form-horizontal" id="insertfrm">
  
    <label for="inputEmail3" class="col-sm-2 control-label">Bank</label>
    <div class="col-sm-10">
      <input type="text" class="form-control" id="inputBank" placeholder="Bank">
    </div>              
</form>
  </div>
          <div>
           <form id="img_frm" method="post" enctype="multipart/form-data" action="images_upload.jsp">
                <label for="ccard_logo">Bank logo<br><img id="image_upload_preview" style="height:150px;width:200px;" name="image_upload_preview" src="images/fileupload.png" /></label>
                <input name="ccard_logo" style="display:none;" type="file" required="required" id="ccard_logo" accept="image/*" onchange="filepreview(this);" />   
            </form>
          </div>
        
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="fileupload('img_frm',get_img_name_insert);">Submit</button>
      </div>
        
    </div>
  </div>
</div>
<c:import  url="footer.jsp"/>
</c:catch>
${e}
    
<script>
    
  function get_img_name_insert(data)
{
    
    var upimgname=data;
  
    var a1=document.getElementById('inputBank').value;

        table_field('bank_name','bank_logo');      
        table_value(a1,upimgname);
        tab('ajax_ins_bank_row.jsp','bank','bank_id');   
        
        document.getElementById('insertfrm').reset();
        document.getElementById('img_frm').reset();
        $('#image_upload_preview').attr('src','images/fileupload.png');
}

function get_img_name_update(data)
{
    var upimgname=data;
    table_field('bank_logo');      
    table_value(upimgname);
    tab_update('ajax_ins_bank_row.jsp','bank','bank_id',);   
    iseditmodeon="false";
}
</script>
</body>
</html>

