<%-- 
    Document   : login
    Created on : Dec 11, 2017, 12:02:04 PM
    Author     : Royal
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*;"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="admin/css/bootstrap.css"/>
        <style>
            body{
                background-color:#2d3a4b; 
            }
            div.login{
                margin-top: 150px;
            }
            div.login div{
                color: white;
                font-size: 17px;
                margin-bottom: 15px;
            }
            h2{
                color: white;
                font-family: cursive;
            }
           .form-control + .glyphicon-user{
                left: 0;
                top: 5px;
                padding-left: 10px;
            }
            .form-control + .glyphicon-lock{
                left: 0;
                top: 5px;
                padding-left: 10px;
            }
            .has-left-icon{
                 padding-left: 40px !important;
                padding-right: 10px !important;
            }
            div.input-div{
                width: 300px;
            }
            input[type=submit]{
                background-color: #82b440;
                border: 0px solid #cccccc;
                width: 300px;
                color: #fff;
                line-height: 45px;
                border-radius: 8px;
            }
            input[type=email]{
                height: 45px;
                border-radius: 8px;
                color: #889aa4;
                background-color: #283443;
                border: 1px solid rgba(255,255,255,0.1);
            }
            input[type=password]{
                height: 45px;
                border-radius: 8px;
                color: #889aa4;
                background-color: #283443;
                border: 1px solid rgba(255,255,255,0.1);
            }
            a{
                text-decoration: none;
                color: white;
            }
            a:hover{
                text-decoration: none;
                color: white;
            }
            input[type=email]:focus{
                border: 1px solid rgba(255,255,255,0.1);
            }
            input[type=password]:focus{
                border: 1px solid rgba(255,255,255,0.1);
            }
        </style>
    </head>
    <body>
        <c:catch var="e">
<sql:setDataSource var = "ds" driver = "com.mysql.jdbc.Driver" url = "${pageContext.servletContext.getInitParameter('url')}" user = "${pageContext.servletContext.getInitParameter('user')}" password = "${pageContext.servletContext.getInitParameter('password')}"/>

       <div class="login" align="center">
            <h2>Clientele</h2>
            <div><b>Welcome </b>,please login</div>
            <form class="form-horizontal login-form">
                    <div class="form-group has-feedback input-div">
                        <div>
                            <input class="form-control has-left-icon" id="email" type="email" name="email" placeholder="Login" required/>
                            <span class="glyphicon glyphicon-user form-control-feedback" style="color:#889aa4;"></span>
                         </div>
                    </div>
                    <div class="form-group has-feedback input-div">
                        <div>
                            <input class="form-control has-left-icon" id="pwd" type="password" name="password" placeholder="Password" required/>
                            <span class="glyphicon glyphicon-lock form-control-feedback" style="color:#889aa4;"></span>
                         </div>
                    </div>
                    
                    <div>
                        <input type="submit" value="LOG IN">
                    </div>
                </form>
            <a href="#">Forget Password?</a><br>
            
            <c:if test="${param.email != null}">
                
                <sql:query dataSource="${ds}" var="select_id">
                    select * from admin where admin_email=? and admin_pwd=?
                    
                    <sql:param value="${param.email}"/>
                    <sql:param value="${param.password}"/>
                </sql:query>
                    
                    <c:choose>
                        <c:when test="${select_id.rows[0].admin_email != null}">
                            
                            <c:set var="email" value="${select_id.rows[0].admin_email}" scope="session"/>
                            <c:set var="photo" value="${select_id.rows[0].admin_photo}" scope="session"/>
                            <c:redirect url="admin/index.jsp"/>
                        </c:when>
                        <c:otherwise>
                            <label>password or email is incorrect</label>
                        </c:otherwise>
                    </c:choose>
                
            </c:if>
        
            </div>

        </c:catch>
        <label style="color:white;">${e}</label>
            ${e}
    </body>
</html>
