<%-- 
    Document   : input-page
    Created on : Feb 24, 2014, 12:59:04 AM
    Author     : HP
--%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Input page</title>
        
        <link type="text/css" rel="stylesheet" href="../css/admin/take-order-page.css"/>
        
<!--        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" ></script>-->
        <script type="text/javascript" src="../js/jquery.min.js"></script>
        <script type="text/javascript" src="../js/admin/take-order-page.js"></script>
        
        <script>
            
        </script>
        
        <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");

        %>
    </head>
    <body>
        <h1>Hóa đơn đặt hàng:</h1>
        <div id="head_data">
            <div id="slect_item">
                
            </div>
            <div id="load">
                
            </div>
            <div id="txt">
            </div>
            
        </div>
        <div id="main_data">
            
            <table id="tb_show">
                <thead>
                    <tr>
                        <td>Sửa</td>
                        <td>Xóa</td>
                        <td>Chi tiết</td>
                        <td>STT</td>
                        <td>Mã hóa đơn</td>
                        <td>Ngày đặt hàng</td>
                        <td>Ngày giao</td>
                        <td>Mã khách hàng</td>
                        <td>Tên khách hàng</td>
                        <td>Địa chỉ</td>
                        <td>Số điện thoại</td>
                        <td>Địa chỉ giao hàng</td>
                        <td>Hình thức vận chuyển</td>
                        <td>Thuế</td>
                        <td>Tiền trước thuế</td>
                        <td>Tiền sau thuế</td>
                        <td>Giảm giá</td>
                        <td>Trạng thái</td>
                        <td>Ngày tạo hóa đơn</td>
                        <td>Người tạo</td>
                        <td>Ngày sửa</td>
                        <td>Người sửa</td>
                    </tr>
                </thead>
                <tbody>
                    </tr>
                    <s:iterator status="status" value="takeOrdersList" >
                    <tr >
                        <td>
                            <input type="button" value="Sửa" 
                                   onClick="location.href='edit-take-order?id_take_order=<s:property value="mSerial"/>'"/></td>
                        <td><input type="button" value="Xóa" 
                                   onClick="location.href='edit-take-order?id_take_order=<s:property value="mSerial"/>'"/></td>
                        <td><input type="button" value="Chi tiết" 
                                   onClick="location.href='take-order-detail?id_takeorder=<s:property value="mID"/>'"/></td>
                        <td><s:property value="#status.index"/></td>
                        <td><s:property value="mID"/></td>
                        <td><s:property value="mTakeOrderDate"/></td>
                        <td><s:property value="mDeliveryDate"/></td>
                        <td><s:property value="mCustomerID"/></td>
                        <td><s:property value="mCustomerName"/></td>
                        
                        <td><s:property value="mCustomerAddress"/></td>
                        <td><s:property value="mPhoneNumber"/></td>
                        <td><s:property value="mDeliveryAddress"/></td>
                        <td><s:property value="mShippingVehicle"/></td>
                        <td><s:property value="mTax"/></td>
                        <td><s:property value="mBeforePrice"/></td>
                        <td><s:property value="mAfterPrivate"/></td>
                        <td><s:property value="mDiscount"/></td>
                        <td><s:property value="mOrderStatus"/></td>
                        <td><s:property value="mOrderEstablishDate"/></td>
                        <td><s:property value="mCreater"/></td>
                        <td><s:property value="mOrderEditDate"/></td>
                        <td><s:property value="mEditer"/></td>

                    </tr>
                    </s:iterator>
                </tbody>
                
                </table>
                
                <div id="editForm">
                    <h2>Chi tiết hóa đơn: <s:property value="detailTakeOrdersList.get(0).getmTakeOrderID()"/></h2>
                    <table id="tb_edit">
                <thead>
                    <tr>
                        <td>Sửa</td>
                        <td>Xóa</td>
                        <td>STT</td>
                        <td>Mã hóa đơn</td>
                        <td>Ngày dòng</td>
                        <td>Mã sản phẩm</td>
                        <td>Mã vạch</td>
                        <td>Tên sản phẩm</td>
                        <td>Giá trước thuế</td>
                        <td>Giá sau thuế</td>
                        <td>Thuế</td>
                        <td>Giảm giá</td>
                        <td>Thành tiền</td>
                        <td>Mã kho</td>
                        <td>Số lượng</td>
                        <td>Đơn vị tính</td>
                        <td>Tỷ giá</td>
                        
                    </tr>
                </thead>
                <tbody>
                    </tr>
                    <s:iterator status="status" value="detailTakeOrdersList" >
                    <tr >
                        <td>
                            <input type="button" value="Sửa" 
                                   onClick="location.href='editCustomer?id_cus=<s:property value="mStt"/>'"/></td>
                        <td><input type="button" value="Xóa" 
                                   onClick="location.href='editCustomer?id_cus=<s:property value="mStt"/>'"/></td>
                        <td><s:property value="#status.index"/></td>
                        <td><s:property value="mTakeOrderID"/></td>
                        <td><s:property value="mLine"/></td>
                        <td><s:property value="mProductID"/></td>
                        <td><s:property value="mBarcode"/></td>
                        <td><s:property value="mProductName"/></td>
                        
                        <td><s:property value="mBeforeOrderPrice"/></td>
                        <td><s:property value="mAfterOrderPrice"/></td>
                        <td><s:property value="mTax"/></td>
                        <td><s:property value="mDiscount"/></td>
                        <td><s:property value="mPriceTotal"/></td>
                        <td><s:property value="mStockID"/></td>
                        <td><s:property value="mNumber"/></td>
                        <td><s:property value="mUnit"/></td>
                        <td><s:property value="mExchangeRate"/></td>
                        
                    </tr>
                    </s:iterator>
                </tbody>
                
                </table>
                    
                 </div>   
        </div>
        
    </body>
</html>
