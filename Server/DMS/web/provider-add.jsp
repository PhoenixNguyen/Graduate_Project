<%-- 
    Document   : provider-add
    Created on : Apr 10, 2014, 12:52:24 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <title>admin - Tồn kho - Nhà cung cấp - Phần mềm quản lý HOSCO-MANAGEMENT</title>
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

                    <td style="padding-left:10px;padding-right:50px" class="moduleName" nowrap="">Nhà cung cấp &gt; <a class="hdrLink" href="">Nhà cung cấp</a></td>
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
                                                                    <td style="padding-right:0px;padding-left:10px;"><a href=""><img src="themes/softed/images/btnL3Add.gif" alt="Tạo Nhà cung cấp..." title="Tạo Nhà cung cấp..." border="0"></a></td>

                                                                    <td style="padding-right:10px"><a href="javascript:;" onclick="moveMe('searchAcc');
                                                                    searchshowhide('searchAcc', 'advSearch');
                                                                    mergehide('mergeDup')"><img src="themes/softed/images/btnL3Search.gif" alt="Tìm kiếm trong Nhà cung cấp..." title="Tìm kiếm trong Nhà cung cấp..." border="0"></a></td>

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
                                                    <td style="padding-right:0px;padding-left:10px;"><a href=""><img src="themes/softed/images/tbarImport.gif" alt="Nhập dữ liệu Nhà cung cấp" title="Nhập dữ liệu Nhà cung cấp" border="0"></a></td>  
                                                    <td style="padding-right:10px"><a name="export_link" href="javascript:void(0)" onclick="return selectedRecords('Accounts', 'Marketing')"><img src="themes/softed/images/tbarExport.gif" alt="Xuất dữ liệu Nhà cung cấp" title="Xuất dữ liệu Nhà cung cấp" border="0"></a></td>


                                                </tr>
                                            </tbody></table>  
                                    </td>
                                    <td style="width:20px;">&nbsp;</td>
                                    <td class="small">
                                        <!-- All Menu -->
                                        <table border="0" cellspacing="0" cellpadding="5">
                                            <tbody>
                                                <!--                                        <tr>
                                                                                            <td style="padding-left:10px;"><a href="javascript:;" onmouseout="fninvsh('allMenu');" onclick="fnvshobj(this, 'allMenu')"><img src="themes/softed/images/btnL3AllMenu.gif" alt="Mở tất cả Menu..." title="Mở tất cả Menu..." border="0"></a></td>
                                                                                            <td style="padding-left:10px;"><a href=""><img src="themes/softed/images/settingsBox.png" alt="Khách hàng Thiết lập" title="Khách hàng Thiết lập" border="0"></a></td>
                                                                                        </tr>-->
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

        <!--PROVIDER-->
        <table border="0" cellspacing="0" cellpadding="0" width="98%" align="center">
            <tbody><tr>
                    <td valign="top">
                        <img src="themes/softed/images/showPanelTopLeft.gif">
                    </td>

                    <td class="showPanelBg" valign="top" width="100%">

                        <form name="EditView" method="POST" action="save-provider" id="sub_form"">


                            <input type="hidden" name="provider.serial" value="-1">

                            <div class="small" style="padding:20px">

                                <span class="lvtHeaderText">Tạo mới Nhà cung cấp</span> <br>

                                <hr noshade="" size="1">
                                <br> 

                                <table border="0" cellspacing="0" cellpadding="0" width="95%" align="center">
                                    <tbody><tr>
                                            <td>
                                                <table border="0" cellspacing="0" cellpadding="3" width="100%" class="small">
                                                    <tbody><tr>
                                                            <td class="dvtTabCache" style="width:10px" nowrap="">&nbsp;</td>


                                                            <td width="75" style="width:15%" align="center" nowrap="" class="dvtSelectedCell" id="bi" onclick="fnLoadValues('bi', 'mi', 'basicTab', 'moreTab', 'inventory', 'Vendors')"><b>Thông tin</b></td>
                                                            <!--                                                    <td class="dvtUnSelectedCell" style="width: 100px;" align="center" nowrap="" id="mi" onclick="fnLoadValues('mi', 'bi', 'moreTab', 'basicTab', 'inventory', 'Vendors')"><b>Thêm Thông tin </b></td>-->
                                                            <td class="dvtTabCache" style="width:65%" nowrap="">&nbsp;</td>
                                                        </tr><tr>
                                                        </tr></tbody></table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td valign="top" align="left">

                                                <!-- Basic and More Information Tab Opened -->
                                                <div id="basicTab">

                                                    <table border="0" cellspacing="0" cellpadding="3" width="100%" class="dvtContentSpace">
                                                        <tbody><tr>
                                                                <!--this td is to display the entity details -->
                                                                <td align="left">
                                                                    <!-- content cache -->

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
                                                                                                               " type="submit" name="button" value="  Lưu  " style="width:70px">
                                                                                                        <input title="Hủy bỏ [Alt+X]" accesskey="X" class="crmbutton small cancel" onclick="window.history.back()" type="button" name="button" value="  Hủy bỏ  " style="width:70px">
                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>

                                                                                            <tr>
                                                                                                <td colspan="4" class="detailedViewHeader">
                                                                                                    <b>Thông tin Nhà cung cấp</b>
                                                                                                </td>
                                                                                            </tr>

                                                                                            <!-- Here we should include the uitype handlings-->


                                                                                            <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                                                            <tr style="height:25px">




                                                                                                <td width="20%" class="dvtCellLabel" align="right">
                                                                                                    <font color="red"></font>Tên Nhà cung cấp 			
                                                                                                </td>
                                                                                                <td width="30%" align="left" class="dvtCellInfo">
                                                                                                    <input type="text" name="provider.name" tabindex="" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                                </td>

                                                                                                <!-- Non Editable field, only configured value will be loaded -->
                                                                                                <td width="20%" class="dvtCellLabel" align="right"><font color="red">*</font>Mã Nhà cung cấp </td>
                                                                                                <td width="30%" align="left" class="dvtCellInfo">
                                                                                                    <input  type="text" tabindex="" name="provider.id" id="vendor_no" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                            </tr>
                                                                                            <tr style="height:25px">

                                                                                                <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Địa chỉ </td>

                                                                                                <td width="30%" align="left" class="dvtCellInfo">
                                                                                                    <input type="text" tabindex="" name="provider.address" id="email" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>

                                                                                                <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Điện thoại </td>

                                                                                                <td width="30%" align="left" class="dvtCellInfo">
                                                                                                    <input type="text" tabindex="" name="provider.phoneNumber" id="phone" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                            </tr>

                                                                                            <tr style="height:25px">

                                                                                                <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Fax </td>

                                                                                                <td width="30%" align="left" class="dvtCellInfo">
                                                                                                    <input type="text" tabindex="" name="provider.fax" id="category" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>

                                                                                            </tr>

                                                                                            <tr style="height:25px">

                                                                                                <!-- In Add Comment are we should not display anything -->
                                                                                                <td width="20%" class="dvtCellLabel" align="right">
                                                                                                    <font color="red"></font> 
                                                                                                    Ghi chú		
                                                                                                </td>
                                                                                                <td colspan="3">
                                                                                                    <textarea class="detailedViewTextBox" tabindex="" onfocus="this.className = 'detailedViewTextBoxOn'" name="provider.note" onblur="this.className = 'detailedViewTextBox'" cols="90" rows="8"></textarea>
                                                                                                </td>
                                                                                            </tr>


                                                                                            <tr style="height:25px"><td>&nbsp;</td></tr>

                                                                                            <!-- This if is added to restrict display in more tab-->

                                                                                            <tr>
                                                                                                <td colspan="4" style="padding:5px">
                                                                                                    <div align="center">
                                                                                                        <input title="Lưu [Alt+S]" accesskey="S" class="crmbutton small save" onclick="
                                                                                                        document.getElementById('sub_form').submit();
                                                                                                               " type="submit" name="button" value="  Lưu  " style="width:70px">
                                                                                                        <input title="Hủy bỏ [Alt+X]" accesskey="X" class="crmbutton small cancel" onclick="window.history.back()" type="button" name="button" value="  Hủy bỏ  " style="width:70px">

                                                                                                    </div>
                                                                                                </td>
                                                                                            </tr>
                                                                                        </tbody></table>
                                                                                    <!-- General details - end -->
                                                                                </td>
                                                                            </tr>
                                                                        </tbody></table>
                                                                </td>
                                                            </tr>
                                                        </tbody></table>

                                                </div>
                                                <!-- Basic and More Information Tab Opened -->

                                            </td>
                                        </tr>
                                    </tbody></table>
                            </div>
                        </form></td>
                    <td align="right" valign="top"><img src="themes/softed/images/showPanelTopRight.gif"></td>
                </tr>
            </tbody></table>


        <!-- This div is added to get the left and top values to show the tax details-->
        <div id="tax_container" style="display:none; position:absolute; z-index:1px;"></div>

        <!--    Footer-->
        <s:include value="footer.jsp"></s:include>
    </body>
</html>
