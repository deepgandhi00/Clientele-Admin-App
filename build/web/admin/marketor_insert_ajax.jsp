<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/clientele" user = "root" password =""/>

    <sql:query dataSource="${ds}" var="add_id1">
        select max(add_id) as id from address_detail
        
    </sql:query>
        <c:out value="${add_id1.rows[0].id}"/>
               
   