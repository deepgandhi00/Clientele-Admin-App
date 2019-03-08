<%-- 
    Document   : product_add_ajax
    Created on : Dec 22, 2017, 11:44:53 AM
    Author     : Royal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}" password = "${pageContext.servletContext.getInitParameter('password')}"/>
<sql:update dataSource="${ds}" var="added">
        INSERT INTO product( subcategory_id, product_name, product_ingredients, product_type_id, product_desc, product_how_to_use, product_image ) 
VALUES ( ?, ?, ?, ?, ?, ?, ? )
        <sql:param value="${param.subcategory}"/>
        <sql:param value="${param.name}"/>
        <sql:param value="${param.ing}"/>
        <sql:param value="3"/>
        <sql:param value="${param.desc}"/>
        <sql:param value="${param.htu}"/>
        <sql:param value="${param.image}"/>
</sql:update>

<sql:query var="select_id" dataSource="${ds}">
    select max(product_id) as id from product
</sql:query>

    
<c:set var="fn" value="product_detail_wt"/>

<c:if test="${param.selected=='qty'}">
    <c:set var="fn" value="product_detail_qty"/>
</c:if>
<c:forEach var="totalval" begin="0" end='${param.count-1}'>
<sql:update dataSource="${ds}" var="added1">
        INSERT INTO product_details( product_id, ${fn}, product_detail_cost) 
VALUES ( ?, ?, ? )
        <sql:param value="${select_id.rows[0].id}"/>
        <sql:param value='${paramValues["qtywt"][totalval]}'/>
        <sql:param value='${paramValues["cost"][totalval]}'/>
</sql:update>
</c:forEach>