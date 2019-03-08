<%-- 
    Document   : get_bank_ajax
    Created on : 19 Dec, 2017, 3:37:42 PM
    Author     : Abhishek
--%>

<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:catch var="e">
 <sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />
 <sql:query dataSource="${ds}" var="result">
     
    SELECT bank_name from bank where bank_id in(${param.ids})
    
 </sql:query>
    
  <c:forEach var="data" items="${result.rows}">
    <c:out value="${data.bank_name},"/>
  </c:forEach>
    
 <sql:update dataSource="${ds}" var="result">
      
    update credit_card_details set credit_card_type=?,bank_id=? where credit_card_id=?
    
    <sql:param value="${param.cctype}"/>
    <sql:param value="${param.ids}"/>
    <sql:param value="${param.id}"/>
 </sql:update>
    
   <%-- ${result}-->
    <%--${param.cctype}${param.id}-->
    <%--<c:out value="abhi"/>--%>
</c:catch>

 ${e}