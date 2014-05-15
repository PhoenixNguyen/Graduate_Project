<%-- 
    Document   : system-manager-admin-notify
    Created on : May 16, 2014, 4:01:27 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s"  uri="/struts-tags"%>
<!DOCTYPE html>

<html>
    <head>
        <title>admin - Thiết lập - Thiết lập - Phần mềm quản lý HOSCO-MANAGEMENT</title>
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
                                                        <tr>
                                                            <td class="settingsTabList" nowrap>
                                                                <a href="index.php?module=Settings&amp;action=ModuleManager&amp;parenttab=Settings">
                                                                    Thông báo
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

                                                    </script>				<!-- DISPLAY -->
                                                    <table border=0 cellspacing=0 cellpadding=5 width=100% class="settingsSelUITopLine">
                                                        <tr>
                                                            <td width=50 rowspan=2 valign=top><img src="themes/images/announ.gif" width="48" height="48" border=0></td>
                                                            <td class=heading2 valign=bottom><b><a href="index.php?module=Settings&action=index&parenttab=Settings">Thiết lập</a> > Thông báo </b><div id="an_busy" style="display:none;float:left;position:relative;"><img src="themes/images/vtbusy.gif" align="right"></div></td>
                                                        </tr>
                                                        <tr>
                                                            <td valign=top class="small">Thay đổi nội dung trong thông báo ở đầu mỗi trang </td>
                                                        </tr>
                                                    </table>

                                                    <br>
                                                    <table border=0 cellspacing=0 cellpadding=10 width=100% >
                                                        <tr>
                                                            <td>

                                                                <table border=0 cellspacing=0 cellpadding=5 width=100% class="tableHeading">
                                                                    <tr>
                                                                        <td class="big"><strong>Nội dung thông báo</strong></td>
                                                                        <td class="small" align=right><input type="button" class="crmButton small save" value="Cập nhật" onclick="javascript:Announcement();"></td>
                                                                    </tr>
                                                                </table>

                                                                <table border=0 cellspacing=0 cellpadding=5 width=100% class="listTable">
                                                                    <tr>
                                                                        <td class="colHeader small" valign=top>Nhập thông báo vào ô bên dưới, và ấn nút Cập nhật</td>
                                                                    </tr>
                                                                    <tr>
                                                                        <td class="listTableRow small" valign=top><textarea class=small width=90% height=100px id="announcement" name="announcement">Th&ocirc;ng b&aacute;o: Ng&agrave;y 27/10. Bắt đầu l&agrave;m đặc tả phần mềm cho MEDICC</textarea></td>
                                                                    </tr>
                                                                </table>
                                                                <!--table border=0 cellspacing=0 cellpadding=5 width=100% >
                                                                <tr><td class="small" nowrap align=right><a href="#top">[Quay về đầu trang]</a></td></tr>
                                                                </table-->
                                                            </td>
                                                        </tr>
                                                    </table>



                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>

                        </div>

                    </td>
                    <td valign="top"><img src="themes/softed/images/showPanelTopRight.gif"></td>
                </tr>
            </tbody>
        </table>

        <br><br><br>

        <!--    Footer-->
        <s:include value="footer.jsp"></s:include>
</body>
</html>

