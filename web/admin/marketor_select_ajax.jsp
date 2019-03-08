<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost:3306/clientele" user = "root" password = ""/>

           
                <sql:query dataSource="${ds}" var="address">
                    select a.*,b.* from address_detail a,marketer b where a.add_id=b.add_id 
                </sql:query>
                 <c:forEach var="row" items="${address.rows}">
                <tr>
                    <td><img src="images/${row.marketor_image}" height="150" width="150" id="photoupdate-${row.marketor_id}"/></td>
                    <td>${row.marketor_name}</td>
                    <td>${row.marketor_email}</td>
                    <td>${row.marketor_contact}</td>
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
                    
                    <td><button class="btn btn-warning" data-toggle="modal" data-target="#updateModal-${row.marketor_id}">EDIT</button>
                    
                        
                        <div class="modal fade" id="updateModal-${row.marketor_id}" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h3 class="modal-title" id="updateModalLabel">UPDATE</h3>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                  <input type="hidden" id="${row.marketor_id}" value="${row.marketor_id}">
                                  
                                  <div class="form-group">
                                 
                   <div class="image-upload">
                   <img src="images/${row.marketor_image}" height="150" width="150" id="photo-${row.marketor_id}"/>
                   <form action="images_upload.jsp" id="fileup-${row.marketor_id}" enctype="multipart/form-data" method="post">
                       <div class="image-upload">
                           <label for="file-input">
                               <input id="photo" type="file" name="photo" onchange="editfilepreview(this,${row.marketor_id})"/>
                           </label>
                       </div>
                   </form>                  
	   </div>
                                  <div class="form-group">
                                    <label for="name-${row.row.marketor_id}">name</label>
                                    <input type="text" class="form-control" id="name-${row.marketor_id}" aria-describedby="emailHelp" value="${row.marketor_name}">
                                  </div>
                                  
                                   <div class="form-group">
                                    <label for="email-${row.marketor_id}">email</label>
                                    <input type="email" class="form-control" id="number-${row.marketor_id}" aria-describedby="emailHelp" value="${row.marketor_email}">
                                  </div>
                                  
                                 <div class="form-group">
                                    <label for="number-${row.marketor_id}">contact number</label>
                                    <input type="text" class="form-control" id="email-${row.marketor_id}" aria-describedby="emailHelp" value="${row.marketor_contact}">
                                  </div>
                                  
                                  <div class="form-group">
                                       <c:forEach var="loop_add" items="${address.rows}">
                                        <div style="width: 50%; float: left;">
                                            <input type="text" class="form-control" id="shopname-${row.marketor_id}" value="${loop_add.shop_name_or_house_name}">
                                            <input type="text" class="form-control" id="shopno-${row.marketor_id}" value="${loop_add.shop_no_or_house_no}">
                                            <input type="text" class="form-control" id="complex-${row.marketor_id}" value="${loop_add.complex}">
                                            <input type="text" class="form-control" id="streetname-${row.marketor_id}" value="${loop_add.street_name}">
                                            <input type="text" class="form-control" id="societyname-${row.marketor_id}" value="${loop_add.society_name}">
                                        </div>
                                        <div style="width: 50%; float: right;">
                                            <input type="text" class="form-control" id="road-${row.marketor_id}" value="${loop_add.road}">
                                            <input type="text" class="form-control" id="landmark-${row.marketor_id}" value="${loop_add.landmark}">
                                            <input type="text" class="form-control" id="streetno-${row.marketor_id}" value="${loop_add.streetno}">
                                            <input type="text" class="form-control" id="societyno-${row.marketor_id}" value="${loop_add.scoiety_no}">
                                        </div>
                                       </c:forEach>
                                    </div>
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                                <button type="submit" onclick="updatefileupload(${row.marketor_id},${row.add_id})" class="btn btn-primary">UPDATE</button>
                              </div>
                            </div>
                          </div>
                        </div> 
                        </div>     
                        <button class="btn btn-danger" onclick="deleteData(${row.marketor_id})">DELETE</button>
                    </td>
                </tr>
            </c:forEach>