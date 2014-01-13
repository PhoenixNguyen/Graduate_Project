<%-- 
    Document   : upload-customer-file
    Created on : Jan 14, 2014, 1:49:16 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        
        <s:actionerror />
        <s:form action="upload" id="login_form" enctype="multipart/form-data" validate="true">  
            
            <s:file type="file" name="document.file" id="upfile"/>
            <br/>
            <br/>
            <input type="submit">
            
        </s:form>   
    </body>
</html>
