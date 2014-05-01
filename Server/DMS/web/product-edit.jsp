<%-- 
    Document   : product-edit
    Created on : Apr 10, 2014, 12:46:21 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <title>admin - Tồn kho - Sản phẩm - Phần mềm quản lý HOSCO-MANAGEMENT</title>
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
            <s:param name="page_param" value="'inventory'" />
        </s:include>


        <!-- TOOLS -->
        <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
            <tbody>
                <tr><td style="height:2px"></td></tr>
                <tr>

                    <td style="padding-left:10px;padding-right:50px" class="moduleName" nowrap="">Tồn kho &gt; <a class="hdrLink" href="">Sản phẩm</a></td>
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
                                                                    <td style="padding-right:0px;padding-left:10px;"><a href="new-product"><img src="themes/softed/images/btnL3Add.gif" alt="Tạo mới Sản phẩm..." title="Tạo mới Sản phẩm..." border="0"></a></td>

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
                                                    <td style="padding-right:0px;padding-left:10px;"><a href="import-product"><img src="themes/softed/images/tbarImport.gif" alt="Nhập dữ liệu Sản phẩm" title="Nhập dữ liệu Sản phẩm" border="0"></a></td>  
                                                    <td style="padding-right:10px"><a name="export_link" href="javascript:alert('Chức năng chưa được xây dựng!')" <!--onclick="return selectedRecords('Accounts', 'Marketing')"--><img src="themes/softed/images/tbarExport.gif" alt="Xuất dữ liệu Sản phẩm" title="Xuất dữ liệu Sản phẩm" border="0"></a></td>


                                                    <!--<td style="padding-right:10px"><a href="home.jsp?module=Accounts&action=FindDuplicateRecords&button_view=true&list_view=true&parenttab=Marketing"><img src="themes/softed/images/findduplicates.gif" alt="" title="Tìm kiếm trùng" border="0"></a></td> -->
                                                    <!--                                            <td style="padding-right:10px"><a href="javascript:;" onclick="moveMe('mergeDup');
                                                                                                        mergeshowhide('mergeDup');
                                                                                                        searchhide('searchAcc', 'advSearch');"><img src="themes/images/findduplicates.gif" alt="" title="Tìm kiếm trùng" border="0"></a></td>-->
                                                </tr>
                                            </tbody></table>  
                                    </td>
                                    <td style="width:20px;">&nbsp;</td>
                                    <td class="small">
                                        <!-- All Menu -->
                                        <table border="0" cellspacing="0" cellpadding="5">
                                            <tbody>
                                                <tr>
                                                    <!--                                            <td style="padding-left:10px;"><a href="javascript:;" onmouseout="fninvsh('allMenu');" onclick="fnvshobj(this, 'allMenu')"><img src="themes/softed/images/btnL3AllMenu.gif" alt="Mở tất cả Menu..." title="Mở tất cả Menu..." border="0"></a></td>
                                                                                                <td style="padding-left:10px;"><a href=""><img src="themes/softed/images/settingsBox.png" alt="Khách hàng Thiết lập" title="Khách hàng Thiết lập" border="0"></a></td>-->
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

        <div id="searchingUI" style="display:none;">
            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody><tr>
                        <td align="center">
                            <img src="themes/images/searching.gif" alt="Đang tìm... hãy đợi" title="Đang tìm... hãy đợi">
                        </td>
                    </tr>
                </tbody>
            </table>

        </div>

        <!--PRODUCT-->
        <table border="0" cellspacing="0" cellpadding="0" width="98%" align="center">
            <tbody><tr>
                    <td valign="top"><img src="themes/softed/images/showPanelTopLeft.gif"></td>

                    <td class="showPanelBg" valign="top" width="100%">
                        <div class="small" style="padding:20px">
                            <span class="lvtHeaderText"><font color="purple">[ <s:property value="product.productID"/> ] </font><s:property value="product.productName"/> - Sửa  Thông tin</span> <br>
                            <!--                    Cập nhật 1083 ngày trước (22 Tháng 4 2011)	 -->

                            <hr noshade="" size="1">
                            <br> 
                            <form name="EditView" method="POST"  action="update-product?id_pdct=<s:property value="product.serial"/>" onsubmit="" id="sub_form">
                                <!--                        enctype="multipart/form-data"-->
                                <input type="hidden" name="product.serial" value="<s:property value="product.serial"/>">


                                <table border="0" cellspacing="0" cellpadding="0" width="95%" align="center">
                                    <tbody>
                                        <tr>
                                            <td>
                                                <table border="0" cellspacing="0" cellpadding="3" width="100%" class="small">
                                                    <tbody><tr>
                                                            <td class="dvtTabCache" style="width:10px" nowrap="">&nbsp;</td>
                                                            <td class="dvtSelectedCell" align="center" nowrap=""> Thông tin</td>
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
                                                                                    <tbody>
                                                                                        <tr>
                                                                                            <td colspan="4" style="padding:5px">
                                                                                                <div align="center">
                                                                                                    <input title="Lưu [Alt+S]" accesskey="S" class="crmbutton small save" onclick="
                                                                                                            document.getElementById('sub_form').submit();

                                                                                                           " type="submit" name="button" value="  Lưu  " style="width:70px">
                                                                                                    <input title="Hủy bỏ [Alt+X]" accesskey="X" class="crmbutton small cancel" onclick="window.history.back()" type="button" name="button" value="Hủy bỏ  " style="width:70px">
                                                                                                </div>
                                                                                            </td>
                                                                                        </tr>

                                                                                        <!-- included to handle the edit fields based on ui types -->
                                                                                        <tr>
                                                                                            <td colspan="4" class="detailedViewHeader">
                                                                                                <b>Thông tin sản phẩm</b>
                                                                                            </td>
                                                                                        </tr>

                                                                                        <!-- Handle the ui types display -->


                                                                                        <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                                                        <tr style="height:25px">

                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red">*</font>Tên sản phẩm 			</td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input type="text" name="product.productName" tabindex="" value="<s:property value="product.productName"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                            </td>

                                                                                            <!-- Non Editable field, only configured value will be loaded -->
                                                                                            <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Mã sản phẩm </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input readonly="" type="text" tabindex="" name="product.productID" id="product_no" value="<s:property value="product.productID"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr style="height:25px">

                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font>Mã vạch 			
                                                                                            </td>

                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input  type="text" tabindex="" name="product.barcode" id="product_no" value="<s:property value="product.barcode"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                            </td>

                                                                                            <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Thương hiệu </td>

                                                                                            <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="product.brand" id="productcode" value="<s:property value="product.brand"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                        </tr>
                                                                                        <tr style="height:25px">

                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font>Xuất xứ			
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">

                                                                                                <input name="product.origin" tabindex="" id="jscal_field_sales_start_date" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="<s:property value="product.origin"/>">
                                                                                                <!--                                                                                        <img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_sales_start_date">
                                                                                                
                                                                                                                                                                                        <br><font size="1"><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
                                                                                                
                                                                                                                                                                                        <script type="text/javascript" id="massedit_calendar_sales_start_date">
                                                                                                                                                                                            Calendar.setup({
                                                                                                                                                                                                inputField: "jscal_field_sales_start_date", ifFormat: "%d-%m-%Y", showsTime: false, button: "jscal_trigger_sales_start_date", singleClick: true, step: 1
                                                                                                                                                                                            })
                                                                                                                                                                                        </script>-->
                                                                                            </td>
                                                                                            <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font>
                                                                                                Nhà cung cấp			
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <select name="product.provider" tabindex="" class="small">
                                                                                                    <s:iterator value="providerIDList" status="index">
                                                                                                        <s:if test="providerIDList.get(#index.index) == product.getProvider()">
                                                                                                            <option value="<s:property value="providerIDList.get(#index.index)"/>" selected><s:property value="providerIDList.get(#index.index)"/></option>
                                                                                                        </s:if>
                                                                                                        <s:else>
                                                                                                            <option value="<s:property value="providerIDList.get(#index.index)"/>" ><s:property value="providerIDList.get(#index.index)"/></option>
                                                                                                        </s:else>
                                                                                                    </s:iterator>
                                                                                                </select>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr style="height:25px">

                                                                                            <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font>
                                                                                                Loại sản phẩm 			
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <select name="productcategory" tabindex="" class="small">
                                                                                                    <option value="--None--">
                                                                                                        --Chưa chọn--
                                                                                                    </option>
                                                                                                    <!--                                                                                            <option value="Hardware">
                                                                                                                                                                                                    Phần cứng
                                                                                                                                                                                                </option>
                                                                                                                                                                                                <option value="Software" selected="">
                                                                                                                                                                                                    Phần mềm
                                                                                                                                                                                                </option>
                                                                                                                                                                                                <option value="CRM Applications">
                                                                                                                                                                                                    Ứng dụng CRM
                                                                                                                                                                                                </option>-->
                                                                                                </select>
                                                                                            </td>



                                                                                        </tr>
                                                                                        <tr style="height:25px">

                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font>Giá trước thuế			
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">

                                                                                                <input name="product.importPrices" tabindex="" id="jscal_field_sales_end_date" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="<s:property value="product.importPrices"/>">

                                                                                                <!--                                                                                        <img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_sales_end_date">
                                                                                                                                                                                        <br><font size="1"><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
                                                                                                                                                                                        <script type="text/javascript" id="massedit_calendar_sales_end_date">
                                                                                                                                                                                            Calendar.setup({
                                                                                                                                                                                                inputField: "jscal_field_sales_end_date", ifFormat: "%d-%m-%Y", showsTime: false, button: "jscal_trigger_sales_end_date", singleClick: true, step: 1
                                                                                                                                                                                            })
                                                                                                                                                                                        </script>-->

                                                                                            </td>

                                                                                            <!--                                                                                    <td width="20%" class="dvtCellLabel" align="right">
                                                                                                                                                                                    <font color="red"></font>Giá bán			
                                                                                                                                                                                </td>
                                                                                                                                                                                <td width="30%" align="left" class="dvtCellInfo">
                                                                                            
                                                                                                                                                                                    <input name="product.mExportPrices" tabindex="" id="jscal_field_expiry_date" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="<s:property value="product.mExportPrices"/>">
                                                                                                                                                                                    
                                                                                                                                                                                    <img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_expiry_date">
                                                                                                                                                                                    <br><font size="1"><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
                                                                                                                                                                                    <script type="text/javascript" id="massedit_calendar_expiry_date">
                                                                                                                                                                                        Calendar.setup({
                                                                                                                                                                                            inputField: "jscal_field_expiry_date", ifFormat: "%d-%m-%Y", showsTime: false, button: "jscal_trigger_expiry_date", singleClick: true, step: 1
                                                                                                                                                                                        })
                                                                                                                                                                                    </script>
                                                                                            
                                                                                                                                                                                </td>-->

                                                                                        </tr>
                                                                                        <tr style="height:25px">
                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font>Đơn vị			
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input name="product.quantification" type="text" style="border:1px solid #bababa;" value="<s:property value="product.quantification"/>">
                                                                                                <!--                                                                                        <input name="vendor_id" type="hidden" value="0">&nbsp;
                                                                                                                                                                                        <img src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" language="javascript" onclick="return window.open( & quot; index.php?module = Vendors & amp; action = Popup & amp; html = Popup_picker & amp; popuptype = specific & amp; form = EditView & amp; fromlink = & quot; , & quot; test & quot; , & quot; width = 640, height = 602, resizable = 0, scrollbars = 0 & quot; );" align="absmiddle" style="cursor:hand;cursor:pointer">
                                                                                                                                                                                        <input type="image" tabindex="" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" language="javascript" onclick="this.form.vendor_id.value = '';
                                                                                                                                                                                                this.form.vendor_name.value = '';
                                                                                                                                                                                                return false;" align="absmiddle" style="cursor:hand;cursor:pointer">-->
                                                                                            </td>
                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font>Quy cách 			
                                                                                            </td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                &nbsp;&nbsp;
                                                                                                <input style="width:74%;" class="detailedViewTextBox" type="text" tabindex="" name="product.packingSpecifications" size="27" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'" onkeyup="validateUrl('website');" value="<s:property value="product.packingSpecifications"/>">
                                                                                            </td>

                                                                                        </tr>


                                                                                        <tr style="height:25px"><td>&nbsp;</td></tr>

                                                                                        <tr>
                                                                                            <td colspan="4" class="detailedViewHeader">
                                                                                                <b>Thông tin Giá cả</b>
                                                                                            </td>
                                                                                        </tr>

                                                                                        <!-- Handle the ui types display -->


                                                                                        <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                                                        <tr style="height:25px">

                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font>Giá sau thuế: (₫) 			</td>
                                                                                            <td width="30%" align="left" class="dvtCellInfo">				
                                                                                                <span id="multiple_currencies">
                                                                                                    <input readonly="" name="product.exportPrices" id="unit_price" tabindex="" type="text" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox';
                                                                                                            updateUnitPrice('unit_price', 'curname1');" value="<s:property value="product.exportPrices"/>" style="width:60%;">
                                                                                                    &nbsp;
                                                                                                    <!--                                                                                            <a href="javascript:void(0);" onclick="updateUnitPrice('unit_price', 'curname1');
                                                                                                                                                                                                        toggleShowHide('currency_class', 'multiple_currencies');">thêm tiền tệ »</a>-->
                                                                                                </span>
                                                                                                <div id="currency_class" class="multiCurrencyEditUI" width="350">
                                                                                                    <input type="hidden" name="base_currency" id="base_currency" value="curname1">
                                                                                                    <input type="hidden" name="base_conversion_rate" id="base_currency" value="curname1">
                                                                                                    <table width="100%" height="100%" class="small" cellpadding="5">
                                                                                                        <tbody><tr class="detailedViewHeader">
                                                                                                                <th colspan="4">
                                                                                                                    <b>Giá sản phẩm</b>
                                                                                                                </th>
                                                                                                                <th align="right">
                                                                                                                    <img border="0" style="cursor: pointer;" onclick="toggleShowHide('multiple_currencies', 'currency_class');" src="themes/images/close.gif">
                                                                                                                </th>
                                                                                                            </tr>
                                                                                                            <tr class="detailedViewHeader">
                                                                                                                <th>Tiền tệ</th>
                                                                                                                <th>Giá</th>
                                                                                                                <th>Chuyển đổi giá</th>
                                                                                                                <th>Phục hồi giá</th>							
                                                                                                                <th>Tiền tệ cơ bản</th>
                                                                                                            </tr>
                                                                                                            <tr>

                                                                                                                <td align="right" class="dvtCellLabel">
                                                                                                                    Vietnam, Dong (₫)
                                                                                                                    <input type="checkbox" name="cur_1_check" id="cur_1_check" class="small" onclick="fnenableDisable(this, '1');
                                                                                                                            updateCurrencyValue(this, 'curname1', 'curname1', '1');" checked="">
                                                                                                                </td>
                                                                                                                <td class="dvtCellInfo" align="left">
                                                                                                                    <input type="text" size="10" class="small" name="curname1" id="curname1" value="0.00" onblur="updateUnitPrice('curname1', 'unit_price');
                                                                                                                            fnpriceValidation('curname1');">
                                                                                                                </td>
                                                                                                                <td class="dvtCellInfo" align="left">
                                                                                                                    <input disabled="true" type="text" size="10" class="small" name="cur_conv_rate1" value="1">
                                                                                                                </td>
                                                                                                                <td class="dvtCellInfo" align="center">
                                                                                                                    <input type="button" class="crmbutton small edit" id="cur_reset1" onclick="updateCurrencyValue(this, 'curname1', 'curname1', '1');" value="Phục hồi">
                                                                                                                </td>
                                                                                                                <td class="dvtCellInfo">
                                                                                                                    <input type="radio" class="detailedViewTextBox" id="base_currency1" name="base_currency_input" value="curname1" checked="" onchange="updateBaseCurrencyValue()">
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                        </tbody>
                                                                                                    </table>
                                                                                                </div>
                                                                                            </td>
                                                                                            <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Thuế (%) </td>

                                                                                            <td width="30%" align="left" class="dvtCellInfo">
                                                                                                <input type="text" tabindex="" name="product.vatTax" id="commissionrate" value="<s:property value="product.vatTax"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                            </td>
                                                                                        </tr>
                                                                                        <!--                                                                                <tr style="height:25px">
                                                                                                                                                                             Handle the Tax in Inventory 
                                                                                                                                                                            <td align="right" class="dvtCellLabel" style="border:0px solid red;">
                                                                                                                                                                                VAT (%)
                                                                                                                                                                                <input type="checkbox" name="tax1_check" id="tax1_check" class="small" onclick="fnshowHide(this, 'tax1')">
                                                                                                                                                                            </td>
                                                                                                                                                                            <td class="dvtCellInfo" align="left" style="border:0px solid red;">
                                                                                                                                                                                <input type="text" class="detailedViewTextBox" name="product.mVATTax" id="tax1" value="<s:property value="product.mVATTax"/>" style="visibility:hidden;" onblur="fntaxValidation('tax1')">
                                                                                                                                                                            </td>
                                                                                                                                                                        </tr>-->
                                                                                        <!--                                                                                <tr><td align="right" class="dvtCellLabel" style="border:0px solid red;">
                                                                                                                                                                                Sales (%)
                                                                                                                                                                                <input type="checkbox" name="tax2_check" id="tax2_check" class="small" onclick="fnshowHide(this, 'tax2')">
                                                                                                                                                                            </td>
                                                                                                                                                                            <td class="dvtCellInfo" align="left" style="border:0px solid red;">
                                                                                                                                                                                <input type="text" class="detailedViewTextBox" name="tax2" id="tax2" value="10.000" style="visibility:hidden;" onblur="fntaxValidation('tax2')">
                                                                                                                                                                            </td>
                                                                                                                                                                        </tr>
                                                                                                                                                                        <tr><td align="right" class="dvtCellLabel" style="border:0px solid red;">
                                                                                                                                                                                Service (%)
                                                                                                                                                                                <input type="checkbox" name="tax3_check" id="tax3_check" class="small" onclick="fnshowHide(this, 'tax3')">
                                                                                                                                                                            </td>
                                                                                                                                                                            <td class="dvtCellInfo" align="left" style="border:0px solid red;">
                                                                                                                                                                                <input type="text" class="detailedViewTextBox" name="tax3" id="tax3" value="12.500" style="visibility:hidden;" onblur="fntaxValidation('tax3')">
                                                                                                                                                                            </td>
                                                                                                                                                                        </tr>
                                                                                                                                                                        <tr><td align="right" class="dvtCellLabel" style="border:0px solid red;">
                                                                                                                                                                                NoVAT (%)
                                                                                                                                                                                <input type="checkbox" name="tax4_check" id="tax4_check" class="small" onclick="fnshowHide(this, 'tax4')">
                                                                                                                                                                            </td>
                                                                                                                                                                            <td class="dvtCellInfo" align="left" style="border:0px solid red;">
                                                                                                                                                                                <input type="text" class="detailedViewTextBox" name="tax4" id="tax4" value="0.000" style="visibility:hidden;" onblur="fntaxValidation('tax4')">
                                                                                                                                                                            </td>
                                                                                                                                                                        </tr>-->

                                                                                        <tr>
                                                                                            <td colspan="2" class="dvtCellInfo">&nbsp;</td>
                                                                                        </tr>

                                                                                        <!--                                                                                <tr style="height:25px"><td>&nbsp;</td></tr>
                                                                                                                                                                        <tr>
                                                                                                                                                                            <td colspan="4" class="detailedViewHeader">
                                                                                                                                                                                <b>Thông tin hình ảnh sản phẩm</b>
                                                                                                                                                                            </td>
                                                                                                                                                                        </tr>
                                                                                        
                                                                                                                                                                         Handle the ui types display 
                                                                                                                                                                         Added this file to display the fields in Create Entity page based on ui types  
                                                                                                                                                                        <tr style="height:25px">
                                                                                        
                                                                                                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                                                                                                <font color="red"></font>Hình ảnh sản phẩm
                                                                                                                                                                            </td>
                                                                                                                                                                            <td colspan="3" width="30%" align="left" class="dvtCellInfo">
                                                                                                                                                                                <input name="del_file_list" type="hidden" value="">
                                                                                                                                                                                <div id="files_list" style="border: 1px solid grey; width: 500px; padding: 5px; background: rgb(255, 255, 255) none repeat scroll 0%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; font-size: x-small">Số lượng Tập tin tối đa là 6
                                                                                                                                                                                    <input id="my_file_element" type="file" name="file_0" tabindex="" onchange="validateFilename(this)">
                                                                                                                                                                                    input type="hidden" name="file_1_hidden" value=""/
                                                                                                                                                                                </div>
                                                                                                                                                                                <script>
                                                                                                                                                                                    var multi_selector = new MultiSelector(document.getElementById('files_list'), 6);
                                                                                                                                                                                    multi_selector.count = 0
                                                                                                                                                                                    multi_selector.addElement(document.getElementById('my_file_element'));
                                                                                                                                                                                </script>
                                                                                                                                                                            </td>
                                                                                        
                                                                                                                                                                        </tr>-->
                                                                                        <tr style="height:25px"><td>&nbsp;</td></tr>
                                                                                        <tr>
                                                                                            <td colspan="4" class="detailedViewHeader">
                                                                                                <b>Thông tin chi tiết</b>
                                                                                            </td>
                                                                                        </tr>

                                                                                        <!-- Handle the ui types display -->
                                                                                        <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                                                        <tr style="height:25px">

                                                                                            <!-- In Add Comment are we should not display anything -->
                                                                                            <td width="20%" class="dvtCellLabel" align="right">
                                                                                                <font color="red"></font> 
                                                                                                Mô tả 			</td>
                                                                                            <td colspan="3">
                                                                                                <textarea class="detailedViewTextBox" tabindex="" onfocus="this.className = 'detailedViewTextBoxOn'" name="product.description" onblur="this.className = 'detailedViewTextBox'" cols="90" rows="8"><s:property value="product.description"/></textarea>
                                                                                            </td>
                                                                                        </tr>
                                                                                        <tr style="height:25px"><td>&nbsp;</td></tr>

                                                                                        <!-- Added to display the Product Details in Inventory-->
                                                                                        <tr>
                                                                                            <td colspan="4" style="padding:5px">
                                                                                                <div align="center">
                                                                                                    <input title="Lưu [Alt+S]" accesskey="S" class="crmbutton small save" onclick="
                                                                                                            document.getElementById('sub_form').submit();
//                                                                                                    this.form.action.value = 'Save';
//                                                                                                    displaydeleted();
//                                                                                                    return validateInventory('Products')
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
            </tbody></table>

        <!--    Footer-->
        <s:include value="footer.jsp"></s:include>

    </body>
</html>
