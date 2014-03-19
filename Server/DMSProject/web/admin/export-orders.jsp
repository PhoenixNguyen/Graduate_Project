<%-- 
    Document   : export-orders
    Created on : Mar 19, 2014, 11:07:46 PM
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
        <h1>Xuất hóa đơn:</h1>
        <s:form action="export-staff-xls" method="get">
                <s:textfield label="Từ ngày: " name="fromDate"/>
                <s:textfield label="Tới ngày: " name="toDate"/>
                <s:select id="idStaff" list="staffList" name="staff"/>
                <s:submit value="Ok"/>
        </s:form>
        
        
        
    </body>
</html>
