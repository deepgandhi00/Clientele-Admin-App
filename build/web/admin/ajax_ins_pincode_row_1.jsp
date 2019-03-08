<%-- 
    Document   : ajax_ins_pincode_row
    Created on : 20 Jan, 2018, 9:44:00 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:catch var="e">
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/clientele" user = "root"  password = "" />
<c:if test="${not empty param.query}">`
<sql:update dataSource="${ds}" var="rs">     
     ${param.query}
 </sql:update>
</c:if>

        
    <sql:query dataSource="${ds}" var="result">
        select c.city_name,p.pincode_id,p.pincode from cities c , pincode p where c.city_id=p.city_id
    </sql:query>
    <c:set var="i" value="1"/>
      
    <table class="table" id="table">
        <tr><th>Id</th><th>Pincode</th><th>City</th><th>Edit</th><th>Delete</th></tr>
    <c:forEach var="data" items="${result.rows}">
        <tr>
            <td id="idtd${i}"><span id='id${i}' ><c:out value="${data.pincode_id}"/></span></td>
            <td id="spantd${i}">
                    
                    <div id="banks${i}">
                        <c:set var="pin" value="${fn:split(data.pincode,',')}"/>
                        
                        <c:forEach var="data2" items="${pin}">
                            <span class="tag" id="${i}${data2}">
                                <span>${data2}&nbsp;&nbsp;</span>
                                <span><span role="button" class="spancross${i}"  onclick="deletespans('${i}${data2}','${data.pincode_id}','${i}');">x</span></span>
                            </span>
                        </c:forEach>
                        
                    </div>
                        <div id="addpin${i}"></div>
            </td>
            <td id="citytd${i}"><span id='city${i}'><c:out value="${data.city_name}"/></span></td>
            <td id="cancelbtntd${i}"><span id='button${i}'><button class="cstbtnprimary" onclick="if(iseditmodeon==='false'){custom_cancel_getdata('idtd${i}','spantd${i}','citytd${i}','cancelbtntd${i}');spancross(${i});cstedit(${i});}else{alert('save or cancel last editing');}"><i class="fa fa-pencil"></i></button></span></td>
            <td><button class="cstbtndenger" onclick="delete_tabrow(this,'table','pincode','pincode_id',${data.pincode_id})"><i class="fa fa-minus-square"></i></button></td>
        </tr>
        
        <c:set var="i" value="${i+1}"/>
     </c:forEach>
         
     </table>

</c:catch>
        ${e}
