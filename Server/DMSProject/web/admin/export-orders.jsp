<%-- 
    Document   : export-orders
    Created on : Mar 19, 2014, 11:07:46 PM
    Author     : HP
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <sx:head />
    </head>
    <body>
        <h1>Xuất hóa đơn:</h1>
      
        <s:form action="export-staff-xls" method="get">
                <sx:datetimepicker label="Từ ngày: " name="fromDate" displayFormat="yyyy-MM-dd"  />
                <sx:datetimepicker label="Tới ngày: " name="toDate" displayFormat="yyyy-MM-dd"  />
                
                <s:select id="idStaff" list="staffList" name="staff" label="Nhân viên"/>
                <s:submit value="Ok"/>
        </s:form>
                
    </body>
</html>
