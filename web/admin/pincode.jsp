<%-- 
    Document   : pincode
    Created on : 16 Dec, 2017, 10:34:17 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!doctype html>

<html>
<head>
        <link  rel="stylesheet"   href="css/bootstrap.css">
<link   rel="stylesheet"  href="css/bootstrap-theme.css">
<link   rel="stylesheet"  href="css/font-awesome.css">

        <script  type="text/javascript" src="js/jquery-3.2.1.min.js"></script>
        <script  type="text/javascript" src="js/bootstrap.js"></script>
        <script  type="text/javascript" src="js/animationCounter.js"></script>
        <script  type="text/javascript" src="js/scrollspy.js"></script>


        <!--------------------- custom javascripts ---------------->
        <script  type="text/javascript" src="js/ajaxjs.js"></script>
        <script  type="text/javascript" src="js/spancrossjs.js"></script>
        <script  type="text/javascript" src="js/del_tab_row.js"></script>
        <script  type="text/javascript" src="js/ins_tab_row.js"></script>
        <script  type="text/javascript" src="js/fileup.js"></script>
        <script  type="text/javascript" src="js/hidespancross.js"></script>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>pincode</title>
       
</head>

<body>
    
   <%-- <c:set var="tmp" value='${fn:join(paramValues["select_bank"], ",")}'/>
    ${tmp}
    <c:set var="csv" value=""/>
    <c:forEach items="${paramValues['select_bank']}" var="t">
        <c:set var="csv" value="${csv},${t}"/>
        ${t}
    </c:forEach>--%>
    
<div>
    <c:catch var="e">
        
 <c:import  url="header.jsp"/>
 
 <script  type="text/javascript" src="bootstrap-3.3.7-dist/js/jquery-ui-1.12.1.js"></script>
    <script  type="text/javascript" src="javascript/editjs.js"></script>
    <link   rel="stylesheet"  href="bootstrap-3.3.7-dist/css/jquery-ui-1.12.1.css">
    
<!--looped data that is in database-->
<div class=" col-xs-12 c" id="c"  style="padding:0px; margin:0px;width:80%; float:right;background-color: white;">
    <div > <button type="button" class="cstbtnprimary" data-toggle="modal" data-target="#myModal">Insert</button></div>
    <sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />
    
    
    <c:choose>
    
    <c:when test="${param.command == 'new'}">
        <c:if test="${param.pincodes != null}">
            <sql:update dataSource="${ds}" var="rs">
                insert into pincode(pincode,city_id) values (?,?)
            <sql:param value="${param.pincodes}"/>
            
            <sql:param value="${param.select_cities}"/>
            
            </sql:update>
        </c:if>
    </c:when>

    </c:choose>
    
                <jsp:include page="ajax_ins_pincode_row.jsp"/>
                
                
                
    </c:catch>
              
        
         <!------------------------INSERT DATA MODEL------------------>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="width:700px;">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Insert Bank</h4>
      </div>
          
        
        <div class="modal-body" >
             <form method="get" id="insertfrm">
        
        <h1>pincode</h1>
	<table>
            <tr>
                <td>pincodes</td>
		<td><input type="text" required="required" name="pincodes" placeholder="Enter FullName" id="pincode"/></td>
            </tr>
            
            <tr>
                <td>
                    <sql:query dataSource="${ds}" var="result">
                        SELECT * from cities
                    </sql:query>
    
                    <select name="select_cities" id="city">
                    <c:forEach var="data" items="${result.rows}">
                        <option value="${data.city_id}-${data.city_name}" > <c:out value="${data.city_name}"/></option>
                    </c:forEach>
                    </select>  
                </td>
            </tr>
            
           
        </table>
      
    <input type="hidden" name="command" value="new">
    </form>
        </div>
        
      <div class="modal-footer"  >
        <button type="button" class="cstbtndefault" data-dismiss="modal">Close</button>
        <button type="button" class="cstbtnprimary" style="" onclick="insertdata();">Submit</button>
      </div>
        
    </div>
  </div>
</div>
         
         
<script>
    
function insertdata()
{
        var a1=document.getElementById('pincode').value;
        alert(a1);
        var b=$('#city').val();
        var c=b.split('-');
        
        table_field('pincode','city_id');      
        table_value(a1,c[0]);
        tab('ajax_ins_pincode_row.jsp','pincode','pincode_id');   
}


</script>
</div>
 <c:import  url="footer.jsp"/>
</body>
</html>