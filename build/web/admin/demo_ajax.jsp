<%-- 
    Document   : demo_ajax
    Created on : Dec 21, 2017, 12:34:34 PM
    Author     : Royal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>
<%--<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/test" user = "root" password = ""/>--%>

    <sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}" password = "${pageContext.servletContext.getInitParameter('password')}"/>
        
        <%-- display data here--%>
        <sql:query dataSource="${ds}" var="category">
            SELECT * FROM category
            </sql:query>
            <c:forEach var="row" items="${category.rows}">
                <tr>
                    <td><img id="image_display-${row.category_id}" src="images/${row.category_image}" height="150" width="150"></td>
                    <td>${row.category_name}</td>
                    <td>${row.category_desc}</td>
                    
                    


                   <td><button class="cstbtnprimary" data-toggle="modal" data-target="#updateModal-${row.category_id}"><i class="fa fa-pencil"></i></button>
                    
                        
                        <div class="modal fade" id="updateModal-${row.category_id}" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h3 class="modal-title" id="updateModalLabel">UPDATE</h3>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                  <input type="hidden" id="${row.category_id}" value="${row.category_id}">
                                  
                                        <div class="image-upload">
                                              <img id="image-${row.category_id}" src="images/${row.category_image}" width="250" height="250"/>
                                      </div>
                                    <form id="fileup-${row.category_id}" method="post" enctype="multipart/form-data" action="images_upload.jsp">
                                              <div class="image-upload">
                                                  <label for="file-input">
                                                      <span class="fa fa-pencil"></span>
                                                      <input id="file-input" type="file" name="file-input" onchange="edfilepreview(this,${row.category_id})"/><br>
                                                  </label>
                                                  
                                              </div>
                                   </form>
                                  <div class="form-group">
                                    <label for="name-${row.category_id}">name</label>
                                    <input type="text" class="form-control" id="name-${row.category_id}" value="${row.category_name}">
                                  </div>
                                  <div class="form-group">
                                    <label for="desc-${row.category_id}">description</label>
                                    <textarea class="form-control" id="desc-${row.category_id}">${row.category_desc}</textarea>
                                  </div>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                                <button type="submit" onclick="edfileupload(${row.category_id})" class="btn btn-primary">UPDATE</button>
                              </div>
                            </div>
                          </div>
                        </div> 
                          
                        <button class="cstbtndenger" onclick="deleteData(${row.category_id})"><i class="fa fa-minus-square"></i></button>
                    </td>
                </tr>
            </c:forEach>