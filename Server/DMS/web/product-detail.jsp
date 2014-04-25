<%-- 
    Document   : product-detail
    Created on : Apr 11, 2014, 2:53:47 AM
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
                                                            <td style="padding-right:0px;padding-left:10px;"><a href="new-product"><img src="themes/softed/images/btnL3Add.gif" alt="Tạo mới Sản phẩm..." title="Tạo mới Sản phẩm..." border="0"></a></td>

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

                                    <span class="lvtHeaderText"><font color="purple">[ <s:property value="product.mProductID"/> ] </font><s:property value="product.mProductName"/> -  Sản phẩm Thông tin</span>&nbsp;&nbsp;&nbsp;
                                    <span class="small">
<!--                                        Cập nhật 1084 ngày trước (22 Tháng 4 2011)-->
                                    </span>&nbsp;<span id="vtbusy_info" style="display:none;" valign="bottom"><img src="themes/images/vtbusy.gif" border="0"></span><span id="vtbusy_info" style="visibility:hidden;" valign="bottom"><img src="themes/images/vtbusy.gif" border="0"></span>
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

                                                <td class="dvtSelectedCell" align="center" nowrap="">Sản phẩm Thông tin</td>	
                                                <td class="dvtTabCache" style="width:10px">&nbsp;</td>
                                                <td class="dvtTabCache" align="right" style="width:100%">
                                                    <input title="Sửa [Alt+E]" accesskey="E" class="crmbutton small edit" onclick="
                                                        javascript:window.location.href= 'edit-product?id_pdct=<s:property value="product.mSerial"/>';
                                                             return false;
//                                                            DetailView.return_module.value = 'Products';
//                                                            DetailView.return_action.value = 'DetailView';
//                                                            DetailView.return_id.value = '142';
//                                                            DetailView.module.value = 'Products';
//                                                            submitFormForAction('DetailView', 'EditView');
                                                            " type="button" name="Edit" value="&nbsp;Sửa&nbsp;">&nbsp;
<!--                                                    <input title="Sao chép [Alt+U]" accesskey="U" class="crmbutton small create" onclick="DetailView.return_module.value = 'Products';
                                                            DetailView.return_action.value = 'DetailView';
                                                            DetailView.isDuplicate.value = 'true';
                                                            DetailView.module.value = 'Products';
                                                            submitFormForAction('DetailView', 'EditView');" type="button" name="Duplicate" value="Sao chép">&nbsp;-->
                                                    <script>
                                                        var str = "delete-product?id_pdct=<s:property value="product.mSerial"/>";
                                                    </script>
                                                    <input title="Xóa [Alt+D]" accesskey="D" class="crmbutton small delete" onclick="
                                                            confirmdelete(''+str);
//                                                        DetailView.return_module.value = 'Products';
//                                                            DetailView.return_action.value = 'index';
//                                                            var confirmMsg = 'Bạn muốn xóa bản ghi này chứ?';
//                                                            submitFormForActionWithConfirmation('DetailView', 'Delete', confirmMsg);
                                                            " type="button" name="Delete" value="Xóa">&nbsp;

                                                    
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
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
                                                        <input type="hidden" name="allselectedboxes" id="allselectedboxes">
                                                        <input type="hidden" name="product_id" value="">
                                                        <input type="hidden" name="parent_id" value="">
                                                        <input type="hidden" name="module" value="Products">
                                                        <input type="hidden" name="action">
                                                        <input type="hidden" name="isDuplicate" value="false">
                                                        <input type="hidden" name="mode">
                                                        <input type="hidden" name="record" value="142">
                                                        <input type="hidden" name="return_module" value="">
                                                        <input type="hidden" name="return_id" value="">
                                                        <input type="hidden" name="return_action" value="">


                                                        <!-- Entity informations display - starts -->	
                                                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                                            <tbody>
                                                                <tr>
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
                                                                                    <td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblThôngtinsảnphẩm','aidThôngtinsảnphẩm','themes/softed/images/');"><img id="aidThôngtinsảnphẩm" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide"></a></div><b>&nbsp;Thông tin sản phẩm</b></div></td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        <div style="width:auto;display:block;" id="tblThôngtinsảnphẩm">
                                                                            <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">

                                                                                <tbody>
                                                                                    <tr style="height:25px">

                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tên sản phẩm</td>
                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tên sản phẩm" onmouseover="hndMouseOver(2, 'Tên sản phẩm');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Tên sản phẩm"><s:property value="product.mProductName"/></span>
                                                                                            
                                                                                        </td>
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã sản phẩm</td>
                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;<s:property value="product.mProductID"/></td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã vạch</td>
                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--CheckBox--> 
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Có bán sản phẩm" onmouseover="hndMouseOver(56, 'Có bán sản phẩm');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Có bán sản phẩm"><s:property value="product.mBarcode"/>&nbsp;</span>
                                                                                        </td>    

                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thương hiệu</td>

                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Phần Số" onmouseover="hndMouseOver(1, 'Phần Số');" onmouseout="fnhide('crmspanid');" valign="top">
                                                                                            &nbsp;&nbsp;<span id="dtlview_Phần Số"><s:property value="product.mBrand"/></span>
                                                                                            
                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Xuất xứ</td>

                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Ngày bắt đầu bán" onmouseover="hndMouseOver(5, 'Ngày bắt đầu bán');" onmouseout="fnhide('crmspanid');">
                                                                                            &nbsp;&nbsp;<span id="dtlview_Ngày bắt đầu bán">
                                                                                                <s:property value="product.mOrigin"/>
                                                                                            </span>
                                                                                            
                                                                                        </td>
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Nhà cung cấp</td>

                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--ComboBox-->

                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Nhà sản xuất" onmouseover="hndMouseOver(15, 'Nhà sản xuất');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Nhà sản xuất"><font color=""><s:property value="product.mProvider"/></font></span>
                                                                                            
                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Loại sản phẩm</td>
                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--ComboBox-->

                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Loại sản phẩm" onmouseover="hndMouseOver(15, 'Loại sản phẩm');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Loại sản phẩm"><font color=""></font></span>
                                                                                            
                                                                                        </td>
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thuế</td>

                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Ngày bắt đầu hỗ trợ" onmouseover="hndMouseOver(5, 'Ngày bắt đầu hỗ trợ');" onmouseout="fnhide('crmspanid');">
                                                                                            &nbsp;&nbsp;<span id="dtlview_Ngày bắt đầu hỗ trợ">
                                                                                                <s:property value="product.mVATTax"/>
                                                                                            </span>
                                                                                            
                                                                                        </td>

                                                                                    </tr>	
                                                                                    <tr style="height:25px">
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Giá trước thuế</td>
                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Ngày kết thúc bán" onmouseover="hndMouseOver(5, 'Ngày kết thúc bán');" onmouseout="fnhide('crmspanid');">
                                                                                            &nbsp;&nbsp;<span id="dtlview_Ngày kết thúc bán">
                                                                                                <s:property value="product.mImportPrices"/>
                                                                                            </span>
                                                                                            
                                                                                        </td>
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Giá sau thuế</td>

                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Ngày hết hạn hỗ trợ" onmouseover="hndMouseOver(5, 'Ngày hết hạn hỗ trợ');" onmouseout="fnhide('crmspanid');">
                                                                                            &nbsp;&nbsp;<span id="dtlview_Ngày hết hạn hỗ trợ">
                                                                                                <s:property value="product.mExportPrices"/>
                                                                                            </span>
                                                                                            
                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Đơn vị</td>

                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--VendorPopup-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tên nhà cung cấp">&nbsp;
                                                                                            <s:property value="product.mQuantification"/>
                                                                                        </td>

                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Quy cách</td>

                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--WebSite-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Website" onmouseover="hndMouseOver(17, 'Website');" onmouseout="fnhide('crmspanid');">&nbsp;
                                                                                            <span id="dtlview_Website"><s:property value="product.mPackingSpecifications"/></span>
                                                                                            
                                                                                        </td>
                                                                                    </tr>	
<!--                                                                                    <tr style="height:25px">

                                                                                         Avoid to display the label Tax Class 
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Số hiệu nhà cung cấp</td>
                                                                                         This file is used to display the fields based on the ui type in detailview 
                                                                                        TextBox
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Số hiệu nhà cung cấp" onmouseover="hndMouseOver(1, 'Số hiệu nhà cung cấp');" onmouseout="fnhide('crmspanid');" valign="top">
                                                                                            &nbsp;&nbsp;<span id="dtlview_Số hiệu nhà cung cấp"></span>
                                                                                            
                                                                                        </td>

                                                                                         Avoid to display the label Tax Class 
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Số hiệu nhà sản xuất</td>
                                                                                         This file is used to display the fields based on the ui type in detailview 
                                                                                        TextBox
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Số hiệu nhà sản xuất" onmouseover="hndMouseOver(1, 'Số hiệu nhà sản xuất');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Số hiệu nhà sản xuất"></span>
                                                                                            
                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">
                                                                                         Avoid to display the label Tax Class 
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Ngăn hàng hóa</td>
                                                                                         This file is used to display the fields based on the ui type in detailview 
                                                                                        TextBox
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Ngăn hàng hóa" onmouseover="hndMouseOver(1, 'Ngăn hàng hóa');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Ngăn hàng hóa"></span>
                                                                                            
                                                                                        </td>
                                                                                         Avoid to display the label Tax Class 
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Số hiệu</td>

                                                                                         This file is used to display the fields based on the ui type in detailview 
                                                                                        TextBox
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Số hiệu" onmouseover="hndMouseOver(1, 'Số hiệu');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Số hiệu"></span>
                                                                                            
                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">

                                                                                         Avoid to display the label Tax Class 
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tạo lúc</td>
                                                                                         This file is used to display the fields based on the ui type in detailview 
                                                                                        <td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;16-04-2011 05:49:43</td>
                                                                                         Avoid to display the label Tax Class 
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tài khoản Kế toán</td>
                                                                                         This file is used to display the fields based on the ui type in detailview 
                                                                                        ComboBox

                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tài khoản Kế toán" onmouseover="hndMouseOver(15, 'Tài khoản Kế toán');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Tài khoản Kế toán"><font color="">300-Kinh doanh phần mềm</font></span>
                                                                                            
                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">
                                                                                         Avoid to display the label Tax Class 
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Cập nhật lúc</td>
                                                                                         This file is used to display the fields based on the ui type in detailview 
                                                                                        <td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;22-04-2011 06:38:42</td>
                                                                                    </tr>	-->

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
                                                                                    <td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblThôngtinGiácả','aidThôngtinGiácả','themes/softed/images/');"><img id="aidThôngtinGiácả" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide"></a></div><b>&nbsp;Thông tin Giá cả</b></div></td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        <div style="width:auto;display:block;" id="tblThôngtinGiácả">
                                                                            <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
                                                                                <tbody><tr style="height:25px">
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <!--CurrencySymbol-->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Giá bán (₫)</td>
                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Giá đơn vị" onmouseover="hndMouseOver(71, 'Giá đơn vị');" onmouseout="fnhide('crmspanid');" valign="top">
                                                                                            &nbsp;&nbsp;<span id="dtlview_Giá đơn vị"><s:property value="product.mExportPrices"/></span>
                                                                                            
                                                                                        </td>

                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thuế (%)</td>
                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tiền hoa hồng" onmouseover="hndMouseOver(9, 'Tiền hoa hồng (%)');" onmouseout="fnhide('crmspanid');" valign="top">
                                                                                            &nbsp;&nbsp;<span id="dtlview_Tiền hoa hồng"><s:property value="product.mVATTax"/></span>
                                                                                           
                                                                                        </td>
                                                                                    </tr>	
<!--                                                                                    <tr style="height:25px">
                                                                                         Avoid to display the label Tax Class 
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">GTGT</td>
                                                                                         This file is used to display the fields based on the ui type in detailview 
                                                                                         Handle the Tax in Inventory 

                                                                                    </tr>	-->

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
                                                                                    <td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblThôngtintồnkho','aidThôngtintồnkho','themes/softed/images/');"><img id="aidThôngtintồnkho" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide"></a></div><b>&nbsp;Thông tin tồn kho</b></div></td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                        <div style="width:auto;display:block;" id="tblThôngtintồnkho">
                                                                            <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">

                                                                                <tbody><tr style="height:25px">

                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Đơn vị sử dụng</td>

                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--ComboBox-->

                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Đơn vị sử dụng" onmouseover="hndMouseOver(15, 'Đơn vị sử dụng');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Đơn vị sử dụng"><font color="">Số lượng</font></span>
                                                                                            
                                                                                        </td>
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Số lượng/Đơn vị</td>

                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Số lượng//Đơn vị" onmouseover="hndMouseOver(1, 'Số lượng/Đơn vị');" onmouseout="fnhide('crmspanid');" valign="top">
                                                                                            &nbsp;&nbsp;<span id="dtlview_Số lượng//Đơn vị"></span>
                                                                                            
                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tồn kho</td>

                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tồn kho" onmouseover="hndMouseOver(1, 'Tồn kho');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Tồn kho"></span>
                                                                                            
                                                                                        </td>

                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mức tồn kho chuẩn</td>
                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mức tồn kho chuẩn" onmouseover="hndMouseOver(1, 'Mức tồn kho chuẩn');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Mức tồn kho chuẩn"></span>
                                                                                            
                                                                                        </td>
                                                                                    </tr>	
                                                                                    <tr style="height:25px">
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Người quản lý</td>
                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Người quản lý" onmouseover="hndMouseOver(52, 'Người quản lý');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Người quản lý"><a href="">admin</a></span>
                                                                                           
                                                                                        </td>	

                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Số lượng yêu cầu</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextBox-->
                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Số lượng yêu cầu" onmouseover="hndMouseOver(1, 'Số lượng yêu cầu');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                            &nbsp;&nbsp;<span id="dtlview_Số lượng yêu cầu"></span>
                                                                                            
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
                                                                                    <td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblKhoHàng','aidKhoHàng','themes/softed/images/');"><img id="aidKhoHàng" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide"></a></div><b>&nbsp;Kho Hàng</b></div></td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        <div style="width:auto;display:block;" id="tblKhoHàng">
                                                                            <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">

                                                                                <tbody>
                                                                                    <tr style="height:25px">
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tên kho</td>


                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--ComboBox-->

                                                                                        <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tên kho" onmouseover="hndMouseOver(15, 'Tên kho');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Tên kho"><font color=""></font></span>
                                                                                            
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
                                                                                    <td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblThôngtinhìnhảnhsảnphẩm','aidThôngtinhìnhảnhsảnphẩm','themes/softed/images/');"><img id="aidThôngtinhìnhảnhsảnphẩm" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide"></a></div><b>&nbsp;Thông tin hình ảnh sản phẩm</b></div></td>
                                                                                </tr>
                                                                            </tbody></table>
                                                                        <div style="width:auto;display:block;" id="tblThôngtinhìnhảnhsảnphẩm">
                                                                            <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">

                                                                                <tbody><tr style="height:25px">

                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Hình ảnh sản phẩm</td>

                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!-- for Image Reflection -->
                                                                                        <td align="left" width="25%&quot;">&nbsp;</td>
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
                                                                                    <td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblThôngtinchitiết','aidThôngtinchitiết','themes/softed/images/');"><img id="aidThôngtinchitiết" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide"></a></div><b>&nbsp;Thông tin chi tiết</b></div></td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                        <div style="width:auto;display:block;" id="tblThôngtinchitiết">
                                                                            <table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
                                                                                <tbody><tr style="height:25px">
                                                                                        <!-- Avoid to display the label Tax Class -->
                                                                                        <td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mô tả</td>

                                                                                        <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                        <!--TextArea/Description-->
                                                                                        <!-- we will empty the value of ticket and faq comment -->
                                                                                        <!--  -->
                                                                                        <!-- -->
                                                                                        <td width="100%" colspan="3" class="dvtCellInfo" align="left" id="mouseArea_Mô tả" onmouseover="hndMouseOver(19, 'Mô tả');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Mô tả">
                                                                                                <s:property value="product.mDescription"/>
                                                                                            </span>
                                                                                            
                                                                                        </td>
                                                                                    </tr>	
                                                                                </tbody>
                                                                                
                                                                            </table>
                                                                            
                                                                        </div> <!-- Line added by SAKTI on 10th Apr, 2008 -->

                                                                        <!-- Entity information(blocks) display - ends -->

                                                                        <br>

                                                                        <!-- Product Details informations -->

                                                                    </td>
                                                                    <!-- The following table is used to display the buttons -->
                                                                </tr></tbody>
                                                        </table>
                                                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                                            <tbody>
                                                                <tr>
                                                                    <td style="padding:10px;border-right:1px dashed #CCCCCC;" width="80%">

                                                                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                                                            <tbody><tr>
                                                                                    <td style="border-right:1px dashed #CCCCCC;" width="100%">
                                                                                        <script language="JavaScript" type="text/javascript" src="modules/PriceBooks/PriceBooks.js"></script>
                                                                                        <script language="JavaScript" type="text/javascript" src="include/js/ListView.js"></script>

                                                                                        <script>
                                                                                                    function editProductListPrice(id, pbid, price)
                                                                                                    {
                                                                                                        $("status").style.display = "inline";
                                                                                                        new Ajax.Request(
                                                                                                                'index.php',
                                                                                                                {queue: {position: 'end', scope: 'command'},
                                                                                                                    method: 'post',
                                                                                                                    postBody: 'action=ProductsAjax&file=EditListPrice&return_action=DetailView&return_module=PriceBooks&module=Products&record=' + id + '&pricebook_id=' + pbid + '&listprice=' + price,
                                                                                                                    onComplete: function(response) {
                                                                                                                        $("status").style.display = "none";
                                                                                                                        $("editlistprice").innerHTML = response.responseText;
                                                                                                                    }
                                                                                                                }
                                                                                                        );
                                                                                                    }

                                                                                                    function gotoUpdateListPrice(id, pbid, proid)
                                                                                                    {
                                                                                                        $("status").style.display = "inline";
                                                                                                        $("roleLay").style.display = "none";
                                                                                                        var listprice = $("list_price").value;
                                                                                                        new Ajax.Request(
                                                                                                                'index.php',
                                                                                                                {queue: {position: 'end', scope: 'command'},
                                                                                                                    method: 'post',
                                                                                                                    postBody: 'module=Products&action=ProductsAjax&file=UpdateListPrice&ajax=true&return_action=CallRelatedList&return_module=PriceBooks&record=' + id + '&pricebook_id=' + pbid + '&product_id=' + proid + '&list_price=' + listprice,
                                                                                                                    onComplete: function(response) {
                                                                                                                        $("status").style.display = "none";
                                                                                                                        $("RLContents").innerHTML = response.responseText;
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
                                                                                                                                <input type="hidden" name="return_module" id="return_module" value="Products">
                                                                                                                                <input type="hidden" name="RLreturn_module" id="RLreturn_module" value="Products">
                                                                                                                                <input type="hidden" name="allselectedboxes" id="allselectedboxes">
                                                                                                                                <input type="hidden" name="return_action" value="DetailView">
                                                                                                                                <input type="hidden" name="return_id" value="142">
                                                                                                                                <input type="hidden" name="parent_id" id="parent_id" value="142">
                                                                                                                                <input type="hidden" name="RLparent_id" id="RLparent_id" value="142">
                                                                                                                                <input type="hidden" name="parenttab" id="parenttab" value="Inventory">
                                                                                                                                <input type="hidden" name="action">
                                                                                                                                <input type="hidden" name="product_id" value="142">
                                                                                                                                <div id="RLContents">
                                                                                                                                    <script type="text/javascript" src="include/js/Mail.js"></script>
                                                                                                                                   
                                                                                                                                    <br>


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
                                                                                    openPopUp('xAttachFile', this, url, 'attachfileWin', 380, 375, 'menubar=no,toolbar=no,location=no,status=no,resizable=no');
                                                                                }
                                                                            </script>
                                                            </tbody></table>
                                                </td></tr></tbody></table>
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
                                            <!-- Product/Services Actions starts -->
<!--                                            <tr>
                                                <td align="left" style="padding-left:5px;">
                                                    <a href="" class="webMnu"><img src="themes/images/actionGenerateQuote.gif" hspace="2" align="absmiddle" border="0"></a>
                                                    <a href="" class="webMnu">Tạo Báo giá</a> 
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" style="padding-left:5px;">
                                                    <a href="" class="webMnu"><img src="themes/images/actionGenerateInvoice.gif" hspace="2" align="absmiddle" border="0"></a>
                                                    <a href="" class="webMnu">Tạo Hóa đơn</a> 
                                                </td>
                                            </tr>-->
                                            <tr>
                                                <td align="left" style="padding-left:5px;">
                                                    <a href="" class="webMnu"><img src="themes/images/actionGenerateSalesOrder.gif" hspace="2" align="absmiddle" border="0"></a>
                                                    <a href="" class="webMnu">Tạo Đặt hàng</a> 
                                                </td>
                                            </tr>
<!--                                            <tr>
                                                <td align="left" style="padding-left:5px;">
                                                    <a href="" class="webMnu"><img src="themes/images/actionGenPurchaseOrder.gif" hspace="2" align="absmiddle" border="0"></a>
                                                    <a href="" class="webMnu">Tạo Nhập hàng</a> 
                                                </td>
                                            </tr>-->
                                            <!-- Module based actions ends -->
                                            <tr>
                                                <td>
                                                </td>
                                            </tr>
                                            <!-- Action links END -->
                                            <!-- Following condition is added to avoid the Tools section in Products and Vendors because we are not providing the Print and Email Now links throughout all the modules. when we provide these links we will remove this if condition -->
                                            <!-- Above if condition is added to avoid the Tools section in Products and Vendors because we are not providing the Print and Email Now links throughout all the modules. when we provide these links we will remove this if condition -->

                                        </tbody>
                                    </table>


                                    <script type="text/javascript">
                                        function sendpdf_submit()
                                        {
                                            // Submit the form to get the attachment ready for submission
                                            document.DetailView.submit();



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

                            <td class="dvtSelectedCellBottom" align="center" nowrap="">Sản phẩm Thông tin</td>	
                            <td class="dvtTabCacheBottom" style="width:10px">&nbsp;</td>
                            <td class="dvtTabCacheBottom" align="right" style="width:100%">
                                <input title="Sửa [Alt+E]" accesskey="E" class="crmbutton small edit" onclick="
                                        javascript:window.location.href= 'edit-product?id_pdct=<s:property value="product.mSerial"/>';
                                        return false;
//                                        DetailView.return_module.value = 'Products';
//                                        DetailView.return_action.value = 'DetailView';
//                                        DetailView.return_id.value = '142';
//                                        DetailView.module.value = 'Products';
//                                        submitFormForAction('DetailView', 'EditView');
                                        " type="button" name="Edit" value="&nbsp;Sửa&nbsp;">&nbsp;
<!--                                <input title="Sao chép [Alt+U]" accesskey="U" class="crmbutton small create" onclick="DetailView.return_module.value = 'Products';
                                        DetailView.return_action.value = 'DetailView';
                                        DetailView.isDuplicate.value = 'true';
                                        DetailView.module.value = 'Products';
                                        submitFormForAction('DetailView', 'EditView');" type="button" name="Duplicate" value="Sao chép">&nbsp;-->
                                <input title="Xóa [Alt+D]" accesskey="D" class="crmbutton small delete" onclick="
                                        confirmdelete(''+str);
//                                    DetailView.return_module.value = 'Products';
//                                        DetailView.return_action.value = 'index';
//                                        var confirmMsg = 'Bạn muốn xóa bản ghi này chứ?';
//                                        submitFormForActionWithConfirmation('DetailView', 'Delete', confirmMsg);
                                        " type="button" name="Delete" value="Xóa">&nbsp;

                                
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
                    postBody: 'module=Products&action=ProductsAjax&file=TagCloud&ajxaction=GETTAGCLOUD&recordid=142',
                    onComplete: function(response) {
                        $("tagfields").innerHTML = response.responseText;
                        $("txtbox_tagfields").value = '';
                    }
                }
        );
    }
    getTagCloud();
</script>




<script language="javascript">
    var fieldname = new Array('productname', 'product_no', 'productcode', 'discontinued', 'manufacturer', 'productcategory', 'sales_start_date', 'sales_end_date', 'start_date', 'expiry_date', 'website', 'vendor_id', 'mfr_part_no', 'vendor_part_no', 'serial_no', 'productsheet', 'glacct', 'unit_price', 'commissionrate', 'taxclass', 'usageunit', 'qty_per_unit', 'qtyinstock', 'reorderlevel', 'assigned_user_id', 'qtyindemand', 'imagename', 'description', 'cf_628');
    var fieldlabel = new Array('Tên sản phẩm', 'Mã sản phẩm', 'Phần Số', 'Có bán sản phẩm', 'Nhà sản xuất', 'Loại sản phẩm', 'Ngày bắt đầu bán', 'Ngày kết thúc bán', 'Ngày bắt đầu hỗ trợ', 'Ngày hết hạn hỗ trợ', 'Website', 'Tên nhà cung cấp', 'Số hiệu nhà sản xuất', 'Số hiệu nhà cung cấp', 'Số hiệu', 'Ngăn hàng hóa', 'Tài khoản Kế toán', 'Giá đơn vị', 'Tiền hoa hồng (%)', 'GTGT', 'Đơn vị sử dụng', 'Số lượng/Đơn vị', 'Tồn kho', 'Mức tồn kho chuẩn', 'Người quản lý', 'Số lượng yêu cầu', 'Hình ảnh sản phẩm', 'Mô tả', 'T&ecirc;n kho');
    var fielddatatype = new Array('V~M', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'D~O', 'D~O~OTH~GE~sales_start_date~Sales Start Date', 'D~O', 'D~O~OTH~GE~start_date~Start Date', 'V~O', 'I~O', 'V~O', 'V~O', 'V~O', 'V~O', 'V~O', 'N~O', 'N~O', 'V~O', 'V~O', 'N~O', 'NN~O', 'I~O', 'I~O', 'I~O', 'V~O', 'V~O', 'V~M');
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
        }, 43000);</script><!--end body panes-->





</body></html>
