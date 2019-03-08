<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/clientele" user = "root" password = ""/>

           
                <sql:query dataSource="${ds}" var="address">
                    select a.*,b.* from address_detail a,delivery_boy b where a.add_id=b.add_id 
                </sql:query>
                 <c:forEach var="row" items="${address.rows}">
                <tr>
                    <td><img src="images/${row.delivery_boy_image}" height="150" width="150" id="photoupdate-${row.delivery_boy_id}"/></td>
                    <td>${row.delivery_boy_name}</td>
                    <td>${row.delivery_boy_email}</td>
                    <td>${row.delivery_boy_contact}</td>
                    <td>
                        
                    <c:out value="${row.shop_name_or_house_name},"/>
                    <c:out value="${row.shop_no_or_house_no},"/>
                    <c:out value="${row.complex},"/>
                    <c:out value="${row.street_name},"/>
                    <c:out value="${row.society_name},"/>
                    <c:out value="${row.road},"/>
                    <c:out value="${row.landmark},"/>
                    <c:out value="${row.street_no},"/>
                    <c:out value="${row.scoiety_no},"/>
                    <br>
                        
                    </td>
                    
                    <td><button class="btn btn-warning" data-toggle="modal" data-target="#updateModal-${row.delivery_boy_id}">EDIT</button>
                    
                        
                        <div class="modal fade" id="updateModal-${row.delivery_boy_id}" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h3 class="modal-title" id="updateModalLabel">UPDATE</h3>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                  <input type="hidden" id="${row.delivery_boy_id}" value="${row.delivery_boy_id}">
                                  
                                  
                                 
                   <div class="image-upload">
                   <img src="images/${row.delivery_boy_image}" height="150" width="150" id="photo-${row.delivery_boy_id}"/>
                   <form action="images_upload.jsp" id="fileup-${row.delivery_boy_id}" enctype="multipart/form-data" method="post">
                       <div class="image-upload">
                           <label for="file-input">
                               <input id="photo" type="file" name="photo" onchange="editfilepreview(this,${row.delivery_boy_id})"/>
                           </label>
                       </div>
                   </form>                  
                   </div>
                                 <div class="form-group" style="margin-left: 290px; margin-top: -170px; padding: 2px;">
                                    <label for="name-${row.row.delivery_boy_id}">name</label>
                                    <input type="text" class="form-control" style="font-weight: 500;" id="name-${row.delivery_boy_id}" value="${row.delivery_boy_name}">
                                  
                                    <label for="email-${row.delivery_boy_id}">email</label>
                                    <input type="email" class="form-control" style="font-weight: 500;" id="number-${row.delivery_boy_id}" aria-describedby="emailHelp" value="${row.delivery_boy_email}">
                                  
                                    <label for="number-${row.delivery_boy_id}">contact number</label>
                                    <input type="text" class="form-control" style="font-weight: 500;" id="email-${row.delivery_boy_id}"  value="${row.delivery_boy_contact}">
                                  </div>
                                  
                                  <div class="form-group" style="margin-bottom: 80px;">
                                    <label for="add" style="margin-right: 200px; padding-right: 200px; font-weight: 500;">ADDRESS</label>
                                       
                                        <div style="width: 50%; float: left;">
                                            <input type="text" class="form-control" id="shopname-${row.delivery_boy_id}" value="${row.shop_name_or_house_name}" placeholder="shop name">
                                            <input type="text" class="form-control" id="shopno-${row.delivery_boy_id}" value="${row.shop_no_or_house_no}" placeholder="shop no">
                                            <input type="text" class="form-control" id="complex-${row.delivery_boy_id}" value="${row.complex}" placeholder="complex">
                                            <input type="text" class="form-control" id="streetname-${row.delivery_boy_id}" value="${row.street_name}" placeholder="street name">
                                            <input type="text" class="form-control" id="societyname-${row.delivery_boy_id}" value="${row.society_name}" placeholder="society name">
                                        </div>
                                        <div style="width: 50%; float: right;">
                                            <input type="text" class="form-control" id="road-${row.delivery_boy_id}" value="${row.road}" placeholder="road">
                                            <input type="text" class="form-control" id="landmark-${row.delivery_boy_id}" value="${row.landmark}" placeholder="landmark">
                                            <input type="text" class="form-control" id="streetno-${row.delivery_boy_id}" value="${row.streetno}" placeholder="street no">
                                            <input type="text" class="form-control" id="societyno-${row.delivery_boy_id}" value="${row.scoiety_no}" placeholder="society no">
                                        </div>
                                       
                                    </div>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                                <button type="submit" onclick="updatefileupload(${row.delivery_boy_id},${row.add_id})" class="btn btn-primary">UPDATE</button>
                              </div>
                            </div>
                          </div>
                        </div> 
                        </div>     
                        <button class="btn btn-danger" onclick="deleteData(${row.delivery_boy_id})">DELETE</button>
                    </td>
                </tr>
            </c:forEach>