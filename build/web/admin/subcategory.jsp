<%-- 
    Document   : subcategory
    Created on : Dec 21, 2017, 10:24:50 PM
    Author     : Royal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
            
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>
        
        
<style>
.image-upload > input
{
    display: none;
}
div.image-upload label img{
	cursor:pointer;
}
div.image-upload label span{
	cursor:pointer;
}
</style>
    </head>
    <body onload="viewdata()">
        <jsp:include page="header.jsp"/>
        
        <div class=" col-xs-12 c" id="c"  style="padding:0px; margin:0px;width:80%; float:right;background-color: white;">
    <sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />
        

        <button class="btn btn-primary" data-toggle="modal" data-target="#addModal">ADD DATA</button>
        
        
        <!-- Modal add new data-->
        <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="addModalLabel">ADD DATA</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                    <form id="fileup" method="post" enctype="multipart/form-data" action="images_upload.jsp">
                      <div class="image-upload">
                        <label for="file-input">
                            <img id="image_upload_preview" src="images/user.jpg" width="250" height="250"/>
                            </label>
                          <input id="file-input" type="file" name="file-input" onchange="filepreview(this);" /><br> 
                    </div>
                  </form>
                    <div class="form-group">
                      <label for="name">NAME</label>
                      <input type="text" class="form-control" id="name" placeholder="name">
                    </div>
                    <div class="form-group">
                      <label for="desc">DESCRIPTION</label>
                      <textarea class="form-control" id="desc" placeholder="desc"></textarea>
                    </div>
                    <div class="form-group">
                      <label for="category">CATEGORY</label>
                      <sql:query dataSource="${ds}" var="category">
                         select category_id,category_name from category
                      </sql:query>
                         <select id="category">
                            <c:forEach var="row1" items="${category.rows}">
                                <option value="${row1.category_id}">${row1.category_name}</option>
                            </c:forEach>
                          </select>
                      
                    </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                <button type="submit" class="btn btn-primary" onclick="fileupload()">INSERT</button>
              </div>
            </div>
          </div>
        </div>
        
        
        

        <!--data display table-->
        <table class="table table-bordered table-hover" style="margin-top: 30px;" id="mytable">
            <thead>
                <tr>
                    <th>IMAGE</th>
                    <th>SUBCATEGORY NAME</th>
                    <th>CATEGORY NAME</th>
                    <th>DESC</th>
                    <th>ACTION</th>
                </tr>
            </thead>
            <tbody>

            </tbody>
        </table>
        
        
        <script>
            //adding new data to table
                function saveData(image_name){
                var image=image_name;
                var name=$('#name').val();
                var desc=$('#desc').val();
                var category=$('#category').val();

                $.ajax({
                   type: "GET",
                   url: "ajax_edit_button.jsp",
                   data: "query=insert into subcategory(subcategory_name,category_id,subcategory_image,subcategory_desc) values('"+name+"',"+category+",'"+image+"','"+desc+"')",
                   success: function (data) {
                       alert(data);
                            $('#addModal').modal('hide');
                            $('.modal-backdrop').hide();
                            $('#image_upload_preview').attr('src','images/user.jpg');
                            $('#name').val("");
                            $('#desc').val("");
                            viewdata();
                        },
                        error: function(data)
                        {
                            alert(data);
                        }
                });
            }

            //viewing data from table
            function viewdata(){
            $.ajax({
               type: "GET",
               url: "subcategory_ajax.jsp",
               data: "",
               success: function (data) {
                        $('tbody').html(data); 
                    }
            });
        }
        
        function updateData(image_name,updateid){
            var id=updateid;
            var name=$('#name-'+updateid).val();
            var category=$('#category-'+updateid).val();
            var image=image_name;
            var desc=$('#desc-'+updateid).val(); 
            alert(id);
            alert(image);
            alert(name);
            alert(desc);
            alert(category);
            $.ajax({
               type: "GET",
               url: "ajax_edit_button.jsp",
               data: "query=update subcategory set subcategory_name='"+name+"',category_id="+category+",subcategory_image='"+image+"',subcategory_desc='"+desc+"' where subcategory_id="+id+"",
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
               data: "query=delete from subcategory where subcategory_id="+id+"",
               success: function (data) {
                        viewdata();
                    }
            });
        }
        
        
        function filepreview(objFileInput){
            if (objFileInput.files[0]) {
                var filename=objFileInput.files[0];
                var filetype=filename.type;
                alert(filetype);
                var exeten=filetype.split('/').pop().toLowerCase();
                alert(exeten);
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
        
        function edfilepreview(objFileInput,id){
            alert(id);
            if (objFileInput.files[0]) {
                var filename=objFileInput.files[0];
                var filetype=filename.type;
                alert(filetype);
                var exeten=filetype.split('/').pop().toLowerCase();
                alert(exeten);
                var allowedexe=new Array("jpeg","jpg","png","gif");
                if($.inArray(exeten,allowedexe)===-1){
                    alert("upload allowed file types only");
                }
                else{
                var fileReader = new FileReader();
                fileReader.onload = function (e) {
                    $('#image-'+id).attr('src',e.target.result);
                }
            }
                fileReader.readAsDataURL(objFileInput.files[0]);
            }
        }
        
        
        
        function fileupload()
            {
                var f=document.getElementById('fileup');
                
//                alert();
                var formData=new FormData(f);
                alert(formData);
                $.ajax({
                    type: "POST",
                    url: 'images_upload.jsp',
                    data: formData,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function(data) {
                        alert("FU"+data);
                        data=data.trim();
                        alert(data);
                        saveData(data);
                    },
                    error: function(data) {
                        alert("fuerror"+data);
                    }
                });
            }
            
            function edfileupload(updateid)
            {
                var image1=$('#image_display-'+updateid).attr('src');
                var image2=$('#image-'+updateid).attr('src');
                if(image1==image2){
                    alert("same");
                    image2=image2.split('/').pop();
                    updateData(image2,updateid);
                }
                else{
                var f=document.getElementById('fileup-'+updateid);
                
//                alert();
                var formData=new FormData(f);
                alert(formData);
                $.ajax({
                    type: "POST",
                    url: 'images_upload.jsp',
                    data: formData,
                    cache: false,
                    contentType: false,
                    processData: false,
                    success: function(data) {
                        data=data.trim();
                        alert(data);
                        updateData(data,updateid);
                    },
                    error: function(data) {
                        alert("error"+data);
                    }
                });
            }
            }
        </script>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
