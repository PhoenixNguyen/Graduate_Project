<%-- 
    Document   : home
    Created on : Apr 9, 2014, 10:11:04 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>admin - Marketing - Khách hàng - Phần mềm quản lý HOSCO-MANAGEMENT</title>
        <link rel="SHORTCUT ICON" href="/DMS/themes/images/vtigercrm_icon.ico">  
        <style type="text/css">@import url("/DMS/themes/softed/style.css");</style>
        <link rel="stylesheet" type="text/css" media="all" href="/DMS/jscalendar/calendar-win2k-cold-1.css">
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
            <tbody><tr>
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
</tbody></table>

<div id="miniCal" style="width:300px; position:absolute; display:none; left:100px; top:100px; z-index:100000">
</div>

<!-- header - master tabs -->
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="hdrTabBg">
    <tbody><tr>
            <td style="width:50px" class="small">&nbsp;</td>
            <td class="small" nowrap=""> 
                <table border="0" cellspacing="0" cellpadding="0">

                    <tbody><tr>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif" width="2px" height="28px"></td>    
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'My Home Page_sub');" onmouseout="fnHideDrop('My Home Page_sub');" align="center" nowrap=""><a href="home.jsp?module=Home&amp;action=index&amp;parenttab=My Home Page">Trang chủ</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Tools_sub');" onmouseout="fnHideDrop('Tools_sub');" align="center" nowrap=""><a href="home.jsp?module=Rss&amp;action=index&amp;parenttab=Tools">Nhân viên</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabSelected" onmouseover="fnDropDown(this, 'Marketing_sub');" onmouseout="fnHideDrop('Marketing_sub');" align="center" nowrap=""><a href="home.jsp?module=Campaigns&amp;action=index&amp;parenttab=Marketing">Khách hàng</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Sales_sub');" onmouseout="fnHideDrop('Sales_sub');" align="center" nowrap=""><a href="home.jsp?module=Leads&amp;action=index&amp;parenttab=Sales">Bán hàng</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Support_sub');" onmouseout="fnHideDrop('Support_sub');" align="center" nowrap=""><a href="home.jsp?module=HelpDesk&amp;action=index&amp;parenttab=Support">Hỗ trợ</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Analytics_sub');" onmouseout="fnHideDrop('Analytics_sub');" align="center" nowrap=""><a href="home.jsp?module=Reports&amp;action=index&amp;parenttab=Analytics">Phân tích</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Inventory_sub');" onmouseout="fnHideDrop('Inventory_sub');" align="center" nowrap=""><a href="home.jsp?module=Products&amp;action=index&amp;parenttab=Inventory">Tồn kho</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Settings_sub');" onmouseout="fnHideDrop('Settings_sub');" align="center" nowrap=""><a href="home.jsp?module=Settings&amp;action=index&amp;parenttab=Settings">Thiết lập</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>

                        </tr>

                    </tbody></table>
            </td>
            <td align="right" style="padding-right:10px" nowrap="">
                <table border="0" cellspacing="0" cellpadding="0" id="search" style="border:1px solid #999999;background-color:white">
                    <tbody><tr>
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
    </tbody></table>
</td>

</tr>
</tbody></table>
<!-- - level 2 tabs starts-->
<table border="0" cellspacing="0" cellpadding="2" width="100%" class="level2Bg">
    <tbody><tr>
            <td>
                <table border="0" cellspacing="0" cellpadding="0">
                    <tbody><tr>

                            <td class="level2UnSelTab" nowrap=""> <a href="home.jsp?module=Campaigns&amp;action=index&amp;parenttab=Marketing">Chiến dịch</a> </td>
                            <td class="level2SelTab" nowrap=""><a href="home.jsp?module=Accounts&amp;action=index&amp;parenttab=Marketing">Khách hàng</a></td>
                            <td class="level2UnSelTab" nowrap=""> <a href="home.jsp?module=Contacts&amp;action=index&amp;parenttab=Marketing">Liên hệ</a> </td>
                            <td class="level2UnSelTab" nowrap=""> <a href="home.jsp?module=Webmails&amp;action=index&amp;parenttab=Marketing">Webmails</a> </td>
                            <td class="level2UnSelTab" nowrap=""> <a href="home.jsp?module=Leads&amp;action=index&amp;parenttab=Marketing">Đầu mối</a> </td>
                            <td class="level2UnSelTab" nowrap=""> <a href="home.jsp?module=Calendar&amp;action=index&amp;parenttab=Marketing">Lịch</a> </td>
                            <td class="level2UnSelTab" nowrap=""> <a href="home.jsp?module=Documents&amp;action=index&amp;parenttab=Marketing">Tài liệu</a> </td>
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
        <tbody><tr><td><a href="home.jsp?module=Home&amp;action=index&amp;parenttab=My Home Page" class="drop_down">Trang chủ</a></td></tr>

        </tbody></table>
</div>
<div class="drop_mnu" id="Marketing_sub" onmouseout="fnHideDrop('Marketing_sub')" onmouseover="fnShowDrop('Marketing_sub')" style="left: 143px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody><tr><td><a href="home.jsp?module=Campaigns&amp;action=index&amp;parenttab=Marketing" class="drop_down">Chiến dịch</a></td></tr>
            <tr><td><a href="home.jsp?module=Accounts&amp;action=index&amp;parenttab=Marketing" class="drop_down">Khách hàng</a></td></tr>

        </tbody></table>
</div>
<div class="drop_mnu" id="Sales_sub" onmouseout="fnHideDrop('Sales_sub')" onmouseover="fnShowDrop('Sales_sub')" style="left: 244px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody><tr><td><a href="home.jsp?module=Leads&amp;action=index&amp;parenttab=Sales" class="drop_down">Đầu mối</a></td></tr>

            <tr><td><a href="home.jsp?module=SalesOrder&amp;action=index&amp;parenttab=Sales" class="drop_down">Đặt hàng</a></td></tr>

        </tbody></table>
</div>
<div class="drop_mnu" id="Support_sub" onmouseout="fnHideDrop('Support_sub')" onmouseover="fnShowDrop('Support_sub')" style="left: 331px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody><tr><td><a href="home.jsp?module=HelpDesk&amp;action=index&amp;parenttab=Support" class="drop_down">Trợ giúp</a></td></tr>

            <tr><td><a href="home.jsp?module=Contacts&amp;action=index&amp;parenttab=Support" class="drop_down">Liên hệ</a></td></tr>

        </tbody></table>
</div>
<div class="drop_mnu" id="Analytics_sub" onmouseout="fnHideDrop('Analytics_sub')" onmouseover="fnShowDrop('Analytics_sub')" style="left: 401px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">


        <tbody><tr><td><a href="home.jsp?module=Reports&amp;action=index&amp;parenttab=Analytics" class="drop_down">Báo cáo</a></td></tr>


            <tr><td><a href="home.jsp?module=Dashboard&amp;action=index&amp;parenttab=Analytics" class="drop_down">Biểu đồ</a></td></tr>
        </tbody></table>
</div>
<div class="drop_mnu" id="Inventory_sub" onmouseout="fnHideDrop('Inventory_sub')" onmouseover="fnShowDrop('Inventory_sub')" style="left: 488px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody><tr><td><a href="home.jsp?module=Products&amp;action=index&amp;parenttab=Inventory" class="drop_down">Sản phẩm</a></td></tr>
            <tr><td><a href="home.jsp?module=Vendors&amp;action=index&amp;parenttab=Inventory" class="drop_down">Nhà cung cấp</a></td></tr>
            <tr><td><a href="home.jsp?module=PriceBooks&amp;action=index&amp;parenttab=Inventory" class="drop_down">Bảng giá</a></td></tr>
            <tr><td><a href="home.jsp?module=PurchaseOrder&amp;action=index&amp;parenttab=Inventory" class="drop_down">Nhập hàng</a></td></tr>
            <tr><td><a href="home.jsp?module=SalesOrder&amp;action=index&amp;parenttab=Inventory" class="drop_down">Đặt hàng</a></td></tr>
            <tr><td><a href="home.jsp?module=Quotes&amp;action=index&amp;parenttab=Inventory" class="drop_down">Báo giá</a></td></tr>

        </tbody></table>
</div>
<div class="drop_mnu" id="Tools_sub" onmouseout="fnHideDrop('Tools_sub')" onmouseover="fnShowDrop('Tools_sub')" style="left: 567px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
            <tr><td><a href="home.jsp?module=Rss&amp;action=index&amp;parenttab=Tools" class="drop_down">Nhân viên</a></td></tr>

        </tbody>
    </table>
</div>
<div class="drop_mnu" id="Settings_sub" onmouseout="fnHideDrop('Settings_sub')" onmouseover="fnShowDrop('Settings_sub')" style="left: 647px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">


        <tbody><tr><td><a href="home.jsp?module=Settings&amp;action=index&amp;parenttab=Settings" class="drop_down">Thiết lập</a></td></tr>


            <tr><td><a href="home.jsp?module=Settings&amp;action=ModuleManager&amp;parenttab=Settings" class="drop_down">Quản lý phân hệ</a></td></tr>
        </tbody></table>
</div>


<div id="status" style="position:absolute;display:none;left:850px;top:95px;height:27px;white-space:nowrap;"><img src="themes/softed/images/status.gif"></div>

<script>
            function openwin()
                    {
                    window.open("home.jsp?module=Users&action=about_us", "aboutwin", "height=520,width=515,top=200,left=300")
                            }

</script>


<div id="tracker" style="display: none; position: absolute; z-index: 100000001; left: 0px; top: 0px;" class="layerPopup">

    <table border="0" cellpadding="5" cellspacing="0" width="200">
        <tbody><tr style="cursor:move;">
                <td colspan="2" class="mailClientBg small" id="Track_Handle"><strong>Xem gần nhất</strong></td>
                <td align="right" style="padding:5px;" class="mailClientBg small">
                    <a href="javascript:;"><img src="themes/images/close.gif" border="0" onclick="fninvsh('tracker')" hspace="5" align="absmiddle"></a>
                </td></tr>
        </tbody></table>
    <table border="0" cellpadding="5" cellspacing="0" width="200" class="hdrNameBg">
        <tbody><tr>
                <td class="trackerListBullet small" align="center" width="12">1</td>
                <td class="trackerList small"> <a href="home.jsp?module=SalesOrder&amp;action=DetailView&amp;record=611&amp;parenttab=Marketing">Đặt hàng phần mề...</a> </td><td class="trackerList small">&nbsp;</td></tr>
            <tr>
                <td class="trackerListBullet small" align="center" width="12">2</td>
                <td class="trackerList small"> <a href="home.jsp?module=SalesOrder&amp;action=DetailView&amp;record=201&amp;parenttab=Marketing">Đặt hàng 1</a> </td><td class="trackerList small">&nbsp;</td></tr>
            <tr>
                <td class="trackerListBullet small" align="center" width="12">3</td>
                <td class="trackerList small"> <a href="home.jsp?module=Accounts&amp;action=DetailView&amp;record=137&amp;parenttab=Marketing">Trần Thị Khanh</a> </td><td class="trackerList small">&nbsp;</td></tr>
            <tr>
                <td class="trackerListBullet small" align="center" width="12">4</td>
                <td class="trackerList small"> <a href="home.jsp?module=Leads&amp;action=DetailView&amp;record=203&amp;parenttab=Marketing">anh Long </a> </td><td class="trackerList small">&nbsp;</td></tr>
            <tr>
                <td class="trackerListBullet small" align="center" width="12">5</td>
                <td class="trackerList small"> <a href="home.jsp?module=Accounts&amp;action=DetailView&amp;record=138&amp;parenttab=Marketing">Nguyễn Can Trường</a> </td><td class="trackerList small">&nbsp;</td></tr>
        </tbody>
    </table>
</div>

<!--END MENU-->

<table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
    <tbody><tr><td style="height:2px"></td></tr>
        <tr>

            <td style="padding-left:10px;padding-right:50px" class="moduleName" nowrap="">Marketing &gt; <a class="hdrLink" href="home.jsp?action=ListView&amp;module=Accounts&amp;parenttab=Marketing">Khách hàng</a></td>
            <td width="100%" nowrap="">

                <table border="0" cellspacing="0" cellpadding="0">
                    <tbody><tr>
                            <td class="sep1" style="width:1px;"></td>
                            <td class="small">
                                <!-- Add and Search -->
                                <table border="0" cellspacing="0" cellpadding="0">
                                    <tbody><tr>
                                            <td>
                                                <table border="0" cellspacing="0" cellpadding="5">
                                                    <tbody><tr>
                                                            <td style="padding-right:0px;padding-left:10px;"><a href="home.jsp?module=Accounts&amp;action=EditView&amp;return_action=DetailView&amp;parenttab=Marketing"><img src="themes/softed/images/btnL3Add.gif" alt="Tạo Khách hàng..." title="Tạo Khách hàng..." border="0"></a></td>

                                                            <td style="padding-right:10px"><a href="javascript:;" onclick="moveMe('searchAcc'); searchshowhide('searchAcc', 'advSearch'); mergehide('mergeDup')"><img src="themes/softed/images/btnL3Search.gif" alt="Tìm kiếm trong Khách hàng..." title="Tìm kiếm trong Khách hàng..." border="0"></a></td>

                                                        </tr>
                                                    </tbody></table>
                                            </td>
                                        </tr>
                                    </tbody></table>
                            </td>
                            <td style="width:20px;">&nbsp;</td>
                            <td class="small">

                            </td>
                            <td style="width:20px;">&nbsp;</td>
                            <td class="small">
                                <!-- Import / Export -->
                                <table border="0" cellspacing="0" cellpadding="5">
                                    <tbody><tr>



                                            <td style="padding-right:0px;padding-left:10px;"><a href="home.jsp?module=Accounts&amp;action=Import&amp;step=1&amp;return_module=Accounts&amp;return_action=index&amp;parenttab=Marketing"><img src="themes/softed/images/tbarImport.gif" alt="Nhập dữ liệu Khách hàng" title="Nhập dữ liệu Khách hàng" border="0"></a></td>  


                                            <td style="padding-right:10px"><a name="export_link" href="javascript:void(0)" onclick="return selectedRecords('Accounts', 'Marketing')"><img src="themes/softed/images/tbarExport.gif" alt="Xuất dữ liệu Khách hàng" title="Xuất dữ liệu Khách hàng" border="0"></a></td>


                                            <!--<td style="padding-right:10px"><a href="home.jsp?module=Accounts&action=FindDuplicateRecords&button_view=true&list_view=true&parenttab=Marketing"><img src="themes/softed/images/findduplicates.gif" alt="" title="Tìm kiếm trùng" border="0"></a></td> -->
                                            <td style="padding-right:10px"><a href="javascript:;" onclick="moveMe('mergeDup'); mergeshowhide('mergeDup'); searchhide('searchAcc', 'advSearch');"><img src="themes/images/findduplicates.gif" alt="" title="Tìm kiếm trùng" border="0"></a></td>
                                        </tr>
                                    </tbody></table>  
                            </td><td style="width:20px;">&nbsp;</td>
                            <td class="small">
                                <!-- All Menu -->
                                <table border="0" cellspacing="0" cellpadding="5">
                                    <tbody><tr>
                                            <td style="padding-left:10px;"><a href="javascript:;" onmouseout="fninvsh('allMenu');" onclick="fnvshobj(this, 'allMenu')"><img src="themes/softed/images/btnL3AllMenu.gif" alt="Mở tất cả Menu..." title="Mở tất cả Menu..." border="0"></a></td>
                                            <td style="padding-left:10px;"><a href="home.jsp?module=Settings&amp;action=ModuleManager&amp;module_settings=true&amp;formodule=Accounts&amp;parenttab=Settings"><img src="themes/softed/images/settingsBox.png" alt="Khách hàng Thiết lập" title="Khách hàng Thiết lập" border="0"></a></td>
                                        </tr>
                                    </tbody></table>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </td>
        </tr>
        <tr><td style="height:2px"></td></tr>
    </tbody></table>                                <div id="searchingUI" style="display:none;">
    <table border="0" cellspacing="0" cellpadding="0" width="100%">
        <tbody><tr>
                <td align="center">
                    <img src="themes/images/searching.gif" alt="Đang tìm... hãy đợi" title="Đang tìm... hãy đợi">
                </td>
            </tr>
        </tbody></table>

</div>

    
<table border="0" cellspacing="0" cellpadding="0" width="98%" align="center">
    <tbody><tr>
            <td valign="top"><img src="themes/softed/images/showPanelTopLeft.gif"></td>

            <td class="showPanelBg" valign="top" width="100%" style="padding:10px;">
                <!-- SIMPLE SEARCH -->
                <div id="searchAcc" style="display: block;position:relative;">
                    <form name="basicSearch" method="post" action="home.jsp" onsubmit="return callSearch('Basic');">
                        <table width="80%" cellpadding="5" cellspacing="0" class="searchUIBasic small" align="center" border="0">
                            <tbody><tr>
                                    <td class="searchUIName small" nowrap="" align="left">
                                        <span class="moduleName">Tìm kiếm</span><br>
                                        <!-- <img src="themes/images/basicSearchLens.gif" align="absmiddle" alt="Tìm kiếm cơ bản" title="Tìm kiếm cơ bản" border=0>&nbsp;&nbsp;-->
                                    </td>
                                    <td class="small" nowrap="" align="right"><b>Tìm kiếm </b></td>
                                    <td class="small"><input type="text" class="txtBox" style="width:120px" name="search_text"></td>
                                    <td class="small" nowrap=""><b>Trong</b>&nbsp;</td>
                                    <td class="small" nowrap="">
                                        <div id="basicsearchcolumns_real">
                                            <select name="search_field" id="bas_searchfield" class="txtBox" style="width:150px">
                                                <option label="Tên Khách hàng" value="accountname">Tên Khách hàng</option>
                                                <option label="Được gán cho" value="assigned_user_id">Được gán cho</option>
                                                <option label="Tạo lúc" value="createdtime">Tạo lúc</option>
                                                <option label="Ngày sinh" value="cf_607">Ngày sinh</option>
                                                <option label="Điện thoại" value="phone">Điện thoại</option>
                                                <option label="Đánh giá" value="rating">Đánh giá</option>

                                            </select>
                                        </div>
                                        <input type="hidden" name="searchtype" value="BasicSearch">
                                        <input type="hidden" name="module" value="Accounts">
                                        <input type="hidden" name="parenttab" value="Marketing">
                                        <input type="hidden" name="action" value="index">
                                        <input type="hidden" name="query" value="true">
                                        <input type="hidden" name="search_cnt">
                                    </td>
                                    <td class="small" nowrap="" width="40%">
                                        <input name="submit" type="button" class="crmbutton small create" onclick="callSearch('Basic');" value=" Thực hiện tìm kiếm ">&nbsp;

                                    </td>
                                    <td class="small" valign="top" onmouseover="this.style.cursor = 'pointer';" onclick="moveMe('searchAcc'); searchshowhide('searchAcc', 'advSearch')">[x]</td>
                                </tr>
                                <tr>
                                    <td colspan="7" align="center" class="small">
                                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                            <tbody><tr>
                                                    <td class="searchAlph" id="alpha_1" align="center" 
                                                        onclick=""></td>
                                                </tr>
                                            </tbody></table>
                                    </td>
                                </tr>
                            </tbody></table>
                    </form>
                </div>                  

                <!-- PUBLIC CONTENTS STARTS-->
                <div id="ListViewContents" class="small" style="width:100%;">
                    <script language="JavaScript" type="text/javascript" src="include/js/ListView.js"></script>
                    <form name="massdelete" method="POST" id="massdelete" onsubmit="VtigerJS_DialogBox.block();">
                        <input name="search_url" id="search_url" type="hidden" value="">
                        <input name="idlist" id="idlist" type="hidden">
                        <input name="change_owner" type="hidden">
                        <input name="change_status" type="hidden">
                        <input name="action" type="hidden">
                        <input name="where_export" type="hidden" value="">
                        <input name="step" type="hidden">
                        <input name="allids" type="hidden" id="allids" value="137;138;139;168;174;178;180;186;192;205;210;219;221;223;225;228;230;233;235;248">
                        <input name="selectedboxes" id="selectedboxes" type="hidden" value="">
                        <input name="allselectedboxes" id="allselectedboxes" type="hidden" value="">
                        <input name="current_page_boxes" id="current_page_boxes" type="hidden" value="137;138;139;168;174;178;180;186;192;205;210;219;221;223;225;228;230;233;235;248">
                        <!-- List View Master Holder starts -->
                        <table border="0" cellspacing="1" cellpadding="0" width="100%" class="lvtBg">
                            <tbody><tr>
                                    <td>
                                        <!-- List View's Buttons and Filters starts -->
                                        <table border="0" cellspacing="0" cellpadding="2" width="100%" class="small">
<!--                                            
                                        </table>
                                        <!-- List View's Buttons and Filters ends -->

                                        <div>
                                            <table border="0" cellspacing="1" cellpadding="3" width="100%" class="lvt small">
                                                <!-- Table Headers -->
                                                <tbody>
                                                    <tr>
                                                        <td class="lvtCol"><input type="checkbox" name="selectall" onclick="toggleSelect_ListView(this.checked, & quot; selected_id & quot; )"></td>
                                                        <td class="lvtCol"><a href="javascript:;" onclick="getListViewEntries_js( & quot; Accounts & quot; , & quot; parenttab = Marketing & amp; foldername = Default & amp; order_by = accountname & amp; start = 1 & amp; sorder = ASC & amp; viewname = 66 & quot; );" class="listFormHeaderLinks">Tên Khách hàng</a></td>
                                                        <td class="lvtCol"><a href="javascript:;" onclick="getListViewEntries_js( & quot; Accounts & quot; , & quot; parenttab = Marketing & amp; foldername = Default & amp; order_by = smownerid & amp; start = 1 & amp; sorder = ASC & amp; viewname = 66 & quot; );" class="listFormHeaderLinks">Được gán cho</a></td>
                                                        <td class="lvtCol"><a href="javascript:;" onclick="getListViewEntries_js( & quot; Accounts & quot; , & quot; parenttab = Marketing & amp; foldername = Default & amp; order_by = createdtime & amp; start = 1 & amp; sorder = ASC & amp; viewname = 66 & quot; );" class="listFormHeaderLinks">Tạo lúc</a></td>
                                                        <td class="lvtCol"><a href="javascript:;" onclick="getListViewEntries_js( & quot; Accounts & quot; , & quot; parenttab = Marketing & amp; foldername = Default & amp; order_by = cf_607 & amp; start = 1 & amp; sorder = ASC & amp; viewname = 66 & quot; );" class="listFormHeaderLinks">Ngày sinh</a></td>
                                                        <td class="lvtCol"><a href="javascript:;" onclick="getListViewEntries_js( & quot; Accounts & quot; , & quot; parenttab = Marketing & amp; foldername = Default & amp; order_by = phone & amp; start = 1 & amp; sorder = ASC & amp; viewname = 66 & quot; );" class="listFormHeaderLinks">Điện thoại</a></td>
                                                        <td class="lvtCol"><a href="javascript:;" onclick="getListViewEntries_js( & quot; Accounts & quot; , & quot; parenttab = Marketing & amp; foldername = Default & amp; order_by = rating & amp; start = 1 & amp; sorder = ASC & amp; viewname = 66 & quot; );" class="listFormHeaderLinks">Đánh giá</a></td>
                                                        <td class="lvtCol">Hoạt động</td>
                                                    </tr>
                                                    <!-- Table Contents -->
                                                    <tr bgcolor="white" onmouseover="this.className = 'lvtColDataHover'" onmouseout="this.className = 'lvtColData'" id="row_137" class="lvtColData">
                                                        <td width="2%"><input type="checkbox" name="selected_id" id="137" value="137" onclick="check_object(this)"></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="home.jsp?module=Accounts&amp;parenttab=Marketing&amp;action=DetailView&amp;record=137" title="Accounts">Trần Thị Khanh</a> <span type="vtlib_metainfo" vtrecordid="137" vtfieldname="accountname" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">admin <span type="vtlib_metainfo" vtrecordid="137" vtfieldname="assigned_user_id" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">16-04-2011 05:03:14 <span type="vtlib_metainfo" vtrecordid="137" vtfieldname="createdtime" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">12-10-1979 <span type="vtlib_metainfo" vtrecordid="137" vtfieldname="cf_607" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="javascript:;" onclick="startCall( & quot; 0915166889 & quot; , & quot; 137 & quot; )">0915166889</a> <span type="vtlib_metainfo" vtrecordid="137" vtfieldname="phone" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Đạt kết quả <span type="vtlib_metainfo" vtrecordid="137" vtfieldname="rating" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="home.jsp?module=Accounts&amp;action=EditView&amp;record=137&amp;return_module=Accounts&amp;return_action=index&amp;parenttab=Marketing&amp;return_viewname=66">Sửa</a>  | <a href='javascript:confirmdelete("home.jsp%3Fmodule%3DAccounts%26action%3DDelete%26record%3D137%26return_module%3DAccounts%26return_action%3Dindex%26parenttab%3DMarketing%26return_viewname%3D66")'>Xóa</a></td>
                                                    </tr>
                                                    <tr bgcolor="white" onmouseover="this.className = 'lvtColDataHover'" onmouseout="this.className = 'lvtColData'" id="row_138" class="lvtColData">
                                                        <td width="2%"><input type="checkbox" name="selected_id" id="138" value="138" onclick="check_object(this)"></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="home.jsp?module=Accounts&amp;parenttab=Marketing&amp;action=DetailView&amp;record=138" title="Accounts">Nguyễn Can Trường</a> <span type="vtlib_metainfo" vtrecordid="138" vtfieldname="accountname" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">admin <span type="vtlib_metainfo" vtrecordid="138" vtfieldname="assigned_user_id" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">16-04-2011 05:07:40 <span type="vtlib_metainfo" vtrecordid="138" vtfieldname="createdtime" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type="vtlib_metainfo" vtrecordid="138" vtfieldname="cf_607" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="javascript:;" onclick="startCall( & quot; 0912298066 & quot; , & quot; 138 & quot; )">0912298066</a> <span type="vtlib_metainfo" vtrecordid="138" vtfieldname="phone" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Đạt kết quả <span type="vtlib_metainfo" vtrecordid="138" vtfieldname="rating" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="home.jsp?module=Accounts&amp;action=EditView&amp;record=138&amp;return_module=Accounts&amp;return_action=index&amp;parenttab=Marketing&amp;return_viewname=66">Sửa</a>  | <a href='javascript:confirmdelete("home.jsp%3Fmodule%3DAccounts%26action%3DDelete%26record%3D138%26return_module%3DAccounts%26return_action%3Dindex%26parenttab%3DMarketing%26return_viewname%3D66")'>Xóa</a></td>
                                                    </tr>
                                                    <tr bgcolor="white" onmouseover="this.className = 'lvtColDataHover'" onmouseout="this.className = 'lvtColData'" id="row_139" class="lvtColData">
                                                        <td width="2%"><input type="checkbox" name="selected_id" id="139" value="139" onclick="check_object(this)"></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="home.jsp?module=Accounts&amp;parenttab=Marketing&amp;action=DetailView&amp;record=139" title="Accounts">La Thị Hệ</a> <span type="vtlib_metainfo" vtrecordid="139" vtfieldname="accountname" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">admin <span type="vtlib_metainfo" vtrecordid="139" vtfieldname="assigned_user_id" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">16-04-2011 05:12:23 <span type="vtlib_metainfo" vtrecordid="139" vtfieldname="createdtime" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">09-05-1985 <span type="vtlib_metainfo" vtrecordid="139" vtfieldname="cf_607" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="javascript:;" onclick="startCall( & quot; 0977495569 & quot; , & quot; 139 & quot; )">0977495569</a> <span type="vtlib_metainfo" vtrecordid="139" vtfieldname="phone" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Đạt kết quả <span type="vtlib_metainfo" vtrecordid="139" vtfieldname="rating" vtmodule="Accounts" style="display:none;"></span></td>

                                                        <td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="home.jsp?module=Accounts&amp;action=EditView&amp;record=139&amp;return_module=Accounts&amp;return_action=index&amp;parenttab=Marketing&amp;return_viewname=66">Sửa</a>  | <a href='javascript:confirmdelete("home.jsp%3Fmodule%3DAccounts%26action%3DDelete%26record%3D139%26return_module%3DAccounts%26return_action%3Dindex%26parenttab%3DMarketing%26return_viewname%3D66")'>Xóa</a></td>
                                                    </tr>

                                                </tbody></table>
                                        </div>

                                        <table border="0" cellspacing="0" cellpadding="2" width="100%">

                                        </table>
                                    </td>
                                </tr>
                            </tbody></table>

                    </form>  
                       
                </div>

            </td>
            <td valign="top"><img src="themes/softed/images/showPanelTopRight.gif"></td>
        </tr>
    </tbody></table>

<br><br><br>

<table border="0" cellspacing="0" cellpadding="5" width="100%" class="settingsSelectedUI">
    <tbody>
        <tr>
            <td class="small" align="left"><span style="color: rgb(153, 153, 153);">HOSCO-CRM</span></td>
            <td class="small" align="right"><span style="color: rgb(153, 153, 153);">© 2014 <a href="http://www.hosgroup.com.vn" target="_blank">hosgroup.com.vn</a></span> </td>
        </tr>
    </tbody>
</table>    
<script>
                            var userDateFormat = "dd-mm-yyyy";
                                    var default_charset = "UTF-8";</script>
<script type="text/javascript">if (typeof (ActivityReminderCallback) != 'undefined') window.setTimeout(function(){
                            ActivityReminderCallback();
                                    }, 22000);</script><!--end body panes-->

</body>
</html>