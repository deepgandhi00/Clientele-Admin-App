<%-- 
    Document   : product_edit_ajax
    Created on : Dec 26, 2017, 4:18:20 PM
    Author     : Royal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}" password = "${pageContext.servletContext.getInitParameter('password')}"/>
<sql:update dataSource="${ds}" var="deleted1">
    delete FROM product_details WHERE product_id=${param.id}
</sql:update>
    deleted:${deleted1}<br>
<sql:update dataSource="${ds}" var="updated">
    update product set subcategory_id=?, product_name=?, product_ingredients=?, product_desc=?, product_how_to_use=?, product_image=? WHERE product_id=?
    
    <sql:param value="${param.subcategory}"/>
    <sql:param value="${param.name}"/>
    <sql:param value="${param.ing}"/>
    <sql:param value="${param.desc}"/>
    <sql:param value="${param.htu}"/>
    <sql:param value="${param.image}"/>
    <sql:param value="${param.id}"/>
</sql:update>
    
    
<c:set var="fn" value="product_detail_wt"/>

<c:if test="${param.chkd=='1'}">
    <c:set var="fn" value="product_detail_qty"/>
</c:if>
<c:set var="c" value="${fn:length(paramValues['qtywt'])-1}"/>
<c:forEach var="totalval" begin="0" end='${c}'>
    ${param.id}<br>
<sql:update dataSource="${ds}" var="added1">
        INSERT INTO product_details( product_id, ${fn}, product_detail_cost) 
VALUES ( ?, ?, ? )
        <sql:param value="${param.id}"/>
        <sql:param value='${paramValues["qtywt"][totalval]}'/>
        <sql:param value='${paramValues["cost"][totalval]}'/>
</sql:update>
</c:forEach>