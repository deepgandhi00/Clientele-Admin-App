<%-- 
    Document   : product_ajax
    Created on : Dec 25, 2017, 12:01:52 PM
    Author     : Royal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}" password = "${pageContext.servletContext.getInitParameter('password')}"/>
<!-- display data here -->
<sql:query var="product_display" dataSource="${ds}">
    select a.product_id,a.product_name,a.product_ingredients,a.product_desc,a.product_how_to_use,a.product_image,
    c.subcategory_name FROM product a,
    subcategory c WHERE a.subcategory_id=c.subcategory_id
</sql:query>

<c:set var="column" value="QTY"/>
<c:set var="checked" value="0"/>
    <c:forEach var="row" items="${product_display.rows}">
        <tr>
            <td>${row.product_id}</td>
            <td><img id="image_display-${row.product_id}" src="images/${row.product_image}" height="150" width="150"></td>
            <td>${row.product_name}</td>
            <td>${row.subcategory_name}</td>
            <td>${row.product_ingredients}</td>
            <td>${row.product_desc}</td>
            <td>${row.product_how_to_use}</td>
            <td>
                <sql:query var="product_details" dataSource="${ds}">
                    SELECT * FROM product_details WHERE product_id=${row.product_id}
                </sql:query>
                <c:set var="column" value="QTY"/>
                <table class="table table-bordered table-hover">
                    <thead>
                        <tr>
                            <c:if test="${product_details.rows[0].product_detail_qty == NULL}">
                        <script></script>
                                <c:set var="column" value="WT"/>
                            </c:if>
                            <th>${column}</th>
                            <th>COST</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="row2" items="${product_details.rows}">
                            <tr>
                                <c:choose>
                                    <c:when test="${column=='QTY'}">
                                        <td>${row2.product_detail_qty}</td>
                                    </c:when>
                                    <c:otherwise>
                                        <td>${row2.product_detail_wt}</td>
                                    </c:otherwise>
                                </c:choose>
                                        <td>${row2.product_detail_cost}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </td>
            <td>
                <button class="cstbtnprimary" data-toggle="modal" data-target="#updateModal-${row.product_id}"><i class="fa fa-pencil"></i></button>
                
                <div class="modal fade" id="updateModal-${row.product_id}" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h3 class="modal-title" id="updateModalLabel">UPDATE</h3>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                  
                                  <div class="image-upload">
                                              <img id="image-${row.product_id}" src="images/${row.product_image}" width="250" height="250"/>
                                      </div>
                                    <form id="fileup-${row.product_id}" method="post" enctype="multipart/form-data" action="images_upload.jsp">
                                              <div class="image-upload">
                                                  <label for="file-input">
                                                      <span class="fa fa-pencil"></span>
                                                      <input id="file-input" type="file" name="file-input" value="${row.product_image}" onchange="edfilepreview(this,${row.product_id})"/><br>
                                                  </label>
                                                  
                                              </div>
                                   </form>
                               <div class="form-group">
                                    <label for="name-${row.product_id}">NAME</label>
                                    <input type="text" class="form-control" id="name-${row.product_id}" aria-describedby="emailHelp" value="${row.product_name}">
                                </div>
                                <div class="form-group">
                                  <label for="ing-${row.product_id}">INGREDIENTS</label>
                                  <textarea class="form-control" id="ing-${row.product_id}">${row.product_ingredients}</textarea>
                                </div>
                                <div class="form-group">
                                  <label for="desc-${row.product_id}">DESCRIPTION</label>
                                  <textarea class="form-control" id="desc-${row.product_id}">${row.product_desc}</textarea>
                                </div>
                              
                              <div>
                                  <sql:query var="product_details" dataSource="${ds}">
                                        SELECT * FROM product_details WHERE product_id=${row.product_id}
                                    </sql:query>
                                    <c:set var="column" value="QTY"/>
                                    <table class="table table-bordered table-hover">
                                        <thead>
                                            <tr>
                                                <c:if test="${product_details.rows[0].product_detail_qty == NULL}">
                                                    <c:set var="column" value="WT"/>
                                                </c:if>
                                                <th>${column}</th>
                                                <th>COST</th>
                                                <th>DELETE</th>
                                            </tr>
                                        </thead>
                                        <tbody id="updateqtywt-${row.product_id}">
                                            <c:forEach var="row2" items="${product_details.rows}">
                                                <tr>
                                                    <c:choose>
                                                        <c:when test="${column}=='QTY'">
                                                            <td><input type="text" class="qtywt-${row.product_id}" name="qtywt[]" value="${row2.product_detail_qty}"></td>
                                                            <c:set var="checked" value="1"/>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <td><input type="text" class="qtywt-${row.product_id}" name="qtywt[]" value="${row2.product_detail_wt}"></td>
                                                        </c:otherwise>
                                                    </c:choose>
                                                            <td><input type="text" class="cost-${row.product_id}" name="cost[]" value="${row2.product_detail_cost}"></td>
                                                            <td><span class="fa fa-trash-o" onclick="deleterow(${row2.product_detail_id},${row.product_id})" style="color: red;"></span></td>
                                                </tr>
                                            </c:forEach>
                                        <td><img src="images/add_image.png" width="20" height="20" onclick="add_row2(${row.product_id})"/></td>
                                        </tbody>
                                    </table>
                              </div>
                                <div class="form-group">
                                  <label for="htu-${row.product_id}">HOW TO USE</label>
                                  <textarea class="form-control" id="htu-${row.product_id}">${row.product_how_to_use}</textarea>
                                </div>
                                <div class="form-group">
                                  <label for="subcategory-${row.product_id}">SUBCATEGORY</label>
                                  <sql:query dataSource="${ds}" var="subcategory">
                                     select subcategory_id,subcategory_name from subcategory
                                  </sql:query>
                                     <select id="subcategory-${row.product_id}">
                                        <c:forEach var="row1" items="${subcategory.rows}">
                                            <option value="${row1.subcategory_id}">${row1.subcategory_name}</option>
                                        </c:forEach>
                                      </select>
                                </div>   
                                  
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                                <button type="submit" onclick="edfileupload(${row.product_id},${checked})" class="btn btn-primary">UPDATE</button>
                              </div>
                            </div>
                          </div>
                        </div> 
                
                
                                <button class="cstbtndenger" onclick="deleteData(${row.product_id})"><i class="fa fa-minus-square"></i></button>
            </td>
        </tr>
        
    </c:forEach>
        