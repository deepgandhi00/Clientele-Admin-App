<%-- 
    Document   : testjsp
    Created on : 8 Mar, 2018, 11:46:41 AM
    Author     : Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="images_upload_android.jsp" method="post" enctype="multipart/form-data">
            <input type="file" name="fl"/> 
            <input type="submit"/>
        </form>
    </body>
</html>
