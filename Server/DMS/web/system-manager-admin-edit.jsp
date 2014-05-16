<%-- 
    Document   : system-manager-admin-edit
    Created on : May 16, 2014, 3:18:04 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
        <table align="center" border="0" cellpadding="0" cellspacing="0" width="98%">
            <tbody><tr>
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
                                                                <a href="">
                                                                    Kinh doanh
                                                                </a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="settingsTabList" nowrap>
                                                                <a href="">
                                                                    Vai trò
                                                                </a>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td class="settingsTabSelected" nowrap>
                                                                <a href="">
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
                                                                <a href="">
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
                                                    <form name="EditView" method="GET" action="admin-update" id="sub_form"   ">
                                                        <s:push value="user" >
                                                        <input type="hidden" name="user.stt" value="<s:property value="user.stt"/>">
                                                        <input type="hidden" name="user.id" value="<s:property value="user.id"/>">
                                                        <input type="hidden" name="user.pw" value="<s:property value="user.pw"/>">
                                                        <input type="hidden" name="user.ngayThamGia" value="<s:property value="user.ngayThamGia"/>">

                                                        <table width="100%"  border="0" cellspacing="0" cellpadding="0" class="settingsSelUITopLine">
                                                            <tr><td align="left">
                                                                    <table class="settingsSelUITopLine" border="0" cellpadding="5" cellspacing="0" width="100%">
                                                                        <tr>
                                                                            <td rowspan="2" width="50"><img src="themes/images/ico-users.gif" align="absmiddle"></td>
                                                                            <td>	
                                                                                <span class="lvtHeaderText">

                                                                                    <b><a href="">Quản trị viên </a> &gt;
                                                                                        Sửa Quản trị viên "<s:property value="user.id"/> " 
                                                                                        <s:property value="user.id"/>
                                                                                    </b></span>
                                                                            </td>
                                                                            <td rowspan="2" nowrap>&nbsp;
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><b class="small">Sửa thông tin quản trị viên"</b>
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr><td>&nbsp;</td></tr>
                                                            <tr>
                                                                <td nowrap align="right">
                                                                    <input title="Lưu [Alt+S]" accesskey="S" class="small crmbutton save"  name="button" value="  Lưu  "  onclick="
                                                                        document.getElementById('sub_form').submit();
                                                                        " style="width: 70px;" type="button" />
                                                                    <input title="Hủy bỏ [Alt+X]" accesskey="X" class="small crmbutton cancel" name="button" value="  Hủy bỏ  " onclick="window.history.back()" style="width: 70px;" type="button" />

                                                                </td>
                                                            </tr>
                                                            <tr><td class="padTab" align="left">
                                                                    <table width="100%" border="0" cellpadding="0" cellspacing="0">

                                                                        <tr><td colspan="2">
                                                                                <table align="center" border="0" cellpadding="0" cellspacing="0" width="99%">
                                                                                    <tr>
                                                                                        <td align="left" valign="top">
                                                                                            <table border="0" cellpadding="0" cellspacing="0" width="100%">
                                                                                                <tr><td align="left">
                                                                                                        <br>
                                                                                                        <table class="tableHeading" border="0" cellpadding="5" cellspacing="0" width="100%">
                                                                                                            <tr>
                                                                                                                <td class="big"><strong>Thông tin quản trị viên</strong></td><td class="small" align="right">&nbsp;</td>
                                                                                                            </tr>
                                                                                                        </table>
                                                                                                        <table border="0" cellpadding="5" cellspacing="0" width="100%">
                                                                                                            <!-- Handle the ui types display -->


                                                                                                            <!-- Added this file to display the fields in Create Entity page based on ui types  -->
                                                                                                            <tr style="height:25px">

                                                                                                                <td width=20% class="dvtCellLabel" align=right>
                                                                                                                    <font color="red"></font>Họ tên			
                                                                                                                </td>
                                                                                                                <td width=30% align=left class="dvtCellInfo">
                                                                                                                    <input type="text"  name="user.hoTen" value="<s:property value="user.hoTen"/>" tabindex="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'">
                                                                                                                </td>

                                                                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                                                                    <font color="red"></font>Chức danh			
                                                                                                                </td>
                                                                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                                                                    <input type="text"  name="user.chucDanh" value="<s:property value="user.chucDanh"/>" tabindex="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'">

                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr style="height:25px">

                                                                                                                <!-- Mandatory Email Fields -->			
                                                                                                                <td width=20% class="dvtCellLabel" align=right>
                                                                                                                    <font color="red"></font>Email 			 
                                                                                                                </td>
                                                                                                                <td width=30% align=left class="dvtCellInfo">
                                                                                                                    <input type="text" name="user.email" id ="email1" value="<s:property value="user.email"/>" tabindex="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'">
                                                                                                                </td>

                                                                                                                <!-- for Status field Disabled for nonadmin -->
                                                                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                                                                    <font color="red"></font>Số điện thoại			
                                                                                                                </td>
                                                                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                                                                    <input type="text" name="user.sdt" id ="email1" value="<s:property value="user.sdt"/>" tabindex="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'">
<!--                                                                                                                    <select id="user_status" name="status" tabindex="" class="small">

                                                                                                                        <option value="Active" selected >
                                                                                                                            Hoạt động
                                                                                                                        </option>
                                                                                                                        <option value="Inactive"  >
                                                                                                                            Ngừng hoạt động
                                                                                                                        </option>
                                                                                                                    </select>-->
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr style="height:25px">

                                                                                                                <td width=20% class="dvtCellLabel" align=right><font color="red"></font>Địa chỉ</td>

                                                                                                                <td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="user.diaChi" id ="first_name" value="<s:property value="user.diaChi"/>" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'"></td>

                                                                                                                <!-- for currency in users details-->	
                                                                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                                                                    <font color="red">*</font>Quyền			
                                                                                                                </td>
                                                                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                                                                    <select name="user.permission" tabindex="" class="small">
                                                                                                                        <s:if test="user.permission == 1">
                                                                                                                            <option value="1" selected>Quản lý cao cấp</option>
                                                                                                                            <option value="2" >Quản lý bán hàng</option>
                                                                                                                        </s:if>
                                                                                                                        <s:else>
                                                                                                                            <option value="1" >Quản lý cao cấp</option>
                                                                                                                            <option value="2" selected>Quản lý bán hàng</option>
                                                                                                                        </s:else>
                                                                                                                        <!-- code added to pass Currency field value, if Disabled for nonadmin -->
                                                                                                                        <!--code ends -->
                                                                                                                    </select>
                                                                                                                    <!-- code added to pass Currency field value, if Disabled for nonadmin -->
                                                                                                                    <!--code ends -->
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            <tr style="height:25px">

                                                                                                                <td width=20% class="dvtCellLabel" align=right>
                                                                                                                    <font color="red">*</font>Trạng thái			
                                                                                                                </td>
                                                                                                                <td width=30% align=left class="dvtCellInfo">
                                                                                                                    <select name="user.status" tabindex="" class="small">
                                                                                                                        <s:if test="user.status == true">
                                                                                                                            <option value="true" selected>Hoạt động</option>
                                                                                                                            <option value="false" >Dừng hoạt động</option>
                                                                                                                        </s:if>
                                                                                                                        <s:else>
                                                                                                                            <option value="true" >Hoạt động</option>
                                                                                                                            <option value="false" selected>Dừng hoạt động</option>
                                                                                                                        </s:else>
                                                                                                                        <!-- code added to pass Currency field value, if Disabled for nonadmin -->
                                                                                                                        <!--code ends -->
                                                                                                                    </select>
                                                                                                                </td>

                                                                                                                <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
                                                                                                                <td width="20%" class="dvtCellLabel" align=right>
                                                                                                                    <font color="red"></font>
                                                                                                                    Ghi chú			
                                                                                                                </td>
                                                                                                                <td width="30%" align=left class="dvtCellInfo">
                                                                                                                    <input type="text" name="user.ghiChu" id ="email1" value="<s:property value="user.ghiChu"/>" tabindex="" class=detailedViewTextBox onFocus="this.className = 'detailedViewTextBoxOn'" onBlur="this.className = 'detailedViewTextBox'">
                                                                                                                </td>
                                                                                                            </tr>
                                                                                                            
                                                                                                        </table>
                                                                                                        <br>


                                                                                                <tr>
                                                                                                    <td colspan=4 align="right">
                                                                                                        <input title="Lưu [Alt+S]" accesskey="S" class="small crmbutton save"  name="button" value="  Lưu  "  onclick="
                                                                                                            document.getElementById('sub_form').submit();
                                                                                                               " style="width: 70px;" type="button" />
                                                                                                        <input title="Hủy bỏ [Alt+X]" accesskey="X" class="small crmbutton cancel" name="button" value="  Hủy bỏ  " onclick="window.history.back()" style="width: 70px;" type="button" />
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </table>
                                                                                        </td></tr>
                                                                                </table>
                                                                            </td></tr>
                                                                    </table>
                                                                    <br>
                                                                </td></tr>
                                                            <tr><td class="small"><div align="right"><a href="#top"></a></div></td></tr>
                                                        </table>
                                                    </form>
                                                                                                                
                                                        </s:push>
                                                </td>
                                            </tr>
                                        </table>
                                        </form>	
                                    </td>
                                </tr>
                            </table>
                    </td></tr>
        </table>
        <br>
        <br><br><br>

        <!--    Footer-->
        <s:include value="footer.jsp"></s:include>
    </body>
</html>

