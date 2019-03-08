<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}" password = "${pageContext.servletContext.getInitParameter('password')}"/>
  
<sql:query dataSource="${ds}" var="select_id">
    select add_id as id from marketer where marketor_id=?
    
    <sql:param value="${param.id}"/>
</sql:query>
<sql:update dataSource="${ds}" var="updated1">
    update address_detail set shop_name_or_house_name=?, shop_no_or_house_no=?, complex=?, street_name=?, society_name=?, road=?, landmark=?, street_no=?, society_no=? where add_id=?
    
    <sql:param value="${param.shopname}"/>
    <sql:param value="${param.shopno}"/>
    <sql:param value="${param.complex}"/>
    <sql:param value="${param.streetname}"/>
    <sql:param value="${param.societyname}"/>
    <sql:param value="${param.road}"/>
    <sql:param value="${param.landmark}"/>
    <sql:param value="${param.streetno}"/>
    <sql:param value="${param.societyno}"/>
    <sql:param value="${select_id.rows[0].id}"/>
</sql:update>
    <sql:update dataSource="${ds}" var="updated">
        update marketer set marketor_image=?,marketor_name=?,marketor_email=?,marketor_contact=? where marketor_id=?
        
        <sql:param value="${param.photo}"/>
        <sql:param value="${param.name}"/>
        <sql:param value="${param.number}"/>
        <sql:param value="${param.email}"/>
        <sql:param value="${param.id}"/>
        
    </sql:update>
