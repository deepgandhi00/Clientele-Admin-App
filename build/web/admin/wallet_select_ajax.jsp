<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}"  password = "${pageContext.servletContext.getInitParameter('password')}" />

<sql:query dataSource="${ds}" var="wallet">
            select a.wallet_id,a.wallet_name,a.wallet_logo,b.mode  from  wallet_details a,payment_mode b  
            where a.payment_mode_id=b.payment_mode_id
            </sql:query>
        
            <c:forEach var="row" items="${wallet.rows}">
                <tr>
                    <td>${row.wallet_name}</td>
                    <td><img src="images/${row.wallet_logo}" height="150" width="150" id="logoupdate"/></td>
                    <td>${row.mode}</td>
                   
                   <td><button class="btn btn-warning" data-toggle="modal" data-target="#updateModal-${row.wallet_id}">EDIT</button>
                    
                        
                        <div class="modal fade" id="updateModal-${row.wallet_id}" tabindex="-1" role="dialog" aria-labelledby="updateModalLabel" aria-hidden="true">
                          <div class="modal-dialog" role="document">
                            <div class="modal-content">
                              <div class="modal-header">
                                <h3 class="modal-title" id="updateModalLabel">UPDATE</h3>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                  <span aria-hidden="true">&times;</span>
                                </button>
                              </div>
                              <div class="modal-body">
                                  <input type="hidden" id="${row.wallet_id}" value="${row.wallet_id}">
                                  <div class="form-group">
                                    <label for="name-${row.wallet_id}">name</label>
                                    <input type="text" class="form-control" id="name-${row.wallet_id}" aria-describedby="emailHelp" value="${row.wallet_name}">
                                  </div>
                                  <div class="form-group">
                                    <label for="logo-${row.wallet_id}">logo</label>
                                     <div class="form-group">
                          
                      <label for="logo">LOGO</label>
                    
                   <div class="image-upload">
                   <img id="logo-${row.wallet_id}" src="images/${row.wallet_logo}" width="250" height="250"/>
                   <form action="images_upload.jsp" id="fileup-${row.wallet_id}" enctype="multipart/form-data" method="post">
                       <div class="image-upload">
                           <label for="file-input">
                               <input id="logo" type="file" name="logo" onchange="editfilepreview(this,${row.wallet_id})"/>
                           </label>
                       </div>
                   </form>
                    </div> 
                   
                 </div>
                    
	   </div>
                                 <div class="form-group">
                                    <label for="mode-${row.wallet_id}">mode</label>
                                    <sql:query dataSource="${ds}" var="mode">
                                       select payment_mode_id,mode from payment_mode
                                    </sql:query>
                                    <select id="mode-${row.wallet_id}">
                                           <c:forEach var="row1" items="${mode.rows}">
                                              <option value="${row1.payment_mode_id}">${row1.mode}</option>
                                          </c:forEach>
                                        </select>
                                  </div>
                                  
                              </div>
                              <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">DISMISS</button>
                                <button type="submit" onclick="updatefileupload(${row.wallet_id})" class="btn btn-primary">UPDATE</button>
                              </div>
                            </div>
                          </div>
                        </div> 
                          
                        <button class="btn btn-danger" onclick="deleteData(${row.wallet_id})">DELETE</button>
                    </td>
                </tr>
            </c:forEach>