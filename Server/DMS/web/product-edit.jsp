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
        <a name="top"></a>
        <!-- header -->
        <!-- header-vtiger crm name & RSS -->
        <script language="JavaScript" type="text/javascript" src="include/js/json.js"></script>
        <script language="JavaScript" type="text/javascript" src="include/js/general.js"></script>
        <!-- vtlib customization: Javascript hook --> 
        <script language="JavaScript" type="text/javascript" src="include/js/vtlib.js"></script>
        <!-- END -->
        <script language="JavaScript" type="text/javascript" src="include/js/vn.lang.js?"></script>
        <script language="JavaScript" type="text/javascript" src="include/js/QuickCreate.js"></script>
        <script language="javascript" type="text/javascript" src="include/scriptaculous/prototype.js"></script>
        <script language="JavaScript" type="text/javascript" src="include/js/menu.js"></script>
        <script language="JavaScript" type="text/javascript" src="include/calculator/calc.js"></script>
        <script language="JavaScript" type="text/javascript" src="modules/Calendar/script.js"></script>
        <script language="javascript" type="text/javascript" src="include/scriptaculous/dom-drag.js"></script>
        <script language="JavaScript" type="text/javascript" src="include/js/notificationPopup.js"></script>
        <script type="text/javascript" src="jscalendar/calendar.js"></script>
        <script type="text/javascript" src="jscalendar/calendar-setup.js"></script>
        <script type="text/javascript" src="jscalendar/lang/calendar-vn.js"></script>

        <!-- asterisk Integration -->
        <!-- END -->

        <!-- Custom Header Script -->
        <script type="text/javascript" src="modules/Tooltip/TooltipHeaderScript.js"></script>
        <script type="text/javascript" src="modules/SMSNotifier/SMSNotifierCommon.js"></script>
        <script type="text/javascript" src="modules/ModComments/ModCommentsCommon.js"></script>
        <!-- END -->

        <img src="themes/softed/images/layerPopupBg.gif" style="display: none;">

        <table border="0" cellspacing="0" cellpadding="0" width="100%" class="hdrNameBg">
            <tbody>
                <tr>
                    <td valign="top"><img src="themes/softed/images/vtiger-crm.gif" alt="HOSCO-MANAGEMENT" title="HOSCO-MANAGEMENT" border="0"></td>
                    <td width="100%" align="center">
            <marquee id="rss" direction="left" scrolldelay="10" scrollamount="3" behavior="scroll" class="marStyle" onmouseover="javascript:stop();" onmouseout="javascript:start();">&nbsp;admin :  Thông báo: Ngày 27/10. Bắt đầu làm đặc tả phần mềm cho MEDIC   </marquee>

        </td>
        <td class="small" nowrap="">
            <table border="0" cellspacing="0" cellpadding="0">
                <tbody><tr>


                        <!-- gmailbookmarklet customization -->
                        <!--<td style="padding-left:10px;padding-right:10px" class=small nowrap>
                        <a href='javascript:(function()%7Bvar%20doc=top.document;var%20bodyElement=document.body;doc.vtigerURL%20=%22http://hosgroup.com.vn/hoscomng/%22;var%20scriptElement=document.createElement(%22script%22);scriptElement.type=%22text/javascript%22;scriptElement.src=doc.vtigerURL+%22modules/Emails/GmailBookmarkletTrigger.js%22;bodyElement.appendChild(scriptElement);%7D)();'>Gmail Bookmarklet</a>
                        </td> -->
                        <!-- END -->
                        <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap> <a href="javascript:void(0);" onclick="vtiger_news(this)">Tin HOSCO</a></td> -->
                        <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap> <a href="javascript:void(0);" onclick="vtiger_feedback();">Phản hồi</a></td> -->

                        <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap> <a href="home.jsp?module=Users&action=DetailView&record=1&modechk=prefview">Thiết lập cá nhân</a></td>-->
                        <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap><a href="http://wiki.hosgroup.com.vn/home.jsp/Main_Page" target="_blank">Hướng dẫn sử dụng online</a></td> -->
                        <td style="padding-left:10px;padding-right:10px" class=small nowrap><a href="javascript:;" onClick="openwin();">Giới thiệu</a></td>
                        <td style="padding-left:10px;padding-right:10px" class="small" nowrap=""> <a href="home.jsp?module=Users&amp;action=Logout">Thoát</a> (admin)</td>
                    </tr>
                </tbody></table>
        </td>
    </tr>
</tbody>
</table>

<div id="miniCal" style="width:300px; position:absolute; display:none; left:100px; top:100px; z-index:100000">
</div>

<!-- MENU header - master tabs -->
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="hdrTabBg">
    <tbody>
        <tr>
            <td style="width:50px" class="small">&nbsp;</td>
            <td class="small" nowrap=""> 
                <table border="0" cellspacing="0" cellpadding="0">

                    <tbody>
                        <tr>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif" width="2px" height="28px"></td>    
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'My Home Page_sub');" onmouseout="fnHideDrop('My Home Page_sub');" align="center" nowrap=""><a href="">Trang chủ</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Tools_sub');" onmouseout="fnHideDrop('Tools_sub');" align="center" nowrap=""><a href="">Nhân viên</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Marketing_sub');" onmouseout="fnHideDrop('Marketing_sub');" align="center" nowrap=""><a href="">Khách hàng</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Sales_sub');" onmouseout="fnHideDrop('Sales_sub');" align="center" nowrap=""><a href="">Bán hàng</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Support_sub');" onmouseout="fnHideDrop('Support_sub');" align="center" nowrap=""><a href="">Hỗ trợ</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Analytics_sub');" onmouseout="fnHideDrop('Analytics_sub');" align="center" nowrap=""><a href="">Phân tích</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabSelected" onmouseover="fnDropDown(this, 'Inventory_sub');" onmouseout="fnHideDrop('Inventory_sub');" align="center" nowrap=""><a href="">Tồn kho</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>

                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Settings_sub');" onmouseout="fnHideDrop('Settings_sub');" align="center" nowrap=""><a href="">Thiết lập</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>

                        </tr>

                    </tbody>
                </table>
            </td>
            <td align="right" style="padding-right:10px" nowrap="">
                <table border="0" cellspacing="0" cellpadding="0" id="search" style="border:1px solid #999999;background-color:white">
                    <tbody>
                        <tr>
                    <form name="UnifiedSearch" method="post" action="home.jsp" style="margin:0px" onsubmit="VtigerJS_DialogBox.block();"></form>
                    <td style="height:19px;background-color:#ffffef" nowrap="">
                        <a href="javascript:void(0);" onclick="UnifiedSearch_SelectModuleForm(this);"><img src="themes/images/settings_top.gif" align="left" border="0"></a>
                        <input type="hidden" name="action" value="UnifiedSearch" style="margin:0px">
                        <input type="hidden" name="module" value="Home" style="margin:0px">
                        <input type="hidden" name="parenttab" value="Marketing" style="margin:0px">
                        <input type="hidden" name="search_onlyin" value="--USESELECTED--" style="margin:0px">
                        <input type="text" name="query_string" value="Tìm kiếm..." class="searchBox" onfocus="this.value = ''">
                    </td>
                    <td style="background-color:#cccccc">
                        <input type="submit" class="searchBtn" value="Tìm" alt="Tìm" title="Tìm">
                    </td>

        </tr>
    </tbody>
</table>
</td>

</tr>
</tbody>
</table>

<!-- - level 2 tabs starts-->
<table border="0" cellspacing="0" cellpadding="2" width="100%" class="level2Bg">
    <tbody><tr>
            <td>
                <table border="0" cellspacing="0" cellpadding="0">
                    <tbody><tr>

                            <td class="level2UnSelTab" nowrap=""> <a href="">Chiến dịch</a> </td>
                            <td class="level2SelTab" nowrap=""><a href="">Khách hàng</a></td>
                            <td class="level2UnSelTab" nowrap=""> <a href="">Liên hệ</a> </td>
                            <td class="level2UnSelTab" nowrap=""> <a href="">Webmails</a> </td>
                            <td class="level2UnSelTab" nowrap=""> <a href="">Đầu mối</a> </td>
                            <td class="level2UnSelTab" nowrap=""> <a href="">Lịch</a> </td>
                            <td class="level2UnSelTab" nowrap=""> <a href="home.jsp?module=Documents&amp;action=index&amp;parenttab=">Tài liệu</a> </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
    </tbody>
</table>    
<!-- Level 2 tabs ends -->

<!-- Drop Down Menu in the Main Tab -->
<div class="drop_mnu" id="My Home Page_sub" onmouseout="fnHideDrop('My Home Page_sub')" onmouseover="fnShowDrop('My Home Page_sub')">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
            <tr><td><a href="" class="drop_down">Trang chủ</a></td></tr>

        </tbody>
    </table>
</div>
<div class="drop_mnu" id="Marketing_sub" onmouseout="fnHideDrop('Marketing_sub')" onmouseover="fnShowDrop('Marketing_sub')" style="left: 143px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
            <tr><td><a href="" class="drop_down">Chiến dịch</a></td></tr>
            <tr><td><a href="" class="drop_down">Khách hàng</a></td></tr>
        </tbody>
    </table>
</div>
<div class="drop_mnu" id="Sales_sub" onmouseout="fnHideDrop('Sales_sub')" onmouseover="fnShowDrop('Sales_sub')" style="left: 244px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
            <tr><td><a href="" class="drop_down">Đầu mối</a></td></tr>
            <tr><td><a href="" class="drop_down">Đặt hàng</a></td></tr>
        </tbody>
    </table>
</div>
<div class="drop_mnu" id="Support_sub" onmouseout="fnHideDrop('Support_sub')" onmouseover="fnShowDrop('Support_sub')" style="left: 331px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
            <tr><td><a href="" class="drop_down">Trợ giúp</a></td></tr>
            <tr><td><a href="" class="drop_down">Liên hệ</a></td></tr>
        </tbody></table>
</div>
<div class="drop_mnu" id="Analytics_sub" onmouseout="fnHideDrop('Analytics_sub')" onmouseover="fnShowDrop('Analytics_sub')" style="left: 401px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
            <tr><td><a href="" class="drop_down">Báo cáo</a></td></tr>
            <tr><td><a href="" class="drop_down">Biểu đồ</a></td></tr>
        </tbody>
    </table>
</div>
<div class="drop_mnu" id="Inventory_sub" onmouseout="fnHideDrop('Inventory_sub')" onmouseover="fnShowDrop('Inventory_sub')" style="left: 488px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
            <tr><td><a href="product-list" class="drop_down">Sản phẩm</a></td></tr>
            <tr><td><a href="provider-list" class="drop_down">Nhà cung cấp</a></td></tr>
            <tr><td><a href="" class="drop_down">Bảng giá</a></td></tr>
            <tr><td><a href="" class="drop_down">Nhập hàng</a></td></tr>
            <tr><td><a href="" class="drop_down">Đặt hàng</a></td></tr>
            <tr><td><a href="" class="drop_down">Báo giá</a></td></tr>

        </tbody>
    </table>
</div>
<div class="drop_mnu" id="Tools_sub" onmouseout="fnHideDrop('Tools_sub')" onmouseover="fnShowDrop('Tools_sub')" style="left: 567px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
            <tr><td><a href="" class="drop_down">Nhân viên</a></td></tr>

        </tbody>
    </table>
</div>
<div class="drop_mnu" id="Settings_sub" onmouseout="fnHideDrop('Settings_sub')" onmouseover="fnShowDrop('Settings_sub')" style="left: 647px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody><tr>
                <td><a href="" class="drop_down">Thiết lập</a></td>
            </tr>
            <tr>
                <td><a href="" class="drop_down">Quản lý phân hệ</a></td>
            </tr>
        </tbody>
    </table>
</div>

<!-- END Drop Down Menu in the Main Tab -->

<div id="status" style="position:absolute;display:none;left:850px;top:95px;height:27px;white-space:nowrap;"><img src="themes/softed/images/status.gif"></div>

<!--END MENU-->

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
                                                            <td style="padding-right:0px;padding-left:10px;"><a href="new-product"><img src="themes/softed/images/btnL3Add.gif" alt="Tạo Khách hàng..." title="Tạo Khách hàng..." border="0"></a></td>

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
                    <span class="lvtHeaderText"><font color="purple">[ <s:property value="product.mProductID"/> ] </font><s:property value="product.mProductName"/> - Sửa  Thông tin</span> <br>
<!--                    Cập nhật 1083 ngày trước (22 Tháng 4 2011)	 -->

                    <hr noshade="" size="1">
                    <br> 
                    <form name="EditView" method="POST"  action="update-product?id_pdct=<s:property value="product.mSerial"/>" onsubmit="" id="sub_form">
<!--                        enctype="multipart/form-data"-->
                        <input type="hidden" name="product.mSerial" value="<s:property value="product.mSerial"/>">
                        
                        
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
//                                                                                                    this.form.action.value = 'Save';
//                                                                                                    displaydeleted();
//                                                                                                    return validateInventory('Products')
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
                                                                                        <input type="text" name="product.mProductName" tabindex="" value="<s:property value="product.mProductName"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                    </td>

                                                                                    <!-- Non Editable field, only configured value will be loaded -->
                                                                                    <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Mã sản phẩm </td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo">
                                                                                        <input readonly="" type="text" tabindex="" name="product.mProductID" id="product_no" value="<s:property value="product.mProductID"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr style="height:25px">

                                                                                    <td width="20%" class="dvtCellLabel" align="right">
                                                                                        <font color="red"></font>Mã vạch 			
                                                                                    </td>

                                                                                    <td width="30%" align="left" class="dvtCellInfo">
                                                                                        <input  type="text" tabindex="" name="product.mBarcode" id="product_no" value="<s:property value="product.mBarcode"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                    </td>

                                                                                    <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Thương hiệu </td>

                                                                                    <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="product.mBrand" id="productcode" value="<s:property value="product.mBrand"/>" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                </tr>
                                                                                <tr style="height:25px">

                                                                                    <td width="20%" class="dvtCellLabel" align="right">
                                                                                        <font color="red"></font>Xuất xứ			
                                                                                    </td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo">

                                                                                        <input name="product.mOrigin" tabindex="" id="jscal_field_sales_start_date" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="<s:property value="product.mOrigin"/>">
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
                                                                                        <select name="product.mProvider" tabindex="" class="small">
                                                                                            <s:iterator value="providerIDList" status="index">
                                                                                            <s:if test="providerIDList.get(#index.index) == product.getmProvider()">
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

<!--                                                                                    <td width="20%" class="dvtCellLabel" align="right">
                                                                                        <font color="red"></font>Thuế			
                                                                                    </td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo">

                                                                                        <input name="product.mVATTax" tabindex="" id="jscal_field_start_date" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="<s:property value="product.mVATTax"/>">
                                                                                        <img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_start_date">
                                                                                        <br><font size="1"><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
                                                                                        <script type="text/javascript" id="massedit_calendar_start_date">
                                                                                            Calendar.setup({
                                                                                                inputField: "jscal_field_start_date", ifFormat: "%d-%m-%Y", showsTime: false, button: "jscal_trigger_start_date", singleClick: true, step: 1
                                                                                            })
                                                                                        </script>

                                                                                    </td>-->

                                                                                </tr>
                                                                                <tr style="height:25px">

                                                                                    <td width="20%" class="dvtCellLabel" align="right">
                                                                                        <font color="red"></font>Giá nhập			
                                                                                    </td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo">

                                                                                        <input name="product.mImportPrices" tabindex="" id="jscal_field_sales_end_date" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="<s:property value="product.mImportPrices"/>">
                                                                                        
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
                                                                                        <input name="product.mQuantification" type="text" style="border:1px solid #bababa;" value="<s:property value="product.mQuantification"/>">
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
                                                                                        <input style="width:74%;" class="detailedViewTextBox" type="text" tabindex="" name="product.mPackingSpecifications" size="27" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'" onkeyup="validateUrl('website');" value="<s:property value="product.mPackingSpecifications"/>">
                                                                                    </td>

                                                                                </tr>
<!--                                                                                <tr style="height:25px">

                                                                                    <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Số hiệu nhà cung cấp </td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="vendor_part_no" id="vendor_part_no" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                    <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Số hiệu nhà sản xuất </td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="mfr_part_no" id="mfr_part_no" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                </tr>
                                                                                <tr style="height:25px">
                                                                                    <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Ngăn hàng hóa </td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="productsheet" id="productsheet" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                    <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Số hiệu </td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="serial_no" id="serial_no" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                </tr>
                                                                                <tr style="height:25px">

                                                                                     uitype 111 added for noneditable existing picklist values - ahmed 
                                                                                    <td width="20%" class="dvtCellLabel" align="right">
                                                                                        <font color="red"></font>
                                                                                        Tài khoản Kế toán 			</td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo">
                                                                                        <select name="glacct" tabindex="" class="small">
                                                                                            <option value="300-Sales-Software" selected="">
                                                                                                300-Kinh doanh phần mềm
                                                                                            </option>
                                                                                            <option value="301-Sales-Hardware">
                                                                                                301-Kinh doanh phần cứng
                                                                                            </option>
                                                                                            <option value="302-Rental-Income">
                                                                                                302-Cho thuê
                                                                                            </option>
                                                                                            <option value="303-Interest-Income">
                                                                                                303-Lợi tức
                                                                                            </option>
                                                                                            <option value="304-Sales-Software-Support">
                                                                                                304-Hỗ trợ kinh doanh phần mềm
                                                                                            </option>
                                                                                            <option value="305-Sales Other">
                                                                                                305-Kinh doanh khác
                                                                                            </option>
                                                                                            <option value="306-Internet Sales">
                                                                                                306-Kinh doanh qua mạng
                                                                                            </option>
                                                                                            <option value="307-Service-Hardware Labor">
                                                                                                307-Gia công phần cứng
                                                                                            </option>
                                                                                            <option value="308-Sales-Books">
                                                                                                308-Bán sách
                                                                                            </option>
                                                                                        </select>
                                                                                    </td>

                                                                                </tr>-->

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
                                                                                        <font color="red"></font>Giá bán: (₫) 			</td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo">				
                                                                                        <span id="multiple_currencies">
                                                                                            <input name="product.mExportPrices" id="unit_price" tabindex="" type="text" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox';
                                                                                                    updateUnitPrice('unit_price', 'curname1');" value="<s:property value="product.mExportPrices"/>" style="width:60%;">
                                                                                            &nbsp;<a href="javascript:void(0);" onclick="updateUnitPrice('unit_price', 'curname1');
                                                                                                    toggleShowHide('currency_class', 'multiple_currencies');">thêm tiền tệ »</a>
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

                                                                                    <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="commissionrate" id="commissionrate" value="0.000" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
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
                                                                                <tr style="height:25px"><td>&nbsp;</td></tr>
                                                                                <tr>
                                                                                    <td colspan="4" class="detailedViewHeader">
                                                                                        <b>Thông tin tồn kho</b>
                                                                                    </td>
                                                                                </tr>
                                                                                <!-- Handle the ui types display -->

                                                                                <!-- Added this file to display the fields in Create Entity page based on ui types  -->
<!--                                                                                <tr style="height:25px">

                                                                                     uitype 111 added for noneditable existing picklist values - ahmed 
                                                                                    <td width="20%" class="dvtCellLabel" align="right">
                                                                                        <font color="red"></font>
                                                                                        Đơn vị sử dụng 			</td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo">
                                                                                        <select name="usageunit" tabindex="" class="small">
                                                                                            <option value="Box">
                                                                                                Hộp
                                                                                            </option>
                                                                                            
                                                                                        </select>
                                                                                    </td>

                                                                                    <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Số lượng/Đơn vị </td>

                                                                                    <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="qty_per_unit" id="qty_per_unit" value="0.00" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                </tr>-->
                                                                                <tr style="height:25px">
                                                                                    <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Tồn kho </td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="qtyinstock" id="qtyinstock" value="0" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                    <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Mức tồn kho chuẩn </td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="reorderlevel" id="reorderlevel" value="0" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                </tr>
                                                                                <tr style="height:25px">

                                                                                    <td width="20%" class="dvtCellLabel" align="right">
                                                                                        <font color="red"></font>Người quản lý 			
                                                                                    </td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo">
                                                                                        <select name="assigned_user_id" tabindex="" class="small">

                                                                                            <option value="1" selected="">admin</option>
                                                                                            
                                                                                        </select>
                                                                                    </td>
                                                                                    <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Số lượng yêu cầu </td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="qtyindemand" id="qtyindemand" value="0" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                </tr>
                                                                                <tr style="height:25px"><td>&nbsp;</td></tr>
                                                                                <tr>
                                                                                    <td colspan="4" class="detailedViewHeader">
                                                                                        <b>Kho Hàng</b>
                                                                                    </td>
                                                                                </tr>
                                                                                <!-- Handle the ui types display -->

                                                                                <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                                                <tr style="height:25px">

                                                                                    <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
                                                                                    <td width="20%" class="dvtCellLabel" align="right">
                                                                                        <font color="red">*</font>
                                                                                        Tên kho 			
                                                                                    </td>
                                                                                    <td width="30%" align="left" class="dvtCellInfo">
                                                                                        <select name="cf_628" tabindex="" class="small">
                                                                                            <option value="Kho Mien Bac - KMB">
                                                                                                Kho Mien Bac - KMB
                                                                                            </option>
<!--                                                                                            <option value="Kho Mien Nam - KMN">
                                                                                                Kho Mien Nam - KMN
                                                                                            </option>-->
                                                                                        </select>
                                                                                    </td>

                                                                                </tr>
                                                                                <tr style="height:25px"><td>&nbsp;</td></tr>
                                                                                <tr>
                                                                                    <td colspan="4" class="detailedViewHeader">
                                                                                        <b>Thông tin hình ảnh sản phẩm</b>
                                                                                    </td>
                                                                                </tr>

                                                                                <!-- Handle the ui types display -->
                                                                                <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                                                <tr style="height:25px">

                                                                                    <td width="20%" class="dvtCellLabel" align="right">
                                                                                        <font color="red"></font>Hình ảnh sản phẩm
                                                                                    </td>
                                                                                    <td colspan="3" width="30%" align="left" class="dvtCellInfo">
                                                                                        <input name="del_file_list" type="hidden" value="">
                                                                                        <div id="files_list" style="border: 1px solid grey; width: 500px; padding: 5px; background: rgb(255, 255, 255) none repeat scroll 0%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; font-size: x-small">Số lượng Tập tin tối đa là 6
                                                                                            <input id="my_file_element" type="file" name="file_0" tabindex="" onchange="validateFilename(this)">
                                                                                            <!--input type="hidden" name="file_1_hidden" value=""/-->
                                                                                        </div>
                                                                                        <script>
                                                                                            var multi_selector = new MultiSelector(document.getElementById('files_list'), 6);
                                                                                            multi_selector.count = 0
                                                                                            multi_selector.addElement(document.getElementById('my_file_element'));
                                                                                        </script>
                                                                                    </td>

                                                                                </tr>
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
                                                                                        <textarea class="detailedViewTextBox" tabindex="" onfocus="this.className = 'detailedViewTextBoxOn'" name="product.mDescription" onblur="this.className = 'detailedViewTextBox'" cols="90" rows="8"><s:property value="product.mDescription"/></textarea>
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
<input name="search_url" id="search_url" type="hidden" value="">


<!-- This div is added to get the left and top values to show the tax details-->
<div id="tax_container" style="display:none; position:absolute; z-index:1px;"></div>

<script>
    var fieldname = new Array('productname', 'product_no', 'productcode', 'discontinued', 'manufacturer', 'productcategory', 'sales_start_date', 'sales_end_date', 'start_date', 'expiry_date', 'website', 'vendor_id', 'mfr_part_no', 'vendor_part_no', 'serial_no', 'productsheet', 'glacct', 'unit_price', 'commissionrate', 'taxclass', 'usageunit', 'qty_per_unit', 'qtyinstock', 'reorderlevel', 'assigned_user_id', 'qtyindemand', 'imagename', 'description', 'cf_628')

    var fieldlabel = new Array('Tên sản phẩm', 'Mã sản phẩm', 'Phần Số', 'Có bán sản phẩm', 'Nhà sản xuất', 'Loại sản phẩm', 'Ngày bắt đầu bán', 'Ngày kết thúc bán', 'Ngày bắt đầu hỗ trợ', 'Ngày hết hạn hỗ trợ', 'Website', 'Tên nhà cung cấp', 'Số hiệu nhà sản xuất', 'Số hiệu nhà cung cấp', 'Số hiệu', 'Ngăn hàng hóa', 'Tài khoản Kế toán', 'Giá đơn vị', 'Tiền hoa hồng (%)', 'GTGT', 'Đơn vị sử dụng', 'Số lượng/Đơn vị', 'Tồn kho', 'Mức tồn kho chuẩn', 'Người quản lý', 'Số lượng yêu cầu', 'Hình ảnh sản phẩm', 'Mô tả', 'T&ecirc;n kho')

    var fielddatatype = new Array('V~M', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'D~O', 'D~O~OTH~GE~sales_start_date~Sales Start Date', 'D~O', 'D~O~OTH~GE~start_date~Start Date', 'V~O', 'I~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'N~O', 'N~O', 'V~O', 'V~O', 'N~O', 'NN~O', 'I~O', 'I~O', 'I~O', 'V~O', 'V~O', 'V~M')

    var product_labelarr = {CLEAR_COMMENT: 'Xóa hết ý kiến',
        DISCOUNT: 'Chiết khấu',
        TOTAL_AFTER_DISCOUNT: 'Giá sau khi chiết khấu',
        TAX: 'Thuế',
        ZERO_DISCOUNT: 'Khấu trừ ít nhất',
        PERCENT_OF_PRICE: 'trong giá bán',
        DIRECT_PRICE_REDUCTION: 'Quản lý giảm giá'};

    var ProductImages = new Array();
    var count = 0;
    function delRowEmt(imagename)
    {
        ProductImages[count++] = imagename;
        multi_selector.current_element.disabled = false;
        multi_selector.count--;
    }
    function displaydeleted()
    {
        if (ProductImages.length > 0)
            document.EditView.del_file_list.value = ProductImages.join('###');
    }
</script>

<!-- vtlib customization: Help information assocaited with the fields -->
<!-- END --><!-- stopscrmprint --><style>
    .bggray
    {
        background-color: #dfdfdf;
    }
    .bgwhite
    {
        background-color: #FFFFFF;
    }
    .copy
    {
        font-size:9px;
        font-family: Verdana, Arial, Helvetica, Sans-serif;
    }
</style>
<script language="javascript">
    function LogOut(e)
    {
        var nav4 = window.Event ? true : false;
        var iX, iY;
        if (nav4)
        {
            iX = e.pageX;
            iY = e.pageY;
        }
        else
        {
            iX = event.clientX + document.body.scrollLeft;
            iY = event.clientY + document.body.scrollTop;

        }
        if (iX <= 30 && iY < 0)
        {
            w = window.open("index.php?action=Logout&module=Users");
            w.close();
        }
    }
//window.onunload=LogOut
</script>
<script language="JavaScript" type="text/javascript" src="include/js/popup.js"></script><br><br><br><table border="0" cellspacing="0" cellpadding="5" width="100%" class="settingsSelectedUI"><tbody><tr><td class="small" align="left"><span style="color: rgb(153, 153, 153);">HOSCO-CRM</span></td><td class="small" align="right"><span style="color: rgb(153, 153, 153);">© 2014 <a href="http://www.hosgroup.com.vn" target="_blank">hosgroup.com.vn</a></span> </td></tr></tbody></table>		<script>
    var userDateFormat = "dd-mm-yyyy";
    var default_charset = "UTF-8";
</script>
<script type="text/javascript">if (typeof (ActivityReminderCallback) != 'undefined')
        window.setTimeout(function() {
            ActivityReminderCallback();
        }, 41000);</script><!--end body panes-->





</body>
</html>
