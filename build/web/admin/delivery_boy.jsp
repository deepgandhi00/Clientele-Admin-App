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


</style>       
</head>


<body onload="viewdata()">
   
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/clientele" user = "root" password = ""/>
    
    
    <
    
    <!-- Modal -->
    
        <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="addModalLabel">DELIVERY BOYS</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              
<!--              <div class="modal-body">-->
            
            <div class="modal-body">
                <form action="images_upload.jsp"  id="fileup" enctype="multipart/form-data" method="post">
                      <div class="image-upload" style="margin-right: 50%;">
                      
                       
                          <label for="photo" style="font-weight: 500;">DELIVERY BOY-IMAGE<br>
                                <img id="image_upload_preview" src="images/user.png" width="150" height="150"/> 
                            </label>
                       
                        <tr>
                            <td>
                                <input id="photo" type="file" name="file-input" onchange="filepreview(this);"/><br></td>
                       
                    </div> 
                      </form>
               
                      <div class="form-group" style="margin-left: 290px; margin-top: -170px; padding: 2px;">
                     
                        <label for="name" style="font-weight: 500;">NAME</label>
                        <input type="text" class="form-control" id="name"  placeholder="name">
                  
                      
                        <label for="number" style="font-weight: 500;">CONTACT</label>
                        <input type="number" class="form-control" id="number"  placeholder="number">
                    
                        <label for="email" style="font-weight: 500;">EMAIL</label>
                        <input type="email" class="form-control" id="email" aria-describedby="emailHelp" placeholder="emailid">
                      </div>
                
                      <div class="form-group" style="margin-bottom: 80px;">
                      <label for="add" style="margin-right: 200px; padding-right: 200px; font-weight: 500;">ADDRESS</label>
                        <div style="width: 50%; float: left; padding: 2px;">
                        <input type="text" class="form-control" id="shopname"  placeholder="Shop Name">
                        <input type="text" class="form-control" id="shopno"  placeholder="Shop No">
                        <input type="text" class="form-control" id="complex"  placeholder="Complex">
                        <input type="text" class="form-control" id="mallname"  placeholder="Mall name">
                        <input type="text" class="form-control" id="streetname"  placeholder="Steet name">
                        </div>
                        <div style="float: right; width:50%; padding: 2px;">
                        <input type="text" class="form-control" id="streetno"  placeholder="Steet no">
                        <input type="text" class="form-control" id="societyname"  placeholder="Society name">
                        <input type="text" class="form-control" id="societyno"  placeholder="Society no">
                        <input type="text" class="form-control" id="landmark"  placeholder="Landmark">
                        <input type="text" class="form-control" id="road"  placeholder="road">
                    </div>
                </div>
            
               
            <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                    <button type="submit" class="btn btn-primary" onclick="fileupload()">INSERT</button>
                </div>
             
            </div>
                </div>
          </div>
        </div>
     <jsp:include page="header.jsp"/>
    <div class=" col-xs-12 c" id="c"  style="padding:0px; margin:0px; float:right; background-color: white;">
        <button class="btn btn-primary" data-toggle="modal" data-target="#addModal">ADD DELIVERY BOY</button>
    <table class="table table-bordered table-hover" style="margin-top: 30px;">
        <thead>
            <tr>    
                <th>PHOTO</th>
                <th>NAME</th>
                <th>CONTACT NUMBER</th>
                <th>EMAIL</th>
                <th>ADDRESS DETAIL</th>
            </tr>
        </thead>
       
        <tbody>
            
        </tbody>
    </table>
    </div>
    <script>
         function saveData(image_name){
           
           var name=$('#name').val();
           var photo=image_name;
           var number=$('#number').val();
           var email=$('#email').val();
           var shopname=$('#shopname').val();
           var shopno=$('#shopno').val();
           var complex=$('#complex').val();
           var streetname=$('#streetname').val();
           var streetno=$('#streetno').val();
           var road=$('#road').val();
           var landmark=$('#landmark').val();
           var societyname=$('#societyname').val();
           var societyno=$('#societyno').val();
           var mallname=$('#mallname').val();
           
           var q1="query=insert into address_detail(shop_name_or_house_name,shop_no_or_house_no,complex,street_name,society_name,road,landmark,mall_name,street_no,society_no) values('"+shopname+"',"+shopno+",'"+complex+"','"+streetname+"','"+societyname+"','"+road+"','"+landmark+"','"+mallname+"',"+streetno+","+societyno+")";
          
            $.ajax({
               type: "GET",
               url: "ajax_edit_button.jsp",
               data: q1,
               success: function (data) {
                  
                        $.ajax({
                            type: "GET",
                            url:"marketor_insert_ajax.jsp",
                            data:"",
                            success: function(data){
                               
                                data=data.trim();
                               
                                $.ajax({
                                    type:"GET",
                                    url:"ajax_edit_button.jsp",
                                    data: "query=insert into delivery_boy(delivery_boy_image,delivery_boy_name,add_id,delivery_boy_contact,delivery_boy_email) values('"+photo+"','"+name+"','"+data+"','"+number+"','"+email+"')",
                                    success: function(data){
                                       
                                    }
                                    
                                });
                            }
                        });
                    }
            });
            $("#addModal .close").click()
            $('.modal-backdrop').hide();
            viewdata();
            $('#name').val("");
            $('#photo').val("");
            $('#number').val("");
            $('#email').val("");
            $('#shopname').val("");
            $('#shopno').val("");
            $('#complex').val("");
            $('#streetname').val("");
            $('#streetno').val("");
            $('#road').val("");
            $('#landmark').val("");
            $('#societyname').val("");
            $('#societyno').val("");
            $('#mallname').val("");
            
            
        }
        function viewdata(){
            $.ajax({
               type: "GET",
               url: "delivery_boy_select_ajax.jsp",
               data: "",
               success: function (data) {
                        $('tbody').html(data);
                    }
            });
        }
         function updateData(image_name,updateid,add_id){
           var id=updateid;
           var addid=add_id;
           var name=$('#name-'+id).val();
           var photo=image_name;
           var number=$('#number-'+id).val();
           var email=$('#email-'+id).val();
           var shopname=$('#shopname-'+id).val();
           var shopno=$('#shopno-'+id).val();
           var complex=$('#complex-'+id).val();
           var streetname=$('#streetname-'+id).val();
           var streetno=$('#streetno-'+id).val();
           var road=$('#road-'+id).val();
           var landmark=$('#landmark-'+id).val();
           var societyname=$('#societyname-'+id).val();
           var societyno=$('#societyno-'+id).val();
           var q3="query=update delivery_boy set delivery_boy_image='"+photo+"',delivery_boy_name='"+name+"',delivery_boy_email='"+email+"',delivery_boy_contact='"+number+"' where delivery_boy_id='"+id+"'";
           var q2="query=update address_detail set shop_name_or_house_name='"+shopname+"', shop_no_or_house_no='"+shopno+"', complex='"+complex+"', street_name='"+streetname+"', society_name='"+societyname+"', road='"+road+"', landmark='"+landmark+"', street_no='"+streetno+"', society_no='"+societyno+"' where add_id='"+addid+"'";
            
            $.ajax({
               type: "GET",
               url: "ajax_edit_button.jsp",
               data: q2,
               success: function (data) {
                   
                   $('#updateModal-'+updateid).modal('hide');
                   $('.modal-backdrop').hide();
                        viewdata();
                    }
            });
            $.ajax({
                type:"GET",
                url:"ajax_edit_button.jsp",
                data:q3,
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
               data: "query=delete from delivery_boy where delivery_boy_id="+id+"",
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
                else
                {
                var fileReader = new FileReader();
                fileReader.onload = function (e) {                                   
                    $('#photo-'+editp).attr('src',e.target.result);
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
                        saveData(data);
                    },
                    error: function(data) {
                    }
                });
            }          
            function updatefileupload(updateid,add_id)
            {              
                var img1=$('#photoupdate-'+updateid).attr('src');               
                var img2=$('#photo-'+updateid).attr('src');
                if(img1===img2)
                {                   
                    img1=img1.split('/').pop();                   
                   updateData(img1,updateid,add_id); 
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
                        updateData(data,updateid);
                    },
                    error: function(data) {
                    }
                });
            }
        }
    </script>
    <jsp:include page="footer.jsp"/>
</body>
</html>