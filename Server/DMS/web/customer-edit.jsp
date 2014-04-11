<%-- 
    Document   : edit-customer
    Created on : Apr 10, 2014, 12:33:32 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<html>
    <head>
        <title>admin - Marketing - Khách hàng - Phần mềm quản lý HOSCO-MANAGEMENT</title>
        <link REL="SHORTCUT ICON" HREF="themes/images/vtigercrm_icon.ico">	
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
                                                            <td style="padding-right:0px;padding-left:10px;"><a href="new-customer"><img src="themes/softed/images/btnL3Add.gif" alt="Tạo Khách hàng..." title="Tạo Khách hàng..." border="0"></a></td>

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

<!--CUSTOMER-->
<table border=0 cellspacing=0 cellpadding=0 width=98% align=center>
    <tr>
        <td valign=top><img src="themes/softed/images/showPanelTopLeft.gif"></td>

        <td class="showPanelBg" valign=top width=100%>
            <div class="small" style="padding:20px">



                <span class="lvtHeaderText"><font color="purple">[ <s:property value="customer.mMaDoiTuong"/> ] </font><s:property value="customer.mDoiTuong"/> - Sửa Thông tin Khách hàng </span> <br>
                Cập nhật 160 ngày trước (01 Tháng 12 2011)	 

                <hr noshade size=1>
                <br> 


                <form name="EditView" method="POST" action="update-customer" id="sub_form" >
                    <s:push value="customer" >
                        <input type="hidden" name="customer.mStt" value="<s:property value="customer.mStt"/>">
                        <input type="hidden" name="customer.mXCoordinates" value="<s:property value="customer.mXCoordinates"/>">
                        <input type="hidden" name="customer.mYCoordinates" value="<s:property value="customer.mYCoordinates"/>">
                    
                    <table border=0 cellspacing=0 cellpadding=0 width=95% align=center>
                        <tr>
                            <td>
                                <table border=0 cellspacing=0 cellpadding=3 width=100% class="small">
                                    <tr>
                                        <td class="dvtTabCache" style="width:10px" nowrap>&nbsp;</td>
                                        <td class="dvtSelectedCell" align=center nowrap> Khách hàng Thông tin</td>
                                        <td class="dvtTabCache" style="width:10px">&nbsp;</td>
                                        <td class="dvtTabCache" style="width:100%">&nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr>
                            <td valign=top align=left >
                                <table border=0 cellspacing=0 cellpadding=3 width=100% class="dvtContentSpace">
                                    <tr>

                                        <td align=left>

                                            <table border=0 cellspacing=0 cellpadding=0 width=100%>
                                                <tr>
                                                    <td id ="autocom"></td>
                                                </tr>
                                                <tr>
                                                    <td style="padding:10px">
                                                        <!-- General details -->
                                                        <table border=0 cellspacing=0 cellpadding=0 width=100% class="small">
                                                            <tr>
                                                                <td  colspan=4 style="padding:5px">
                                                                    <div align="center">
                                                                        <input title="Lưu [Alt+S]" accessKey="S" class="crmbutton small save" onclick="
                                                                                document.getElementById('sub_form').submit();
                                                                                
//                                                                                this.form.action.value = 'Save';
//                                                                                displaydeleted();
//                                                                                if (formValidate()) {
//                                                                                    if (AjaxDuplicateValidate('Accounts', 'accountname', this.form)) {
//                                                                                        AddressSync(this.form, 137);
//                                                                                    }
//                                                                                }
                                                                                    "  type="button" name="button" value="  Lưu  " style="width:70px" >
                                                                        <input title="Hủy bỏ [Alt+X]" accessKey="X" class="crmbutton small cancel" onclick="window.history.back()" type="button" name="button" value="Hủy bỏ  " style="width:70px">
                                                                    </div>
                                                                </td>
                                                            </tr>

                                                            <!-- included to handle the edit fields based on ui types -->
                                                            <!-- This is added to display the existing comments -->
                                                            <tr>
                                                                <td colspan=4 class="detailedViewHeader">
                                                                    <b>Thông tin Khách hàng</b>
                                                                </td>
                                                            </tr>

                                                            <!-- Handle the ui types display -->


                                                            <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                            <tr style="height:25px">

                                                                <td width=20% class="dvtCellLabel" align=right>
                                                                    <font color="red">*</font>Tên Khách hàng 			
                                                                </td>
                                                                <td width=30% align=left class="dvtCellInfo">
                                                                    <input type="text" name="customer.mDoiTuong" value="<s:property value="mDoiTuong"/>" tabindex=""  tabindex="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'">
                                                                </td>

                                                                <!-- Non Editable field, only configured value will be loaded -->
                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Mã số Khách hàng </td>
                                                                <td width=30% align=left class="dvtCellInfo">
                                                                    <input readonly type="text" tabindex="" name="customer.mMaDoiTuong" value="<s:property value="mMaDoiTuong"/>" id ="account_no"    class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'">
                                                                </td>
                                                            </tr>
                                                            <tr style="height:25px">

                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                    <font color="red"></font>Website 			
                                                                </td>
                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                    &nbsp;&nbsp;http://
                                                                    <input style="width:74%;" class = 'detailedViewTextBox' type="text" tabindex="" name="website" style="border:1px solid #bababa;" size="27" onFocus="this.className = 'detailedViewTextBoxOn'"onBlur="this.className = 'detailedViewTextBox'" onkeyup="validateUrl('website');" value="">
                                                                </td>

                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Điện thoại </td>

                                                                <td width=30% align=left class="dvtCellInfo">
                                                                    <input type="text" tabindex="" name="customer.mDienThoai" id ="phone" value="<s:property value="mDienThoai"/>" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'">
                                                                </td>
                                                            </tr>
                                                            <tr style="height:25px">

                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Mã chứng khoán </td>

                                                                <td width=30% align=left class="dvtCellInfo">
                                                                    <input type="text" name="tickersymbol" tabindex="" id ="tickersymbol" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn';" onBlur="this.className = 'detailedViewTextBox';
                                                                            sensex_info()">
                                                                    <span id="vtbusy_info" style="display:none;">
                                                                        <img src="themes/images/vtbusy.gif" border="0"></span>
                                                                </td>

                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Fax </td>

                                                                <td width=30% align=left class="dvtCellInfo">
                                                                    <input type="text" tabindex="" name="fax" id ="fax" value="<s:property value="mFax"/>" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'">
                                                                </td>
                                                            </tr>
                                                            <tr style="height:25px">

                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                    <font color="red"></font>Thành viên của 			
                                                                </td>
                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                    <input readonly name="account_name" style="border:1px solid #bababa;" type="text" value="">
                                                                    <input name="account_id" type="hidden" value="0">&nbsp;<img tabindex="" src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" LANGUAGE=javascript onclick='return window.open("");' align="absmiddle" style='cursor:hand;cursor:pointer'>&nbsp;
                                                                    <input type="image" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" LANGUAGE=javascript onClick="this.form.account_id.value = '';
                                                                            this.form.account_name.value = '';
                                                                            return false;" align="absmiddle" style='cursor:hand;cursor:pointer'>
                                                                </td>

                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Điện thoại khác </td>

                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="otherphone" id ="otherphone" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                            </tr>
                                                            <tr style="height:25px">

                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Số nhân viên </td>

                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="employees" id ="employees" value="<s:property value="mMaNhanVien"/>" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>

                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Email </td>

                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="email1" id ="email1" value="<s:property value=""/>" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                            </tr>
                                                            <tr style="height:25px">
                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Email khác </td>
                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="email2" id ="email2" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Người sở hữu </td>
                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="ownership" id ="ownership" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                            </tr>
                                                            <tr style="height:25px">

                                                                <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                    <font color="red"></font>
                                                                    Ngành nghề 			</td>
                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                    <select name="industry" tabindex="" class="small">
                                                                        <option value="--None--" >
                                                                            --Chưa chọn--
                                                                        </option>
                                                                        <option value="Apparel" >
                                                                            Shop quần áo
                                                                        </option>
                                                                        <option value="Banking" >
                                                                            Shop giầy dép
                                                                        </option>
                                                                        <option value="Biotechnology" >
                                                                            Siêu thị mini – Bách hóa
                                                                        </option>
                                                                        <option value="Chemicals" >
                                                                            Hiệu thuốc
                                                                        </option>
                                                                        <option value="Communications" >
                                                                            Cửa hàng điện thoại
                                                                        </option>
                                                                        <option value="Construction" >
                                                                            Đồ điện tử, điện dân dụng
                                                                        </option>
                                                                        <option value="Hieu Vang" >
                                                                            Hieu Vang
                                                                        </option>
                                                                        <option value="Education" >
                                                                            Trường học – Giáo dục
                                                                        </option>
                                                                        <option value="Finance" >
                                                                            Ngân hàng - Tài chính
                                                                        </option>
                                                                        <option value="Government" >
                                                                            Chính phủ
                                                                        </option>
                                                                        <option value="Hospitality" >
                                                                            Bệnh viện – TT Y tế
                                                                        </option>
                                                                        <option value="Insurance" >
                                                                            Bảo hiểm
                                                                        </option>
                                                                        <option value="Manufacturing" >
                                                                            Sản xuất
                                                                        </option>
                                                                        <option value="Transportation" >
                                                                            Vận tải
                                                                        </option>
                                                                        <option value="Other" >
                                                                            Khác
                                                                        </option>
                                                                        <option value="Không thể truy cập" selected>
                                                                            Không thể truy cập
                                                                        </option>
                                                                    </select>
                                                                </td>


                                                                <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                    <font color="red"></font>
                                                                    Đánh giá 			
                                                                </td>
                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                    <select name="rating" tabindex="" class="small">
                                                                        <option value="--None--" >
                                                                            --Chưa chọn--
                                                                        </option>
                                                                        <option value="Acquired" selected>
                                                                            Đạt kết quả
                                                                        </option>
                                                                        <option value="Active" >
                                                                            Hoạt động
                                                                        </option>
                                                                        <option value="Market Failed" >
                                                                            Thất bại
                                                                        </option>
                                                                        <option value="Project Cancelled" >
                                                                            Hủy bỏ
                                                                        </option>
                                                                        <option value="Shutdown" >
                                                                            Ngừng hoạt động
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr style="height:25px">

                                                                <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                    <font color="red"></font>
                                                                    Loại 			</td>
                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                    <select name="accounttype" tabindex="" class="small">
                                                                        <option value="--None--" >
                                                                            --Chưa chọn--
                                                                        </option>
                                                                        <option value="Analyst" >
                                                                            Nhà phân tích
                                                                        </option>
                                                                        <option value="Competitor" >
                                                                            Đối thủ
                                                                        </option>
                                                                        <option value="Customer" selected>
                                                                            Khách hàng
                                                                        </option>
                                                                        <option value="Integrator" >
                                                                            Người liên kết
                                                                        </option>
                                                                        <option value="Investor" >
                                                                            Nhà đầu tư
                                                                        </option>
                                                                        <option value="Partner" >
                                                                            Đối tác
                                                                        </option>
                                                                        <option value="Press" >
                                                                            Báo chí
                                                                        </option>
                                                                        <option value="Prospect" >
                                                                            Triển vọng
                                                                        </option>
                                                                        <option value="Reseller" >
                                                                            Đại lý bán hàng
                                                                        </option>
                                                                        <option value="Other" >
                                                                            Khác
                                                                        </option>
                                                                    </select>
                                                                </td>

                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Mã ngành </td>

                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="siccode" id ="siccode" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                            </tr>
                                                            <tr style="height:25px">

                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                    <font color="red"></font>Từ chối email 			
                                                                </td>

                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                    <input name="emailoptout" tabindex="" type="checkbox" >
                                                                </td>

                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                    <font color="red"></font>Doanh thu hàng năm: (₫) 			
                                                                </td>
                                                                <td width="30%" align=left class="dvtCellInfo">				
                                                                    <input name="annual_revenue" tabindex="" type="text" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"  value="0">
                                                                </td>

                                                            </tr>
                                                            <tr style="height:25px">

                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                    <font color="red">*</font>Được gán cho 			
                                                                </td>
                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                    <input type="radio" tabindex="" name="assigntype" checked value="U" onclick="toggleAssignType(this.value)" >&nbsp;Người dùng
                                                                    <input type="radio" name="assigntype"  value="T" onclick="toggleAssignType(this.value)">&nbsp;Nhóm
                                                                    <span id="assign_user" style="display:block">
                                                                        <select name="customer.mMaNhanVien" class="small" >
                                                                            <s:iterator value="staffsList" status="index">
                                                                                <s:if test="staffsList.get(#index.index) == customer.getmMaNhanVien()">
                                                                                    <option value="<s:property value="staffsList.get(#index.index)"/>" selected><s:property value="staffsList.get(#index.index)"/></option>
                                                                                </s:if>
                                                                                <s:else>
                                                                                    <option value="<s:property value="staffsList.get(#index.index)"/>" ><s:property value="staffsList.get(#index.index)"/></option>
                                                                                </s:else>
                                                                            </s:iterator>
                                                                            
                                                                        </select>
                                                                    </span>

                                                                    <span id="assign_team" style="display:none">
                                                                        <select name="assigned_group_id" class="small">';
                                                                            <option value="2" >Đội sales</option>
                                                                            <option value="4" >Nh&oacute;m hỗ trợ</option>
                                                                            <option value="7" >Nh&oacute;m kỹ thuật</option>
                                                                            <option value="3" >Nh&oacute;m Marketing</option>
                                                                        </select>
                                                                    </span>
                                                                </td>

                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                    <font color="red"></font>Thông báo khi dữ liệu này thay đổi 			
                                                                </td>
                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                    <input name="notify_owner" type="checkbox" tabindex="" checked>
                                                                </td>
                                                            </tr>
                                                            <tr style="height:25px">

                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                    <font color="red"></font>Ngày sinh 			
                                                                </td>
                                                                <td width="30%" align=left class="dvtCellInfo">

                                                                    <input name="cf_607" tabindex="" id="jscal_field_cf_607" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="">
                                                                    <img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_cf_607">

                                                                    <br><font size=1><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>

                                                                    <script type="text/javascript" id='massedit_calendar_cf_607'>
                                                                        Calendar.setup({
                                                                            inputField: "jscal_field_cf_607", ifFormat: "%d-%m-%Y", showsTime: false, button: "jscal_trigger_cf_607", singleClick: true, step: 1
                                                                        })
                                                                    </script>

                                                                </td>

                                                                <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                    <font color="red"></font>
                                                                    Loại Sản Phẩm 			</td>
                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                    <select name="cf_638" tabindex="" class="small">
                                                                        <option value="CRM" >
                                                                            CRM
                                                                        </option>
                                                                        <option value="BMS" >
                                                                            BMS
                                                                        </option>
                                                                        <option value="eDOC" >
                                                                            eDOC
                                                                        </option>
                                                                        <option value="HRM" >
                                                                            HRM
                                                                        </option>
                                                                        <option value="SLL" >
                                                                            SLL
                                                                        </option>
                                                                    </select>
                                                                </td>
                                                            </tr>
                                                            <tr style="height:25px">

                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                    <font color="red"></font>Nhu cầu gửi đĩa 			
                                                                </td>

                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                    <input name="cf_639" tabindex="" type="checkbox" >
                                                                </td>

                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                    <font color="red"></font>Nhu cầu đại lý 			
                                                                </td>

                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                    <input name="cf_640" tabindex="" type="checkbox" >
                                                                </td>
                                                            </tr>

                                                            <!-- This is added to display the existing comments -->

                                                            <tr>
                                                                <td colspan=2 class="detailedViewHeader">
                                                                    <b>Thông tin địa chỉ</b></td>
                                                                <td class="detailedViewHeader">
                                                                    <input name="cpy" onclick="return copyAddressLeft(EditView)" type="radio"><b>Sao chép địa chỉ vận chuyển</b></td>
                                                                <td class="detailedViewHeader">
                                                                    <input name="cpy" onclick="return copyAddressRight(EditView)" type="radio"><b>Sao chép địa chỉ thanh toán</b></td>
                                                                </td>
                                                            </tr>

                                                            <!-- Handle the ui types display -->
                                                            <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                            <tr style="height:25px">

                                                                <td width=20% class="dvtCellLabel" align=right>
                                                                    <font color="red"></font>
                                                                    Địa chỉ thanh toán 			</td>
                                                                <td width=30% align=left class="dvtCellInfo">
                                                                    <textarea value="<s:property value="mDiaChi"/>" name="customer.mDiaChi" tabindex="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'" rows=2></textarea>
                                                                </td>

                                                                <td width=20% class="dvtCellLabel" align=right>
                                                                    <font color="red"></font>
                                                                    Địa chỉ vận chuyển 			</td>
                                                                <td width=30% align=left class="dvtCellInfo">
                                                                    <textarea value="" name="ship_street" tabindex="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'" rows=2></textarea>
                                                                </td>
                                                            </tr>
                                                            <tr style="height:25px">
                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Hộp thư thanh toán </td>
                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="bill_pobox" id ="bill_pobox" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Hộp thư vận chuyển </td>
                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="ship_pobox" id ="ship_pobox" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                            </tr>
                                                            <tr style="height:25px">
                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Thanh toán tại thành phố </td>
                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="bill_city" id ="bill_city" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Vận chuyển tới thành phố </td>
                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="ship_city" id ="ship_city" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                            </tr>
                                                            <tr style="height:25px">
                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Thanh toán tại Tỉnh/Bang </td>
                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="bill_state" id ="bill_state" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Vận chuyển tới Tỉnh/Bang </td>
                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="ship_state" id ="ship_state" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                            </tr>
                                                            <tr style="height:25px">
                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Mã vùng thanh toán </td>
                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="bill_code" id ="bill_code" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Mã vùng vận chuyển </td>
                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="ship_code" id ="ship_code" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                            </tr>
                                                            <tr style="height:25px">
                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Thanh toán tại quốc gia </td>
                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="bill_country" id ="bill_country" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Vận chuyển tới quốc gia </td>
                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="ship_country" id ="ship_country" value="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>
                                                            </tr>
                                                            <!-- This is added to display the existing comments -->
                                                            <tr>
                                                                <td colspan=4 class="detailedViewHeader">
                                                                    <b>Thông tin mô tả</b>
                                                                </td>
                                                            </tr>

                                                            <!-- Handle the ui types display -->


                                                            <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                            <tr style="height:25px">
                                                                <!-- In Add Comment are we should not display anything -->
                                                                <td width=20% class="dvtCellLabel" align=right>
                                                                    <font color="red"></font> 
                                                                    Mô tả 			</td>
                                                                <td colspan=3>
                                                                    <textarea  class="detailedViewTextBox" tabindex="" onFocus="this.className = 'detailedViewTextBoxOn'" name="customer.mGhiChu"  onBlur="this.className = 'detailedViewTextBox'" cols="90" rows="8"/><s:property value="mGhiChu"/></textarea>
                                                                </td>
                                                            </tr>
                                                            <!-- Added to display the Product Details in Inventory-->

                                                            <tr>
                                                                <td  colspan=4 style="padding:5px">
                                                                    <div align="center">
                                                                        <input type='hidden'  name='address_change' value='no'>
                                                                        <input title="Lưu [Alt+S]" accessKey="S" class="crmbutton small save" onclick="
                                                                                document.getElementById('sub_form').submit();
//                                                                                this.form.action.value = 'Save';
//                                                                                displaydeleted();
//                                                                                if (formValidate()) {
//                                                                                    if (AjaxDuplicateValidate('Accounts', 'accountname', this.form)) {
//                                                                                        AddressSync(this.form, 137);
//                                                                                    }
//                                                                                }
                                                                                " type="button" name="button" value="  Lưu  " style="width:70px" >		
                                                                        <input title="Hủy bỏ [Alt+X]" accessKey="X" class="crmbutton small cancel" onclick="window.history.back()" type="button" name="button" value="  Hủy bỏ  " style="width:70px">
                                                                    </div>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>

                    <!--                        </td>
                                            <td align=right valign=top><img src="themes/softed/images/showPanelTopRight.gif"></td>
                                            </tr>
                                            
                                            </table>-->
                    <!--added to fix 4600-->
                    <input name='search_url' id="search_url" type='hidden' value=''>
                </form>
                </s:push>    


                <script>
                    ScrollEffect.limit = 201;
                    ScrollEffect.closelimit = 200;
                </script>
                <script>

                    var fieldname = new Array('accountname', 'account_no', 'phone', 'website', 'fax', 'tickersymbol', 'otherphone', 'account_id', 'email1', 'employees', 'email2', 'ownership', 'rating', 'industry', 'siccode', 'accounttype', 'annual_revenue', 'emailoptout', 'notify_owner', 'assigned_user_id', 'bill_street', 'ship_street', 'bill_city', 'ship_city', 'bill_state', 'ship_state', 'bill_code', 'ship_code', 'bill_country', 'ship_country', 'bill_pobox', 'ship_pobox', 'description', 'campaignrelstatus', 'cf_607', 'cf_638', 'cf_639', 'cf_640')

                    var fieldlabel = new Array('Tên Khách hàng', 'Mã số Khách hàng', 'Điện thoại', 'Website', 'Fax', 'Mã chứng khoán', 'Điện thoại khác', 'Thành viên của', 'Email', 'Số nhân viên', 'Email khác', 'Người sở hữu', 'Đánh giá', 'Ngành nghề', 'Mã ngành', 'Loại', 'Doanh thu hàng năm', 'Từ chối email', 'Thông báo khi dữ liệu này thay đổi', 'Được gán cho', 'Địa chỉ thanh toán', 'Địa chỉ vận chuyển', 'Thanh toán tại thành phố', 'Vận chuyển tới thành phố', 'Thanh toán tại Tỉnh/Bang', 'Vận chuyển tới Tỉnh/Bang', 'Mã vùng thanh toán', 'Mã vùng vận chuyển', 'Thanh toán tại quốc gia', 'Vận chuyển tới quốc gia', 'Hộp thư thanh toán', 'Hộp thư vận chuyển', 'Mô tả', 'Trạng thái', 'Ng&agrave;y sinh', 'Loại Sản Phẩm', 'Nhu cầu gửi đĩa', 'Nhu cầu đại l&yacute;')

                    var fielddatatype = new Array('V~M', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'I~O', 'E~O', 'I~O', 'E~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'I~O', 'C~O', 'C~O', 'V~M', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'D~O', 'V~O', 'C~O', 'C~O')

                    var ProductImages = new Array();
                    var count = 0;

                    function delRowEmt(imagename)
                    {
                        ProductImages[count++] = imagename;
                    }

                    function displaydeleted()
                    {
                        var imagelists = '';
                        for (var x = 0; x < ProductImages.length; x++)
                        {
                            imagelists += ProductImages[x] + '###';
                        }

                        if (imagelists != '')
                            document.EditView.imagelist.value = imagelists
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
                        }, 27000);</script><!--end body panes-->
        </td></tr>
    <tr>
        <td colspan="2" align="center">
        </td>
    </tr>
</table>
</body>
</html>

