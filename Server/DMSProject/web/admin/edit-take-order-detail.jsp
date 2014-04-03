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
                    <h2>Chi tiết hóa đơn: <s:property value="takeOrderDetail.getmTakeOrderID()"/> , dòng <s:property value="takeOrderDetail.getmmLine()"/></h2>
                    <s:form action="update-take-order-detail" method="get" accept-charset="UTF-8"> 
                             <s:push value="takeOrderDetail"> 
                                 <s:hidden name="mSerial"/> 
                                 <s:hidden name="mTakeOrderID"/> 
                                 <s:hidden name="mLine"/> 
                                 
                                 <s:hidden name="mProductID"/>
                                 <s:hidden name="mBarcode"/>
                                 
                                 <s:hidden name="mAfterOrderPrice"/> 
                                 <s:hidden name="mBeforeOrderPrice"/> 
                                 <s:hidden name="mPriceTotal"/> 
                                 <s:hidden name="mStockID"/> 
                                 
                                 <s:hidden name="mUnit"/> 
                                 
                                 <s:textfield type="text" name="mProductName" label="Tên sản phẩm: " placeholder="Tên sản phẩm"/>
                                 <s:textfield id="dt" type="text" name="mDiscount" label="Giảm giá:" placeholder="Giảm giá"/>
                                 <s:textfield id="dt" type="text" name="mExchangeRate" label="Tỷ giá:" placeholder="Tỷ giá"/>
                                 <s:textfield id="dt" type="text" name="mTax" label="Thuế:" placeholder="Thuế"/>
                                 <s:textfield id="dt" type="text" name="mNumber" label="Số lượng:" placeholder="Số lượng"/>
                                 <s:textfield id="dt" type="text" name="mPromotionalProductMount" label="Số lượng hàng khuyến mãi:" placeholder="Số lượng hàng khuyến mãi"/>
                                 
                                 <s:submit/>
                             </s:push>
                       </s:form>  
                    
                 </div>   
        </div>
        
    </body>
</html>
