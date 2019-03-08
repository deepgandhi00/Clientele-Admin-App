<%-- 
    Document   : ajax_ins_route_row
    Created on : 18 Jan, 2018, 11:59:47 AM
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
        SELECT route_id,add_id,route_name from route
    </sql:query>
    <c:set var="i" value="1"/>
    
    <table class="table" id="table">
    <tr><th>Id</th><th>Address Id</th><th>Route Name</th><th>Edit</th><th>Delete</th></tr>
    <c:forEach var="data" items="${result.rows}">
        
        <tr>
        <td id="ridtd${i}"><span id='id${i}'>${data.route_id}</span></td>
        
        <sql:query dataSource="${ds}" var="result1">
            SELECT * from address_detail where add_id in(${data.add_id})
        </sql:query>
                                        
        <td id="spantd${i}">
                    <div id="banks${i}">
        
                        <c:forEach var="data1" items="${result1.rows}">
                            <span class="tag" id="${i}${data1.shop_name_or_house_name}">
                                <span>${data1.shop_name_or_house_name}-${data1.road}&nbsp;&nbsp;</span>
                                <span><span role="button" class="spancross${i}"  onclick="deletespans('${i}${data1.shop_name_or_house_name}','${data1.add_id}','${i}');">x</span></span>
                            </span>
                            
                        </c:forEach>
                    </div>
                    <div><span id='editbanks${i}'></span></div>
        </td>
        
        <td id="addidtd${i}"><span id='addid${i}'>${data.route_name}</span></td>   
        <td id="edbtntd${i}"><span id='button${i}'><button class="cstbtnprimary" onclick="if(iseditmodeon==='false'){custom_cancel_getdata('ridtd${i}','addidtd${i}','spantd${i}');qparam('route_name');setvalues('true','${i}','ajax_edit_button.jsp?','route','route_id','${data.route_id}','${data.add_id}','add_id');edit('addid${i}');spancross(${i});ajaxjs('ajax_add_route_dd.jsp?ids=${data.add_id}',editbankdd);}else{alert('save or cancel last editing');}"><i class="fa fa-pencil"></i></button></span></td>
        <td><button class="cstbtndenger" onclick="delete_tabrow(this,'table','route','route_id','${data.route_id}')"><i class="fa fa-minus-square"></i></button></td>
        </tr>
        <c:set var="i" value="${i+1}"/>
     </c:forEach>
    </table>
</c:catch>
        ${e}