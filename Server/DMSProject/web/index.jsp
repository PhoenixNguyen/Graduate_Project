<%-- 
    Document   : index
    Created on : Jan 5, 2014, 3:28:43 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--META HTTP-EQUIV="Refresh" CONTENT="0;URL=showMap"-->
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
    </head>
    <body>
        <h1>HOSCO DMS Project</h1> <br/>
        <a href="map/showMap?page=0">Vị trí khách hàng</a><br/>
        <a href="map/showSchedule?page=0">Lịch trình của nhân viên</a><br/>
        <a href="map/staff-roads">Quản lý hành trình</a><br/><br/>
<!--        <a href="map/view-images">Xem ảnh tại nơi khách hàng</a><br/><br/>-->
        
        <a href="admin/displayCustomers">Nhập thông tin cơ bản</a><br/>
        <a href="admin/display-take-order">Hiển thị hóa đơn đặt hàng</a><br/>
        
        <a href="admin/export-orders">Xuất hóa đơn</a><br/>
        
<!--        <a href="admin/upload-dms-client-file">Upload a DMSClient file</a>
        <a href="admin/download-dms-client-file">Download the DMSClient file</a>
        -->
    </body>
</html>
