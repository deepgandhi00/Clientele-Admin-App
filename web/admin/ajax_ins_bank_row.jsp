<%-- 
    Document   : ajax_ins_bank_row
    Created on : 17 Jan, 2018, 9:28:32 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:catch var="e">
 <sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />
<c:if test="${not empty param.query}">`
<sql:update dataSource="${ds}" var="rs">     
     ${param.query}
 </sql:update>
</c:if>

<sql:query dataSource="${ds}" var="result">
        SELECT * from bank
    </sql:query>
    <c:set var="i" value="1"/>
    <table class="table" id="table">
        <tr><th>Id</th><th>Name</th><th>Bank Logo</th><th>Edit</th><th>Delete</th></tr>
    <c:forEach var="data" items="${result.rows}">
        <tr>
            <td><span id='id${i}' >${data.bank_id}</span></td>
            <td><span id='bname${i}'>${data.bank_name}</span></td>
            <td><span id='blogo${i}'><img src="images/${data.bank_logo}" style="height: 100px;width:100px;  "></span>
            <form id="img_frm1${i}" method="post" enctype="multipart/form-data" action="images_upload.jsp">
                                
                            <input  type="file" id="delimg${i}"  name="delimg${i}" style="display:none;" class="editimg" onchange="tab_update_id_value('${data.bank_id}');fileupload('img_frm1${i}',get_img_name_update)"/>        
                                                               
                            </form>
            </td>
            
                        
            <td><span id= 'button${i}' ><button class='cstbtnprimary' onclick="if(iseditmodeon==='false'){custom_cancel_getdata('id${i}','bname${i}','blogo${i}','button${i}');qparam('bank_name');setvalues('false','${i}','ajax_edit_button.jsp?','bank','bank_id','${data.bank_id}','','','true','false');edit('bname${i}');}else{alert('save or cancel last editing');}"><i class="fa fa-pencil"></i></button></span></td>
            <td><button class="cstbtndenger" onclick="delete_tabrow(this,'table','bank','bank_id',${data.bank_id});"><i class="fa fa-minus-square"></i></button></td>
        </tr>
    <c:set var="i" value="${i+1}"/>
    </c:forEach>

</c:catch>
        ${e}