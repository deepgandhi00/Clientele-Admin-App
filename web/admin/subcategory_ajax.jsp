<%-- 
    Document   : subcategory_ajax
    Created on : Dec 21, 2017, 10:30:28 PM
    Author     : Royal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}" password = "${pageContext.servletContext.getInitParameter('password')}"/>
 <%-- display data here--%>        
        
        <sql:query dataSource="${ds}" var="subcategory">
            SELECT a.subcategory_id,a.subcategory_image,a.subcategory_name,a.subcategory_desc,b.category_name FROM subcategory a,category b where a.category_id=b.category_id
            </sql:query>
            <c:forEach var="row" items="${subcategory.rows}">
                <tr>
                    <td><img id="image_display-${row.subcategory_id}" src="images/${row.subcategory_image}" height="150" width="150"></td>
                    <td>${row.subcategory_name}</td>
                    <td>${row.category_name}</td>
                    <td>${row.subcategory_desc}</td>
                    <td>
                        <button class="cstbtnprimary" data-toggle="modal" data-target="#updateModal-${row.subcategory_id}"><i class="fa fa-pencil"></i></button>
                    
                        
                        <div class="modal fade" id="updateModal-${row.subcategory_id}" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h3 class="modal-title" id="updateModalLabel">UPDATE</h3>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                  <input type="hidden" id="${row.subcategory_id}" value="${row.subcategory_id}">
                                  <div class="image-upload">
                                              <img id="image-${row.subcategory_id}" src="images/${row.subcategory_image}" width="250" height="250"/>
                                      </div>
                                    <form id="fileup-${row.subcategory_id}" method="post" enctype="multipart/form-data" action="images_upload.jsp">
                                              <div class="image-upload">
                                                  <label for="file-input">
                                                      <span class="fa fa-pencil"></span>
                                                      <input id="file-input" type="file" name="file-input" onchange="edfilepreview(this,${row.subcategory_id})"/><br>
                                                  </label>
                                                  
                                              </div>
                                   </form>
                                  <div class="form-group">
                                    <label for="name-${row.subcategory_id}">name</label>
                                    <input type="text" class="form-control" id="name-${row.subcategory_id}" value="${row.subcategory_name}">
                                  </div>
                                  <div class="form-group">
                                    <label for="desc-${row.subcategory_id}">description</label>
                                    <textarea class="form-control" id="desc-${row.subcategory_id}">${row.subcategory_desc}</textarea>
                                  </div>
                                  <div class="form-group">
                                    <label for="category-${row.subcategory_id}">CATEGORY</label>
                                    <sql:query dataSource="${ds}" var="category">
                                       select category_id,category_name from category
                                    </sql:query>
                                     
                                       <select id="category-${row.subcategory_id}">
                                           <c:forEach var="row1" items="${category.rows}"><c:set var="tmp" value=""/>
                                              
                                              <c:if test="${row.category_name==row1.category_name}">
                                                  <c:set var="tmp" value="selected"/>
                                              </c:if>
                                              <option ${tmp} value="${row1.category_id}">${row1.category_name}</option>
                                          </c:forEach>
                                        </select>

                                  </div>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                                <button type="submit" onclick="edfileupload(${row.subcategory_id})" class="btn btn-primary">UPDATE</button>
                              </div>
                            </div>
                          </div>
                        </div> 
                          
                        <button class="cstbtndenger" onclick="deleteData(${row.subcategory_id})"><i class="fa fa-minus-square"></i></button>
                    </td>
                </tr>
            </c:forEach>