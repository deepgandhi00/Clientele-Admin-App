<%-- 
    Document   : logout
    Created on : 26 Jan, 2018, 10:34:43 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    session.setAttribute("email",null);
    session.invalidate();
    %>