<%-- 
    Document   : ajax_add_dd_ubank
    Created on : 31 Dec, 2017, 11:44:09 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />

<sql:query dataSource="${ds}" var="result">
        SELECT * FROM bank WHERE bank_name IN (${param.ids});
</sql:query>
                
<c:forEach var="data" items="${result.rows}">${data.bank_name},</c:forEach>      