<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />
    select add_id as id from delivery_boy where delivery_boy_id=${param.id}
   <sql:query dataSource="${ds}" var="select_id">
    select add_id from delivery_boy where delivery_boy_id=?
    
    <sql:param value="${param.id}"/>
    
    
</sql:query>

    ${select_id.rows[0].add_id}
     
    
    <sql:update dataSource="${ds}" var="updated1">
        update address_detail set shop_name_or_house_name=?, shop_no_or_house_no=?, complex=?, street_name=?, society_name=?, road=?, landmark=?, mall_name=?,street_no=?, society_no=? where add_id=?
    
    <sql:param value="${param.shop_name}"/>
    <sql:param value="${param.shop_no}"/>
    <sql:param value="${param.complex}"/>
    <sql:param value="${param.street_name}"/>
    <sql:param value="${param.society_name}"/>
    <sql:param value="${param.road}"/>
    <sql:param value="${param.landmark}"/>
     <sql:param value="${param.mall_name}"/>
    <sql:param value="${param.street_no}"/>
    <sql:param value="${param.society_no}"/>
    <sql:param value="${select_id.rows[0].add_id}"/>
    </sql:update>
    

    <sql:update dataSource="${ds}" var="updated">
        update delivery_boy set delivery_boy_image=?,delivery_boy_name=?,delivery_boy_email=?,delivery_boy_contact=? where delivery_boy_id=?
        
        <sql:param value="${param.photo}"/>
        <sql:param value="${param.name}"/>
        <sql:param value="${param.email}"/>
        <sql:param value="${param.number}"/>
        <sql:param value="${param.id}"/>
        
    </sql:update>
