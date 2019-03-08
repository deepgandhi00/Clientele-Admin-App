<%-- 
    Document   : product_detail_delete_ajax
    Created on : Dec 27, 2017, 11:40:29 AM
    Author     : Royal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}" password = "${pageContext.servletContext.getInitParameter('password')}"/>
<sql:update dataSource="${ds}" var="deleted">
        delete from product_details where product_detail_id=?
        
        <sql:param value="${param.id}"/>
</sql:update>
