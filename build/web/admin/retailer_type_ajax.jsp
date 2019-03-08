<%-- 
    Document   : retailer_type_ajax
    Created on : Dec 31, 2017, 10:42:37 AM
    Author     : Royal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}" password = "${pageContext.servletContext.getInitParameter('password')}"/>


<%-- display data here--%>
        <sql:query dataSource="${ds}" var="retailer_type">
            SELECT * FROM retailer_type
            </sql:query>
            <c:forEach var="row" items="${retailer_type.rows}">
                <tr>
                    <td>${row.type}</td>
                    
                    
                    <td><button class="cstbtnprimary" data-toggle="modal" data-target="#updateModal-${row.retailer_type_id}"><i class="fa fa-pencil"></i></button>
                        <div class="modal fade" id="updateModal-${row.retailer_type_id}" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h3 class="modal-title" id="updateModalLabel">UPDATE</h3>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                  <div class="form-group">
                                    <label for="type">TYPE</label>
                                    <input type="text" class="form-control" id="type-${row.retailer_type_id}" value="${row.type}">
                                  </div>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                                <button type="submit" onclick="updateData(${row.retailer_type_id})" class="btn btn-primary">UPDATE</button>
                              </div>
                            </div>
                          </div>
                        </div>
                              
                                <button class="cstbtndenger" onclick="deleteData(${row.retailer_type_id})"><i class="fa fa-minus-square"></i></button>
                </tr>
            </c:forEach>
