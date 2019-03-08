<%-- 
    Document   : insert_route
    Created on : 15 Dec, 2017, 9:09:36 AM
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
        
        
         <!--------------------- custom javascripts ---------------->
        <script  type="text/javascript" src="js/ajaxjs.js"></script>
        <script  type="text/javascript" src="js/spancrossjs.js"></script>
        <script  type="text/javascript" src="js/del_tab_row.js"></script>
        <script  type="text/javascript" src="js/ins_tab_row.js"></script>
        <script  type="text/javascript" src="js/fileup.js"></script>
        <script  type="text/javascript" src="js/hidespancross.js"></script>
        
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>route</title>
        <style>
            body{
                padding: 0px;
                margin: 0px;
            }
            
            div.table_name
            {
                width: 100%;
                background-color: #2d3b50;
            }
            div.table_name ul li
            {
                background-color: #2d3b50;
            }
            div.card{
                width: 20%;
                margin: 20px;
                height: 250px;
                max-height: 250px;
                box-shadow: 2px 2px 10px #000;  
                //margin: 10px;
            }
            div.card_blank{
                margin: 20px;
                height: 250px;
                line-height: 250px;
                max-height: 250px;
                box-shadow:   2px 2px 10px #000;      
            }
        </style>
    <meta charset="utf-8">

</head>

<body style="background-color: white;">
    <c:import  url="header.jsp"/>
    
    <script  type="text/javascript" src="js/jsssssssquery-ui-1.12.1.js"></script>
    <script  type="text/javascript" src="js/editjs.js"></script>
    
<div class=" col-xs-12 c" id="c"  style="padding:0px; margin:0px;width:80%; float:right;background-color: white;">
<% 
    try{ 
%>
    <!--looped data that is in database-->
    <sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />
    
    <c:choose>  
            
    <c:when test="${param.command == 'new'}">
        
        
       
        
    <c:if test="${param.route_name != null}">
        <sql:update dataSource="${ds}" var="rs">
            insert into route(add_id,route_name) values (?,?)
            <c:set var="tmp" value='${fn:join(paramValues["select_addid"], ",")}'/>
            <sql:param value="${tmp}"/>
            
            <sql:param value="${param.route_name}"/>
        </sql:update>
        
    </c:if>
    </c:when>
           
</c:choose>
        <div > <button type="button" class="cstbtnprimary" data-toggle="modal" data-target="#myModal">Insert</button></div>     
   
        <jsp:include page="ajax_ins_route_row.jsp"/>
        
        
        
        
        <!---------------------------------- insert data model --------------------------------------->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content" >
        
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Insert Bank</h4>
      </div>
      <form method="get" id="frm">
        <div class="modal-body">
           
        
           
           
            <input type='hidden'  name='command' value="new">
        
             <h1>ROUTE</h1>
	<table>
            <tr>
                <td>Routes</td>
		<td> <sql:query dataSource="${ds}" var="result">
                        SELECT * from address_detail
                    </sql:query>
    
                    <select multiple name="select_addid" id="selectaddid">
                    <c:forEach var="data" items="${result.rows}">
                        <option value="${data.add_id}"><c:out value="${data.shop_name_or_house_name}-${data.road}"/></option>
                    </c:forEach>
                    </select>  
                </td>
            </tr>
                   
            <tr>
                <td>Route Name</td>
                <td><input type="text" name="route_name" id="route_name"></td>
            </tr>
        
           
        </table>
       
        
       
        
        </div>
        
     <div class="modal-footer"  >
        <button type="button" class="cstbtndefault" data-dismiss="modal">Close</button>
        <button type="button" class="cstbtnprimary" onclick="cstinsert();">submit</button>
      </div>
      </form> 
    
         
  </div>
     
</div>
   </div> 
<%
    }
    catch(Exception e)
    {
        out.print(e);
    }
%>

<script>
  
  function cstinsert()
  {
      var a=document.getElementById('route_name').value;
      var values = $('#selectaddid').val();
      
      var csv="";
    
    for(var i=0;i<values.length;i++)
    {
      csv=csv+values[i]+",";
    }
        csv=csv.substring(0,csv.length-1);
        
        table_field('add_id','route_name');      
        table_value(csv,a);
        tab('ajax_ins_route_row.jsp','route','route_id');   
        
        document.getElementById('frm').reset();
        
  }
</script>
</div>
    
<c:import  url="footer.jsp"/>

</body>
</html>


