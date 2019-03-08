<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />


<sql:query dataSource="${ds}" var="payment_mode">
            SELECT * FROM payment_mode
            </sql:query>
            <c:forEach var="row" items="${payment_mode.rows}">
                <tr>
                    <td>${row.mode}</td>
                    
                  <td><button class="btn btn-warning" data-toggle="modal" data-target="#updateModal-${row.payment_mode_id}">EDIT</button>
                                     
                        <div class="modal fade" id="updateModal-${row.payment_mode_id}" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h3 class="modal-title" id="updateModalLabel">UPDATE</h3>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                  <input type="hidden" id="${row.payment_mode_id}" value="${row.payment_mode_id}">
                                  <div class="form-group">
                                    <label for="mode-${row.payment_mode_id}">mode</label>
                                    <input type="text" class="form-control" id="mode-${row.payment_mode_id}" aria-describedby="emailHelp" value="${row.mode}">
                                  </div>
                                                              
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                                <button type="submit" onclick="updateData(${row.payment_mode_id})" class="btn btn-primary">UPDATE</button>
                              </div>
                            </div>
                          </div>
                        </div> 
                          
                        <button class="btn btn-danger" onclick="deleteData(${row.payment_mode_id})">DELETE</button>
                    </td>
                </tr>
            </c:forEach>