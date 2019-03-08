    <%-- 
    Document   : demo
    Created on : Dec 19, 2017, 10:33:11 AM
    Author     : Royal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<title></title>
           <link rel="stylesheet" href="css/bootstrap.min.css"/>
           
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.dataTables.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>
        
<style>
.image-upload > input
{
    display: none;
}
div.image-upload label img{
	cursor:pointer;
}
</style>
      
</head>

<body onload="viewdata()">
    
 

    
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/clientele" user = "root" password = ""/>

<!--     Modal -->
        <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="addModalLabel">WALLET DETAILS</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <form action="images_upload.jsp" id="fileup" enctype="multipart/form-data" method="post">
                   <div class="image-upload">
                       
                            <label for="logo">LOGO<br>
                            <img id="image_upload_preview" src="images/add_image.png" width="250" height="250" />
                           
                            </label>
                       <input id="logo" type="file" name="file-input"  onchange="filepreview(this);"/><br>
                       
                    </div> 
                </form>
              <div class="modal-body">
                    <div class="form-group">
                        <label for="name">NAME</label>
                        <input type="text" class="form-control" id="name" placeholder="name">
                    </div>
                                    
            </div>
                    
                  <div class="form-group">
                      <label for="mode">MODE</label>
                                    <sql:query dataSource="${ds}" var="mode">
                                       select payment_mode_id,mode from payment_mode
                                    </sql:query>
                                    <select id="mode">
                                           <c:forEach var="row1" items="${mode.rows}">
                                              <option value="${row1.payment_mode_id}">${row1.mode}</option>
                                          </c:forEach>
                                    </select>
                    </div>
            
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                <button type="submit" class="btn btn-primary" onclick="fileupload()">INSERT</button>
             
            </div>
                </div>
          </div>
        </div>

        <jsp:include page="header.jsp"/>
            <div class=" col-xs-12 c" id="c"  style="padding:0px; margin:0px; float:right; background-color: white;">
                <button class="btn btn-primary" data-toggle="modal" data-target="#addModal">ADD DATA</button>
    <table class="table table-bordered table-hover"  id="mytable">
        <thead>
            <tr>    
                <th>NAME</th>
                <th>LOGO</th>
                <th>MODE</th>
                <th>action</th>
            </tr>
        </thead>
        <tbody>
            
        </tbody>
    </table>
            </div>
            <jsp:include page="footer.jsp"/>
                
    <script>
        function saveData(image_name){
           var name=$('#name').val();
            var logo=image_name;
            var mode=$('#mode').val();
            
            $.ajax({
               type: "GET",
               url: "ajax_edit_button.jsp",
               data: "query=insert into wallet_details(wallet_name,wallet_logo,payment_mode_id) values('"+name+"','"+logo+"','"+mode+"')",
               success: function (data) {
                   viewdata();
                   $("#addModal .close").click()
                   $('.modal-backdrop').hide();
                   $('#image_upload_preview').attr('src','images/add_image.png');
                   $('#name').val("");
                   
                    }
            });
        }
        function viewdata(){
            $.ajax({
               type: "GET",
               url: "wallet_select_ajax.jsp",
               data: "",
               success: function (data) {
                        $('tbody').html(data);
                        $('#mytable').dataTable();
                    }
            });
        }
        function updateData(image_name,updateid){
            var id=updateid;
            var name=$('#name-'+id).val();
            var logo=image_name;
            var mode=$('#mode-'+id).val();
            
            $.ajax({
               type: "GET",
               url: "ajax_edit_button.jsp",
               data: "query=update wallet_details set wallet_name='"+name+"',wallet_logo='"+logo+"',payment_mode_id='"+mode+"' where wallet_id="+id+"",
               success: function (data) {
                   $('#updateModal-'+updateid).modal('hide');
                   $('.modal-backdrop').hide();
                        viewdata();
                    }
            });
        }
        function deleteData(deleteid){
            var id=deleteid;
            $.ajax({
               type: "GET",
               url: "ajax_edit_button.jsp",
               data: "query=delete from wallet_details where wallet_id="+id+"",
               success: function (data) {
                        viewdata();
                    }
            });
        }
  
            function filepreview(objFileInput){
            if (objFileInput.files[0]) {
                var filename=objFileInput.files[0];
                var filetype=filename.type;            
                var exeten=filetype.split('/').pop().toLowerCase();
                var allowedexe=new Array("jpeg","jpg","png","gif");
                if($.inArray(exeten,allowedexe)===-1){
                    alert("upload allowed file types only");
                }
                else{
                var fileReader = new FileReader();
                fileReader.onload = function (e) {                                 
                    $('#image_upload_preview').attr('src',e.target.result);
                }
            }
                fileReader.readAsDataURL(objFileInput.files[0]);
            }
        }
        function editfilepreview(objFileInput,editp){
            if (objFileInput.files[0]) {
                var filename=objFileInput.files[0];
                var filetype=filename.type;             
                var exeten=filetype.split('/').pop().toLowerCase();         
                var allowedexe=new Array("jpeg","jpg","png","gif");
                if($.inArray(exeten,allowedexe)===-1){
                    alert("upload allowed file types only");
                }
                else{
                var fileReader = new FileReader();
                fileReader.onload = function (e) {                                   
                    $('#logo-'+editp).attr('src',e.target.result);
                }
            }
                fileReader.readAsDataURL(objFileInput.files[0]);
            }
        }
        function fileupload()
            {
                var f=document.getElementById('fileup');
                var formData=new FormData(f);
                $.ajax({
                    type: "POST",
                    url: 'images_upload.jsp',
                    data: formData,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function(data) {
                        data=data.trim();
                        alert( "success"+saveData);
                        saveData(data);
                    },
                    error: function(data) {
                        alert( "error"+data);
                    }
                });
            }
            
            function updatefileupload(updateid)
            {
                alert();
                var img1=$('#logoupdate').attr('src');
                alert(img1);
                var img2=$('#logo-'+updateid).attr('src');
                alert(img2);
                if(img1===img2)
                {
                    img1=img1.split('/').pop();
                   updateData(img1,updateid); 
                }
                else
                {
                var f=document.getElementById('fileup-'+updateid);
                var formData=new FormData(f);
                $.ajax({
                    type: "POST",
                    url: 'images_upload.jsp',
                    data: formData,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function(data) {
                        data=data.trim();
                        alert( "success"+data);
                        updateData(data,updateid);
                    },
                    error: function(data) {
                        alert("errorva");
                        alert( "error"+data);
                    }
                });
            }
        }
    </script>
</body>
</html>