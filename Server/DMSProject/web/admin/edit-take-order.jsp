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
                            
                <div id="editForm">
                    <h2>hóa đơn: <s:property value="takeOrder.getmID()"/></h2>
                    <s:form action="update-take-order" method="get" accept-charset="UTF-8"> 
                             <s:push value="takeOrder"> 
                                 <s:hidden name="mSerial"/> 
                                 <s:hidden name="mID"/> 
                                 <s:hidden name="mCustomerID"/> 
                                 
                                 <s:hidden name="mTakeOrderDate"/>
                                 <s:hidden name="mDeliveryDate"/>
                                 
                                 <s:hidden name="mOrderEstablishDate"/> 
                                 <s:hidden name="mOrderEditDate"/> 
                                 <s:hidden name="mCreater"/> 
                                 <s:hidden name="mEditer"/> 
                                 <s:hidden name="mTax"/> 
                                 
                                 <s:textfield type="text" name="mCustomerName" label="Tên khách hàng: " placeholder=""/>
                                 <s:textfield id="dt" type="text" name="mCustomerAddress" label="Địa chỉ:" placeholder="Địa chỉ"/>
                                 <s:textfield id="dt" type="text" name="mPhoneNumber" label="Điện thoại:" placeholder="Điện thoại"/>
                                 <s:textfield id="dt" type="text" name="mDeliveryAddress" label="Ngày giao hàng:" placeholder="Ngày giao hàng"/>
                                 <s:textfield type="text" name="mShippingVehicle" label="Phương thức vận chuyển: " placeholder="Phương thức vận chuyển"/>
                                 <s:textfield id="dt" type="text" name="mBeforePrice" label="Giá trước thuế:" placeholder="Giá trước thuế"/>
                                 <s:textfield id="dt" type="text" name="mAfterPrivate" label="Giá sau thuế:" placeholder="Giá sau thuế"/>
                                 <s:textfield id="dt" type="text" name="mDiscount" label="Giảm giá:" placeholder="Giảm giá"/>
                                 <s:textfield id="dt" type="text" name="mOrderStatus" label="Trạng thái:" placeholder="Trạng thái"/>
                                 <s:submit/>
                             </s:push>
                       </s:form>  
                    
                 </div>   
        </div>
        
    </body>
</html>
