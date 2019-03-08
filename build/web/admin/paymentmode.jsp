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
        <script src="js/jquery.dataTables.min.js"></script>
        <script src="js/dataTables.bootstrap.min.js"></script>
</head>


<body onload="viewdata()">
      
    
    
        
    <!-- Modal -->
        <div class="modal fade" id="addModal" tabindex="-1" role="dialog" aria-labelledby="addModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="addModalLabel">ADD DATA</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <form>
              <div class="modal-body">
                    <div class="form-group">
                        <label for="mode">MODE</label>
                        <input type="text" class="form-control" id="mode" placeholder="MODE">
                    </div>
                           
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                <button type="submit" class="btn btn-primary" onclick="saveData()">INSERT</button>
              </div>
              </form>
            </div>
          </div>
        </div>
    <jsp:include page="header.jsp"/>
  <div class=" col-xs-12 c" id="c"  style="padding:0px; margin:0px; float:right;background-color: white;">
      <button class="btn btn-primary" data-toggle="modal" data-target="#addModal">ADD DATA</button>
    <table class="table table-bordered table-hover" id="mytable" style="margin-top: 30px;">
        <thead>
            <tr>
                <th>MODE</th>
                <th>ACTION</th>
          </tr>
        </thead>
        <tbody>
            
        </tbody>
    </table>
    </div>
    
    <script>
        function saveData(){
            var mode=$('#mode').val(); 
            alert();
           alert("query=insert into payment_mode(mode) values('"+mode+"')");
            $.ajax({
               type: "GET",
               url: "ajax_edit_button.jsp",
               data: "query=insert into payment_mode(mode) values('"+mode+"')",
              
               success: function (data) {
                   alert("query=insert into payment_mode(mode) values('"+mode+"')");
                        viewdata();
                        $("#addModal .close").click()
                        $('.modal-backdrop').hide();
                    }
            });
        }
        function viewdata(){
            $.ajax({
               type: "GET",
               url: "payment_select_ajax.jsp",
               data: "",
               success: function (data) {
                        $('tbody').html(data);
                        $('#mytable').DataTable();
                    }
            });
        }
        function updateData(updateid){
            var id=updateid;
            var mode=$('#mode-'+updateid).val();        
            $.ajax({
               type: "GET",
               url: "ajax_edit_button.jsp",
               data:"query=update payment_mode set mode='"+mode+"' where payment_mode_id="+id+"",
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
               data: "query=delete from payment_mode where payment_mode_id=+"+id+"",
               success: function (data) {
                        viewdata();
                    }
            });
        }
    </script>
    <jsp:include page="footer.jsp"/>
</body>
</html>