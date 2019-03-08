<%-- 
    Document   : del_tab_row_ajax
    Created on : 25 Dec, 2017, 6:35:12 PM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<c:catch var="e">
 <sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />
 <sql:update dataSource="${ds}" var="rs">
            delete from ${param.table} where ${param.key_field}=${param.key_value}
            
            <%--  <sql:param value="${param.table}"/>
            <sql:param value="${param.key_field}"/>
            <sql:param value="${param.key_value}"/>--%>
 </sql:update>
</c:catch>
    ${e}