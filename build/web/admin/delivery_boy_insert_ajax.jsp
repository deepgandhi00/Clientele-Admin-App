<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />

<sql:update dataSource="${ds}" var="added">
        insert into address_detail(shop_name_or_house_name,shop_no_or_house_no,complex,street_name,society_name,road,landmark,mall_name,street_no,society_no) values(?,?,?,?,?,?,?,?,?,?)
        
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
       
       
        
        
    </sql:update>
        
    <sql:query dataSource="${ds}" var="adds">
        select max(add_id)as id from address_detail
    </sql:query>
        
        <sql:update dataSource="${ds}" var="add">
              insert into delivery_boy(delivery_boy_image,delivery_boy_name,add_id,delivery_boy_contact,delivery_boy_email) values(?,?,?,?,?)
             
        <sql:param value="${param.photo}"/>
        <sql:param value="${param.name}"/>
        <sql:param value="${adds.rows[0].id}"/>
        <sql:param value="${param.number}"/>
        <sql:param value="${param.email}"/>
        
        </sql:update>
             