<%-- 
    Document   : marketer_type
    Created on : Dec 31, 2017, 10:35:40 AM
    Author     : Royal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title></title>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/font-awesome.css"/>
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        
    </head>
    <body onload="viewdata()">
        <jsp:include page="header.jsp"/>
        <div class=" col-xs-12 c" id="c"  style="padding:0px; margin:0px;width:80%; float:right;background-color: white;">
        <button class="cstbtnprimary" data-toggle="modal" data-target="#addModal">ADD DATA</button>
        
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
                    <div class="form-group">
                      <label for="type">TYPE</label>
                      <input type="text" class="form-control" id="type" placeholder="type">
                    </div>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                <button type="submit" class="btn btn-primary" onclick="saveData()">INSERT</button>
              </div>
            </div>
          </div>
        </div>
        
        
        <!--data display table-->
    <table class="table table-bordered table-hover" style="margin-top: 30px;">
        <thead>
            <tr>
                <th>TYPE</th>
                <th>ACTION</th>
            </tr>
        </thead>
        <tbody>
            
        </tbody>
    </table>
        
        
        
        <script>
        function saveData(){
            var type=$('#type').val();
            
            $.ajax({
               type: "GET",
               url: "ajax_edit_button.jsp",
               data: "query=insert into retailer_type(type) values('"+type+"')",
               success: function (data) {
                        viewdata();
                        $('#addModal').modal('hide');
                        $('.modal-backdrop').hide();
                    }
            });
        }
        
        function viewdata(){
            $.ajax({
               type: "GET",
               url: "retailer_type_ajax.jsp",
               data: "",
               success: function (data) {
                        $('tbody').html(data);
                    }
            });
        }
        function updateData(updateid){
            var id=updateid;
            var type=$('#type-'+updateid).val(); 
            alert(type);
            $.ajax({
               type: "GET",
               url: "ajax_edit_button.jsp",
               data: "query=update retailer_type set type='"+type+"' where retailer_type_id="+id+"",
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
               data: "query=delete from retailer_type where retailer_type_id="+id+"",
               success: function (data) {
                        viewdata();
                    }
            });
        }
        </script>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
