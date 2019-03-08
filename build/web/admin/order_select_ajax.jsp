<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />


<sql:query dataSource="${ds}" var="order">
            select a.order_id,a.date,a.time,a.status,b.retailer_name,c.mode,d.delivery_boy_name from 
            product_order a,retailers b,payment_mode c,delivery_boy d where a.retailer_id=b.retailer_id 
            and a.payment_mode_id=c.payment_mode_id and a.delivery_boy_id=d.delivery_boy_id
            </sql:query>
            <c:forEach var="row" items="${order.rows}">
                <tr>
                    <td>${row.date}</td>
                    <td>${row.time}</td>
                    <td>${row.status}</td>
                   
                  
                        
<!--                        <div class="modal fade" id="updateModal-${row.order_id}" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h3 class="modal-title" id="updateModalLabel">UPDATE</h3>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                            <div class="modal-body">
                                  <input type="hidden" id="${row.order_id}" value="${row.order_id}">
                                  <div class="form-group">
                                    <label for="date-${row.order_id}">date</label>
                                    <input type="date" class="form-control" id="date-${row.order_id}" aria-describedby="emailHelp" value="${row.date}">
                                  </div>
                                  <div class="form-group">
                                    <label for="time-${row.order_id}">time</label>
                                    <input type="datetime" class="form-control" id="time-${row.order_id}" value="${row.time}">
                                  </div>
                                  <div class="form-group">
                                    <label for="status-${row.order_id}">status</label>
                                    <input type="text" class="form-control" id="status-${row.order_id}" value="${row.status}">
                                  </div>
                                  
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                                <button type="submit" onclick="updateData(${row.wallet_id})" class="btn btn-primary">UPDATE</button>
                              </div>
                            </div>
                          </div>
                        </div> 
                          
                        <button class="btn btn-danger" onclick="deleteData(${row.wallet_id})">DELETE</button>
                    </td>-->
                </tr>
            </c:forEach>