<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />


<sql:query dataSource="${ds}" var="cities">
            SELECT * FROM cities
            </sql:query>
            <c:forEach var="row" items="${cities.rows}">
                <tr>
                    <td>${row.city_name}</td>
                    
                   
                   <td><button class="btn btn-warning" data-toggle="modal" data-target="#updateModal-${row.city_id}">EDIT</button>
                    
                        
                        <div class="modal fade" id="updateModal-${row.city_id}" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h3 class="modal-title" id="updateModalLabel">UPDATE</h3>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                  <input type="hidden" id="${row.city_id}" value="${row.city_id}">
                                  <div class="form-group">
                                    <label for="name-${row.city_id}">mode</label>
                                    <input type="text" class="form-control" id="name-${row.city_id}" aria-describedby="emailHelp" value="${row.city_name}">
                                  </div>
                                 
                                  
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                                <button type="submit" onclick="updateData(${row.city_id})" class="btn btn-primary">UPDATE</button>
                              </div>
                            </div>
                          </div>
                        </div> 
                          
                        <button class="btn btn-danger" onclick="deleteData(${row.city_id})">DELETE</button>
                    </td>
                </tr>
            </c:forEach>