<%-- 
    Document   : ajax_check_multiple
    Created on : 28 Jan, 2018, 7:42:20 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:catch var="e">
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />

<sql:query dataSource="${ds}" var="result">
    SELECT * from ${param.table} where ${param.tabfield}='${param.val}'
</sql:query>
    
    <c:choose>
        <c:when test="${result.rowCount >= 1}">
            yes
        </c:when>
        <c:otherwise>
            no
        </c:otherwise>
    </c:choose>
</c:catch>
            ${e}
       
                                  