<%--
    Document   : insert_craditcard
    Created on : 14 Dec, 2017, 8:26:00 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!doctype html>
<html>
<head>
        <!--<link  rel="stylesheet"   href="bootstrap-3.3.7-dist/css/bootstrap.css">-->
        <!--<link   rel="stylesheet"  href="bootstrap-3.3.7-dist/css/bootstrap-theme.css">-->
        <link   rel="stylesheet"  href="css/font-awesome.css">
        <link   rel="stylesheet"  href="css/innerpagecss.css">
        <!--<script  type="text/javascript" src="bootstrap-3.3.7-dist/js/jquery-3.2.1.min.js"></script>-->
        <script  type="text/javascript" src="js/bootstrap.js"></script>

        <!--------------------- custom javascripts ---------------->
        <script  type="text/javascript" src="js/ajaxjs.js"></script>
        <script  type="text/javascript" src="js/spancrossjs.js"></script>
        <script  type="text/javascript" src="js/del_tab_row.js"></script>
        <script  type="text/javascript" src="js/ins_tab_row.js"></script>
        <script  type="text/javascript" src="js/fileup.js"></script>
        <script  type="text/javascript" src="js/hidespancross.js"></script>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>credit card</title>
        <style>
#ccard_name
{
    border-radius: 3px;
    background-color: #fafafa;
    border: solid 1px #e7ebf1;
    padding: 5px 10px;
    margin: 5px;
}

#ccard_name:focus
{
    background-color: white;
}

 option
{
    background-color: #fafafa;
}


/*#sopt
{
                height: 300px;
                width: 300px;
                overflow: scroll;
            }
            ::-moz-scrollbar
            {
    width: 100px;
}

 Track 
::-moz-scrollbar-track {
    background: #f1f1f1; 
}
 
 Handle 
::-moz-scrollbar-thumb
{
    background: #888; 
}

 Handle on hover 
::-moz-scrollbar-thumb:hover
{
    background: #555; 
}
::scrollbar
            {
    width: 100px;
}

 Track 
::scrollbar-track {
    background: #f1f1f1; 
}
 
 Handle 
::scrollbar-thumb
{
    background: #888; 
}

 Handle on hover 
::scrollbar-thumb:hover
{
    background: #555; 
}*/


.modal-body,.modal-header,.modal-footer,#sopt select
{
    background-color: #eef1f7;
}



        </style>
        
</head>
    <body style="background-color: white;font:sans-serif;">
    
    <c:catch var="e">
    <c:import  url="header.jsp"/>
    
    <script  type="text/javascript" src="js/jquery-ui-1.12.1.js"></script>
    <script  type="text/javascript" src="js/editjs.js"></script>
    <link   rel="stylesheet"  href="css/jquery-ui-1.12.1.css">

    <div class=" col-xs-12 c" id="c"  style="padding:0px; margin:0px; float:right;background-color: white;">

        <sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />
    
    <c:if test="${param.ccard_name != null}">
        <sql:update dataSource="${ds}" var="rs">
            insert into credit_card_details(credit_card_type,credit_logo,bank_id) values (?,?,?)
            <sql:param value="${param.ccard_name}"/>
            <sql:param value="${param.ccard_logo}"/>
            
            <c:set var="tmp" value='${fn:join(paramValues["select_bank"], ",")}'/>
            <sql:param value="${tmp}"/>
            
        </sql:update>
    </c:if>
    <div > <button type="button" class="cstbtnprimary" data-toggle="modal" data-target="#myModal">Insert</button></div>
    
    <jsp:include page="ajax_ins_tab_row.jsp"/>
        
     <c:import  url="footer.jsp"/> 
    </c:catch>
</div>
    
        
     <!------------------------INSERT DATA MODEL------------------>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="width:700px;">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Insert Bank</h4>
      </div>
      
        <div class="modal-body" style="width: 100%; float: left;">
            <div style="float:left;padding: 5px;margin:5px;">
        <form class="form-horizontal" id="insertfrm">
           
           <table>
               
           <tr>
               <td>CraditCard Name</td>
           </tr>
           
           <tr>
               <td><input type="text" style="width:400px;" required="required" id="ccard_name" placeholder="Enter CreditcardName" onchange="checkmuldata(this,'credit_card_details','credit_card_type');"/></td>
           </tr>
           
           <tr><td><br>SELECT BANKS</td></tr>
           <tr>
                <td colspan="2">
                    <sql:query dataSource="${ds}" var="result">
                        SELECT * from bank
                    </sql:query>
                       
                        <!--<button type="button" class="btn btn-primary">select banks &nbsp;<span class="fa fa-sort-desc" style="height:2px;"></span></button><br>-->
                    <select multiple size="4" name="select_bank" id="sopt" style="width:400px;">
                        <c:forEach var="data" items="${result.rows}">
                            <option value="${data.bank_id}"> <c:out value="${data.bank_name}"/></option>
                        </c:forEach>
                    </select>
                        
                </td>
            </tr>
            </table>
            <input type="hidden" name="command" value="new">
            
          </form>
           </div>
            
            <div style="float:left;padding: 5px;margin:5px;">
            <form id="img_frm" method="post" enctype="multipart/form-data" action="images_upload.jsp">
                <label for="ccard_logo">CraditCard logo<br><img id="image_upload_preview" style="height:150px;width:200px;" name="image_upload_preview" src="images/fileupload.png" /></label>
                <input name="ccard_logo" style="display:none;" type="file" required="required" id="ccard_logo" accept="image/*" onchange="filepreview(this);" />   
            </form>
                </div>
       
        </div>
        
      <div class="modal-footer" style="float: left; width:100%;" >
        <button type="button" class="cstbtndefault" data-dismiss="modal">Close</button>
        <button type="button" class="cstbtnprimary" style="" onclick="fileupload('img_frm',get_img_name_insert);">Submit</button>
      </div>
        
    </div>
  </div>
</div>
     
     
 <script>   
function get_img_name_insert(data)
{
    var upimgname=data;
    var values = $('#sopt').val();
    var a1=document.getElementById('ccard_name').value;
    var csv="";
    
    for(var i=0;i<values.length;i++)
    {
      csv=csv+values[i]+",";
    }
        csv=csv.substring(0,csv.length-1);
        table_field('credit_card_type','bank_id','credit_logo');      
        table_value(a1,csv,upimgname);
        tab('ajax_ins_tab_row.jsp','credit_card_details','credit_card_id');   
        
        document.getElementById('insertfrm').reset();
        document.getElementById('img_frm').reset();
        $('#image_upload_preview').attr('src','images/fileupload.png');
}

function get_img_name_update(data)
{
    var upimgname=data;
    table_field('credit_logo');      
    table_value(upimgname);
    tab_update('ajax_ins_tab_row.jsp','credit_card_details','credit_card_id',);   
    iseditmodeon="false";
}

 </script>
</body>
</html>


