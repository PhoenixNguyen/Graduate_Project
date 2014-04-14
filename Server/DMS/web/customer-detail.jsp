<%-- 
    Document   : customer-detail
    Created on : Apr 10, 2014, 4:33:05 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <title>admin - Bán hàng - Khách hàng - Phần mềm quản lý HOSCO-MANAGEMENT</title>
        <link rel="SHORTCUT ICON" href="themes/images/vtigercrm_icon.ico">	
        <style type="text/css">@import url("themes/softed/style.css");</style>
        <link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
        <!-- ActivityReminder customization for callback -->

        <style type="text/css">div.fixedLay1 { position:fixed; }</style>
        <!--[if lte IE 6]>
        <style type="text/css">div.fixedLay { position:absolute; }</style>
        <![endif]-->

        <!-- End -->

        <script>
            function showHideStatus(sId, anchorImgId, sImagePath)
            {
                oObj = eval(document.getElementById(sId));
                if (oObj.style.display == 'block')
                {
                    oObj.style.display = 'none';
                    eval(document.getElementById(anchorImgId)).src = 'themes/images/inactivate.gif';
                    eval(document.getElementById(anchorImgId)).alt = 'Display';
                    eval(document.getElementById(anchorImgId)).title = 'Display';
                }
                else
                {
                    oObj.style.display = 'block';
                    eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
                    eval(document.getElementById(anchorImgId)).alt = 'Hide';
                    eval(document.getElementById(anchorImgId)).title = 'Hide';
                }
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
                            <td class="tabSelected" onmouseover="fnDropDown(this, 'Marketing_sub');" onmouseout="fnHideDrop('Marketing_sub');" align="center" nowrap="customer-list"><a href="">Khách hàng</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
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

            <td style="padding-left:10px;padding-right:50px" class="moduleName" nowrap="">Marketing &gt; <a class="hdrLink" href="">Khách hàng</a></td>
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
                                            <td style="padding-right:0px;padding-left:10px;"><a href=""><img src="themes/softed/images/tbarImport.gif" alt="Nhập dữ liệu Khách hàng" title="Nhập dữ liệu Khách hàng" border="0"></a></td>  
                                            <td style="padding-right:10px"><a name="export_link" href="javascript:void(0)" onclick="return selectedRecords('Accounts', 'Marketing')"><img src="themes/softed/images/tbarExport.gif" alt="Xuất dữ liệu Khách hàng" title="Xuất dữ liệu Khách hàng" border="0"></a></td>


                                            <!--<td style="padding-right:10px"><a href="home.jsp?module=Accounts&action=FindDuplicateRecords&button_view=true&list_view=true&parenttab=Marketing"><img src="themes/softed/images/findduplicates.gif" alt="" title="Tìm kiếm trùng" border="0"></a></td> -->
                                            <td style="padding-right:10px"><a href="javascript:;" onclick="moveMe('mergeDup'); mergeshowhide('mergeDup'); searchhide('searchAcc', 'advSearch');"><img src="themes/images/findduplicates.gif" alt="" title="Tìm kiếm trùng" border="0"></a></td>
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


<!-- Contents -->
<table border="0" cellspacing="0" cellpadding="0" width="98%" align="center">
    <tbody>
        <tr>
            <td valign="top"><img src="themes/softed/images/showPanelTopLeft.gif"></td>
            <td class="showPanelBg" valign="top" width="100%">
                <!-- PUBLIC CONTENTS STARTS-->
                <div class="small" style="padding:10px">

                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="95%">
                        <tbody>
                            <tr>
                                <td>		
                                    <span class="dvHeaderText">[ <s:property value="customer.mMaDoiTuong"/> ] </font><s:property value="customer.mDoiTuong"/> - Thông tin Khách hàng </span>&nbsp;&nbsp;&nbsp;<span class="small">Cập nhật 31 ngày trước (01 Tháng 03 2014)</span>&nbsp;<span id="vtbusy_info" style="display:none;" valign="bottom"><img src="themes/images/vtbusy.gif" border="0"></span><span id="vtbusy_info" style="visibility:hidden;" valign="bottom"><img src="themes/images/vtbusy.gif" border="0"></span>
                                </td>
                            </tr>
                        </tbody></table>			 
                    <br>

                    <!-- Account details tabs -->
                    <table border="0" cellspacing="0" cellpadding="0" width="95%" align="center">
                        <tbody>
                            <tr>
                                <td>
                                    <table border="0" cellspacing="0" cellpadding="3" width="100%" class="small">
                                        <tbody>
                                            <tr>
                                                <td class="dvtTabCache" style="width:10px" nowrap="">&nbsp;</td>

                                                <td class="dvtSelectedCell" align="center" nowrap="">Khách hàng Thông tin</td>	
                                                <td class="dvtTabCache" style="width:10px">&nbsp;</td>
                                                <td class="dvtTabCache" align="right" style="width:100%">
                                                    <input title="Sửa [Alt+E]" accesskey="E" class="crmbutton small edit" onclick="
                                                        javascript:window.location.href = 'edit-customer?id_cus=<s:property value="customer.mStt"/>';
                                                            return false;
                                                           " type="button" name="Edit" value="&nbsp;Sửa&nbsp;">&nbsp;
                                                    <input title="Sao chép [Alt+U]" accesskey="U" class="crmbutton small create" onclick="" type="button" name="Duplicate" value="Sao chép">&nbsp;
                                                    <input title="Xóa [Alt+D]" accesskey="D" class="crmbutton small delete" onclick="" type="button" name="Delete" value="Xóa">&nbsp;
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" align="left">                
                                    <table border="0" cellspacing="0" cellpadding="3" width="100%" class="dvtContentSpace" style="border-bottom:0;">
                                        <tbody>
                                            <tr valign="top">

                                                <td align="left">
                                                    <!-- content cache -->


                                                    <div id="editlistprice" style="position:absolute;width:300px;"></div>
                                                    <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                                        <tbody>
                                                            <tr valign="top">
                                                                <td style="padding:5px">

                                                                    <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
                                                                        <tbody><tr>
                                                                                <td>&nbsp;</td>
                                                                                <td>&nbsp;</td>
                                                                                <td>&nbsp;</td>
                                                                                <td align="right">
                                                                                </td>
                                                                            </tr>

                                                                            <!-- This is added to display the existing comments -->

                                                                            <tr>
                                                                                <td colspan="4" class="dvInnerHeader">
                                                                                    <div style="float:left;font-weight:bold;">
                                                                                        <div style="float:left;"><a href="javascript:showHideStatus('tblThôngtinKháchhàng','aidThôngtinKháchhàng','themes/softed/images/');">
                                                                                                <img id="aidThôngtinKháchhàng" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide">
                                                                                            </a>
                                                                                        </div><b>&nbsp;Thông tin Khách hàng</b>
                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <!--ThôngtinKháchhàng-->
                                                                    <div style="width:auto;display:block;" id="tblThôngtinKháchhàng">
                                                                        <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
                                                                            <tbody>
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%">
                                                                                        <input type="hidden" id="hdtxt_IsAdmin" value="1">Tên Khách hàng
                                                                                    </td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tên Khách hàng" onmouseover="hndMouseOver(2, 'Tên Khách hàng');" onmouseout="fnhide('crmspanid');" valign="top">
                                                                                        &nbsp;&nbsp;<span id="dtlview_Tên Khách hàng"><s:property value="customer.mDoiTuong"/></span>
                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã số Khách hàng</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;<s:property value="customer.mMaDoiTuong"/></td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Website</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--WebSite-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Website" onmouseover="hndMouseOver(17, 'Website');" onmouseout="fnhide('crmspanid');">&nbsp;
                                                                                        <span id="dtlview_Website"><a href="" target="_blank"></a></span>
                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Điện thoại</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Điện thoại" onmouseover="hndMouseOver(11, 'Điện thoại');" onmouseout="fnhide('crmspanid');" valign="top">
                                                                                        &nbsp;&nbsp;<span id="dtlview_Điện thoại"><s:property value="customer.mDienThoai"/></span>
                                                                                    </td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã chứng khoán</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mã chứng khoán" onmouseover="hndMouseOver(1, 'Mã chứng khoán');" onmouseout="fnhide('crmspanid');" valign="top">
                                                                                        &nbsp;&nbsp;<span id="dtlview_Mã chứng khoán"></span>
                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Fax</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Fax" onmouseover="hndMouseOver(11, 'Fax');" onmouseout="fnhide('crmspanid');" valign="top">
                                                                                        &nbsp;&nbsp;<span id="dtlview_Fax"><s:property value="customer.mFax"/></span>

                                                                                    </td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thành viên của</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--AccountPopup-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thành viên của">&nbsp;<a href="index.php?module=Accounts&amp;action=DetailView&amp;record=0"></a>
                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Điện thoại khác</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Điện thoại khác" onmouseover="hndMouseOver(11, 'Điện thoại khác');" onmouseout="fnhide('crmspanid');" valign="top">
                                                                                        &nbsp;&nbsp;<span id="dtlview_Điện thoại khác"></span>

                                                                                    </td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã nhân viên</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Số nhân viên" onmouseover="hndMouseOver(7, 'Số nhân viên');" onmouseout="fnhide('crmspanid');" valign="top">
                                                                                        &nbsp;&nbsp;<span id="dtlview_Số nhân viên"><s:property value="customer.mMaNhanVien"/></span>

                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Email</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--Email-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Email" onmouseover="hndMouseOver(13, 'Email');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Email">
                                                                                            <a href="javascript:InternalMailer(137,9,'email1','Accounts','record_id');"><s:property value=""/></a>
                                                                                        </span>

                                                                                    </td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Email khác</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--Email-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Email khác" onmouseover="hndMouseOver(13, 'Email khác');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Email khác">
                                                                                            <a href="javascript:InternalMailer(137,11,'email2','Accounts','record_id');"><s:property value=""/></a>
                                                                                        </span>

                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Người sở hữu</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Người sở hữu" onmouseover="hndMouseOver(1, 'Người sở hữu');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                        &nbsp;&nbsp;<span id="dtlview_Người sở hữu"></span>

                                                                                    </td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Ngành nghề</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--ComboBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Ngành nghề" onmouseover="hndMouseOver(15, 'Ngành nghề');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Ngành nghề"><font color="red">Không thể truy cập</font></span>

                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Đánh giá</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--ComboBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Đánh giá" onmouseover="hndMouseOver(15, 'Đánh giá');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Đánh giá"><font color="">Đạt kết quả</font></span>

                                                                                    </td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Loại</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--ComboBox-->

                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Loại" onmouseover="hndMouseOver(15, 'Loại');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Loại"><font color="">Khách hàng</font></span>

                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã ngành</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mã ngành" onmouseover="hndMouseOver(1, 'Mã ngành');" onmouseout="fnhide('crmspanid');" valign="top">
                                                                                        &nbsp;&nbsp;<span id="dtlview_Mã ngành"></span>

                                                                                    </td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Từ chối email</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--CheckBox--> 
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Từ chối email" onmouseover="hndMouseOver(56, 'Từ chối email');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Từ chối email">không&nbsp;</span>

                                                                                    </td>    
                                                                                    <!-- Currency symbol -->
                                                                                    <td class="dvtCellLabel" align="right" width="25%">Doanh thu hàng năm<input type="hidden" id="hdtxt_IsAdmin" value="1"> (₫)</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Doanh thu hàng năm" onmouseover="hndMouseOver(71, 'Doanh thu hàng năm');" onmouseout="fnhide('crmspanid');" valign="top">
                                                                                        &nbsp;&nbsp;<span id="dtlview_Doanh thu hàng năm">0</span>

                                                                                    </td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Được gán cho</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--Assigned To-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Được gán cho" onmouseover="hndMouseOver(53, 'Được gán cho');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Được gán cho">
                                                                                            <a href=""><s:property value="customer.mMaNhanVien"/></a>         
                                                                                            &nbsp;</span>

                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thông báo khi dữ liệu này thay đổi</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--CheckBox--> 
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thông báo khi dữ liệu này thay đổi" onmouseover="hndMouseOver(56, 'Thông báo khi dữ liệu này thay đổi');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Thông báo khi dữ liệu này thay đổi">có&nbsp;</span>

                                                                                    </td>    
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Cập nhật lúc</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;01-12-2011 07:45:05</td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tạo lúc</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;16-04-2011 05:03:14</td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Ngày sinh</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Ngày sinh" onmouseover="hndMouseOver(5, 'Ngày sinh');" onmouseout="fnhide('crmspanid');">
                                                                                        &nbsp;&nbsp;<span id="dtlview_Ngày sinh">
                                                                                            12-10-1979
                                                                                        </span>

                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Loại Sản Phẩm</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--ComboBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Loại Sản Phẩm" onmouseover="hndMouseOver(15, 'Loại Sản Phẩm');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Loại Sản Phẩm"><font color=""></font></span>

                                                                                    </td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Nhu cầu gửi đĩa</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--CheckBox--> 
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Nhu cầu gửi đĩa" onmouseover="hndMouseOver(56, 'Nhu cầu gửi đĩa');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Nhu cầu gửi đĩa">không&nbsp;</span>

                                                                                    </td>    
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Nhu cầu đại lý</td>
                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--CheckBox--> 
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Nhu cầu đại lý" onmouseover="hndMouseOver(56, 'Nhu cầu đại lý');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Nhu cầu đại lý">không&nbsp;</span>

                                                                                    </td>    
                                                                                </tr>	

                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </td>
                                                            </tr>

                                                            <!--DIA CHI-->                         
                                                            <tr>
                                                                <td style="padding:5px">

                                                                    <!-- Detailed View Code starts here-->
                                                                    <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
                                                                        <tbody><tr>
                                                                                <td>&nbsp;</td>
                                                                                <td>&nbsp;</td>
                                                                                <td>&nbsp;</td>
                                                                                <td align="right">
                                                                                    <input name="mapbutton" value="Bản đồ định vị" class="crmbutton small create" type="button" onclick="fnvshobj(this, 'locateMap');" onmouseout="fninvsh('locateMap');" title="Bản đồ định vị">
                                                                                </td>
                                                                            </tr>

                                                                            <!-- This is added to display the existing comments -->

                                                                            <tr><td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblThôngtinđịachỉ','aidThôngtinđịachỉ','themes/softed/images/');"><img id="aidThôngtinđịachỉ" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display"></a></div><b>&nbsp;Thông tin địa chỉ</b></div></td>
                                                                            </tr>
                                                                        </tbody></table>
                                                                    <div style="width:auto;display:none;" id="tblThôngtinđịachỉ">
                                                                        <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
                                                                            <tbody>
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Địa chỉ thanh toán</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextArea/Street-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Địa chỉ thanh toán" onmouseover="hndMouseOver(21, 'Địa chỉ thanh toán');" onmouseout="fnhide('crmspanid');">&nbsp;
                                                                                        <span id="dtlview_Địa chỉ thanh toán"><s:property value="customer.mDiaChi"/></span>

                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Địa chỉ vận chuyển</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextArea/Street-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Địa chỉ vận chuyển" onmouseover="hndMouseOver(21, 'Địa chỉ vận chuyển');" onmouseout="fnhide('crmspanid');">&nbsp;
                                                                                        <span id="dtlview_Địa chỉ vận chuyển"><s:property value="customer.mDiaChi"/></span>

                                                                                    </td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Hộp thư thanh toán</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Hộp thư thanh toán" onmouseover="hndMouseOver(1, 'Hộp thư thanh toán');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                        &nbsp;&nbsp;<span id="dtlview_Hộp thư thanh toán"></span>

                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Hộp thư vận chuyển</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Hộp thư vận chuyển" onmouseover="hndMouseOver(1, 'Hộp thư vận chuyển');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                        &nbsp;&nbsp;<span id="dtlview_Hộp thư vận chuyển"></span>

                                                                                    </td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thanh toán tại thành phố</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thanh toán tại thành phố" onmouseover="hndMouseOver(1, 'Thanh toán tại thành phố');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                        &nbsp;&nbsp;<span id="dtlview_Thanh toán tại thành phố"></span>

                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Vận chuyển tới thành phố</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Vận chuyển tới thành phố" onmouseover="hndMouseOver(1, 'Vận chuyển tới thành phố');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                        &nbsp;&nbsp;<span id="dtlview_Vận chuyển tới thành phố"></span>

                                                                                    </td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thanh toán tại Tỉnh/Bang</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thanh toán tại Tỉnh//Bang" onmouseover="hndMouseOver(1, 'Thanh toán tại Tỉnh/Bang');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                        &nbsp;&nbsp;<span id="dtlview_Thanh toán tại Tỉnh//Bang"></span>

                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Vận chuyển tới Tỉnh/Bang</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Vận chuyển tới Tỉnh//Bang" onmouseover="hndMouseOver(1, 'Vận chuyển tới Tỉnh/Bang');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                        &nbsp;&nbsp;<span id="dtlview_Vận chuyển tới Tỉnh//Bang"></span>

                                                                                    </td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã vùng thanh toán</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mã vùng thanh toán" onmouseover="hndMouseOver(1, 'Mã vùng thanh toán');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                        &nbsp;&nbsp;<span id="dtlview_Mã vùng thanh toán"></span>

                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã vùng vận chuyển</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mã vùng vận chuyển" onmouseover="hndMouseOver(1, 'Mã vùng vận chuyển');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                        &nbsp;&nbsp;<span id="dtlview_Mã vùng vận chuyển"></span>

                                                                                    </td>
                                                                                </tr>	
                                                                                <tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thanh toán tại quốc gia</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thanh toán tại quốc gia" onmouseover="hndMouseOver(1, 'Thanh toán tại quốc gia');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                        &nbsp;&nbsp;<span id="dtlview_Thanh toán tại quốc gia"></span>

                                                                                    </td>
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Vận chuyển tới quốc gia</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextBox-->
                                                                                    <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Vận chuyển tới quốc gia" onmouseover="hndMouseOver(1, 'Vận chuyển tới quốc gia');" onmouseout="fnhide('crmspanid');" valign="top">
                                                                                        &nbsp;&nbsp;<span id="dtlview_Vận chuyển tới quốc gia"></span>

                                                                                    </td>
                                                                                </tr>	

                                                                            </tbody>
                                                                        </table>
                                                                    </div>
                                                                </td>
                                                            </tr>

                                                            <!--Mo ta-->
                                                            <tr>
                                                                <td style="padding:5px">

                                                                    <!-- Detailed View Code starts here-->
                                                                    <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
                                                                        <tbody><tr>
                                                                                <td>&nbsp;</td>
                                                                                <td>&nbsp;</td>
                                                                                <td>&nbsp;</td>
                                                                                <td align="right">
                                                                                </td>
                                                                            </tr>

                                                                            <!-- This is added to display the existing comments -->

                                                                            <tr>
                                                                                <td colspan="4" class="dvInnerHeader">
                                                                                    <div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblThôngtinmôtả','aidThôngtinmôtả','themes/softed/images/');">
                                                                                                <img id="aidThôngtinmôtả" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide"></a></div><b>&nbsp;Thông tin mô tả</b>
                                                                                    </div>
                                                                                </td>
                                                                            </tr>
                                                                        </tbody>
                                                                    </table>
                                                                    <div style="width:auto;display:block;" id="tblThôngtinmôtả">
                                                                        <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
                                                                            <tbody><tr style="height:25px">
                                                                                    <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mô tả</td>

                                                                                    <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                    <!--TextArea/Description-->
                                                                                    <!-- we will empty the value of ticket and faq comment -->
                                                                                    <!--  -->
                                                                                    <!-- -->
                                                                                    <td width="100%" colspan="3" class="dvtCellInfo" align="left" id="mouseArea_Mô tả" onmouseover="hndMouseOver(19, 'Mô tả');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Mô tả">
                                                                                            <s:property value="customer.mGhiChu"/> <a href="" target="_blank"></a>
                                                                                        </span>

                                                                                    </td>
                                                                                </tr>	

                                                                            </tbody></table>
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td style="padding:5px">

                                                                </td>
                                                            </tr>
                                                            <!-- LBL -->
                                                        <script>
                                                            function OpenWindow(url)
                                                            {
                                                                openPopUp('xAttachFile', this, url, 'attachfileWin', 380, 375, 'menubar=no,toolbar=no,location=no,status=no,resizable=no');
                                                            }
                                                        </script>
                                        </tbody>
                                    </table>

                                </td>

                                <!--Hoạt động-->
<!--                                <td width="22%" valign="top" style="border-left:1px dashed #cccccc;padding:13px">

                                     right side relevant info 
                                     Action links for Event & Todo START-by Minnie 
                                    <table width="100%" border="0" cellpadding="5" cellspacing="0">
                                        <tbody><tr><td>&nbsp;</td></tr>				
                                            <tr><td align="left" class="genHeaderSmall">Hoạt động</td></tr>

                                            <tr>
                                                <td align="left" style="padding-left:10px;"> 
                                                    <input type="hidden" name="pri_email" value="khanhtt@vjl.com.vn">
                                                    <input type="hidden" name="sec_email" value="khanh@s-i-e.jp">
                                                    <a href="javascript:void(0);" class="webMnu" onclick="if (LTrim('khanhtt@vjl.com.vn') != '' || LTrim('khanh@s-i-e.jp') != '') {
                                                                fnvshobj(this, 'sendmail_cont');
                                                                sendmail('Accounts', 137)
                                                            } else {
                                                                OpenCompose('', 'create')
                                                            }"><img src="themes/images/sendmail.png" hspace="5" align="absmiddle" border="0"></a>&nbsp;
                                                    <a href="javascript:void(0);" class="webMnu" onclick="if (LTrim('khanhtt@vjl.com.vn') != '' || LTrim('khanh@s-i-e.jp') != '') {
                                                                fnvshobj(this, 'sendmail_cont');
                                                                sendmail('Accounts', 137)
                                                            } else {
                                                                OpenCompose('', 'create')
                                                            }">Gửi Mail</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="padding-left:10px;"> 
                                                    <a href="" class="webMnu"><img src="themes/images/AddEvent.gif" hspace="5" align="absmiddle" border="0"></a>
                                                    <a href="" class="webMnu">Thêm Sự kiện</a>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td align="left" style="padding-left:10px;">
                                                    <a href="" class="webMnu"><img src="themes/images/AddToDo.gif" hspace="5" align="absmiddle" border="0"></a>
                                                    <a href="" class="webMnu">Thêm Tác vụ</a>
                                                </td>
                                            </tr>
                                             Start: Actions for Documents Module 

                                             End: Actions for Documents Module 	
                                        </tbody></table>

                                    <table width="100%" border="0" cellpadding="5" cellspacing="0">
                                        <tbody><tr>
                                                <td align="left" style="padding-left:10px;">
                                                    <a class="webMnu" href=""><img hspace="5" align="absmiddle" border="0" src="themes/images/bookMark.gif"></a>
                                                    <a class="webMnu" href="">Thêm ghi chú</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="padding-left:10px;">
                                                    <a class="webMnu" href="">Hiển thị cấp bậc khách hàng</a>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="padding-left:10px;">
                                                    <a class="webMnu" href="">Send SMS</a>
                                                </td>
                                            </tr>
                                        </tbody></table>

                                     Action links END 

                                     Mail Merge
                                    <br>
                                    <form action="index.php" method="post" name="TemplateMerge" id="form">
                                        <input type="hidden" name="module" value="Accounts">
                                        <input type="hidden" name="parenttab" value="Sales">
                                        <input type="hidden" name="record" value="137">
                                        <input type="hidden" name="action">
                                        <table border="0" cellspacing="0" cellpadding="0" width="100%" class="rightMailMerge">
                                            <tbody><tr>
                                                    <td class="rightMailMergeHeader"><b>Chọn mẫu để ghép nối Mail	</b></td>
                                                </tr>
                                                <tr style="height:25px">
                                                    <td class="rightMailMergeContent">
                                                        <a href="">Tạo mẫu trộn thư </a>
                                                    </td>
                                                </tr>
                                            </tbody></table>
                                    </form>

                                </td>-->
                            </tr>
                        </tbody>
                                    </table>


                    <!-- PUBLIC CONTENTS STOPS-->
            </td>
        </tr>
        <tr>
            <td>			
                <table border="0" cellspacing="0" cellpadding="3" width="100%" class="small">
                    <tbody><tr>
                            <td class="dvtTabCacheBottom" style="width:10px" nowrap="">&nbsp;</td>

                            <td class="dvtSelectedCellBottom" align="center" nowrap="">Khách hàng Thông tin</td>	
                            <td class="dvtTabCacheBottom" style="width:10px">&nbsp;</td>
                            <td class="dvtTabCacheBottom" align="right" style="width:100%">
                                &nbsp;
                                <input title="Sửa [Alt+E]" accesskey="E" class="crmbutton small edit" onclick="
                                        javascript:window.location.href = 'edit-customer?id_cus=<s:property value="customer.mStt"/>';
                                        return false;
                                        " type="submit" name="Edit" value="&nbsp;Sửa&nbsp;">&nbsp;
                                <input title="Sao chép [Alt+U]" accesskey="U" class="crmbutton small create" onclick="DetailView.return_module.value = 'Accounts';
                                        DetailView.return_action.value = 'DetailView';
                                        DetailView.isDuplicate.value = 'true';
                                        DetailView.module.value = 'Accounts';
                                        submitFormForAction('DetailView', 'EditView');" type="submit" name="Duplicate" value="Sao chép">&nbsp;
                                <input title="Xóa [Alt+D]" accesskey="D" class="crmbutton small delete" onclick="DetailView.return_module.value = 'Accounts';
                                        DetailView.return_action.value = 'index';
                                        var confirmMsg = 'Xóa Khách hàng đồng nghĩa xóa các Cơ hội và Báo giá liên quan. Bạn chắc chắn muốn xóa?';
                                        submitFormForActionWithConfirmation('DetailView', 'Delete', confirmMsg);" type="button" name="Delete" value="Xóa">&nbsp;


                            </td>
                        </tr>
                    </tbody></table>
            </td>
        </tr>
    </tbody></table>


<script>

    function getTagCloud()
    {
        new Ajax.Request(
                'index.php',
                {queue: {position: 'end', scope: 'command'},
                    method: 'post',
                    postBody: 'module=Accounts&action=AccountsAjax&file=TagCloud&ajxaction=GETTAGCLOUD&recordid=137',
                    onComplete: function(response) {
                        $("tagfields").innerHTML = response.responseText;
                        $("txtbox_tagfields").value = '';
                    }
                }
        );
    }
    getTagCloud();
</script>
<!-- added for validation -->
<script language="javascript">
    var fieldname = new Array('accountname', 'account_no', 'phone', 'website', 'fax', 'tickersymbol', 'otherphone', 'account_id', 'email1', 'employees', 'email2', 'ownership', 'rating', 'industry', 'siccode', 'accounttype', 'annual_revenue', 'emailoptout', 'notify_owner', 'assigned_user_id', 'bill_street', 'ship_street', 'bill_city', 'ship_city', 'bill_state', 'ship_state', 'bill_code', 'ship_code', 'bill_country', 'ship_country', 'bill_pobox', 'ship_pobox', 'description', 'campaignrelstatus', 'cf_607', 'cf_638', 'cf_639', 'cf_640');
    var fieldlabel = new Array('Tên Khách hàng', 'Mã số Khách hàng', 'Điện thoại', 'Website', 'Fax', 'Mã chứng khoán', 'Điện thoại khác', 'Thành viên của', 'Email', 'Số nhân viên', 'Email khác', 'Người sở hữu', 'Đánh giá', 'Ngành nghề', 'Mã ngành', 'Loại', 'Doanh thu hàng năm', 'Từ chối email', 'Thông báo khi dữ liệu này thay đổi', 'Được gán cho', 'Địa chỉ thanh toán', 'Địa chỉ vận chuyển', 'Thanh toán tại thành phố', 'Vận chuyển tới thành phố', 'Thanh toán tại Tỉnh/Bang', 'Vận chuyển tới Tỉnh/Bang', 'Mã vùng thanh toán', 'Mã vùng vận chuyển', 'Thanh toán tại quốc gia', 'Vận chuyển tới quốc gia', 'Hộp thư thanh toán', 'Hộp thư vận chuyển', 'Mô tả', 'Trạng thái', 'Ng&agrave;y sinh', 'Loại Sản Phẩm', 'Nhu cầu gửi đĩa', 'Nhu cầu đại l&yacute;');
    var fielddatatype = new Array('V~M', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'I~O', 'E~O', 'I~O', 'E~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'I~O', 'C~O', 'C~O', 'V~M', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'D~O', 'V~O', 'C~O', 'C~O');
</script>
</div></td>

<td align="right" valign="top"><img src="themes/softed/images/showPanelTopRight.gif"></td>
</tr></tbody></table>

<form name="SendMail"><div id="sendmail_cont" style="z-index:100001;position:absolute;"></div></form>
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
        }, 33000);</script><!--end body panes-->
</td></tr>
<tr><td colspan="2" align="center">
    </td></tr></tbody></table>


</body>
</html>
