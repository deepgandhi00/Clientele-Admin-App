<%-- 
    Document   : product
    Created on : Dec 22, 2017, 11:35:51 AM
    Author     : Royal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>  
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/font-awesome.css"/>
            
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
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
        <button class="cstbtnprimary" data-toggle="modal" data-target="#addModal">ADD DATA</button>
      <sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}" password = "${pageContext.servletContext.getInitParameter('password')}"/>
        
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
                        <input type="text" class="form-control" id="name" aria-describedby="emailHelp" placeholder="name">
                    </div>
                    <div class="form-group">
                      <label for="ing">INGREDIENTS</label>
                      <textarea class="form-control" id="ing" placeholder="ing"></textarea>
                    </div>
                    <div class="form-group">
                      <label for="desc">DESCRIPTION</label>
                      <textarea class="form-control" id="desc" placeholder="desc"></textarea>
                    </div>
                  <div>
                      <p><b>SELECT</b></p>
                      <input type="radio" name="type_select" value="qty" style="margin: 10px;">Quantity(in ml)
                      <input type="radio" name="type_select" value="wt" style="margin: 10px;">Weight(in gram)
                  </div>
                  <div>
                      <table>
                          <thead>
                              <tr>
                                  <th>QTY/WT</th>
                                  <th>COST</th>
                                  <th></th>
                              </tr>
                          </thead>
                          <tbody id="add_tbody">
                              <tr>
                                  <td><input type="text" id="qtywt0" placeholder="qty/wt"/></td>
                                  <td><input type="text" id="cost0" accept=""placeholder="cost"/></td>
                                  <td><img src="images/add_image.png" width="20" height="20" onclick="add_row()"/></td>
                              </tr>
                          </tbody>
                      </table>
                  </div>
                    <div class="form-group">
                      <label for="htu">HOW TO USE</label>
                      <textarea class="form-control" id="htu" placeholder="how to use"></textarea>
                    </div>
                    <div class="form-group">
                      <label for="subcategory">SUBCATEGORY</label>
                      <sql:query dataSource="${ds}" var="subcategory">
                         select subcategory_id,subcategory_name from subcategory
                      </sql:query>
                         <select id="subcategory">
                            <c:forEach var="row1" items="${subcategory.rows}">
                                <option value="${row1.subcategory_id}">${row1.subcategory_name}</option>
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
        <table class="table table-bordered table-hover" style="margin-top: 30px;">
            <thead>
                <tr>
                    <th>SR</th>
                    <th>IMAGE</th>
                    <th>PRODUCT NAME</th>
                    <th>SUBCATEGORY NAME</th>
                    <th>INGREDIENTS</th>
                    <th>DESCRIPTION</th>
                    <th>HOW TO USE</th>
                    <th>QUANTITY AND COST</th>
                    <th>ACTION</th>
                </tr>
            </thead>
            <tbody id="display">

            </tbody>
        </table>
         
         <script>
             var count=1;
             
               
                
            function add_row(){
                var fieldhtml="<tr><td><input type='text' id='qtywt"+count+"' placeholder='qty/wt'/></td><td><input type='text' id='cost"+count+"' placeholder='cost'/></td><td></td></tr>";
                $('#add_tbody').append(fieldhtml);
                count=count+1;
            }
            
            function add_row2(product_id){
                var pid=product_id;
                alert();
                var fieldhtml1="<tr><td><input type='text' name='qtywt' class='qtywt-"+pid+"' placeholder='qty/wt'/></td><td><input type='text' class='cost-"+pid+"' name='cost' placeholder='cost'/></td></tr>";
                alert();
                $('#updateqtywt-'+pid).append(fieldhtml1);
                alert();
            }
            
            
            //adding new data to table
                function saveData(image_name){
//                    alert();
                var checked=$("input[name='type_select']:checked").val();
//                alert(checked);
                var qty="";
               var cst="";
                for(i=0;i<count;i++){
                    qty=qty+"&qtywt="+$('#qtywt'+i).val();
                    cst=cst+"&cost="+$('#cost'+i).val();
                    alert(qty);
                    alert(cst);
                }
//                alert("'"+cost+"'");
                var name=$('#name').val();
                var ing=$('#ing').val();
                var desc=$('#desc').val();
                var htu=$('#htu').val();
                var image=image_name;
                var subcategory=$('#subcategory').val();
               
                alert("name="+name+"&ing="+ing+"&desc="+desc+"&htu="+htu+"&image="+image+"&subcategory="+subcategory+"&selected="+checked+"&count="+count+cst+qty);
                $.ajax({
                   type: "POST",
                   url: "product_add_ajax.jsp",
                   data: "name="+name+"&ing="+ing+"&desc="+desc+"&htu="+htu+"&image="+image+"&subcategory="+subcategory+"&selected="+checked+"&count="+count+cst+qty,
                   
                   success: function (data) {
                            alert("data='"+data+"'");
                            $('#addModal').modal('hide');
                            $('.modal-backdrop').hide();
                            location.reload();
                        }
                });
            }
            
            
            //viewing data from table
            function viewdata(){
            $.ajax({
               type: "GET",
               url: "product_ajax.jsp",
               data: "",
               success: function (data) {
                        $('#display').html(data);
                    }
            });
        }
        
        
        //update data here
        function updateData(image_name,updateid,checked){
            var chkd=checked;
            var id=updateid;
            var name=$('#name-'+updateid).val();
            var ing=$('#ing-'+updateid).val();
            var htu=$('#htu-'+updateid).val();
            var subcategory=$('#subcategory-'+updateid).val();
            var image=image_name;
            var desc=$('#desc-'+updateid).val(); 
            
             var qty="";
             var cst="";
             var count1=0;
            
            
            $.each($('.qtywt-'+id), function() {
                qty=qty+"&qtywt="+$(this).val();
            });
            
            $.each($('.cost-'+id), function() {
                cst=cst+"&cost="+$(this).val();
            });
             alert("image="+image+"&name="+name+"&desc="+desc+"&id="+id+"&subcategory="+subcategory+"&chkd="+chkd+"&ing="+ing+"&htu="+htu+cst+qty);
            $.ajax({
               type: "POST",
               url: "product_edit_ajax.jsp",
               data: "image="+image+"&name="+name+"&desc="+desc+"&id="+id+"&subcategory="+subcategory+"&chkd="+chkd+"&ing="+ing+"&htu="+htu+cst+qty,
               success: function (data) {
                        $('#updateModal-'+updateid).modal('hide');
                        $('.modal-backdrop').hide();
                        viewdata();
                    }
            });
        }
        
        //delete data here
        function deleteData(deleteid){
            var id=deleteid;
            $.ajax({
               type: "POST",
               url: "product_delete_ajax.jsp",
               data: "id="+id,
               success: function (data) {
                        viewdata();
                    }
            });
        }
        
        function deleterow(pdid,pid){
            var id=pdid;
            var updateid=pid;
            $.ajax({
               type: "POST",
               url: "product_detail_delete_ajax.jsp",
               data: "id="+id,
               success: function (data) {
                        $('#updateModal-'+updateid).modal('hide');
                        $('.modal-backdrop').hide();
                        viewdata();
                    }
            });
        }
        
        function filepreview(objFileInput){
            alert();
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
                        data=data.trim();
                        alert(data);
                        saveData(data);
                    },
                    error: function(data) {
                        alert("error"+data);
                    }
                });
            }
            
            function edfileupload(updateid,checked)
            {
                var image1=$('#image_display-'+updateid).attr('src');
                var image2=$('#image-'+updateid).attr('src');
                if(image1===image2){
                    image2=image2.split('/').pop();
                    updateData(image2,updateid,checked);
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
                        updateData(data,updateid,checked);
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
