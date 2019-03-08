<%-- 
    Document   : product_delete_ajax
    Created on : Dec 25, 2017, 6:46:36 PM
    Author     : Royal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}" password = "${pageContext.servletContext.getInitParameter('password')}"/><sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}" password = "${pageContext.servletContext.getInitParameter('password')}"/>
<sql:update dataSource="${ds}" var="deleted">
        delete from product_details where product_id=?
        
        <sql:param value="${param.id}"/>
</sql:update>
<sql:update dataSource="${ds}" var="deleted1">
        delete from product where product_id=?
        
        <sql:param value="${param.id}"/>
</sql:update>