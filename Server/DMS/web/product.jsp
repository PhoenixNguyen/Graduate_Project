<%-- 
    Document   : product
    Created on : Apr 10, 2014, 12:36:47 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<html>
    <head>
        <title>admin - Tồn kho - Sản phẩm - Phần mềm quản lý HOSCO-MANAGEMENT</title>
        <link REL="SHORTCUT ICON" HREF="themes/images/vtigercrm_icon.ico">	
        <style type="text/css">@import url("themes/softed/style.css");</style>
        <link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
        <!-- ActivityReminder customization for callback -->

        <style type="text/css">div.fixedLay1 { position:fixed; }</style>
        <!--[if lte IE 6]>
        <style type="text/css">div.fixedLay { position:absolute; }</style>
        <![endif]-->

        <!-- End -->
        <script>
            var selected = <s:property value="selected"/>;
            console.log(selected);
            
            if(selected){
                var status = false;
                status = <s:property value="deleteStatus"/>;
                console.log("status "+status);
                if(status == "true")
                    alert("Xóa thành công");
                else
                    alert("Không thể xóa do sản phẩm đã được sử dụng cho nội dung khác");
            }
        </script>
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
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'My Home Page_sub');" onmouseout="fnHideDrop('My Home Page_sub');" align="center" nowrap=""><a href="/DMS">Trang chủ</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Tools_sub');" onmouseout="fnHideDrop('Tools_sub');" align="center" nowrap=""><a href="">Nhân viên</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Marketing_sub');" onmouseout="fnHideDrop('Marketing_sub');" align="center" nowrap="customer-list"><a href="">Khách hàng</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
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
                            <td class="level2UnSelTab" nowrap=""> <a href="">Tài liệu</a> </td>
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
            <tr><td><a href="" class="drop_down">Chiến dịch</a></td></tr>
            <tr><td><a href="customer-list" class="drop_down">Khách hàng</a></td></tr>
            <tr><td><a href="map/showMap?page=0" class="drop_down">Vị trí</a></td></tr>
        </tbody>
    </table>
</div>
<div class="drop_mnu" id="Sales_sub" onmouseout="fnHideDrop('Sales_sub')" onmouseover="fnShowDrop('Sales_sub')" style="left: 244px; top: 75px; display: none;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">
        <tbody>
            <tr><td><a href="" class="drop_down">Đầu mối</a></td></tr>
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
                                                            <td style="padding-right:0px;padding-left:10px;"><a href="new-product"><img src="themes/softed/images/btnL3Add.gif" alt="Tạo mới..." title="Tạo mới..." border="0"></a></td>

                                                            <td style="padding-right:10px"><a href="javascript:;" onclick="moveMe('searchAcc'); searchshowhide('searchAcc', 'advSearch'); mergehide('mergeDup')"><img src="themes/softed/images/btnL3Search.gif" alt="Tìm kiếm trong Khách hàng..." title="Tìm kiếm trong Khách hàng..." border="0"></a></td>

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
<!--                                            <td style="padding-right:10px"><a href="javascript:;" onclick="moveMe('mergeDup'); mergeshowhide('mergeDup'); searchhide('searchAcc', 'advSearch');"><img src="themes/images/findduplicates.gif" alt="" title="Tìm kiếm trùng" border="0"></a></td>-->
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
<table border=0 cellspacing=0 cellpadding=0 width=98% align=center>
    <tr>
        <td valign=top><img src="themes/softed/images/showPanelTopLeft.gif"></td>

        <td class="showPanelBg" valign="top" width=100% style="padding:10px;">
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
                    <input name='search_url' id="search_url" type='hidden' value=''>
                    <input name="idlist" id="idlist" type="hidden">
                    <input name="change_owner" type="hidden">
                    <input name="change_status" type="hidden">
                    <input name="action" type="hidden">
                    <input name="where_export" type="hidden" value="">
                    <input name="step" type="hidden">
                    <input name="allids" type="hidden" id="allids" value="">
                    <input name="selectedboxes" id="selectedboxes" type="hidden" value="">
                    <input name="allselectedboxes" id="allselectedboxes" type="hidden" value="">
                    <input name="current_page_boxes" id="current_page_boxes" type="hidden" value="142;187;188;712;714;716;718;2278;2314;2316;2322;6898;6899;6900;6901;6902;6903;6904;6906;6907">
                    <!-- List View Master Holder starts -->
                    <table border=0 cellspacing=1 cellpadding=0 width=100% class="lvtBg">
                        <tr>
                            <td>
                                
                                <!-- List View's Buttons and Filters ends -->

                                <div  >
                                    <table border=0 cellspacing=1 cellpadding=3 width=100% class="lvt small">
                                        <!-- Table Headers -->
                                        <tr>
                                            <!--td class="lvtCol"><input type="checkbox"  name="selectall" onClick=toggleSelect_ListView(this.checked, "selected_id")></td-->
                                            <td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products", "parenttab=Inventory&foldername=Default&order_by=productname&start=&sorder=ASC");' class='listFormHeaderLinks'>Stt</a></td>
                                            <td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products", "parenttab=Inventory&foldername=Default&order_by=productname&start=&sorder=ASC");' class='listFormHeaderLinks'>Tên sản phẩm</a></td>
                                            <td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products", "parenttab=Inventory&foldername=Default&order_by=serialno&start=&sorder=ASC");' class='listFormHeaderLinks'>Mã sản phẩm</a></td>
                                            <td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products", "parenttab=Inventory&foldername=Default&order_by=createdtime&start=&sorder=ASC");' class='listFormHeaderLinks'>Mã vạch</a></td>
                                            <td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products", "parenttab=Inventory&foldername=Default&order_by=qtyinstock&start=&sorder=ASC");' class='listFormHeaderLinks'>Thương hiệu</a></td>
                                            <td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products", "parenttab=Inventory&foldername=Default&order_by=qtyinstock&start=&sorder=ASC");' class='listFormHeaderLinks'>Nhà cung cấp</a></td>
                                            <td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products", "parenttab=Inventory&foldername=Default&order_by=cf_628&start=&sorder=ASC");' class='listFormHeaderLinks'>Giá</a></td>
                                            <td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products", "parenttab=Inventory&foldername=Default&order_by=cf_628&start=&sorder=ASC");' class='listFormHeaderLinks'>Đơn vị</a></td>
                                            <td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products", "parenttab=Inventory&foldername=Default&order_by=reorderlevel&start=&sorder=ASC");' class='listFormHeaderLinks'>Mô tả</a></td>
                                            <td class="lvtCol">Hoạt động</td>
                                        </tr>
                                        <!-- Table Contents -->
                                        <s:iterator value="productsList" status="index">
                                        <tr bgcolor=white onMouseOver="this.className = 'lvtColDataHover'" onMouseOut="this.className = 'lvtColData'" id="row_142">
                                            <!--td width="2%"><input type="checkbox" NAME="selected_id" id="142" value= '142' onClick="check_object(this)"></td-->

                                            <td onmouseover=""><s:property value="%{#index.index + 1}"/> <span type='vtlib_metainfo' vtrecordid='142' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
                                            
                                            <td onmouseover=""><a href='product-detail?id_pdct=<s:property value="mSerial"/>' title='Products'><s:property value="mProductName"/></a> <span type='vtlib_metainfo' vtrecordid='142' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>

                                            <td onmouseover=""><s:property value="mProductID"/> <span type='vtlib_metainfo' vtrecordid='142' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>

                                            <td onmouseover=""><s:property value="mBarcode"/> <span type='vtlib_metainfo' vtrecordid='142' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>

                                            <td onmouseover=""><s:property value="mBrand"/><span type='vtlib_metainfo' vtrecordid='142' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>

                                            <td onmouseover=""><s:property value="mProvider"/> <span type='vtlib_metainfo' vtrecordid='142' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>

                                            <td onmouseover=""><s:property value="mExportPrices"/><span type='vtlib_metainfo' vtrecordid='142' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
                                            
                                            <td onmouseover=""><s:property value="mQuantification"/><span type='vtlib_metainfo' vtrecordid='142' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
                                            
                                            <td onmouseover=""><s:property value="mDescription"/><span type='vtlib_metainfo' vtrecordid='142' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>

                                            <td onmouseover=""><a href="edit-product?id_pdct=<s:property value="mSerial"/>">Sửa</a>  | <a href='javascript:confirmdelete("delete-product?id_pdct=<s:property value="mSerial"/>")'>Xóa</a></td>
                                        </tr>
                                        </s:iterator>
                                    </table>
                                </div>

                                
                            </td>
                        </tr>
                    </table>

                </form>	

                <div id="basicsearchcolumns" style="display:none;">
                    <select name="search_field" id="bas_searchfield" class="txtBox" style="width:150px"><option label="Tên sản phẩm" value="productname">Tên sản phẩm</option>
                        <option label="Số hiệu" value="serial_no">Số hiệu</option>
                        <option label="Tạo lúc" value="createdtime">Tạo lúc</option>
                        <option label="Tồn kho" value="qtyinstock">Tồn kho</option>
                        <option label="Tên kho" value="cf_628">Tên kho</option>
                        <option label="Mức tồn kho chuẩn" value="reorderlevel">Mức tồn kho chuẩn</option>
                    </select>
                </div>	  	
            </div>

        </td>
        <td valign=top><img src="themes/softed/images/showPanelTopRight.gif"></td>
    </tr>
</table>

<!-- MassEdit Feature -->
<div id="massedit" class="layerPopup" style="display:none;width:80%;">
    <table width="100%" border="0" cellpadding="3" cellspacing="0" class="layerHeadingULine">
        <tr>
            <td class="layerPopupHeading" align="left" width="60%">Sửa nhanh - Nhiều dòng</td>
            <td>&nbsp;</td>
            <td align="right" width="40%"><img onClick="fninvsh('massedit');" title="Đóng" alt="Đóng" style="cursor:pointer;" src="themes/images/close.gif" align="absmiddle" border="0"></td>
        </tr>
    </table>
    <div id="massedit_form_div"></div>

</div>
<!-- END -->

<script>


    function ajaxChangeStatus(statusname)
    {
        $("status").style.display = "inline";
        var viewid = document.getElementById('viewname').options[document.getElementById('viewname').options.selectedIndex].value;
        var idstring = document.getElementById('idlist').value;
        var searchurl = document.getElementById('search_url').value;
        var tplstart = '&';
        if (gstart != '')
        {
            tplstart = tplstart + gstart;
        }
        if (statusname == 'status')
        {
            fninvsh('changestatus');
            var url = '&leadval=' + document.getElementById('lead_status').options[document.getElementById('lead_status').options.selectedIndex].value;
            var urlstring = "module=Users&action=updateLeadDBStatus&return_module=Leads" + tplstart + url + "&viewname=" + viewid + "&idlist=" + idstring + searchurl;
        }
        else if (statusname == 'owner')
        {
            if ($("user_checkbox").checked)
            {
                fninvsh('changeowner');
                var url = '&owner_id=' + document.getElementById('lead_owner').options[document.getElementById('lead_owner').options.selectedIndex].value;

                var urlstring = "module=Users&action=updateLeadDBStatus&return_module=Products" + tplstart + url + "&viewname=" + viewid + "&idlist=" + idstring + searchurl;

            } else {
                fninvsh('changeowner');
                var url = '&owner_id=' + document.getElementById('lead_group_owner').options[document.getElementById('lead_group_owner').options.selectedIndex].value;

                var urlstring = "module=Users&action=updateLeadDBStatus&return_module=Products" + tplstart + url + "&viewname=" + viewid + "&idlist=" + idstring + searchurl;

            }
        }
        new Ajax.Request(
                'index.php',
                {queue: {position: 'end', scope: 'command'},
                    method: 'post',
                    postBody: urlstring,
                    onComplete: function(response) {
                        $("status").style.display = "none";
                        result = response.responseText.split('&#&#&#');
                        $("ListViewContents").innerHTML = result[2];
                        if (result[1] != '')
                            alert(result[1]);
                        $('basicsearchcolumns').innerHTML = '';
                    }
                }
        );

    }
</script>



<!-- stopscrmprint --><style>
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
<script language=javascript>
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
<script language = 'JavaScript' type='text/javascript' src = 'include/js/popup.js'></script><br><br><br><table border=0 cellspacing=0 cellpadding=5 width=100% class=settingsSelectedUI ><tr><td class=small align=left><span style='color: rgb(153, 153, 153);'>HOSCO-CRM</span></td><td class=small align=right><span style='color: rgb(153, 153, 153);'>&copy; 2014 <a href='http://www.hosgroup.com.vn' target='_blank'>hosgroup.com.vn</a></span> </td></tr></table>		<script>
    var userDateFormat = "dd-mm-yyyy";
    var default_charset = "UTF-8";
</script>
<script type='text/javascript'>if (typeof (ActivityReminderCallback) != 'undefined')
        window.setTimeout(function() {
            ActivityReminderCallback();
        }, 46000);</script><!--end body panes-->
</td></tr>
<tr><td colspan="2" align="center">
    </td></tr></table>
</body>
</html>

