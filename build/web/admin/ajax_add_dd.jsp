<%-- 
    Document   : ajax_add_dd
    Created on : 30 Dec, 2017, 9:48:30 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
 <sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />
<sql:query dataSource="${ds}" var="result">
        SELECT * FROM bank WHERE bank_id NOT IN (${param.ids});
</sql:query>

<c:forEach var="data" items="${result.rows}">${data.bank_name},</c:forEach>
:
<c:forEach var="r" items="${result.rows}">${r.bank_id},</c:forEach> 