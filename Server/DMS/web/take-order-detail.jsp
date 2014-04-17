<%-- 
    Document   : take-order-detail
    Created on : Apr 10, 2014, 1:09:25 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
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
        <script>
            function showHideStatus(sId,anchorImgId,sImagePath)
            {
                    oObj = eval(document.getElementById(sId));
                    if(oObj.style.display == 'block')
                    {
                            oObj.style.display = 'none';
                            eval(document.getElementById(anchorImgId)).src =  'themes/images/inactivate.gif';
                            eval(document.getElementById(anchorImgId)).alt = 'Display';
                            eval(document.getElementById(anchorImgId)).title = 'Display';
                    }
                    else
                    {
                            oObj.style.display = 'block';
                            eval(document.getElementById(anchorImgId)).src =  'themes/images/activate.gif';
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
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'My Home Page_sub');" onmouseout="fnHideDrop('My Home Page_sub');" align="center" nowrap=""><a href="">Trang chủ</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Tools_sub');" onmouseout="fnHideDrop('Tools_sub');" align="center" nowrap=""><a href="">Nhân viên</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabUnSelected" onmouseover="fnDropDown(this, 'Marketing_sub');" onmouseout="fnHideDrop('Marketing_sub');" align="center" nowrap=""><a href="">Khách hàng</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
                            <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                            <td class="tabSelected" onmouseover="fnDropDown(this, 'Sales_sub');" onmouseout="fnHideDrop('Sales_sub');" align="center" nowrap=""><a href="">Bán hàng</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
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
                                                            <td style="padding-right:0px;padding-left:10px;"><a href=""><img src="themes/softed/images/btnL3Add.gif" alt="Tạo mới..." title="Tạo mới..." border="0"></a></td>

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

<!-- Contents -->
<table border="0" cellspacing="0" cellpadding="0" width="98%" align="center">
    <tbody><tr>
            <td valign="top"><img src="themes/softed/images/showPanelTopLeft.gif"></td>
            <td class="showPanelBg" valign="top" width="100%">
                <!-- PUBLIC CONTENTS STARTS-->
                <div class="small" style="padding:20px">

                    <table align="center" border="0" cellpadding="0" cellspacing="0" width="95%">
                        <tbody><tr>
                                <td>

                                    <span class="lvtHeaderText"><font color="purple">[ <s:property value="takeOrder.mID" /> ] </font>Đặt hàng -  Thông tin Đặt hàng </span>&nbsp;&nbsp;&nbsp;<span class="small"></span>&nbsp;<span id="vtbusy_info" style="display:none;" valign="bottom"><img src="themes/images/vtbusy.gif" border="0"></span><span id="vtbusy_info" style="visibility:hidden;" valign="bottom"><img src="themes/images/vtbusy.gif" border="0"></span>
                                </td>
                            </tr>
                        </tbody></table>
                    <br>

                    <!-- Entity and More information tabs -->
                    <table border="0" cellspacing="0" cellpadding="0" width="95%" align="center">
                        <tbody><tr>
                                <td>						
                                    <table border="0" cellspacing="0" cellpadding="3" width="100%" class="small">
                                        <tbody><tr>
                                                <td class="dvtTabCache" style="width:10px" nowrap="">&nbsp;</td>

                                                <td class="dvtSelectedCell" align="center" nowrap="">Đặt hàng Thông tin</td>	
                                                <td class="dvtTabCache" style="width:10px">&nbsp;</td>
                                                <td class="dvtTabCache" align="right" style="width:100%">
                                                    <input title="Sửa [Alt+E]" accesskey="E" class="crmbutton small edit" onclick="
                                                        javacript:window.location.href= 'take-order-edit?id_tod=<s:property value="takeOrder.getmID()"/>'
//                                                        DetailView.return_module.value = 'SalesOrder';
//                                                            DetailView.return_action.value = 'DetailView';
//                                                            DetailView.return_id.value = '201';
//                                                            DetailView.module.value = 'SalesOrder';
//                                                            submitFormForAction('DetailView', 'EditView');
                                                        " type="button" name="Edit" value="&nbsp;Sửa&nbsp;">&nbsp;
<!--                                                    <input title="Sao chép [Alt+U]" accesskey="U" class="crmbutton small create" onclick="DetailView.return_module.value = 'SalesOrder';
                                                            DetailView.return_action.value = 'DetailView';
                                                            DetailView.isDuplicate.value = 'true';
                                                            DetailView.module.value = 'SalesOrder';
                                                            submitFormForAction('DetailView', 'EditView');" type="button" name="Duplicate" value="Sao chép">&nbsp;-->
                                                    <input title="Xóa [Alt+D]" accesskey="D" class="crmbutton small delete" onclick="DetailView.return_module.value = 'SalesOrder';
                                                            DetailView.return_action.value = 'index';
                                                            var confirmMsg = 'Bạn muốn xóa bản ghi này chứ?';
                                                            submitFormForActionWithConfirmation('DetailView', 'Delete', confirmMsg);" type="button" name="Delete" value="Xóa">&nbsp;


                                                </td>
                                            </tr>
                                        </tbody></table>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top" align="left">
                                    <table border="0" cellspacing="0" cellpadding="3" width="100%" class="dvtContentSpace" style="border-bottom:0px;">
                                        <tbody><tr valign="top">

                                                <td align="left" style="padding:10px;">
                                                    <!-- content cache -->
                                                    <form action="index.php" method="post" name="DetailView" id="form" onsubmit="VtigerJS_DialogBox.block();">
                                                        <input type="hidden" name="parenttab" value="Inventory">
                                                        
                                                        <!-- Entity informations display - starts -->	
                                                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                                            <tbody><tr>
                                                                    <td style="padding:10px;border-right:1px dashed #CCCCCC;" width="80%">

                                                                        <!-- The following table is used to display the buttons -->
                                                                        <!-- Button displayed - finished-->


                                                                        <!-- Entity information(blocks) display - start -->
                                                                        <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
                                                                            <tbody><tr>
                                                                                    <td>&nbsp;</td>
                                                                                    <td>&nbsp;</td>
                                                                                    <td>&nbsp;</td>
                                                                                    <td align="right">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblThôngtinĐặthàng','aidThôngtinĐặthàng','themes/softed/images/');"><img id="aidThôngtinĐặthàng" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide"></a></div><b>&nbsp;Thông tin Đặt hàng</b></div></td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        <div style="width:auto;display:block;" id="tblThôngtinĐặthàng">
                                                                            <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">

                                                                                <tbody><tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tiêu đề</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tiêu đề" onmouseover="hndMouseOver(2, 'Tiêu đề');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Tiêu đề">Đặt hàng</span>

                                                                                        </td>


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã hóa đơn</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--PotentialPopup-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tên Cơ hội">&nbsp;<a href=""><s:property value="takeOrder.mID"/></a>
                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Ngày đặt hàng</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Khách hàng thứ" onmouseover="hndMouseOver(1, 'Khách hàng thứ');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Khách hàng thứ"><s:property value="takeOrder.mTakeOrderDate"/></span>

                                                                                        </td>


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Ngày giao hàng</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->

                                                                                        <td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;<s:property value="takeOrder.mDeliveryDate"/></td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tên Khách hàng</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--QuotePopup-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tên Báo giá">&nbsp;
                                                                                            <a href=""><s:property value="takeOrder.mCustomerName"/></a>
                                                                                        </td>


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã khách hàng</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Nhập hàng" onmouseover="hndMouseOver(1, 'Nhập hàng');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Nhập hàng"><s:property value="takeOrder.mCustomerID"/></span>

                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Địa chỉ KH</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--ContactPopup-->
                                                                                        <!-- Ajax edit link not provided for contact - Reports To -->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tên Liên hệ">&nbsp;
                                                                                            <a href=""><s:property value="takeOrder.mCustomerAddress"/> </a>
                                                                                        </td>


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Số điện thoại</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Ngày liên quan" onmouseover="hndMouseOver(5, 'Ngày liên quan');" onmouseout="fnhide('crmspanid');">
                                                                                            &nbsp;&nbsp;<span id="dtlview_Ngày liên quan">
                                                                                                <s:property value="takeOrder.mPhoneNumber"/>
                                                                                            </span>

                                                                                        </td>

                                                                                    </tr>	
                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Địa chỉ giao hàng</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--ComboBox-->

                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Công ty vận chuyển" onmouseover="hndMouseOver(15, 'Công ty vận chuyển');" onmouseout="fnhide('crmspanid');">
                                                                                            <span id="dtlview_Công ty vận chuyển"><font color=""><s:property value="takeOrder.mDeliveryAddress"/></font></span>

                                                                                        </td>


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Hình thức vận chuyển</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Lý do chưa thực hiện" onmouseover="hndMouseOver(1, 'Lý do chưa thực hiện');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Lý do chưa thực hiện"><s:property value="takeOrder.mShippingVehicle"/></span>

                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thuế</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--ComboBox-->

                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tình trạng" onmouseover="hndMouseOver(15, 'Tình trạng');" onmouseout="fnhide('crmspanid');">
                                                                                            <span id="dtlview_Tình trạng"><font color=""><s:property value="takeOrder.mTax"/></font></span>

                                                                                        </td>


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Giảm giá (%)</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tiền hoa hồng" onmouseover="hndMouseOver(1, 'Tiền hoa hồng');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Tiền hoa hồng"><s:property value="takeOrder.mDiscount"/></span>

                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tiền trước thuế</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thuế hàng hóa" onmouseover="hndMouseOver(1, 'Thuế hàng hóa');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Thuế hàng hóa"><s:property value="getText('{0,number,#,##0.00}',{takeOrder.mBeforePrice})"/></span>

                                                                                        </td>


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tiền sau thuế</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--AccountPopup-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tên Khách hàng">&nbsp;
                                                                                            <a href=""><s:property value="getText('{0,number,#,##0.00}',{takeOrder.mAfterPrivate})"/></a>
                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Trạng thái đơn hàng</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--Assigned To-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Gán cho" onmouseover="hndMouseOver(53, 'Gán cho');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Gán cho">
                                                                                                <a href=""><s:property value="takeOrder.mOrderStatus"/></a>         
                                                                                                &nbsp;</span>

                                                                                        </td>


                                                                                        
                                                                                    </tr>	
                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Người tạo</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->

                                                                                        <td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;<s:property value="takeOrder.mCreater"/></td>

                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Ngày tạo</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->

                                                                                        <td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;<s:property value="takeOrder.mOrderEstablishDate"/></td>

                                                                                    </tr>	

                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Người sửa</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->

                                                                                        <td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;<s:property value="takeOrder.mEditer"/></td>

                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Ngày sửa</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->

                                                                                        <td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;<s:property value="takeOrder.mOrderEditDate"/></td>

                                                                                    </tr>
                                                                                </tbody>
                                                                            </table>
                                                                        </div> <!-- Line added by SAKTI on 10th Apr, 2008 -->
                                                                        <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
                                                                            <tbody><tr>
                                                                                    <td>&nbsp;</td>
                                                                                    <td>&nbsp;</td>
                                                                                    <td>&nbsp;</td>
                                                                                    <td align="right">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblThôngtinđịnhkỳ','aidThôngtinđịnhkỳ','themes/softed/images/');"><img id="aidThôngtinđịnhkỳ" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide"></a></div><b>&nbsp;Thông tin định kỳ</b></div></td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        <div style="width:auto;display:block;" id="tblThôngtinđịnhkỳ">
                                                                            <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">

                                                                                <tbody><tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Bật chức năng định kỳ</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--CheckBox--> 
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Bật chức năng định kỳ" onmouseover="hndMouseOver(56, 'Bật chức năng định kỳ');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Bật chức năng định kỳ">không&nbsp;</span>

                                                                                        </td>    


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mức độ thường xuyên</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--ComboBox-->

                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mức độ thường xuyên" onmouseover="hndMouseOver(16, 'Mức độ thường xuyên');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Mức độ thường xuyên"><font color=""></font></span>

                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thời gian bắt đầu</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thời gian bắt đầu" onmouseover="hndMouseOver(5, 'Thời gian bắt đầu');" onmouseout="fnhide('crmspanid');">
                                                                                            &nbsp;&nbsp;<span id="dtlview_Thời gian bắt đầu">
                                                                                                --
                                                                                            </span>

                                                                                        </td>



                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thời gian kết thúc</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thời gian kết thúc" onmouseover="hndMouseOver(5, 'Thời gian kết thúc');" onmouseout="fnhide('crmspanid');">
                                                                                            &nbsp;&nbsp;<span id="dtlview_Thời gian kết thúc">
                                                                                                --
                                                                                            </span>

                                                                                        </td>

                                                                                    </tr>	
                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thời gian thanh toán</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--ComboBox-->

                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thời gian thanh toán" onmouseover="hndMouseOver(16, 'Thời gian thanh toán');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Thời gian thanh toán"><font color=""></font></span>

                                                                                        </td>


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Trạng thái hóa đơn</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--ComboBox-->

                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Trạng thái hóa đơn" onmouseover="hndMouseOver(15, 'Trạng thái hóa đơn');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Trạng thái hóa đơn"><font color=""></font></span>

                                                                                        </td>
                                                                                    </tr>	

                                                                                </tbody></table>
                                                                        </div> <!-- Line added by SAKTI on 10th Apr, 2008 -->
                                                                        <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
                                                                            <tbody><tr>
                                                                                    <td>&nbsp;</td>
                                                                                    <td>&nbsp;</td>
                                                                                    <td>&nbsp;</td>
                                                                                    <td align="right">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblThôngtinđịachỉ','aidThôngtinđịachỉ','themes/softed/images/');"><img id="aidThôngtinđịachỉ" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide"></a></div><b>&nbsp;Thông tin địa chỉ</b></div></td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        <div style="width:auto;display:block;" id="tblThôngtinđịachỉ">
                                                                            <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">

                                                                                <tbody><tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Địa chỉ thanh toán</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextArea/Street-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Địa chỉ thanh toán" onmouseover="hndMouseOver(24, 'Địa chỉ thanh toán');" onmouseout="fnhide('crmspanid');">&nbsp;
                                                                                            <span id="dtlview_Địa chỉ thanh toán"><s:property value="takeOrder.mDeliveryAddress"/></span>

                                                                                        </td>


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Địa chỉ vận chuyển</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextArea/Street-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Địa chỉ vận chuyển" onmouseover="hndMouseOver(24, 'Địa chỉ vận chuyển');" onmouseout="fnhide('crmspanid');">&nbsp;
                                                                                            <span id="dtlview_Địa chỉ vận chuyển"><s:property value="takeOrder.mDeliveryAddress"/></span>

                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Hộp thư thanh toán</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Hộp thư thanh toán" onmouseover="hndMouseOver(1, 'Hộp thư thanh toán');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Hộp thư thanh toán"></span>

                                                                                        </td>


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Hộp thư vận chuyển</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Hộp thư vận chuyển" onmouseover="hndMouseOver(1, 'Hộp thư vận chuyển');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Hộp thư vận chuyển"></span>

                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thanh toán tại thành phố</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thanh toán tại thành phố" onmouseover="hndMouseOver(1, 'Thanh toán tại thành phố');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Thanh toán tại thành phố"></span>

                                                                                        </td>


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Vận chuyển tới thành phố</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Vận chuyển tới thành phố" onmouseover="hndMouseOver(1, 'Vận chuyển tới thành phố');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Vận chuyển tới thành phố"></span>

                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thanh toán tại Tỉnh/Bang</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thanh toán tại Tỉnh//Bang" onmouseover="hndMouseOver(1, 'Thanh toán tại Tỉnh/Bang');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Thanh toán tại Tỉnh//Bang"></span>

                                                                                        </td>


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Vận chuyển tới Tỉnh/Bang</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Vận chuyển tới Tỉnh//Bang" onmouseover="hndMouseOver(1, 'Vận chuyển tới Tỉnh/Bang');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Vận chuyển tới Tỉnh//Bang"></span>

                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã vùng thanh toán</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mã vùng thanh toán" onmouseover="hndMouseOver(1, 'Mã vùng thanh toán');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Mã vùng thanh toán"></span>

                                                                                        </td>


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã vùng vận chuyển</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mã vùng vận chuyển" onmouseover="hndMouseOver(1, 'Mã vùng vận chuyển');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Mã vùng vận chuyển"></span>

                                                                                        </td>
                                                                                    </tr>	

                                                                                </tbody></table>
                                                                        </div> <!-- Line added by SAKTI on 10th Apr, 2008 -->
                                                                        <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
                                                                            <tbody><tr>
                                                                                    <td>&nbsp;</td>
                                                                                    <td>&nbsp;</td>
                                                                                    <td>&nbsp;</td>
                                                                                    <td align="right">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblQuyềnhạnvàtráchnhiệm','aidQuyềnhạnvàtráchnhiệm','themes/softed/images/');"><img id="aidQuyềnhạnvàtráchnhiệm" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide"></a></div><b>&nbsp;Quyền hạn và trách nhiệm</b></div></td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        <div style="width:auto;display:block;" id="tblQuyềnhạnvàtráchnhiệm">
                                                                            <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">

                                                                                <tbody><tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Điều khoản</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextArea/Description-->
                                                                                        <!-- we will empty the value of ticket and faq comment -->
                                                                                        <!--  -->
                                                                                        <!-- -->
                                                                                        <td width="100%" colspan="3" class="dvtCellInfo" align="left" id="mouseArea_Điều khoản" onmouseover="hndMouseOver(19, 'Điều khoản');" onmouseout="fnhide('crmspanid');">&nbsp;
                                                                                            <span id="dtlview_Điều khoản">
<!--                                                                                                - Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.
                                                                                                <br>&nbsp;
                                                                                                <br>&nbsp; - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.-->
                                                                                            </span>

                                                                                        </td>
                                                                                    </tr>	

                                                                                </tbody></table>
                                                                        </div> <!-- Line added by SAKTI on 10th Apr, 2008 -->
                                                                        <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
                                                                            <tbody><tr>
                                                                                    <td>&nbsp;</td>
                                                                                    <td>&nbsp;</td>
                                                                                    <td>&nbsp;</td>
                                                                                    <td align="right">
                                                                                    </td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblThôngtinmôtả','aidThôngtinmôtả','themes/softed/images/');"><img id="aidThôngtinmôtả" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide"></a></div><b>&nbsp;Thông tin mô tả</b></div></td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        <div style="width:auto;display:block;" id="tblThôngtinmôtả">
                                                                            <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">

                                                                                <tbody><tr style="height:25px">


                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mô tả</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextArea/Description-->
                                                                                        <!-- we will empty the value of ticket and faq comment -->
                                                                                        <!--  -->
                                                                                        <!-- -->
                                                                                        <td width="100%" colspan="3" class="dvtCellInfo" align="left" id="mouseArea_Mô tả" onmouseover="hndMouseOver(19, 'Mô tả');" onmouseout="fnhide('crmspanid');">&nbsp;
                                                                                            <span id="dtlview_Mô tả">
                                                                                                <s:property value="takeOrder.mNote"/>
                                                                                            </span>

                                                                                        </td>
                                                                                    </tr>	

                                                                                </tbody></table>
                                                                        </div> <!-- Line added by SAKTI on 10th Apr, 2008 -->

                                                                        <!-- Entity information(blocks) display - ends -->

                                                                        <br>

                                                                        <!-- Product Details informations -->


                                                                        <table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" class="crmTable" id="proTab">
                                                                            <tbody><tr valign="top">
                                                                                    <td colspan="2" class="dvInnerHeader"><b>Chi tiết mặt hàng</b></td>
                                                                                    <td class="dvInnerHeader" align="center" colspan="2"><b>Tiền tệ : </b>Vietnam, Dong (₫)
                                                                                    </td>
                                                                                    <td class="dvInnerHeader" align="center" colspan="2"><b>Loại thuế : </b>Riêng
                                                                                    </td>
                                                                                </tr>
                                                                                <tr valign="top">
                                                                                    <td width="5%" class="lvtCol"><b>Dòng</b></td>
                                                                                    <td width="10%" class="lvtCol"><font color="red">*</font>
                                                                                        <b>Tên mặt hàng</b>
                                                                                    </td>
                                                                                    <td width="10%" class="lvtCol"><b>Mã hàng</b></td>
                                                                                    <td width="10%" class="lvtCol"><b>Khuyến mãi</b></td>

                                                                                    <td width="10%" class="lvtCol"><b>Số lượng</b></td>
                                                                                    
                                                                                    <td width="10%" class="lvtCol" align="right"><b>Đơn giá</b></td>
                                                                                    <td width="12%" nowrap="" class="lvtCol" align="right"><b>Tổng số</b></td>
                                                                                    <td width="13%" valign="top" class="lvtCol" align="right"><b>Thành tiền</b></td>
                                                                                </tr>
                                                                                
                                                                                <s:set  var="sum" value="0"/>
                                                                                <s:iterator value="detailTakeOrdersList" status="index">
                                                                                <tr valign="top">
                                                                                    <td class="crmTableRow small lineOnTop">
                                                                                        <s:property value="mLine"/>&nbsp; 				
                                                                                        <br>
                                                                                    </td>
                                                                                    <td class="crmTableRow small lineOnTop"><s:property value="mProductName"/></td>
                                                                                    <td class="crmTableRow small lineOnTop"><s:property value="mProductID"/></td>
                                                                                    <td class="crmTableRow small lineOnTop"><s:property value="mPromotionalProductMount"/> sản phẩm</td>
                                                                                    <td class="crmTableRow small lineOnTop"><s:property value="mNumber"/></td>
                                                                                    
                                                                                    <td class="crmTableRow small lineOnTop" align="right">
                                                                                        <table width="100%" border="0" cellpadding="5" cellspacing="0">
                                                                                            <tbody><tr>
                                                                                                    <td align="right"><s:property value="mBeforeOrderPrice"/></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td align="right">(-)&nbsp;
                                                                                                        <b><a href="javascript:;" onclick="alert('');
                                                                                                                                     ">Thuế : </a>
                                                                                                        </b>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td align="right" nowrap="">Giá sau thuế : </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td align="right" nowrap="">(+)&nbsp;<b><a href="javascript:;" onclick="alert('');">Chiết khấu(giảm giá) : </a></b></td>
                                                                                                </tr>
                                                                                            </tbody></table>
                                                                                    </td>
                                                                                    <td class="crmTableRow small lineOnTop" align="right">
                                                                                        <table width="100%" border="0" cellpadding="5" cellspacing="0">
                                                                                            <tbody><tr><td align="right"><s:property value="mBeforeOrderPrice * mNumber"/></td></tr>
                                                                                                <tr><td align="right"><s:property value="mTax"/></td></tr>
                                                                                                <tr><td align="right" nowrap=""><s:property value="mAfterOrderPrice * mNumber"/></td></tr>
                                                                                                <tr><td align="right" nowrap=""><s:property value="mDiscount"/></td></tr>		   
                                                                                            </tbody></table>
                                                                                    </td>
                                                                                    <td class="crmTableRow small lineOnTop" valign="bottom" align="right"><s:property value="getText('{0,number,#,##0.00}',{mPriceTotal})"/></td>
                                                                                    <s:set  var="sum" value="%{#sum + mPriceTotal}"/>
                                                                                </tr>
                                                                                </s:iterator>
                                                                            </tbody>
                                                                        </table>
                                                                        <table width="100%" border="0" cellspacing="0" cellpadding="5" class="crmTable">
                                                                            <tbody>
                                                                                <tr>
                                                                                    <td width="88%" class="crmTableRow small" align="right"><b>Cộng tiền hàng</b>
                                                                                    </td>
                                                                                    <td width="12%" class="crmTableRow small" align="right"><b><s:property value="getText('{0,number,#,##0.00}',{#sum})"/></b></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" class="crmTableRow small lineOnTop">(-)&nbsp;<b><a href="javascript:;" onclick="alert('Giảm giá = <s:property value="takeOrder.mDiscount"/> %');">Chiết khấu (%)</a></b></td>
                                                                                    <td align="right" class="crmTableRow small lineOnTop"><s:property value="takeOrder.mDiscount"/></td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" class="crmTableRow small">(+)&nbsp;<b>Chi phí vận chuyển và đóng gói</b></td>
                                                                                    <td align="right" class="crmTableRow small">0.000</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" class="crmTableRow small">(+)&nbsp;<b><a href="javascript:;" onclick="alert('')">Thuế vận chuyển và đóng gói</a></b></td>
                                                                                    <td align="right" class="crmTableRow small">0</td>
                                                                                </tr>
                                                                                <tr>
                                                                                    <td align="right" class="crmTableRow small">&nbsp;<b>Điều chỉnh thêm bớt</b></td>
                                                                                    <td align="right" class="crmTableRow small">0.000</td>
                                                                                </tr>
                                                                                
                                                                                <tr>
                                                                                    <td align="right" class="crmTableRow small lineOnTop"><b>Tổng tiền thanh toán</b></td>
                                                                                    <td align="right" class="crmTableRow small lineOnTop"><s:property value="getText('{0,number,#,##0.00}',{takeOrder.mAfterPrivate})"/></td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>

                                                                    </td>
                                                                    <!-- The following table is used to display the buttons -->
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                                            <tbody><tr>
                                                                    <td style="padding:10px;border-right:1px dashed #CCCCCC;" width="80%">

                                                                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                                                            <tbody><tr>
                                                                                    <td style="border-right:1px dashed #CCCCCC;" width="100%">
                                                                                        <script language="JavaScript" type="text/javascript" src="modules/PriceBooks/PriceBooks.js"></script>
                                                                                        <script language="JavaScript" type="text/javascript" src="include/js/ListView.js"></script>

                                                                                        <script>
                                                                                            function editProductListPrice(id,pbid,price)
                                                                                            {
                                                                                            $("status").style.display="inline";
                                                                                            new Ajax.Request(
                                                                                            'index.php',
                                                                                            {queue: {position: 'end', scope: 'command'},
                                                                                            method: 'post',
                                                                                            postBody: 'action=ProductsAjax&file=EditListPrice&return_action=DetailView&return_module=PriceBooks&module=Products&record='+id+'&pricebook_id='+pbid+'&listprice='+price,
                                                                                            onComplete: function(response) {
                                                                                            $("status").style.display="none";
                                                                                            $("editlistprice").innerHTML= response.responseText;
                                                                                            }
                                                                                            }
                                                                                            );
                                                                                            }

                                                                                            function gotoUpdateListPrice(id,pbid,proid)
                                                                                            {
                                                                                            $("status").style.display="inline";
                                                                                            $("roleLay").style.display = "none";
                                                                                            var listprice=$("list_price").value;
                                                                                            new Ajax.Request(
                                                                                            'index.php',
                                                                                            {queue: {position: 'end', scope: 'command'},
                                                                                            method: 'post',
                                                                                            postBody: 'module=Products&action=ProductsAjax&file=UpdateListPrice&ajax=true&return_action=CallRelatedList&return_module=PriceBooks&record='+id+'&pricebook_id='+pbid+'&product_id='+proid+'&list_price='+listprice,
                                                                                            onComplete: function(response) {
                                                                                            $("status").style.display="none";
                                                                                            $("RLContents").innerHTML= response.responseText;
                                                                                            }
                                                                                            }
                                                                                            );
                                                                                            }


                                                                                        </script>

                                                                                        <!-- Contents -->
                                                                                        <div id="editlistprice" style="position:absolute;width:300px;"></div>
                                                                                        <!-- PUBLIC CONTENTS STARTS-->

                                                                                        <!-- Account details tabs -->
                                                                                    </td></tr><tr>
                                                                                    <td valign="top" align="left">
                                                                                        <div class="small" style="padding:5px">
                                                                                            <table border="0" cellspacing="0" cellpadding="3" width="100%">
                                                                                                <tbody><tr>
                                                                                                        <td valign="top" align="left">
                                                                                                            <!-- content cache -->
                                                                                                            <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                                                                                                <tbody><tr>
                                                                                                                        <td>
                                                                                                                            <!-- General details -->

                                                                                                                            <form border="0" action="index.php" method="post" name="form" id="form">
                                                                                                                                <input type="hidden" name="module">
                                                                                                                                <input type="hidden" name="mode">
                                                                                                                                <input type="hidden" name="return_module" id="return_module" value="SalesOrder">
                                                                                                                                <input type="hidden" name="RLreturn_module" id="RLreturn_module" value="SalesOrder">
                                                                                                                                <input type="hidden" name="allselectedboxes" id="allselectedboxes">
                                                                                                                                <input type="hidden" name="return_action" value="DetailView">
                                                                                                                                <input type="hidden" name="return_id" value="201">
                                                                                                                                <input type="hidden" name="parent_id" id="parent_id" value="201">
                                                                                                                                <input type="hidden" name="RLparent_id" id="RLparent_id" value="201">
                                                                                                                                <input type="hidden" name="parenttab" id="parenttab" value="Inventory">
                                                                                                                                <input type="hidden" name="action">
                                                                                                                                <input type="hidden" name="salesorderid" value="201">
                                                                                                                                <div id="RLContents">
                                                                                                                                    <script type="text/javascript" src="include/js/Mail.js"></script>

                                                                                                                                    <br>
                                                                                                                                </div>
                                                                                                                            </form>

                                                                                                                        </td>
                                                                                                                    </tr>
                                                                                                                </tbody></table>
                                                                                                        </td>
                                                                                                    </tr>
                                                                                                </tbody></table>
                                                                                        </div>
                                                                                    </td>
                                                                                </tr>
                                                                                <!-- PUBLIC CONTENTS STOPS-->

                                                                            <script>
                                                                                function OpenWindow(url)
                                                                                {
                                                                                openPopUp('xAttachFile',this,url,'attachfileWin',380,375,'menubar=no,toolbar=no,location=no,status=no,resizable=no');	
                                                                                }
                                                                            </script>
                                                            </tbody></table>

                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <!-- Inventory Actions - ends -->	
                                    </form></td><td width="22%" valign="top" style="padding:10px;">
                                    <!-- right side InventoryActions -->

                                    <!-- Avoid this actions display for PriceBook module-->


                                    <!-- Added this file to display the Inventory Actions based on the Inventory Modules -->
                                    <br><table width="100%" border="0" cellpadding="5" cellspacing="0">
                                        <tbody><tr>
                                                <td>&nbsp;</td>
                                            </tr>

                                            <!-- This if condition is added to avoid display Tools heading because now there is no options in Tools. -->
                                            <tr>
                                                <td align="left" class="genHeaderSmall">Hoạt động</td>
                                            </tr>



                                            <!-- Module based actions starts -->
                                            <!-- SO Actions starts -->
                                            <tr>
                                                <td align="left" style="padding-left:10px;">
                                                    <a href="" class="webMnu"><img src="themes/images/actionGenerateInvoice.gif" hspace="5" align="absmiddle" border="0"></a>
                                                    <a href="" class="webMnu">Tạo Hóa đơn</a> 
                                                </td>
                                            </tr>
                                            <!--
                                            <tr>
                                                 <td align="left" style="padding-left:10px;">
                                                         <img src="themes/images/pointer.gif" hspace="5" align="absmiddle"/>
                                                         <a href="#" class="webMnu">List Linked Quotes</a> 
                                                 </td>
                                            </tr>
                                            <tr>
                                                 <td align="left" style="padding-left:10px;">
                                                         <img src="themes/images/pointer.gif" hspace="5" align="absmiddle"/>
                                                         <a href="#" class="webMnu">List Linked Invoices</a> 
                                                 </td>
                                            </tr>
                                            -->
                                            <!-- SO Actions ends -->


                                            <!-- Module based actions ends -->



                                            <tr><td>

                                                </td></tr>
                                            <!-- Action links END -->



                                            <!-- Following condition is added to avoid the Tools section in Products and Vendors because we are not providing the Print and Email Now links throughout all the modules. when we provide these links we will remove this if condition -->

                                            <tr>
                                                <td align="left">
                                                    <span class="genHeaderSmall">Công cụ</span><br> 
                                                </td>
                                            </tr>




                                            <!-- To display the Export To PDF link for PO, SO, Quotes and Invoice - starts -->


                                            <tr>
                                                <td align="left" style="padding-left:10px;">
                                                    <a href="" class="webMnu"><img src="themes/images/actionGeneratePDF.gif" hspace="5" align="absmiddle" border="0"></a>
                                                    <a href="" class="webMnu">Xuất ra Tập tin PDF</a>
                                                </td>
                                            </tr>

                                            <!-- Added to give link to  send Invoice PDF through mail -->
<!--                                            <tr>
                                                <td align="left" style="padding-left:10px;">
                                                    <a href="" class="webMnu"><img src="themes/images/PDFMail.gif" hspace="5" align="absmiddle" border="0"></a>
                                                    <a href="" class="webMnu">Gửi thư với PDF</a> 
                                                </td>
                                            </tr>-->
                                            <!-- To display the Export To PDF link for PO, SO, Quotes and Invoice - ends -->



                                            <!-- The following links are common to all the inventory modules -->
                                            <!--   <tr>
                                                    <td align="left" style="padding-left:10px;">
                                                            <img src="themes/images/pointer.gif" hspace="5" align="absmiddle"/>
                                                            <a href="#" class="webMnu">Print</a> 
                                                    </td>
                                               </tr>
                                               <tr>
                                                    <td align="left" style="padding-left:10px;">
                                                            <img src="themes/images/pointer.gif" hspace="5" align="absmiddle"/>
                                                            <a href="#" class="webMnu">Email Now </a> 
                                                    </td>
                                               </tr>
                                            -->

                                            <!-- Above if condition is added to avoid the Tools section in Products and Vendors because we are not providing the Print and Email Now links throughout all the modules. when we provide these links we will remove this if condition -->




                                        </tbody></table>


                                    <script type="text/javascript">
                                        function sendpdf_submit()
                                        {
                                        // Submit the form to get the attachment ready for submission
                                        document.DetailView.submit();


                                        OpenCompose('201','SalesOrder');

                                        }
                                    </script>



                                    <br>
                                    <!-- To display the Tag Clouds -->
                                    <div>

                                    </div>
                                </td>
                            </tr>

                        </tbody></table>
            </td>
        </tr>
        <tr>
            <td>						
                <table border="0" cellspacing="0" cellpadding="3" width="100%" class="small">
                    <tbody><tr>
                            <td class="dvtTabCacheBottom" style="width:10px" nowrap="">&nbsp;</td>

                            <td class="dvtSelectedCellBottom" align="center" nowrap="">Đặt hàng Thông tin</td>	
                            <td class="dvtTabCacheBottom" style="width:10px">&nbsp;</td>
                            <td class="dvtTabCacheBottom" align="right" style="width:100%">
                                <input title="Sửa [Alt+E]" accesskey="E" class="crmbutton small edit" onclick="
                                    javacript:window.location.href= 'take-order-edit?id_tod=<s:property value="takeOrder.mID"/>'
//                                    DetailView.return_module.value = 'SalesOrder';
//                                    DetailView.return_action.value = 'DetailView';
//                                    DetailView.return_id.value = '201';
//                                    DetailView.module.value = 'SalesOrder';
//                                    submitFormForAction('DetailView', 'EditView');
                                    " type="button" name="Edit" value="&nbsp;Sửa&nbsp;">&nbsp;
<!--                                <input title="Sao chép [Alt+U]" accesskey="U" class="crmbutton small create" onclick="DetailView.return_module.value = 'SalesOrder';
                                        DetailView.return_action.value = 'DetailView';
                                        DetailView.isDuplicate.value = 'true';
                                        DetailView.module.value = 'SalesOrder';
                                        submitFormForAction('DetailView', 'EditView');" type="button" name="Duplicate" value="Sao chép">&nbsp;-->
                                <input title="Xóa [Alt+D]" accesskey="D" class="crmbutton small delete" onclick="DetailView.return_module.value = 'SalesOrder';
                                        DetailView.return_action.value = 'index';
                                        var confirmMsg = 'Bạn muốn xóa bản ghi này chứ?';
                                        submitFormForActionWithConfirmation('DetailView', 'Delete', confirmMsg);" type="button" name="Delete" value="Xóa">&nbsp;


                            </td>
                        </tr>
                    </tbody></table>
            </td>
        </tr>
    </tbody></table>
<!-- PUBLIC CONTENTS STOPS-->
</div></td>
<td align="right" valign="top">
    <img src="themes/softed/images/showPanelTopRight.gif">
</td>
</tr>
</tbody></table>

</td>
</tr>
</tbody></table>
<!-- Contents - end -->

<script>
    function getTagCloud()
    {
    new Ajax.Request(
    'index.php',
    {queue: {position: 'end', scope: 'command'},
    method: 'post',
    postBody: 'module=SalesOrder&action=SalesOrderAjax&file=TagCloud&ajxaction=GETTAGCLOUD&recordid=201',
    onComplete: function(response) {
    $("tagfields").innerHTML=response.responseText;
    $("txtbox_tagfields").value ='';
    }
    }
    );
    }
    getTagCloud();
</script>




<script language="javascript">
    var fieldname = new Array('salesorder_no','subject','potential_id','customerno','quote_id','vtiger_purchaseorder','contact_id','duedate','carrier','pending','sostatus','txtAdjustment','salescommission','exciseduty','hdnGrandTotal','hdnSubTotal','hdnTaxType','hdnDiscountPercent','hdnDiscountAmount','hdnS_H_Amount','account_id','assigned_user_id','currency_id','conversion_rate','bill_street','ship_street','bill_city','ship_city','bill_state','ship_state','bill_code','ship_code','bill_country','ship_country','bill_pobox','ship_pobox','description','terms_conditions','enable_recurring','recurring_frequency','start_period','end_period','payment_duration','invoicestatus');
    var fieldlabel = new Array('Mã Đặt hàng','Tiêu đề','Tên Cơ hội','Khách hàng thứ','Tên Báo giá','Nhập hàng','Tên Liên hệ','Ngày liên quan','Công ty vận chuyển','Lý do chưa thực hiện','Tình trạng','Điều chỉnh','Tiền hoa hồng','Thuế hàng hóa','Tổng cộng','Cộng tiền hàng','Kiểu thuế','Phần trăm giảm trừ','Số tiền giảm trừ','S&amp;H Amount','Tên Khách hàng','Gán cho','Currency','Conversion Rate','Địa chỉ thanh toán','Địa chỉ vận chuyển','Thanh toán tại thành phố','Vận chuyển tới thành phố','Thanh toán tại Tỉnh/Bang','Vận chuyển tới Tỉnh/Bang','Mã vùng thanh toán','Mã vùng vận chuyển','Thanh toán tại quốc gia','Vận chuyển tới quốc gia','Hộp thư thanh toán','Hộp thư vận chuyển','Mô tả','Terms &amp; Conditions','Bật chức năng định kỳ','Mức độ thường xuyên','Thời gian bắt đầu','Thời gian kết thúc','Thời gian thanh toán','Trạng thái hóa đơn');
    var fielddatatype = new Array('V~O','V~M','I~O','V~O','I~O','V~O','I~O','D~O','V~O','V~O','V~M','NN~O','N~O','N~O','N~O','N~O','V~O','N~O','N~O','N~O','I~M','V~M','I~O','N~O','V~M','V~M','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','C~O','V~O','D~O','D~O~OTH~G~start_period~Start Period','V~O','V~M');
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
<script language="javascript">
    function LogOut(e)
    {
    var nav4 = window.Event ? true : false;
    var iX,iY;
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
    if (iX <= 30 && iY < 0 )
    {
    w=window.open("index.php?action=Logout&module=Users");
    w.close();
    }
    }
    //window.onunload=LogOut
</script>
<script language="JavaScript" type="text/javascript" src="include/js/popup.js"></script><br><br><br><table border="0" cellspacing="0" cellpadding="5" width="100%" class="settingsSelectedUI"><tbody><tr><td class="small" align="left"><span style="color: rgb(153, 153, 153);">HOSCO-CRM</span></td><td class="small" align="right"><span style="color: rgb(153, 153, 153);">© 2014 <a href="http://www.hosgroup.com.vn" target="_blank">hosgroup.com.vn</a></span> </td></tr></tbody></table>		<script>
    var userDateFormat = "dd-mm-yyyy";
    var default_charset = "UTF-8";
</script>
<script type="text/javascript">if(typeof(ActivityReminderCallback) != 'undefined') window.setTimeout(function(){
    ActivityReminderCallback();
    },45000);</script><!--end body panes-->





</body></html>
