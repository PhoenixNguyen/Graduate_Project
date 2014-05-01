<%-- 
    Document   : take-order-edit
    Created on : Apr 10, 2014, 1:06:49 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>admin - Bán hàng - Đặt hàng - Phần mềm quản lý HOSCO-MANAGEMENT</title>
        <link rel="SHORTCUT ICON" href="themes/images/vtigercrm_icon.ico">	
        <style type="text/css">@import url("themes/softed/style.css");</style>
        <link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
        <!-- ActivityReminder customization for callback -->

        <style type="text/css">div.fixedLay1 { position:fixed; }</style>
        <!--[if lte IE 6]>
        <style type="text/css">div.fixedLay { position:absolute; }</style>
        <![endif]-->

        <!-- End -->
    </head>
    <body leftmargin="0" topmargin="0" marginheight="0" marginwidth="0" class="small">
        <!--    Header & menu-->
        <s:include value="header.jsp" >
            <s:param name="page_param" value="'sale'" />
        </s:include>

        <!-- TOOLS -->
        <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
            <tbody>
                <tr><td style="height:2px"></td></tr>
                <tr>

                    <td style="padding-left:10px;padding-right:50px" class="moduleName" nowrap="">Bán hàng &gt; <a class="hdrLink" href="">Đặt hàng</a></td>
                    <td width="100%" nowrap="">

                        <table border="0" cellspacing="0" cellpadding="0">
                            <tbody>
                                <tr>
                                    <td class="sep1" style="width:1px;"></td>
                                    <td class="small">
                                        <!-- Add and Search -->
                                        <table border="0" cellspacing="0" cellpadding="0">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <table border="0" cellspacing="0" cellpadding="5">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="padding-right:0px;padding-left:10px;"><a href=""><img src="themes/softed/images/btnL3Add.gif" alt="Tạo Khách hàng..." title="Tạo Khách hàng..." border="0"></a></td>

                                                                    <td style="padding-right:10px"><a href="javascript:;" onclick="moveMe('searchAcc');
                                                                            searchshowhide('searchAcc', 'advSearch');
                                                                            mergehide('mergeDup')"><img src="themes/softed/images/btnL3Search.gif" alt="Tìm kiếm trong Khách hàng..." title="Tìm kiếm trong Khách hàng..." border="0"></a></td>

                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                    <td style="width:20px;">&nbsp;</td>
                                    <td class="small">

                                    </td>
                                    <td style="width:20px;">&nbsp;</td>
                                    <td class="small">
                                        <!-- Import / Export -->
                                        <table border="0" cellspacing="0" cellpadding="5">
                                            <tbody>
                                                <tr>
                                                    <td style="padding-right:0px;padding-left:10px;"><a href=""><img src="themes/softed/images/tbarImport.gif" alt="Nhập dữ liệu Khách hàng" title="Nhập dữ liệu Khách hàng" border="0"></a></td>  
                                                    <td style="padding-right:10px"><a name="export_link" href="javascript:void(0)" onclick="return selectedRecords('Accounts', 'Marketing')"><img src="themes/softed/images/tbarExport.gif" alt="Xuất dữ liệu Khách hàng" title="Xuất dữ liệu Khách hàng" border="0"></a></td>


                                                    <!--<td style="padding-right:10px"><a href="home.jsp?module=Accounts&action=FindDuplicateRecords&button_view=true&list_view=true&parenttab=Marketing"><img src="themes/softed/images/findduplicates.gif" alt="" title="Tìm kiếm trùng" border="0"></a></td> -->
                                                    <td style="padding-right:10px"><a href="javascript:;" onclick="moveMe('mergeDup');
                                                            mergeshowhide('mergeDup');
                                                            searchhide('searchAcc', 'advSearch');"><img src="themes/images/findduplicates.gif" alt="" title="Tìm kiếm trùng" border="0"></a></td>
                                                </tr>
                                            </tbody></table>  
                                    </td>
                                    <td style="width:20px;">&nbsp;</td>
                                    <td class="small">
                                        <!-- All Menu -->
                                        <table border="0" cellspacing="0" cellpadding="5">
                                            <tbody>
                                                <tr>
                                                    <td style="padding-left:10px;"><a href="javascript:;" onmouseout="fninvsh('allMenu');" onclick="fnvshobj(this, 'allMenu')"><img src="themes/softed/images/btnL3AllMenu.gif" alt="Mở tất cả Menu..." title="Mở tất cả Menu..." border="0"></a></td>
                                                    <td style="padding-left:10px;"><a href=""><img src="themes/softed/images/settingsBox.png" alt="Khách hàng Thiết lập" title="Khách hàng Thiết lập" border="0"></a></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </td>
                </tr>
                <tr><td style="height:2px"></td></tr>
            </tbody>
        </table>                                

        <!-- END TOOLS -->


        <!--TAKEORDER-->
        <table border="0" cellspacing="0" cellpadding="0" width="98%" align="center">
            <tbody><tr>
                    <td valign="top"><img src="themes/softed/images/showPanelTopLeft.gif"></td>

                    <td class="showPanelBg" valign="top" width="100%">
                        <div class="small" style="padding:20px">



                            <span class="lvtHeaderText"><font color="purple">[ <s:property value="takeOrder.getId()"/> ] </font>Đặt hàng - Sửa Thông tin Đặt hàng</span> <br>
                            <!--                    Cập nhật 1086 ngày trước (19 Tháng 4 2011)	 -->

                            <hr noshade="" size="1">
                            <br> 


                            <!-- (id="frmEditView") content added to form tag and new hidden field added,  -->
                            <form id="frmEditView" name="EditView" method="GET" action="update-t-order?id_tod=<s:property value="takeOrder.getId()"/>" id="sub_form" >

                                <input type="hidden" name="takeOrder.serial" value="<s:property value="takeOrder.getSerial()"/>">

                                <table border="0" cellspacing="0" cellpadding="0" width="95%" align="center">
                                    <tbody><tr>
                                            <td>
                                                <table border="0" cellspacing="0" cellpadding="3" width="100%" class="small">
                                                    <tbody><tr>
                                                            <td class="dvtTabCache" style="width:10px" nowrap="">&nbsp;</td>
                                                            <td class="dvtSelectedCell" align="center" nowrap="">Đặt hàng Thông tin</td>
                                                            <td class="dvtTabCache" style="width:10px">&nbsp;</td>
                                                            <td class="dvtTabCache" style="width:100%">&nbsp;</td>
                                                        </tr>
                                                    </tbody></table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="left">
                                                <table border="0" cellspacing="0" cellpadding="3" width="100%" class="dvtContentSpace">
                                                    <tbody><tr>

                                                            <td align="left" style="padding:10px;border-right:1px #CCCCCC;" width="80%">

                                                                <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                                                    <tbody><tr>
                                                                            <td id="autocom"></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td style="padding:10px">
                                                                                <!-- General details -->
                                                                                <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
                                                                                    <tbody><tr>
                                                                                            <td colspan="4" style="padding:5px">
                                                                                                <div align="center">
                                                                                                    <input title="Lưu [Alt+S]" accesskey="S" class="crmbutton small save" onclick="
                                                                                                            document.getElementById('sub_form').submit();
//                                                                                                this.form.action.value = 'Save'; displaydeleted(); 
//                                                                                                return validateInventory('SalesOrder')
                                                                                                           " type="submit" name="button" value="  Lưu  " style="width:70px">
                                                                                                    <input title="Hủy bỏ [Alt+X]" accesskey="X" class="crmbutton small cancel" onclick="window.history.back()" type="button" name="button" value="Hủy bỏ  " style="width:70px">
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>

                                                                                        <!-- included to handle the edit fields based on ui types -->
                                                                                        <tr>
                                                                                            <td colspan="4" class="detailedViewHeader">
                                                                                                <b>Thông tin Đặt hàng</b>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <!-- Handle the ui types display -->
                                                                                        <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                                                        <tr style="height:25px">

                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red">*</font>Tiêu đề 			
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input type="text" readonly="" name="" tabindex="" value="Đặt hàng" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                            </td>

                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font>Mã hóa đơn			
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">

                                                                                                <input readonly="" type="text" tabindex="" name="takeOrder.id" id="exciseduty" value="<s:property value="takeOrder.getId()"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                                <!--                                                                                        <input name="potential_id" type="hidden" value="0">&nbsp;
                                                                                                                                                                                        <img tabindex="" src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" language="javascript" onclick="selectPotential()" align="absmiddle" style="cursor:hand;cursor:pointer">&nbsp;
                                                                                                                                                                                        <input type="image" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" language="javascript" onclick="this.form.potential_id.value = ''; this.form.potential_name.value = ''; return false;" align="absmiddle" style="cursor:hand;cursor:pointer">-->
                                                                                            </td>

                                                                                        </tr>
                                                                                        <tr style="height:25px">

                                                                                            <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Ngày đặt hàng</td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input readonly="" type="text" tabindex="" name="takeOrder.takeOrderDate" id="customerno" value="<s:property value="takeOrder.getTakeOrderDate()"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                            </td>
                                                                                            <!-- Non Editable field, only configured value will be loaded -->
                                                                                            <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Ngày giao hàng </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input  type="text" tabindex="" name="takeOrder.deliveryDate" id="salesorder_no" value="<s:property value="takeOrder.getDeliveryDate()"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                        </tr>
                                                                                        <tr style="height:25px">

                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font>Tên Khách hàng 			
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input readonly="" type="text" tabindex="" name="takeOrder.customerName" id="exciseduty" value="<s:property value="takeOrder.getCustomerName()"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                                <!--                                                                                        <input name="quote_id" type="hidden" value="0">&nbsp;<img src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" language="javascript" onclick="selectQuote()" align="absmiddle" style="cursor:hand;cursor:pointer">&nbsp;
                                                                                                                                                                                        <input type="image" tabindex="" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" language="javascript" onclick="this.form.quote_id.value = ''; this.form.quote_name.value = ''; return false;" align="absmiddle" style="cursor:hand;cursor:pointer">-->
                                                                                            </td>

                                                                                            <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Mã khách hàng</td>

                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input type="text" readonly="" tabindex="" name="takeOrder.customerID" id="vtiger_purchaseorder" value="<s:property value="takeOrder.getCustomerID()"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                        </tr>
                                                                                        <tr style="height:25px">

                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font>Địa chỉ KH			
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input readonly="" type="text" tabindex="" name="takeOrder.customerAddress" id="exciseduty" value="<s:property value="takeOrder.getCustomerAddress()"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                                <!--                                                                                        <input name="contact_id" type="hidden" value="0">&nbsp;<img src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" language="javascript" onclick="selectContact( & quot; false & quot; , & quot; general & quot; , document.EditView)" align="absmiddle" style="cursor:hand;cursor:pointer">&nbsp;
                                                                                                                                                                                        <input type="image" tabindex="" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" language="javascript" onclick="this.form.contact_id.value = ''; this.form.contact_name.value = ''; return false;" align="absmiddle" style="cursor:hand;cursor:pointer">-->
                                                                                            </td>

                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font>Số điện thoại			
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input type="text" tabindex="" name="takeOrder.phoneNumber" id="exciseduty" value="<s:property value="takeOrder.getPhoneNumber()"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                                <!--                                                                                        <img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_duedate">-->

                                                                                                <!--                                                                                        <br><font size="1"><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
                                                                                                
                                                                                                                                                                                        <script type="text/javascript" id="massedit_calendar_duedate">
                                                                                                                                                                                            Calendar.setup ({
                                                                                                                                                                                            inputField : "jscal_field_duedate", ifFormat : "%d-%m-%Y", showsTime : false, button : "jscal_trigger_duedate", singleClick : true, step : 1
                                                                                                                                                                                            })
                                                                                                                                                                                        </script>-->

                                                                                            </td>

                                                                                        </tr>
                                                                                        <!--                                                                                <tr style="height:25px">
                                                                                        
                                                                                                                                                                             uitype 111 added for noneditable existing picklist values - ahmed 
                                                                                                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                                                                                                <font color="red"></font>
                                                                                                                                                                                Địa chỉ giao hàng			
                                                                                                                                                                            </td>
                                                                                                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                                                                                                <input type="text"  tabindex="" name="takeOrder.mDeliveryAddress" id="exciseduty" value="<s:property value="takeOrder.getMDeliveryAddress()"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                                                                                                                <input name="contact_id" type="hidden" value="0">&nbsp;<img src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" language="javascript" onclick="selectContact( & quot; false & quot; , & quot; general & quot; , document.EditView)" align="absmiddle" style="cursor:hand;cursor:pointer">&nbsp;
                                                                                                                                                                                <input type="image" tabindex="" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" language="javascript" onclick="this.form.contact_id.value = ''; this.form.contact_name.value = ''; return false;" align="absmiddle" style="cursor:hand;cursor:pointer">
                                                                                                                                                                            </td>
                                                                                        
                                                                                                                                                                            <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Hình thức vận chuyển </td>
                                                                                        
                                                                                                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                                                                                                <input type="text" tabindex="" name="takeOrder.mShippingVehicle" id="pending" value="<s:property value="takeOrder.getMShippingVehicle()"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                                                                                                            </td>
                                                                                                                                                                        </tr>-->
                                                                                        <tr style="height:25px">

                                                                                            <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red">*</font>
                                                                                                Chiết khấu (%)			
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input name="takeOrder.discount"  type="text" style="border:1px solid #bababa;" value="<s:property value="takeOrder.getDiscount()"/>">
                                                                                                <!--                                                                                        <input name="contact_id" type="hidden" value="0">&nbsp;<img src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" language="javascript" onclick="selectContact( & quot; false & quot; , & quot; general & quot; , document.EditView)" align="absmiddle" style="cursor:hand;cursor:pointer">&nbsp;
                                                                                                                                                                                        <input type="image" tabindex="" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" language="javascript" onclick="this.form.contact_id.value = ''; this.form.contact_name.value = ''; return false;" align="absmiddle" style="cursor:hand;cursor:pointer">-->
                                                                                            </td>

                                                                                            <!--                                                                                    <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Giảm giá (%)</td>
                                                                                            
                                                                                                                                                                                <td width="30%" align="left" class="dvtCellInfo">
                                                                                                                                                                                    <input type="text" tabindex="" name="takeOrder.mDiscount" id="salescommission" value="<s:property value="takeOrder.getMDiscount()"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                                                                                                                </td>-->
                                                                                        </tr>
                                                                                        <tr style="height:25px">

                                                                                            <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Tiền hàng </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input readonly="" type="text" tabindex="" name="takeOrder.beforePrice" id="exciseduty" value="<s:property value="getText('{0,number,#,##0.00}',{takeOrder.getBeforePrice()})"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font>Tiền phải trả		
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input readonly="" type="text" tabindex="" name="takeOrder.afterPrivate" id="exciseduty" value="<s:property value="getText('{0,number,#,##0.00}',{takeOrder.getAfterPrivate()})"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                                <!--                                                                                        <input name="account_id" type="hidden" value="139">&nbsp;<img src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" language="javascript" onclick="return window.open( & quot; index.php?module = Accounts & amp; action = Popup & amp; popuptype = specific_account_address & amp; form = TasksEditView & amp; form_submit = false & amp; fromlink = & quot; , & quot; test & quot; , & quot; width = 640, height = 602, resizable = 0, scrollbars = 0 & quot; );" align="absmiddle" style="cursor:hand;cursor:pointer">
                                                                                                                                                                                        <input type="image" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" language="javascript" onclick="this.form.account_id.value = ''; this.form.account_name.value = ''; return false;" align="absmiddle" style="cursor:hand;cursor:pointer">-->
                                                                                            </td>

                                                                                        </tr>

                                                                                        <tr style="height:25px">

                                                                                            <!-- Avoid to display the label Tax Class -->
                                                                                            <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Người tạo</td>


                                                                                            <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input type="text" readonly="" tabindex="" name="takeOrder.creater" id="salescommission" value="<s:property value="takeOrder.getCreater()"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                            </td>
            <!--                                                                                <td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;<s:property value="takeOrder.getMCreater()"/></td>-->

                                                                                            <!-- Avoid to display the label Tax Class -->
                                                                                            <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Ngày tạo</td>


                                                                                            <!-- This file is used to display the fields based on the ui type in detailview -->

                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input readonly="" type="text" tabindex="" name="takeOrder.orderEstablishDate" id="exciseduty" value="<s:property value="takeOrder.getOrderEstablishDate()"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                                <!--                                                                                        <input name="account_id" type="hidden" value="139">&nbsp;<img src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" language="javascript" onclick="return window.open( & quot; index.php?module = Accounts & amp; action = Popup & amp; popuptype = specific_account_address & amp; form = TasksEditView & amp; form_submit = false & amp; fromlink = & quot; , & quot; test & quot; , & quot; width = 640, height = 602, resizable = 0, scrollbars = 0 & quot; );" align="absmiddle" style="cursor:hand;cursor:pointer">
                                                                                                                                                                                        <input type="image" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" language="javascript" onclick="this.form.account_id.value = ''; this.form.account_name.value = ''; return false;" align="absmiddle" style="cursor:hand;cursor:pointer">-->
                                                                                            </td>
            <!--                                                                                <td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;<s:property value="takeOrder.getMOrderEstablishDate()"/></td>-->

                                                                                        </tr>	

                                                                                        <tr style="height:25px">


                                                                                            <!-- Avoid to display the label Tax Class -->
                                                                                            <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Người sửa</td>


                                                                                            <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input type="text" readonly="" tabindex="" name="takeOrder.editer" id="salescommission" value="<s:property value="takeOrder.getEditer()"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                            </td>

                                                                                            <!-- Avoid to display the label Tax Class -->
                                                                                            <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Ngày sửa</td>


                                                                                            <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input readonly="" type="text" tabindex="" name="takeOrder.orderEditDate" id="exciseduty" value="<s:property value="takeOrder.getOrderEditDate()"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                                <!--                                                                                        <input name="account_id" type="hidden" value="139">&nbsp;<img src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" language="javascript" onclick="return window.open( & quot; index.php?module = Accounts & amp; action = Popup & amp; popuptype = specific_account_address & amp; form = TasksEditView & amp; form_submit = false & amp; fromlink = & quot; , & quot; test & quot; , & quot; width = 640, height = 602, resizable = 0, scrollbars = 0 & quot; );" align="absmiddle" style="cursor:hand;cursor:pointer">
                                                                                                                                                                                        <input type="image" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" language="javascript" onclick="this.form.account_id.value = ''; this.form.account_name.value = ''; return false;" align="absmiddle" style="cursor:hand;cursor:pointer">-->
                                                                                            </td>
                                                                                        </tr>

                                                                                        <tr>
                                                                                            <td colspan="4" class="detailedViewHeader">
                                                                                                <b>Trạng thái</b>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <!-- Handle the ui types display -->
                                                                                        <!-- Added this file to display the fields in Create Entity page based on ui types  -->

                                                                                        <tr style="height:25px">


                                                                                            <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
                                                                                            <td width="20%" class="dvtCellLabel" align="left">
                                                                                                <font color="red">*</font>
                                                                                                Trạng thái hóa đơn 			</td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <select name="takeOrder.orderStatus" tabindex="" class="small">
                                                                                                    <option value="0" <s:if test="takeOrder.orderStatus == 0" > selected=""</s:if> >
                                                                                                        Đang đặt hàng
                                                                                                    </option>
                                                                                                    <option value="1" <s:if test="takeOrder.orderStatus == 1" > selected=""</s:if>>
                                                                                                        Đã duyệt
                                                                                                    </option>
                                                                                                    <option value="2" <s:if test="takeOrder.orderStatus == 2" > selected=""</s:if>>
                                                                                                        Hoàn thành
                                                                                                    </option>
                                                                                                    <option value="3" <s:if test="takeOrder.orderStatus == 3" > selected=""</s:if>>
                                                                                                        Hủy
                                                                                                    </option>

                                                                                                </select>
                                                                                            </td>
                                                                                        </tr>

                                                                                        <tr style="height:25px"><td>&nbsp;</td></tr>

                                                                                        <tr>
                                                                                            <td colspan="2" class="detailedViewHeader">
                                                                                                <b>Thông tin địa chỉ</b></td>
                                                                                            <td class="detailedViewHeader">
                                                                                                <!--                                                                                        <input name="" onclick="return copyAddressLeft(EditView)" type="radio"><b>Sao chép địa chỉ vận chuyển</b></td>-->
                                                                                            <td class="detailedViewHeader">
                                                                                                <!--                                                                                        <input name="" onclick="return copyAddressRight(EditView)" type="radio"><b>Sao chép địa chỉ thanh toán</b>-->
                                                                                            </td>

                                                                                        </tr>

                                                                                        <!-- Handle the ui types display -->


                                                                                        <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                                                        <tr style="height:25px">




                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red">*</font>
                                                                                                Địa chỉ giao hàng 			
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <textarea value="<s:property value="takeOrder.getDeliveryAddress()"/>" name="takeOrder.deliveryAddress" tabindex="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'" rows="2"><s:property value="takeOrder.deliveryAddress"/></textarea>
                                                                                            </td>




                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red">*</font>
                                                                                                Hình thức vận chuyển 			
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <textarea value="<s:property value="takeOrder.shippingVehicle"/>" name="takeOrder.shippingVehicle" tabindex="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'" rows="2"><s:property value="takeOrder.shippingVehicle"/></textarea>
                                                                                            </td>
                                                                                        </tr>



                                                                                        <!--                                                                                <tr>
                                                                                                                                                                            <td colspan="4" class="detailedViewHeader">
                                                                                                                                                                                <b>Quyền hạn và trách nhiệm</b>
                                                                                                                                                                            </td>
                                                                                                                                                                        </tr>
                                                                                        
                                                                                                                                                                         Handle the ui types display 
                                                                                        
                                                                                        
                                                                                                                                                                         Added this file to display the fields in Create Entity page based on ui types  
                                                                                                                                                                        <tr style="height:25px">
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                                                                                                             In Add Comment are we should not display anything 
                                                                                                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                                                                                                <font color="red"></font> 
                                                                                                                                                                                Điều khoản 			</td>
                                                                                                                                                                            <td colspan="3">
                                                                                                                                                                                <textarea class="detailedViewTextBox" tabindex="" onfocus="this.className = 'detailedViewTextBoxOn'" name="" onblur="this.className = 'detailedViewTextBox'" cols="90" rows="8">
                                                                                        
                                                                                                                                                                                </textarea>
                                                                                                                                                                            </td>
                                                                                                                                                                        </tr>-->

                                                                                        <tr style="height:25px"><td>&nbsp;</td></tr>

                                                                                        <tr>
                                                                                            <td colspan="4" class="detailedViewHeader">
                                                                                                <b>Thông tin mô tả</b>
                                                                                            </td>
                                                                                        </tr>

                                                                                        <!-- Handle the ui types display -->


                                                                                        <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                                                        <tr style="height:25px">




                                                                                            <!-- In Add Comment are we should not display anything -->
                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font> 
                                                                                                Mô tả 			
                                                                                            </td>
                                                                                            <td colspan="3">
                                                                                                <textarea class="detailedViewTextBox" tabindex="" onfocus="this.className = 'detailedViewTextBoxOn'" name="takeOrder.note" onblur="this.className = 'detailedViewTextBox'" cols="90" rows="8"><s:property value="takeOrder.note"/></textarea>
                                                                                            </td>
                                                                                        </tr>

                                                                                        <tr style="height:25px"><td>&nbsp;</td></tr>



                                                                                        <!-- Added to display the Product Details in Inventory-->
                                                                                        <tr>
                                                                                            <td colspan="4">

                                                                                                <script type="text/javascript" src="include/js/Inventory.js"></script>
                                                                                                <!-- Added to display the Product Details -->
                                                                                                <script type="text/javascript">
                                                                                                    if (!e)
                                                                                                        window.captureEvents(Event.MOUSEMOVE);

                                                                                                    //  window.onmousemove= displayCoords;
                                                                                                    //  window.onclick = fnRevert;

                                                                                                    function displayCoords(currObj, obj, mode, curr_row)
                                                                                                    {
                                                                                                        if (mode != 'discount_final' && mode != 'sh_tax_div_title' && mode != 'group_tax_div_title')
                                                                                                        {
                                                                                                            var curr_productid = document.getElementById("hdnProductId" + curr_row).value;
                                                                                                            if (curr_productid == '')
                                                                                                            {
                                                                                                                alert("Vui lòng chọn một mặt hàng");
                                                                                                                return false;
                                                                                                            }
                                                                                                            var curr_quantity = document.getElementById("qty" + curr_row).value;
                                                                                                            if (curr_quantity == '')
                                                                                                            {
                                                                                                                alert("Hãy điền số lượng");
                                                                                                                return false;
                                                                                                            }
                                                                                                        }

                                                                                                        //Set the Header value for Discount
                                                                                                        if (mode == 'discount')
                                                                                                        {
                                                                                                            document.getElementById("discount_div_title" + curr_row).innerHTML = '<b>Thiết lập Khấu trừ cho x  ' + document.getElementById("productTotal" + curr_row).innerHTML + '</b>';
                                                                                                        }
                                                                                                        else if (mode == 'tax')
                                                                                                        {
                                                                                                            document.getElementById("tax_div_title" + curr_row).innerHTML = "<b>Thiết lập Thuế cho " + document.getElementById("totalAfterDiscount" + curr_row).innerHTML + '</b>';
                                                                                                        }
                                                                                                        else if (mode == 'discount_final')
                                                                                                        {
                                                                                                            document.getElementById("discount_div_title_final").innerHTML = '<b>Thiết lập Khấu trừ cho  ' + document.getElementById("netTotal").innerHTML + '</b>';
                                                                                                        }
                                                                                                        else if (mode == 'sh_tax_div_title')
                                                                                                        {
                                                                                                            document.getElementById("sh_tax_div_title").innerHTML = '<b>Thiết lập Thuế Giao nhận cho  ' + document.getElementById("shipping_handling_charge").value + '</b>';
                                                                                                        }
                                                                                                        else if (mode == 'group_tax_div_title')
                                                                                                        {
                                                                                                            var net_total_after_discount = eval(document.getElementById("netTotal").innerHTML) - eval(document.getElementById("discountTotal_final").innerHTML);
                                                                                                            document.getElementById("group_tax_div_title").innerHTML = '<b>Thiết lập Nhóm Thuế cho  ' + net_total_after_discount + '</b>';
                                                                                                        }

                                                                                                        fnvshobj(currObj, 'tax_container');
                                                                                                        if (document.all)
                                                                                                        {
                                                                                                            var divleft = document.getElementById("tax_container").style.left;
                                                                                                            var divabsleft = divleft.substring(0, divleft.length - 2);
                                                                                                            document.getElementById(obj).style.left = eval(divabsleft) - 120;

                                                                                                            var divtop = document.getElementById("tax_container").style.top;
                                                                                                            var divabstop = divtop.substring(0, divtop.length - 2);
                                                                                                            document.getElementById(obj).style.top = eval(divabstop);
                                                                                                        } else
                                                                                                        {
                                                                                                            document.getElementById(obj).style.left = document.getElementById("tax_container").left;
                                                                                                            document.getElementById(obj).style.top = document.getElementById("tax_container").top;
                                                                                                        }
                                                                                                        document.getElementById(obj).style.display = "block";

                                                                                                    }

                                                                                                    function doNothing() {
                                                                                                    }

                                                                                                    function fnHidePopDiv(obj) {
                                                                                                        document.getElementById(obj).style.display = 'none';
                                                                                                    }
                                                                                                </script>


                                                                                            </td>
                                                                                        </tr>
                                                                                        <!--                                                                                <tr>
                                                                                                                                                                            <td colspan="4" align="left">
                                                                                        
                                                                                                                                                                                <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" class="crmTable" id="proTab">
                                                                                                                                                                                    <tbody><tr>
                                                                                                                                                                                            <td colspan="3" class="dvInnerHeader">
                                                                                                                                                                                                <b>Chi tiết mặt hàng</b>
                                                                                                                                                                                            </td>
                                                                                        
                                                                                                                                                                                            <td class="dvInnerHeader" align="center" colspan="2">
                                                                                                                                                                                                <input type="hidden" value="1" id="prev_selected_currency_id">
                                                                                                                                                                                                <b>Tiền tệ</b>&nbsp;&nbsp;
                                                                                                                                                                                                <select class="small" id="inventory_currency" name="inventory_currency" onchange="updatePrices();">
                                                                                                                                                                                                    <option value="1" selected="">Vietnam, Dong (₫)</option>
                                                                                                                                                                                                </select>
                                                                                                                                                                                            </td>
                                                                                        
                                                                                                                                                                                            <td class="dvInnerHeader" align="center" colspan="2">
                                                                                                                                                                                                <b>Loại thuế</b>&nbsp;&nbsp;
                                                                                        
                                                                                        
                                                                                                                                                                                                <select class="small" id="taxtype" name="taxtype" onchange="decideTaxDiv(); calcTotal();">
                                                                                                                                                                                                    <option value="individual" selected="">Khác biệt</option>
                                                                                                                                                                                                    <option value="group">Nhóm</option>
                                                                                                                                                                                                </select>
                                                                                                                                                                                            </td>
                                                                                                                                                                                        </tr>
                                                                                        
                                                                                                                                                                                         Header for the Product Details 
                                                                                                                                                                                        <tr valign="top">
                                                                                                                                                                                            <td width="5%" valign="top" class="lvtCol" align="right"><b>Công cụ</b></td>
                                                                                                                                                                                            <td width="40%" class="lvtCol"><font color="red">*</font><b>Tên mặt hàng</b></td>
                                                                                                                                                                                            <td width="10%" class="lvtCol"><b>Tồn kho</b></td>
                                                                                                                                                                                            <td width="10%" class="lvtCol"><b>Số lượng</b></td>
                                                                                                                                                                                            <td width="10%" class="lvtCol" align="right"><b>Đơn giá</b></td>
                                                                                                                                                                                            <td width="12%" nowrap="" class="lvtCol" align="right"><b>Tổng số</b></td>
                                                                                                                                                                                            <td width="13%" valign="top" class="lvtCol" align="right"><b>Thành tiền</b></td>
                                                                                                                                                                                        </tr>
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                                                                                                                        <tr id="row1" valign="top">
                                                                                        
                                                                                                                                                                                             column 1 - delete link - starts 
                                                                                                                                                                                            <td class="crmTableRow small lineOnTop"><input id="deleted1" name="deleted1" type="hidden" value="0"><br><br><a href="javascript:moveUpDown('DOWN','SalesOrder',1)" title="Move Downward"><img src="themes/images/down_layout.gif" border="0"></a></td>
                                                                                        
                                                                                                                                                                                             column 2 - Product Name - starts 
                                                                                                                                                                                            <td class="crmTableRow small lineOnTop">
                                                                                                                                                                                                 Product Re-Ordering Feature Code Addition Starts 
                                                                                                                                                                                                <input type="hidden" name="hidtax_row_no1" id="hidtax_row_no1" value="">
                                                                                                                                                                                                 Product Re-Ordering Feature Code Addition ends 
                                                                                                                                                                                                <table width="100%" border="0" cellspacing="0" cellpadding="1">
                                                                                                                                                                                                    <tbody><tr>
                                                                                                                                                                                                        <td class="small" valign="top">
                                                                                                                                                                                                        <input type="text" id="productName1" name="productName1" value="Thiết kế web" class="small" style="width: 70%;" readonly="">
                                                                                                                                                                                                        <input type="hidden" id="hdnProductId1" name="hdnProductId1" value="142">
                                                                                                                                                                                                        <input type="hidden" id="lineItemType1" name="lineItemType1" value="Products">
                                                                                                                                                                                                        &nbsp;
                                                                                                                                                                                                        <img id="searchIcon1" title="Products" src="themes/images/products.gif" style="cursor: pointer;" align="absmiddle" onclick="productPickList(this, 'SalesOrder', '1')">
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td class="small">
                                                                                                                                                                                                        <input type="hidden" value="" id="subproduct_ids1" name="subproduct_ids1">
                                                                                                                                                                                                        <span id="subprod_names1" name="subprod_names1" style="color:#C0C0C0;font-style:italic;"></span>
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td class="small" id="setComment">
                                                                                                                                                                                                        <textarea id="comment1" name="comment1" class="small" style="width:70%;height:40px"></textarea>
                                                                                                                                                                                                        <img src="themes/images/clear_field.gif" onclick="$('comment1').value = ''" ;="" style="cursor:pointer;">
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                    </tbody></table>
                                                                                                                                                                                            </td>
                                                                                                                                                                                             column 2 - Product Name - ends 
                                                                                        
                                                                                                                                                                                             column 3 - Quantity in Stock - starts 
                                                                                                                                                                                            <td class="crmTableRow small lineOnTop" valign="top"><span id="qtyInStock1">7.000</span></td>
                                                                                                                                                                                             column 3 - Quantity in Stock - ends 
                                                                                        
                                                                                        
                                                                                                                                                                                             column 4 - Quantity - starts 
                                                                                                                                                                                            <td class="crmTableRow small lineOnTop" valign="top">
                                                                                                                                                                                                <input id="qty1" name="qty1" type="text" class="detailedViewTextBoxOn" style="width:50px" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="settotalnoofrows(); calcTotal(); loadTaxes_Ajax('1');" onchange="setDiscount(this, '1')" value="1.000"><br><span id="stock_alert1"></span>
                                                                                                                                                                                            </td>
                                                                                                                                                                                             column 4 - Quantity - ends 
                                                                                        
                                                                                                                                                                                             column 5 - List Price with Discount, Total After Discount and Tax as table - starts 
                                                                                                                                                                                            <td class="crmTableRow small lineOnTop" align="right" valign="top">
                                                                                                                                                                                                <table width="100%" cellpadding="0" cellspacing="0">
                                                                                                                                                                                                    <tbody><tr>
                                                                                                                                                                                                        <td align="right">
                                                                                                                                                                                                        <input id="listPrice1" name="listPrice1" value="6000000.000" type="text" class="small " style="width:70px" onblur="calcTotal(); setDiscount(this, '1'); callTaxCalc('1');">&nbsp;<img src="themes/images/pricebook.gif" onclick="priceBookPickList(this, '1')">
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="right" style="padding:5px;" nowrap="">
                                                                                                                                                                                                        (-)&nbsp;<b><a href="javascript:doNothing();" onclick="displayCoords(this, 'discount_div1', 'discount', '1')">Chiết khấu</a> : </b>
                                                                                                                                                                                                        <div class="discountUI" id="discount_div1">
                                                                                                                                                                                                        <input type="hidden" id="discount_type1" name="discount_type1" value="">
                                                                                                                                                                                                        <table width="100%" border="0" cellpadding="5" cellspacing="0" class="small">
                                                                                                                                                                                                        <tbody><tr>
                                                                                                                                                                                                        <td id="discount_div_title1" nowrap="" align="left"></td>
                                                                                                                                                                                                        <td align="right"><img src="themes/images/close.gif" border="0" onclick="fnHidePopDiv('discount_div1')" style="cursor:pointer;"></td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="left" class="lineOnTop"><input type="radio" name="discount1" checked="" onclick="setDiscount(this, '1'); callTaxCalc('1'); calcTotal();">&nbsp; Khấu trừ ít nhất</td>
                                                                                                                                                                                                        <td class="lineOnTop">&nbsp;</td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="left"><input type="radio" name="discount1" onclick="setDiscount(this, '1'); callTaxCalc('1'); calcTotal();">&nbsp; % trong giá bán</td>
                                                                                                                                                                                                        <td align="right"><input type="text" class="small" size="5" id="discount_percentage1" name="discount_percentage1" value="0" onblur="setDiscount(this, '1'); callTaxCalc('1'); calcTotal();">&nbsp;%</td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="left" nowrap=""><input type="radio" name="discount1" onclick="setDiscount(this, '1'); callTaxCalc('1'); calcTotal();">&nbsp;Quản lý giảm giá</td>
                                                                                                                                                                                                        <td align="right"><input type="text" id="discount_amount1" name="discount_amount1" size="5" value="0" onblur="setDiscount(this, 1); callTaxCalc('1'); calcTotal();"></td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        </tbody></table>
                                                                                                                                                                                                        </div>
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="right" style="padding:5px;" nowrap="">
                                                                                                                                                                                                        <b>Giá sau khi chiết khấu :</b>
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        <tr id="individual_tax_row1" class="TaxShow">
                                                                                                                                                                                                        <td align="right" style="padding:5px;" nowrap="">
                                                                                                                                                                                                        (+)&nbsp;<b><a href="javascript:doNothing();" onclick="displayCoords(this, 'tax_div1', 'tax', '1')">Thuế </a> : </b>
                                                                                                                                                                                                        <div class="discountUI" id="tax_div1">
                                                                                                                                                                                                        <table width="100%" border="0" cellpadding="5" cellspacing="0" class="small" id="tax_table1">
                                                                                                                                                                                                        <tbody><tr>
                                                                                                                                                                                                        <td id="tax_div_title1" nowrap="" align="left"><b>Thiết lập Thuế cho : 6000000.00</b></td>
                                                                                                                                                                                                        <td>&nbsp;</td>
                                                                                                                                                                                                        <td align="right"><img src="themes/images/close.gif" border="0" onclick="fnHidePopDiv('tax_div1')" style="cursor:pointer;"></td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        </tbody></table><div align="left" class="lineOnTop" width="100%">Sản phẩm này không tính thuế.</div><input type="hidden" id="hdnTaxTotal1" name="hdnTaxTotal1" value="0"></div>
                                                                                                                                                                                                        This above div is added to display the tax informations 
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                    </tbody>
                                                                                                                                                                                                </table>
                                                                                                                                                                                            </td>
                                                                                                                                                                                             column 5 - List Price with Discount, Total After Discount and Tax as table - ends 
                                                                                        
                                                                                        
                                                                                                                                                                                             column 6 - Product Total - starts 
                                                                                                                                                                                            <td class="crmTableRow small lineOnTop" align="right">
                                                                                                                                                                                                <table width="100%" cellpadding="5" cellspacing="0">
                                                                                                                                                                                                    <tbody><tr>
                                                                                                                                                                                                        <td id="productTotal1" align="right">6000000.00</td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td id="discountTotal1" align="right">0.00</td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td id="totalAfterDiscount1" align="right">6000000.00</td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td id="taxTotal1" align="right" style="display: block;">0</td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                    </tbody></table>
                                                                                                                                                                                            </td>
                                                                                                                                                                                             column 6 - Product Total - ends 
                                                                                        
                                                                                                                                                                                             column 7 - Net Price - starts 
                                                                                                                                                                                            <td valign="bottom" class="crmTableRow small lineOnTop" align="right">
                                                                                                                                                                                                <span id="netPrice1">6000000.00</span>
                                                                                                                                                                                            </td>
                                                                                                                                                                                             column 7 - Net Price - ends 
                                                                                        
                                                                                        
                                                                                                                                                                                        </tr>
                                                                                                                                                                                         Product Details First row - Ends 
                                                                                                                                                                                        <tr id="row2" style="vertical-align: top;"><td class="crmTableRow small" id="row2_col1"><img src="themes/images/delete.gif" border="0" onclick="deleteRow('SalesOrder', 2, 'themes/images/')"><input id="deleted2" name="deleted2" type="hidden" value="0"><br><br>&nbsp;<a href="javascript:moveUpDown('UP','SalesOrder',2)" title="Move Upward"><img src="themes/images/up_layout.gif" border="0"></a></td><td class="crmTableRow small"><table border="0" cellpadding="1" cellspacing="0" width="100%"><tbody><tr><td class="small"><input id="productName2" name="productName2" class="small" style="width: 70%;" value="" readonly="readonly" type="text"><input id="hdnProductId2" name="hdnProductId2" value="" type="hidden"><input type="hidden" id="lineItemType2" name="lineItemType2" value="Products">&nbsp;<img id="searchIcon2" title="Products" src="themes/images/products.gif" style="cursor: pointer;" onclick="productPickList(this, 'SalesOrder', 2)" align="absmiddle"></td></tr><tr><td class="small"><input type="hidden" value="" id="subproduct_ids2" name="subproduct_ids2"><span id="subprod_names2" name="subprod_names2" style="color:#C0C0C0;font-style:italic;"> </span></td></tr><tr><td class="small" id="setComment2"><textarea id="comment2" name="comment2" class="small" style="width:70%;height:40px"></textarea><img src="themes/images/clear_field.gif" onclick="getObj('comment2').value = ''" ;="" style="cursor:pointer;"></td></tr></tbody></table></td><td class="crmTableRow small"><span id="qtyInStock2">&nbsp;</span></td><td class="crmTableRow small"><input id="qty2" name="qty2" type="text" class="detailedViewTextBoxOn" style="width:50px" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="settotalnoofrows(); calcTotal(); loadTaxes_Ajax(2);" onchange="setDiscount(this, 2)" value=""><br><span id="stock_alert2"></span></td><td class="crmTableRow small"><table width="100%" cellpadding="0" cellspacing="0"><tbody><tr><td align="right"><input id="listPrice2" name="listPrice2" value="0.00" type="text" class="small " style="width:70px" onblur="calcTotal(); setDiscount(this, 2); callTaxCalc(2); calcTotal();">&nbsp;<img src="themes/images/pricebook.gif" onclick="priceBookPickList(this, 2)"></td></tr><tr><td align="right" style="padding:5px;" nowrap="">		(-)&nbsp;<b><a href="javascript:doNothing();" onclick="displayCoords(this, 'discount_div2', 'discount', 2)">Chiết khấu</a> : </b><div class="discountUI" id="discount_div2"><input type="hidden" id="discount_type2" name="discount_type2" value=""><table width="100%" border="0" cellpadding="5" cellspacing="0" class="small"><tbody><tr><td id="discount_div_title2" nowrap="" align="left"></td><td align="right"><img src="themes/images/close.gif" border="0" onclick="fnHidePopDiv('discount_div2')" style="cursor:pointer;"></td></tr><tr><td align="left" class="lineOnTop"><input type="radio" name="discount2" checked="" onclick="setDiscount(this, 2); callTaxCalc(2); calcTotal();">&nbsp; Khấu trừ ít nhất</td><td class="lineOnTop">&nbsp;</td></tr><tr><td align="left"><input type="radio" name="discount2" onclick="setDiscount(this, 2); callTaxCalc(2); calcTotal();">&nbsp; % trong giá bán </td><td align="right"><input type="text" class="small" size="2" id="discount_percentage2" name="discount_percentage2" value="0" style="visibility:hidden" onblur="setDiscount(this, 2); callTaxCalc(2); calcTotal();">&nbsp;%</td></tr><tr><td align="left" nowrap=""><input type="radio" name="discount2" onclick="setDiscount(this, 2); callTaxCalc(2); calcTotal();">&nbsp; Quản lý giảm giá</td><td align="right"><input type="text" id="discount_amount2" name="discount_amount2" size="5" value="0" style="visibility:hidden" onblur="setDiscount(this, 2); callTaxCalc(2); calcTotal();"></td></tr></tbody></table></div></td></tr><tr> <td align="right" style="padding:5px;" nowrap=""><b>Giá sau khi chiết khấu :</b></td></tr><tr id="individual_tax_row2" class="TaxShow"><td align="right" style="padding:5px;" nowrap="">(+)&nbsp;<b><a href="javascript:doNothing();" onclick="displayCoords(this, 'tax_div2', 'tax', 2)">Thuế </a> : </b><div class="discountUI" id="tax_div2">
                                                                                                                                                                                                        <table width="100%" border="0" cellpadding="5" cellspacing="0" class="small" id="tax_table2">
                                                                                                                                                                                                        <tbody><tr>
                                                                                                                                                                                                        <td id="tax_div_title2" nowrap="" align="left"><b>Thiết lập Thuế cho : 0.00</b></td>
                                                                                                                                                                                                        <td>&nbsp;</td>
                                                                                                                                                                                                        <td align="right"><img src="themes/images/close.gif" border="0" onclick="fnHidePopDiv('tax_div2')" style="cursor:pointer;"></td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        </tbody></table><div align="left" class="lineOnTop" width="100%">Sản phẩm này không tính thuế.</div><input type="hidden" id="hdnTaxTotal2" name="hdnTaxTotal2" value="0"></div></td></tr></tbody></table> </td><td class="crmTableRow small"><table width="100%" cellpadding="5" cellspacing="0"><tbody><tr><td id="productTotal2" align="right">0.00</td></tr><tr><td id="discountTotal2" align="right">0.00</td></tr><tr><td id="totalAfterDiscount2" align="right">0.00</td></tr><tr><td id="taxTotal2" align="right" style="display: block;">0</td></tr></tbody></table></td><td class="crmTableRow small" align="right" style="vertical-align: bottom;"><span id="netPrice2">0.00</span></td></tr></tbody></table>
                                                                                        
                                                                                        
                                                                                        
                                                                                                                                                                                <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" class="crmTable">
                                                                                                                                                                                     Add Product Button 
                                                                                                                                                                                    <tbody><tr>
                                                                                                                                                                                            <td colspan="3">
                                                                                                                                                                                                <input type="button" name="Button" class="crmbutton small create" value="Thêm sản phẩm" onclick="fnAddProductRow('SalesOrder', 'themes/softed/images/');">
                                                                                                                                                                                                <input type="button" name="Button" class="crmbutton small create" value="Thêm dịch vụ" onclick="fnAddServiceRow('SalesOrder', 'themes/softed/images/');">
                                                                                                                                                                                            </td>
                                                                                                                                                                                        </tr>
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                                                                                                                                                                        
                                                                                                                                                                                        All these details are stored in the first element in the array with the index name as final_details 
                                                                                                                                                                                        so we will get that array, parse that array and fill the details
                                                                                                                                                                                        
                                                                                        
                                                                                                                                                                                         Product Details Final Total Discount, Tax and Shipping&Hanling  - Starts 
                                                                                                                                                                                        <tr valign="top">
                                                                                                                                                                                            <td width="88%" colspan="2" class="crmTableRow small lineOnTop" align="right"><b>Cộng tiền hàng</b></td>
                                                                                                                                                                                            <td width="12%" id="netTotal" class="crmTableRow small lineOnTop" align="right">6000000</td>
                                                                                                                                                                                        </tr>
                                                                                        
                                                                                                                                                                                        <tr valign="top">
                                                                                                                                                                                            <td class="crmTableRow small lineOnTop" width="60%" style="border-right:1px #dadada;">&nbsp;</td>
                                                                                                                                                                                            <td class="crmTableRow small lineOnTop" align="right">
                                                                                                                                                                                                (-)&nbsp;<b><a href="javascript:doNothing();" onclick="displayCoords(this, 'discount_div_final', 'discount_final', '1')">Chiết khấu</a>
                                                                                        
                                                                                                                                                                                                     Popup Discount DIV 
                                                                                                                                                                                                    <div class="discountUI" id="discount_div_final">
                                                                                                                                                                                                        <input type="hidden" id="discount_type_final" name="discount_type_final" value="zero">
                                                                                                                                                                                                        <table width="100%" border="0" cellpadding="5" cellspacing="0" class="small">
                                                                                                                                                                                                        <tbody><tr>
                                                                                                                                                                                                        <td id="discount_div_title_final" nowrap="" align="left"></td>
                                                                                                                                                                                                        <td align="right"><img src="themes/images/close.gif" border="0" onclick="fnHidePopDiv('discount_div_final')" style="cursor:pointer;"></td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="left" class="lineOnTop"><input type="radio" name="discount_final" checked="" onclick="setDiscount(this, '_final'); calcGroupTax(); calcTotal();">&nbsp; Khấu trừ ít nhất</td>
                                                                                                                                                                                                        <td class="lineOnTop">&nbsp;</td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="left"><input type="radio" name="discount_final" onclick="setDiscount(this, '_final'); calcTotal(); calcGroupTax();">&nbsp; % trong giá bán</td>
                                                                                                                                                                                                        <td align="right"><input type="text" class="small" size="5" id="discount_percentage_final" name="discount_percentage_final" value="0" onblur="setDiscount(this, '_final'); calcGroupTax(); calcTotal();" style="visibility: hidden;">&nbsp;%</td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="left" nowrap=""><input type="radio" name="discount_final" onclick="setDiscount(this, '_final'); calcTotal(); calcGroupTax();">&nbsp;Quản lý giảm giá</td>
                                                                                                                                                                                                        <td align="right"><input type="text" id="discount_amount_final" name="discount_amount_final" size="5" value="0" onblur="setDiscount(this, '_final'); calcGroupTax(); calcTotal();" style="visibility: hidden;"></td>
                                                                                                                                                                                                        </tr>
                                                                                                                                                                                                        </tbody></table>
                                                                                                                                                                                                    </div>
                                                                                                                                                                                                     End Div 
                                                                                        
                                                                                                                                                                                                </b></td>
                                                                                                                                                                                            <td id="discountTotal_final" class="crmTableRow small lineOnTop" align="right">0</td>
                                                                                                                                                                                        </tr>
                                                                                        
                                                                                        
                                                                                                                                                                                         Group Tax - starts 
                                                                                                                                                                                        <tr id="group_tax_row" valign="top" class="TaxHide">
                                                                                                                                                                                            <td class="crmTableRow small lineOnTop" style="border-right:1px #dadada;">&nbsp;</td>
                                                                                                                                                                                            <td class="crmTableRow small lineOnTop" align="right">
                                                                                                                                                                                                (+)&nbsp;<b><a href="javascript:doNothing();" onclick="displayCoords(this, 'group_tax_div', 'group_tax_div_title', ''); calcTotal(); calcGroupTax();">Thuế</a></b>
                                                                                        
                                                                                                                                                                                                 Pop Div For Group TAX 
                                                                                                                                                                                                <div class="discountUI" id="group_tax_div">
                                                                                                                                                                                                    <table width="100%" border="0" cellpadding="5" cellspacing="0" class="small">
                                                                                                                                                                                                        <tbody><tr>
                                                                                                                                                                                                        <td id="group_tax_div_title" colspan="2" nowrap="" align="left"></td>
                                                                                                                                                                                                        <td align="right"><img src="themes/images/close.gif" border="0" onclick="fnHidePopDiv('group_tax_div')" style="cursor:pointer;"></td>
                                                                                                                                                                                                        </tr>
                                                                                        
                                                                                        
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="left" class="lineOnTop">
                                                                                                                                                                                                        <input type="text" class="small" size="5" name="tax1_group_percentage" id="group_tax_percentage1" value="10.000" onblur="calcTotal()">&nbsp;%
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        <td align="center" class="lineOnTop">VAT</td>
                                                                                                                                                                                                        <td align="right" class="lineOnTop">
                                                                                                                                                                                                        <input type="text" class="small" size="6" name="tax1_group_amount" id="group_tax_amount1" style="cursor:pointer;" value="0.00" readonly="">
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        </tr>
                                                                                        
                                                                                        
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="left" class="lineOnTop">
                                                                                                                                                                                                        <input type="text" class="small" size="5" name="tax2_group_percentage" id="group_tax_percentage2" value="10.000" onblur="calcTotal()">&nbsp;%
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        <td align="center" class="lineOnTop">Sales</td>
                                                                                                                                                                                                        <td align="right" class="lineOnTop">
                                                                                                                                                                                                        <input type="text" class="small" size="6" name="tax2_group_amount" id="group_tax_amount2" style="cursor:pointer;" value="0.00" readonly="">
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        </tr>
                                                                                        
                                                                                        
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="left" class="lineOnTop">
                                                                                                                                                                                                        <input type="text" class="small" size="5" name="tax3_group_percentage" id="group_tax_percentage3" value="12.500" onblur="calcTotal()">&nbsp;%
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        <td align="center" class="lineOnTop">Service</td>
                                                                                                                                                                                                        <td align="right" class="lineOnTop">
                                                                                                                                                                                                        <input type="text" class="small" size="6" name="tax3_group_amount" id="group_tax_amount3" style="cursor:pointer;" value="0.00" readonly="">
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        </tr>
                                                                                        
                                                                                        
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="left" class="lineOnTop">
                                                                                                                                                                                                        <input type="text" class="small" size="5" name="tax4_group_percentage" id="group_tax_percentage4" value="0.000" onblur="calcTotal()">&nbsp;%
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        <td align="center" class="lineOnTop">NoVAT</td>
                                                                                                                                                                                                        <td align="right" class="lineOnTop">
                                                                                                                                                                                                        <input type="text" class="small" size="6" name="tax4_group_amount" id="group_tax_amount4" style="cursor:pointer;" value="0.00" readonly="">
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        </tr>
                                                                                        
                                                                                                                                                                                                        <input type="hidden" id="group_tax_count" value="4">
                                                                                        
                                                                                                                                                                                                        </tbody></table>
                                                                                        
                                                                                                                                                                                                </div>
                                                                                                                                                                                                 End Popup Div Group Tax 
                                                                                        
                                                                                        
                                                                                                                                                                                            </td>
                                                                                                                                                                                            <td id="tax_final" class="crmTableRow small lineOnTop" align="right">1950000.00</td>
                                                                                                                                                                                        </tr>
                                                                                                                                                                                         Group Tax - ends 
                                                                                        
                                                                                        
                                                                                        
                                                                                                                                                                                        <tr valign="top">
                                                                                                                                                                                            <td class="crmTableRow small" style="border-right:1px #dadada;">&nbsp;</td>
                                                                                                                                                                                            <td class="crmTableRow small" align="right">
                                                                                                                                                                                                (+)&nbsp;<b>Chi phí vận chuyển và đóng gói </b>
                                                                                                                                                                                            </td>
                                                                                                                                                                                            <td class="crmTableRow small" align="right">
                                                                                                                                                                                                <input id="shipping_handling_charge" name="shipping_handling_charge" type="text" class="small" style="width:40px" align="right" value="0.000" onblur="calcSHTax();">
                                                                                                                                                                                            </td>
                                                                                                                                                                                        </tr>
                                                                                        
                                                                                        
                                                                                                                                                                                        <tr valign="top">
                                                                                                                                                                                            <td class="crmTableRow small" style="border-right:1px #dadada;">&nbsp;</td>
                                                                                                                                                                                            <td class="crmTableRow small" align="right">
                                                                                                                                                                                                (+)&nbsp;<b><a href="javascript:doNothing();" onclick="displayCoords(this, 'shipping_handling_div', 'sh_tax_div_title', ''); calcSHTax();">Thuế vận chuyển và đóng gói </a></b>
                                                                                        
                                                                                                                                                                                                 Pop Div For Shipping and Handlin TAX 
                                                                                                                                                                                                <div class="discountUI" id="shipping_handling_div">
                                                                                                                                                                                                    <table width="100%" border="0" cellpadding="5" cellspacing="0" class="small">
                                                                                                                                                                                                        <tbody><tr>
                                                                                                                                                                                                        <td id="sh_tax_div_title" colspan="2" nowrap="" align="left"></td>
                                                                                                                                                                                                        <td align="right"><img src="themes/images/close.gif" border="0" onclick="fnHidePopDiv('shipping_handling_div')" style="cursor:pointer;"></td>
                                                                                                                                                                                                        </tr>
                                                                                        
                                                                                        
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="left" class="lineOnTop">
                                                                                                                                                                                                        <input type="text" class="small" size="3" name="shtax1_sh_percent" id="sh_tax_percentage1" value="4.500" onblur="calcSHTax()">&nbsp;%
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        <td align="center" class="lineOnTop">VAT</td>
                                                                                                                                                                                                        <td align="right" class="lineOnTop">
                                                                                                                                                                                                        <input type="text" class="small" size="4" name="shtax1_sh_amount" id="sh_tax_amount1" style="cursor:pointer;" value="0.00" readonly="">
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        </tr>
                                                                                        
                                                                                        
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="left" class="lineOnTop">
                                                                                                                                                                                                        <input type="text" class="small" size="3" name="shtax2_sh_percent" id="sh_tax_percentage2" value="10.000" onblur="calcSHTax()">&nbsp;%
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        <td align="center" class="lineOnTop">Sales</td>
                                                                                                                                                                                                        <td align="right" class="lineOnTop">
                                                                                                                                                                                                        <input type="text" class="small" size="4" name="shtax2_sh_amount" id="sh_tax_amount2" style="cursor:pointer;" value="0.00" readonly="">
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        </tr>
                                                                                        
                                                                                        
                                                                                                                                                                                                        <tr>
                                                                                                                                                                                                        <td align="left" class="lineOnTop">
                                                                                                                                                                                                        <input type="text" class="small" size="3" name="shtax3_sh_percent" id="sh_tax_percentage3" value="12.500" onblur="calcSHTax()">&nbsp;%
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        <td align="center" class="lineOnTop">Service</td>
                                                                                                                                                                                                        <td align="right" class="lineOnTop">
                                                                                                                                                                                                        <input type="text" class="small" size="4" name="shtax3_sh_amount" id="sh_tax_amount3" style="cursor:pointer;" value="0.00" readonly="">
                                                                                                                                                                                                        </td>
                                                                                                                                                                                                        </tr>
                                                                                        
                                                                                                                                                                                                        <input type="hidden" id="sh_tax_count" value="3">
                                                                                        
                                                                                                                                                                                                        </tbody></table>
                                                                                                                                                                                                </div>
                                                                                                                                                                                                 End Popup Div for Shipping and Handling TAX 
                                                                                        
                                                                                                                                                                                            </td>
                                                                                                                                                                                            <td id="shipping_handling_tax" class="crmTableRow small" align="right">0.00</td>
                                                                                                                                                                                        </tr>
                                                                                        
                                                                                        
                                                                                                                                                                                        <tr valign="top">
                                                                                                                                                                                            <td class="crmTableRow small" style="border-right:1px #dadada;">&nbsp;</td>
                                                                                                                                                                                            <td class="crmTableRow small" align="right">
                                                                                                                                                                                                Điều chỉnh thêm bớt
                                                                                                                                                                                                <select id="adjustmentType" name="adjustmentType" class="small" onchange="calcTotal();">
                                                                                                                                                                                                    <option value="+">Thêm</option>
                                                                                                                                                                                                    <option value="-">Bớt</option>
                                                                                                                                                                                                </select>
                                                                                                                                                                                            </td>
                                                                                                                                                                                            <td class="crmTableRow small" align="right">
                                                                                                                                                                                                <input id="adjustment" name="adjustment" type="text" class="small" style="width:40px" align="right" value="0.000" onblur="calcTotal();">
                                                                                                                                                                                            </td>
                                                                                                                                                                                        </tr>
                                                                                        
                                                                                        
                                                                                                                                                                                        <tr valign="top">
                                                                                                                                                                                            <td class="crmTableRow big lineOnTop" style="border-right:1px #dadada;">&nbsp;</td>
                                                                                                                                                                                            <td class="crmTableRow big lineOnTop" align="right"><b>Tổng tiền thanh toán</b></td>
                                                                                                                                                                                            <td id="grandTotal" name="grandTotal" class="crmTableRow big lineOnTop" align="right">6000000.00</td>
                                                                                                                                                                                        </tr>
                                                                                                                                                                                    </tbody></table>
                                                                                        
                                                                                                                                                                                <input type="hidden" name="totalProductCount" id="totalProductCount" value="2">
                                                                                                                                                                                <input type="hidden" name="subtotal" id="subtotal" value="6000000">
                                                                                                                                                                                <input type="hidden" name="total" id="total" value="6000000.00">
                                                                                                                                                                            </td></tr>-->
                                                                                        <!-- Upto this Added to display the Product Details -->

                                                                                        <!-- This is added to call the function calcCurrentTax which will calculate the tax amount from percentage -->


                                                                                        <!-- Added to calculate the tax and total values when page loads -->
                                                                                    <script>decideTaxDiv();</script>
                                                                                    <script>calcTotal();</script>
                                                                                    <script>calcSHTax();</script>
                                                                                    <!-- This above div is added to display the tax informations --> 




                                                                                    <tr>
                                                                                        <td colspan="4" style="padding:5px">
                                                                                            <div align="center">
                                                                                                <input title="Lưu [Alt+S]" accesskey="S" class="crmbutton small save" onclick="
                                                                                                        document.getElementById('sub_form').submit();
//                                                                                            this.form.action.value = 'Save'; displaydeleted(); 
//                                                                                            return validateInventory('SalesOrder')
                                                                                                       " type="submit" name="button" value="  Lưu  " style="width:70px">
                                                                                                <input title="Hủy bỏ [Alt+X]" accesskey="X" class="crmbutton small cancel" onclick="window.history.back()" type="button" name="button" value="  Hủy bỏ  " style="width:70px">
                                                                                            </div>
                                                                                        </td>
                                                                                    </tr>
                                                                    </tbody></table>
                                                            </td>
                                                        </tr>
                                                    </tbody></table>
                                            </td>
                                            <!-- Inventory Actions - ends -->
                                        </tr>
                                    </tbody></table>
                                </td>
                                </tr>
                                </tbody>
                                </table>
                            </form>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
        <input name="search_url" id="search_url" type="hidden" value="">


        <!-- This div is added to get the left and top values to show the tax details-->
        <div id="tax_container" style="display:none; position:absolute; z-index:1px;"></div>

        <br><br><br>

        <!--    Footer-->
        <s:include value="footer.jsp"></s:include>


    </body>
</html>
