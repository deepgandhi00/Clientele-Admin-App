<%-- 
    Document   : ajax_ins_ccard_row
    Created on : 17 Jan, 2018, 11:27:57 AM
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
        SELECT * from debit_card_details
    </sql:query>
        
    <c:set var="i" value="1"/>
     <table class="table" id="table">
            <tr><th>Id</th><th>Debit Card Type</th><th>Bank Id</th><th>DcLogo</th><th>Edit</th><th>delete</th></tr>
    <c:forEach var="data" items="${result.rows}">
       
            <tr>
            <td id="idtd${i}" ><span id='id${i}'>${data.debit_card_id}</span></td>
            <td id="dctypetd${i}"><span id='dctype${i}'>${data.debit_card_type}</span></td>
            <sql:query dataSource="${ds}" var="result">
                        SELECT bank_id,bank_name from bank where bank_id in(${data.bank_id})
                    </sql:query>
                        
            <td id="spantd${i}">
                <div id="banks${i}">
                        <c:forEach var="data1" items="${result.rows}">
                            <span class="tag" id="${i}${data1.bank_name}">
                                <span>${data1.bank_name}&nbsp;&nbsp;</span>
                                <span><span role="button" class="spancross${i}"  onclick="deletespans('${i}${data1.bank_name}','${data1.bank_id}','${i}');">x</span></span>
                            </span>
                        </c:forEach>
                        
                    </div>
                <span id='editbanks${i}'></span>
                
            </td>
            
            <td id="logotd${i}">
                <span id='dclogo${i}'><img src="images/${data.debit_logo}" style="width:100px;height: 100px;"></span>
                <form id="img_frm1${i}" method="post" enctype="multipart/form-data" action="images_upload.jsp">
                                
                            <input  type="file" id="delimg${i}"  name="delimg${i}" style="display:none;" class="editimg" onchange="tab_update_id_value('${data.debit_card_id}');fileupload('img_frm1${i}',get_img_name_update)"/>        
                                                               
                            </form>
            </td>
            <td id="btnedtd${i}"><span id='button${i}'><button class="cstbtnprimary" onclick="if(iseditmodeon==='false'){custom_cancel_getdata('spantd${i}','dctype${i}','logotd${i}','btnedtd${i}');qparam('debit_card_type');setvalues('true',${i},'ajax_edit_button.jsp?','debit_card_details','debit_card_id','${data.debit_card_id}','${data.bank_id}','bank_id','true','true');edit('dctype${i}');spancross(${i});ajaxjs('ajax_add_dd.jsp?ids=${data.bank_id}',editbankdd);}else{alert('save or cancel last editing');}"><i class="fa fa-pencil"></i></button></span></td>
            <td id="btndeltd${i}"><button class="cstbtndenger" onclick="delete_tabrow(this,'table','debit_card_details','debit_card_id',${data.debit_card_id})"><i class="fa fa-minus-square"></i></button></td>
           </tr>
               
     <c:set var="i" value="${i+1}"/>
     </c:forEach>
      </table>
        
    </c:catch> 
        ${e}
