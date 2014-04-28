<%-- 
    Document   : provider-add
    Created on : Apr 10, 2014, 12:52:24 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            <marquee id="rss" direction="left" scrolldelay="10" scrollamount="3" behavior="scroll" class="marStyle" onmouseover="javascript:stop();" onmouseout="javascript:start();">&nbsp;admin :  Thông báo: </marquee>

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
<!--                        <td style="padding-left:10px;padding-right:10px" class=small nowrap><a href="javascript:;" onClick="openwin();">Giới thiệu</a></td>-->
                        <td style="padding-left:10px;padding-right:10px" class="small" nowrap=""> <a href="logout">Thoát</a> (<b><s:property value="#session['user_name']"/></b>)</td>
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
                            <td class="tabSelected" onmouseover="fnDropDown(this, 'Marketing_sub');" onmouseout="fnHideDrop('Marketing_sub');" align="center" nowrap=""><a href="">Khách hàng</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Sales_sub');" onmouseout="fnHideDrop('Sales_sub');" align="center" nowrap=""><a href="">Bán hàng</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Support_sub');" onmouseout="fnHideDrop('Support_sub');" align="center" nowrap=""><a href="">Hỗ trợ</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Analytics_sub');" onmouseout="fnHideDrop('Analytics_sub');" align="center" nowrap=""><a href="">Phân tích</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Inventory_sub');" onmouseout="fnHideDrop('Inventory_sub');" align="center" nowrap=""><a href="">Tồn kho</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>

                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Settings_sub');" onmouseout="fnHideDrop('Settings_sub');" align="center" nowrap=""><a href="">Thiết lập</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>

                        </tr>

                    </tbody>
                </table>
            </td>
<!--            <td align="right" style="padding-right:10px" nowrap="">
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
</td>-->

</tr>
</tbody>
</table>

<!-- - level 2 tabs starts-->
<table border="0" cellspacing="0" cellpadding="2" width="100%" class="level2Bg">
    <tbody><tr>
            <td>
                <table border="0" cellspacing="0" cellpadding="0">
                    <tbody><tr>

                            <td class="level2UnSelTab" nowrap=""> <a href=""></a> </td>
<!--                            <td class="level2SelTab" nowrap=""><a href="">Khách hàng</a></td>
                            <td class="level2UnSelTab" nowrap=""> <a href="">Liên hệ</a> </td>
                            <td class="level2UnSelTab" nowrap=""> <a href="">Webmails</a> </td>
                            <td class="level2UnSelTab" nowrap=""> <a href="">Đầu mối</a> </td>
                            <td class="level2UnSelTab" nowrap=""> <a href="">Lịch</a> </td>
                            <td class="level2UnSelTab" nowrap=""> <a href="home.jsp?module=Documents&amp;action=index&amp;parenttab=">Tài liệu</a> </td>-->
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
            <tr><td><a href="/DMS" class="drop_down">Trang chủ</a></td></tr>

        </tbody>
    </table>
</div>
<div class="drop_mnu" id="Marketing_sub" onmouseout="fnHideDrop('Marketing_sub')" onmouseover="fnShowDrop('Marketing_sub')" style="left: 143px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
<!--            <tr><td><a href="" class="drop_down">Chiến dịch</a></td></tr>-->
            <tr><td><a href="customer-list" class="drop_down">Khách hàng</a></td></tr>
            <tr><td><a href="map/showMap?page=0" class="drop_down">Vị trí</a></td></tr>
        </tbody>
    </table>
</div>
<div class="drop_mnu" id="Sales_sub" onmouseout="fnHideDrop('Sales_sub')" onmouseover="fnShowDrop('Sales_sub')" style="left: 244px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
<!--            <tr><td><a href="" class="drop_down">Đầu mối</a></td></tr>-->
            <tr><td><a href="take-order" class="drop_down">Đặt hàng</a></td></tr>
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
<!--            <tr><td><a href="" class="drop_down">Bảng giá</a></td></tr>
            <tr><td><a href="" class="drop_down">Nhập hàng</a></td></tr>
            <tr><td><a href="" class="drop_down">Đặt hàng</a></td></tr>
            <tr><td><a href="" class="drop_down">Báo giá</a></td></tr>-->

        </tbody>
    </table>
</div>
<div class="drop_mnu" id="Tools_sub" onmouseout="fnHideDrop('Tools_sub')" onmouseover="fnShowDrop('Tools_sub')" style="left: 567px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
            <tr><td><a href="staff-list" class="drop_down">Nhân viên</a></td></tr>
            <tr><td><a href="map/showSchedule?page=0" class="drop_down">Kế hoạch dự kiến</a></td></tr>
            <tr><td><a href="map/staff-roads" class="drop_down">Hành trình</a></td></tr>

        </tbody>
    </table>
</div>
<div class="drop_mnu" id="Settings_sub" onmouseout="fnHideDrop('Settings_sub')" onmouseover="fnShowDrop('Settings_sub')" style="left: 647px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody><tr>
                <td><a href="" class="drop_down">Thiết lập</a></td>
            </tr>
            <tr>
<!--                <td><a href="" class="drop_down">Quản lý phân hệ</a></td>-->
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

<!--PROVIDER-->
<table border="0" cellspacing="0" cellpadding="0" width="98%" align="center">
    <tbody><tr>
            <td valign="top">
                <img src="themes/softed/images/showPanelTopLeft.gif">
            </td>

            <td class="showPanelBg" valign="top" width="100%">

                <form name="EditView" method="POST" action="index.php" onsubmit="VtigerJS_DialogBox.block();">


                    <input type="hidden" name="pagenumber" value="">
                    <input type="hidden" name="module" value="Vendors">
                    <input type="hidden" name="record" value="">
                    <input type="hidden" name="mode" value="">
                    <input type="hidden" name="action">
                    <input type="hidden" name="parenttab" value="Inventory">
                    <input type="hidden" name="return_module" value="">
                    <input type="hidden" name="return_id" value="">
                    <input type="hidden" name="return_action" value="DetailView">
                    <input type="hidden" name="return_viewname" value="">	     <div class="small" style="padding:20px">

                        <span class="lvtHeaderText">Tạo mới Nhà cung cấp</span> <br>

                        <hr noshade="" size="1">
                        <br> 

                        <table border="0" cellspacing="0" cellpadding="0" width="95%" align="center">
                            <tbody><tr>
                                    <td>
                                        <table border="0" cellspacing="0" cellpadding="3" width="100%" class="small">
                                            <tbody><tr>
                                                    <td class="dvtTabCache" style="width:10px" nowrap="">&nbsp;</td>


                                                    <td width="75" style="width:15%" align="center" nowrap="" class="dvtSelectedCell" id="bi" onclick="fnLoadValues('bi', 'mi', 'basicTab', 'moreTab', 'inventory', 'Vendors')"><b>Cơ bản Thông tin</b></td>
                                                    <td class="dvtUnSelectedCell" style="width: 100px;" align="center" nowrap="" id="mi" onclick="fnLoadValues('mi', 'bi', 'moreTab', 'basicTab', 'inventory', 'Vendors')"><b>Thêm Thông tin </b></td>
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
                                                                                                <input title="Lưu [Alt+S]" accesskey="S" class="crmbutton small save" onclick="this.form.action.value = 'Save';
                                                                                                        return validateInventory('Vendors')" type="submit" name="button" value="  Lưu  " style="width:70px">
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
                                                                                            <font color="red">*</font>Tên Nhà cung cấp 			</td>
                                                                                        <td width="30%" align="left" class="dvtCellInfo">
                                                                                            <input type="text" name="vendorname" tabindex="" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'">
                                                                                        </td>

                                                                                        <!-- Non Editable field, only configured value will be loaded -->
                                                                                        <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Số Nhà cung cấp </td>
                                                                                        <td width="30%" align="left" class="dvtCellInfo"><input readonly="" type="text" tabindex="" name="vendor_no" id="vendor_no" value="AUTO GEN ON SAVE" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                    </tr>
                                                                                    <tr style="height:25px">

                                                                                        <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Email </td>

                                                                                        <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="email" id="email" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>

                                                                                        <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Điện thoại </td>

                                                                                        <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="phone" id="phone" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                    </tr>
                                                                                    <tr style="height:25px">

                                                                                        <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
                                                                                        <td width="20%" class="dvtCellLabel" align="right">
                                                                                            <font color="red"></font>
                                                                                            Tài khoản Kế toán 			</td>
                                                                                        <td width="30%" align="left" class="dvtCellInfo">
                                                                                            <select name="glacct" tabindex="" class="small">
                                                                                                <option value="300-Sales-Software">
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

                                                                                        <td width="20%" class="dvtCellLabel" align="right">
                                                                                            <font color="red"></font>Website 			</td>
                                                                                        <td width="30%" align="left" class="dvtCellInfo">
                                                                                            &nbsp;&nbsp;http://
                                                                                            <input style="width:74%;" class="detailedViewTextBox" type="text" tabindex="" name="website" size="27" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'" onkeyup="validateUrl('website');" value="">
                                                                                        </td>

                                                                                    </tr>
                                                                                    <tr style="height:25px">

                                                                                        <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Loại </td>

                                                                                        <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="category" id="category" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>

                                                                                    </tr>

                                                                                    <tr style="height:25px"><td>&nbsp;</td></tr>

                                                                                    <!-- This if is added to restrict display in more tab-->

                                                                                    <tr>
                                                                                        <td colspan="4" style="padding:5px">
                                                                                            <div align="center">
                                                                                                <input title="Lưu [Alt+S]" accesskey="S" class="crmbutton small save" onclick="this.form.action.value = 'Save';
                                                                                                        return validateInventory('Vendors')" type="submit" name="button" value="  Lưu  " style="width:70px">
                                                                                                <input title="Hủy bỏ [Alt+X]" accesskey="X" class="crmbutton small cancel" onclick="window.history.back()" type="button" name="button" value="  Hủy bỏ  " style="width:70px">
                                                                                                <input type="hidden" name="convert_from" value="">
                                                                                                <input type="hidden" name="duplicate_from" value="">
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
                                        <div id="moreTab">

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
                                                                                                <input title="Lưu [Alt+S]" accesskey="S" class="crmbutton small save" onclick="this.form.action.value = 'Save';
                                                                                                        return validateInventory('Vendors')" type="submit" name="button" value="  Lưu  " style="width:70px">
                                                                                                <input title="Hủy bỏ [Alt+X]" accesskey="X" class="crmbutton small cancel" onclick="window.history.back()" type="button" name="button" value="  Hủy bỏ  " style="width:70px">
                                                                                            </div>
                                                                                        </td>
                                                                                    </tr>

                                                                                    <tr>
                                                                                        <td colspan="4" class="detailedViewHeader">
                                                                                            <b>Thông tin địa chỉ</b>
                                                                                        </td>
                                                                                    </tr>

                                                                                    <!-- Here we should include the uitype handlings-->


                                                                                    <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                                                    <tr style="height:25px">

                                                                                        <td width="20%" class="dvtCellLabel" align="right">
                                                                                            <font color="red"></font>
                                                                                            Địa chỉ 			</td>
                                                                                        <td width="30%" align="left" class="dvtCellInfo">
                                                                                            <textarea value="" name="street" tabindex="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'" rows="2"></textarea>
                                                                                        </td>

                                                                                        <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Hộp thư </td>

                                                                                        <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="pobox" id="pobox" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                    </tr>
                                                                                    <tr style="height:25px">

                                                                                        <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Thành phố </td>

                                                                                        <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="city" id="city" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>

                                                                                        <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Tỉnh/Bang </td>

                                                                                        <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="state" id="state" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                    </tr>
                                                                                    <tr style="height:25px">

                                                                                        <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Mã vùng </td>

                                                                                        <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="postalcode" id="postalcode" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>

                                                                                        <td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Quốc gia </td>

                                                                                        <td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="country" id="country" value="" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'"></td>
                                                                                    </tr>

                                                                                    <tr style="height:25px"><td>&nbsp;</td></tr>
                                                                                    <tr>
                                                                                        <td colspan="4" class="detailedViewHeader">
                                                                                            <b>Mô tả</b>
                                                                                        </td>
                                                                                    </tr>

                                                                                    <!-- Here we should include the uitype handlings-->


                                                                                    <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                                                    <tr style="height:25px">

                                                                                        <!-- In Add Comment are we should not display anything -->
                                                                                        <td width="20%" class="dvtCellLabel" align="right">
                                                                                            <font color="red"></font> 
                                                                                            Mô tả 			</td>
                                                                                        <td colspan="3">
                                                                                            <textarea class="detailedViewTextBox" tabindex="" onfocus="this.className = 'detailedViewTextBoxOn'" name="description" onblur="this.className = 'detailedViewTextBox'" cols="90" rows="8"></textarea>
                                                                                        </td>
                                                                                    </tr>

                                                                                    <tr style="height:25px"><td>&nbsp;</td></tr>

                                                                                    <!-- This if is added to restrict display in more tab-->

                                                                                    <tr>
                                                                                        <td colspan="4" style="padding:5px">
                                                                                            <div align="center">
                                                                                                <input title="Lưu [Alt+S]" accesskey="S" class="crmbutton small save" onclick="this.form.action.value = 'Save';
                                                                                                        return validateInventory('Vendors')" type="submit" name="button" value="  Lưu  " style="width:70px">
                                                                                                <input title="Hủy bỏ [Alt+X]" accesskey="X" class="crmbutton small cancel" onclick="window.history.back()" type="button" name="button" value="  Hủy bỏ  " style="width:70px">
                                                                                                <input type="hidden" name="convert_from" value="">
                                                                                                <input type="hidden" name="duplicate_from" value="">
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

<script>



    var fieldname = new Array('vendorname', 'vendor_no', 'phone', 'email', 'website', 'glacct', 'category', 'street', 'pobox', 'city', 'state', 'postalcode', 'country', 'description')

    var fieldlabel = new Array('Tên Nhà cung cấp', 'Số Nhà cung cấp', 'Điện thoại', 'Email', 'Website', 'Tài khoản Kế toán', 'Loại', 'Địa chỉ', 'Hộp thư', 'Thành phố', 'Tỉnh/Bang', 'Mã vùng', 'Quốc gia', 'Mô tả')

    var fielddatatype = new Array('V~M', 'V~O', 'V~O', 'E~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O')

    var product_labelarr = {CLEAR_COMMENT: 'Xóa hết ý kiến',
        DISCOUNT: 'Chiết khấu',
        TOTAL_AFTER_DISCOUNT: 'Giá sau khi chiết khấu',
        TAX: 'Thuế',
        ZERO_DISCOUNT: 'Khấu trừ ít nhất',
        PERCENT_OF_PRICE: 'trong giá bán',
        DIRECT_PRICE_REDUCTION: 'Quản lý giảm giá'};

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
        }, 55000);</script><!--end body panes-->





</body></html>
