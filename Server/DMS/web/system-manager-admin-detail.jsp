<%-- 
    Document   : system-manager-admin-detail
    Created on : May 16, 2014, 2:44:43 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html>

<html>
    <head>
        <title>admin - Thiết lập - Người sử dụng - Phần mềm quản lý HOSCO-MANAGEMENT</title>
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

        <!--    Header & menu-->
        <s:include value="header.jsp" >
            <s:param name="page_param" value="'setup'" />
        </s:include>

        <!-- TOOLS -->


        <br>
        <!-- Shadow table -->
        <table align="center" border="0" cellpadding="0" cellspacing="0" width="98%">
            <tr>
                <td valign="top"><img src="themes/softed/images/showPanelTopLeft.gif"></td>
                <td class="showPanelBg" style="padding: 10px;" valign="top" width="100%">
                    <br>
                    <div align=center>

                        <table border=0 cellspacing=0 cellpadding=20 width="99%" class="settingsUI">
                            <tr>
                                <td valign=top>
                                    <table border=0 cellspacing=0 cellpadding=0 width=100%>
                                        <tr>
                                            <td valign=top id="settingsSideMenu" width="10%" >
                                                <!--Left Side Navigation Table-->
                                                <table border=0 cellspacing=0 cellpadding=0 width="100%">
                                                            <tr>
                                                                <td class="settingsTabHeader" nowrap>
                                                                    Quản lý người sử dụng
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="settingsTabList" nowrap>
                                                                    <a href="index.php?module=Administration&amp;action=index&amp;parenttab=Settings">
                                                                        Kinh doanh
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="settingsTabList" nowrap>
                                                                    <a href="index.php?module=Settings&amp;action=listroles&amp;parenttab=Settings">
                                                                        Vai trò
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="settingsTabSelected" nowrap>
                                                                    <a href="index.php?module=Settings&amp;action=ListProfiles&amp;parenttab=Settings">
                                                                        Quản trị
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                            
                                                            
                                                            <tr>
                                                                <td class="settingsTabHeader" nowrap>
                                                                    Truy cập
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="settingsTabList" nowrap>
                                                                    <a href="index.php?module=Settings&amp;action=ModuleManager&amp;parenttab=Settings">
                                                                        Lịch sử đăng nhập của người sử dụng
                                                                    </a>
                                                                </td>
                                                            </tr>
                                                            
                                                            
                                                        </table>
                                                <!-- Left side navigation table ends -->

                                            </td>
                                            <td width="8px" valign="top"> 
                                                <img src="themes/images/panel-left.png" title="Hide Menu" id="hideImage" style="display:inline;cursor:pointer;" onclick="toggleShowHide_panel('showImage', 'settingsSideMenu');
                                                        toggleShowHide_panel('showImage', 'hideImage');" />
                                                <img src="themes/images/panel-right.png" title="Show Menu" id="showImage" style="display:none;cursor:pointer;" onclick="toggleShowHide_panel('settingsSideMenu', 'showImage');
                                                        toggleShowHide_panel('hideImage', 'showImage');"/>
                                            </td>
                                            <td class="small settingsSelectedUI" valign=top align=left>
                                                <script type="text/javascript">

                                                    function toggleShowHide_panel(showid, hideid) {
                                                        var show_ele = document.getElementById(showid);
                                                        var hide_ele = document.getElementById(hideid);
                                                        if (show_ele != null) {
                                                            show_ele.style.display = "";
                                                        }
                                                        if (hide_ele != null)
                                                            hide_ele.style.display = "none";
                                                    }

                                                </script>						
                                                <table width="100%"  border="0" cellspacing="0" cellpadding="0">
                                                    <tr>
                                                        <td class="padTab" align="left">
                                                            <form name="DetailView" method="POST" action="index.php" ENCTYPE="multipart/form-data" id="form" style="margin:0px" onsubmit="VtigerJS_DialogBox.block();">
                                                                <input type="hidden" name="module" value="Users" style="margin:0px">
                                                                

                                                                <table width="100%" border="0" cellpadding="0" cellspacing="0" >
                                                                    <tr>
                                                                        <td colspan=2>
                                                                            <!-- Heading and Icons -->
                                                                            <table width="100%" cellpadding="5" cellspacing="0" border="0" class="settingsSelUITopLine">
                                                                                <tr>
                                                                                    <td width=50 rowspan="2"><img src="themes/images/ico-users.gif" align="absmiddle"></td>	
                                                                                    <td>
                                                                                        <span class="heading2">
                                                                                            <b><a href="index.php?module=Settings&action=index&parenttab=Settings">Thiết lập </a> &gt; <a href="index.php?module=Administration&action=index&parenttab=Settings"> Người sử dụng </a>&gt;"Nguyễn Thị Thoa " </b></span>
                                                                                        <span id="vtbusy_info" style="display:none;" valign="bottom"><img src="themes/images/vtbusy.gif" border="0"></span>					
                                                                                    </td>

                                                                                </tr>
                                                                                <tr>
                                                                                    <td>Xem thông tin về người sử dụng "Nguyễn Thị Thoa "</td>
                                                                                </tr>
                                                                            </table>
                                                                        </td>
                                                                    </tr>
                                                                    <tr><td colspan="2">&nbsp;</td></tr>
                                                                    <tr>
                                                                        <td colspan="2" nowrap align="right">
                                                                            
                                                                            <input title='Sửa [Alt+E]' accessKey='E' class='crmButton small edit' onclick="
                                                                                
                                                                                   " type='submit' name='Edit' value='  Sửa  '>
                                                                            <input type="button" onclick="deleteUser(5);" class="crmButton small cancel" value="Xóa"></input>
                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan="2" align=left>
                                                                            <!-- User detail blocks -->
                                                                            <table align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                <tr>
                                                                                    <td align="left" valign="top">
                                                                                        <br>
                                                                                        <table class="tableHeading" border="0" cellpadding="5" cellspacing="0" width="100%">
                                                                                            <tr>
                                                                                                <td class="big"><strong>Thông tin tài khoản</strong></td><td class="small" align="right">&nbsp;</td>
                                                                                            </tr>
                                                                                        </table>

                                                                                        <table border="0" cellpadding="5" cellspacing="0" width="100%">
                                                                                            <tr >

                                                                                                <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value=1></input>Tên Khách hàng</td>

                                                                                                <!-- This file is used to display the fields based on the ui type in detailview -->

                                                                                                <td class="dvtCellInfo" align="left" width=25%">&nbsp;thoant</td>


                                                                                                <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value=1></input>Người quản trị</td>

                                                                                                <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                                <!--CheckBox for is admin-->

                                                                                                <td width=25% class="dvtCellInfo" align="left" id="mouseArea_Người quản trị" onMouseOver="hndMouseOver(156, 'Người quản trị');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Người quản trị">off&nbsp;</span>
                                                                                                    <div id="editarea_Người quản trị" style="display:none;">
                                                                                                        <input id="txtbox_Người quản trị" type="checkbox" name="is_admin" style="border:1px solid #bababa;" value="0">
                                                                                                        <br><input name="button_Người quản trị" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Người quản trị', 'Users', 156, 'vtiger_users', 'is_admin', '5');"/> hoặc
                                                                                                        <a href="javascript:;" onclick="hndCancel('dtlview_Người quản trị', 'editarea_Người quản trị', 'Người quản trị')" class="link">Hủy bỏ</a>
                                                                                                    </div>
                                                                                                </td>    


                                                                                            </tr>
                                                                                            <tr >

                                                                                                <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value=1></input>Mật khẩu</td>

                                                                                                <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                                <!-- Password Field-->
                                                                                                <td width=25% class="dvtCellInfo" align="left"><input title='Thay đổi mật khẩu [Alt+P]' accessKey='P' class='crmButton password small' LANGUAGE=javascript onclick='return window.open("system-manager-admin-change-password.jsp");' type='button' name='password' value='Thay đổi mật khẩu'></td>	


                                                                                                <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value=1></input>Email</td>

                                                                                                <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                                <!--Email-->
                                                                                                <td width=25% class="dvtCellInfo" align="left" id="mouseArea_Email" onmouseover="hndMouseOver(104, 'Email');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Email">
                                                                                                        <a href="javascript:InternalMailer(5,463,'email1','Users','record_id');">sales@hosgroup.com.vn</a>
                                                                                                    </span>
                                                                                                    <div id="editarea_Email" style="display:none;">
                                                                                                        <input class="detailedViewTextBox" onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'" type="text" id="txtbox_Email" name="email1" maxlength='100' value="sales@hosgroup.com.vn"></input>
                                                                                                        <br><input name="button_Email" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Email', 'Users', 104, 'vtiger_users', 'email1', '5');
                                                                                                                fnhide('crmspanid');"/> hoặc
                                                                                                        <a href="javascript:;" onclick="hndCancel('dtlview_Email', 'editarea_Email', 'Email')" class="link">Hủy bỏ</a>
                                                                                                    </div>
                                                                                                    <div id="internal_mailer_email1" style="display: none;">463####1</div>
                                                                                                </td>

                                                                                            </tr>
                                                                                            <tr >

                                                                                                <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value=1></input>Trạng thái</td>

                                                                                                <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                                <!--ComboBox Status edit only for admin Users-->
                                                                                                <td width=25% class="dvtCellInfo" align="left">Hoạt động</td>


                                                                                                <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value=1></input>Họ</td>

                                                                                                <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                                <!--TextBox-->
                                                                                                <td width=25% class="dvtCellInfo" align="left" id="mouseArea_Họ" onmouseover="hndMouseOver(1, 'Họ');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                                    &nbsp;&nbsp;<span id="dtlview_Họ"></span>
                                                                                                    <div id="editarea_Họ" style="display:none;">
                                                                                                        <input class="detailedViewTextBox" onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'" type="text" id="txtbox_Họ" name="first_name" maxlength='100' value=""></input>
                                                                                                        <br><input name="button_Họ" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Họ', 'Users', 1, 'vtiger_users', 'first_name', '5');
                                                                                                                fnhide('crmspanid');"/> hoặc
                                                                                                        <a href="javascript:;" onclick="hndCancel('dtlview_Họ', 'editarea_Họ', 'Họ')" class="link">Hủy bỏ</a>
                                                                                                    </div>
                                                                                                </td>

                                                                                            </tr>
                                                                                            <tr >

                                                                                                <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value=1></input>Tiền tệ</td>

                                                                                                <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                                <!--ComboBox currency id edit only for admin Users-->
                                                                                                <td width=25% class="dvtCellInfo" align="left" id="mouseArea_Tiền tệ" onmouseover="hndMouseOver(117, 'Tiền tệ');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Tiền tệ">Vietnam, Dong : ₫</span>
                                                                                                    <div id="editarea_Tiền tệ" style="display:none;">
                                                                                                        <select id="txtbox_Tiền tệ" name="currency_id" class="small">
                                                                                                            <option value="1" selected>Vietnam, Dong</option>	
                                                                                                        </select>
                                                                                                        <br><input name="button_Tiền tệ" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Tiền tệ', 'Users', 117, 'vtiger_users', 'currency_id', '5');
                                                                                                                fnhide('crmspanid');"/> hoặc
                                                                                                        <a href="javascript:;" onclick="hndCancel('dtlview_Tiền tệ', 'editarea_Tiền tệ', 'Tiền tệ')" class="link">Hủy bỏ</a>
                                                                                                    </div>



                                                                                                </td>


                                                                                                <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value=1></input>Tên</td>

                                                                                                <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                                <!--TextBox-->
                                                                                                <td width=25% class="dvtCellInfo" align="left" id="mouseArea_Tên" onmouseover="hndMouseOver(2, 'Tên');" onmouseout="fnhide('crmspanid');" valign="top">

                                                                                                    &nbsp;&nbsp;<span id="dtlview_Tên">Nguyễn Thị Thoa</span>
                                                                                                    <div id="editarea_Tên" style="display:none;">
                                                                                                        <input class="detailedViewTextBox" onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'" type="text" id="txtbox_Tên" name="last_name" maxlength='100' value="Nguyễn Thị Thoa"></input>
                                                                                                        <br><input name="button_Tên" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Tên', 'Users', 2, 'vtiger_users', 'last_name', '5');
                                                                                                                fnhide('crmspanid');"/> hoặc
                                                                                                        <a href="javascript:;" onclick="hndCancel('dtlview_Tên', 'editarea_Tên', 'Tên')" class="link">Hủy bỏ</a>
                                                                                                    </div>
                                                                                                </td>

                                                                                            </tr>
                                                                                            <tr >

                                                                                                <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value=1></input>Xem Đầu mối mặc định</td>

                                                                                                <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                                <!--ComboBox-->

                                                                                                <td width=25% class="dvtCellInfo" align="left" id="mouseArea_Xem Đầu mối mặc định" onmouseover="hndMouseOver(16, 'Xem Đầu mối mặc định');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Xem Đầu mối mặc định"><font color="">Ngày hôm nay</font></span>
                                                                                                    <div id="editarea_Xem Đầu mối mặc định" style="display:none;">
                                                                                                        <select id="txtbox_Xem Đầu mối mặc định" name="lead_view" class="small">
                                                                                                            <option value="Today" selected>
                                                                                                                Ngày hôm nay
                                                                                                            </option>

                                                                                                            <option value="Last 2 Days" >
                                                                                                                2 ngày trước
                                                                                                            </option>

                                                                                                            <option value="Last Week" >
                                                                                                                Tuần trước
                                                                                                            </option>

                                                                                                        </select>
                                                                                                        <br><input name="button_Xem Đầu mối mặc định" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Xem Đầu mối mặc định', 'Users', 16, 'vtiger_users', 'lead_view', '5');
                                                                                                                fnhide('crmspanid');"/> hoặc
                                                                                                        <a href="javascript:;" onclick="hndCancel('dtlview_Xem Đầu mối mặc định', 'editarea_Xem Đầu mối mặc định', 'Xem Đầu mối mặc định')" class="link">Hủy bỏ</a>
                                                                                                    </div>
                                                                                                </td>


                                                                                                <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value=1></input>Vai trò</td>

                                                                                                <!-- This file is used to display the fields based on the ui type in detailview -->

                                                                                                <td class="dvtCellInfo" align="left" width=25%">&nbsp;<a href="index.php?module=Settings&action=RoleDetailView&roleid=H10">Software Man</a></td>

                                                                                            </tr>
                                                                                            <tr >

                                                                                                <td class="dvtCellLabel" align=right width=25%><input type="hidden" id="hdtxt_IsAdmin" value=1></input>Xem lịch mặc định</td>

                                                                                                <!-- This file is used to display the fields based on the ui type in detailview -->
                                                                                                <!--ComboBox-->

                                                                                                <td width=25% class="dvtCellInfo" align="left" id="mouseArea_Xem lịch mặc định" onmouseover="hndMouseOver(16, 'Xem lịch mặc định');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Xem lịch mặc định"><font color="">Ngày hôm nay</font></span>
                                                                                                    <div id="editarea_Xem lịch mặc định" style="display:none;">
                                                                                                        <select id="txtbox_Xem lịch mặc định" name="activity_view" class="small">
                                                                                                            <option value="Today" selected>
                                                                                                                Ngày hôm nay
                                                                                                            </option>

                                                                                                            <option value="This Week" >
                                                                                                                Tuần này
                                                                                                            </option>

                                                                                                            <option value="This Month" >
                                                                                                                Tháng này
                                                                                                            </option>

                                                                                                            <option value="This Year" >
                                                                                                                Năm nay
                                                                                                            </option>

                                                                                                        </select>
                                                                                                        <br><input name="button_Xem lịch mặc định" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Xem lịch mặc định', 'Users', 16, 'vtiger_users', 'activity_view', '5');
                                                                                                                fnhide('crmspanid');"/> hoặc
                                                                                                        <a href="javascript:;" onclick="hndCancel('dtlview_Xem lịch mặc định', 'editarea_Xem lịch mặc định', 'Xem lịch mặc định')" class="link">Hủy bỏ</a>
                                                                                                    </div>
                                                                                                </td>


                                                                                                <td class="dvtCellLabel" align=right>&nbsp;</td>
                                                                                                <td class="dvtCellInfo" align=left >&nbsp;</td>

                                                                                            </tr>
                                                                                        </table>

                                                                                    </td>
                                                                                </tr>
                                                                            </table>
                                                                            <!-- User detail blocks ends -->

                                                                        </td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td colspan=2 class="small"><div align="right"><a href="#top">[Quay về đầu trang]</a></div></td>
                                                                    </tr>
                                                                </table>

                                                            </form>

                                                        </td>
                                                    </tr>
                                                </table>


                                                </div>
                                            </td>

                                        </tr>
                                    </table>

                                </td>
                            </tr>
                        </table>

                </td>
                <td valign="top"><img src="themes/softed/images/showPanelTopRight.gif"></td>			
            </tr>
        </table>




        <br>

        <div id="tempdiv" style="display:block;position:absolute;left:350px;top:200px;"></div>
        <!-- added for validation -->
        <br><br><br>

        <!--    Footer-->
        <s:include value="footer.jsp"></s:include>
    </body>
</html>

