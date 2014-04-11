
<!--
/*********************************************************************************
 * The contents of this file are subject to the SugarCRM Public License Version 1.2
 * ("License"); You may not use this file except in compliance with the 
 * License. You may obtain a copy of the License at http://www.sugarcrm.com/SPL
 * Software distributed under the License is distributed on an  "AS IS"  basis,
 * WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License for
 * the specific language governing rights and limitations under the License.
 * The Original Code is:  SugarCRM Open Source
 * The Initial Developer of the Original Code is SugarCRM, Inc.
 * Portions created by SugarCRM are Copyright (C) SugarCRM, Inc.;
 * All Rights Reserved.
 * Contributor(s): ______________________________________.
 ********************************************************************************/
-->

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD html 4.01 Transitional//EN">
<html>
    <head>
        <link REL="SHORTCUT ICON" HREF="themes/images/vtigercrm_icon.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HOSCO-MANAGEMENT</title>
        
        <style type="text/css">@import url("include/style.css");</style>
        <style type="text/css">@import url("themes/softed/style.css");</style>
    </head>
    <body onload=set_focus() style="padding:0; margin:0;"><!-- startscrmprint --><!--Added to display the footer in the login page by Dina-->
        <script type="text/javascript" language="JavaScript">
<!-- Begin -->
            function set_focus() {
                if (document.DetailView.user_name.value != '') {
                    document.DetailView.user_password.focus();
                    document.DetailView.user_password.select();
                }
                else
                    document.DetailView.user_name.focus();
            }
<!-- End -->
        </script>


        <br><br>
        <div align="center">	
            <table border="0" cellpadding="0" cellspacing="0" width="700">
                <tr>
                    <!--			<td align="right"><img src="themes/images/honestCRMTop.gif"></td>-->
                </tr>
            </table>
            <!-- key to check session_out in Ajax key=s18i14i22a19 -->
            <!-- Login Starts -->
            <table border="0" cellspacing="0" cellpadding="0" width=700>
                <tr>
                    <td class="bg" width="50%">
                        <img src="themes/images/hoscoName.gif" alt="HOSCO-MANAGEMENT" title="HOSCO-MANAGEMENT">
                    </td>
                    <td class="bg" align="right" width="50%">
                    </td>
                </tr>
                <tr>
                    <td class="small z1" align="center">
                        <img src="themes/images/bullets.gif"> 
                    </td>
                    <td class="small z2" align="center">
                        <!-- Sign in form -->
                        <br>
                        <form action="login" method="post" name="DetailView" id="form">
                            <input type="hidden" name="module" value="Users">
                            <input type="hidden" name="action" value="Authenticate">
                            <input type="hidden" name="return_module" value="Users">
                            <input type="hidden" name="return_action" value="Login">
                            <table border="0" cellpadding="0" cellspacing="0" width="80%">
                                <tr>
                                    <td class="signinHdr"><!--<img src="themes/images/signin.gif" alt="Sign in" title="Sign in">-->ĐĂNG NHẬP</td>
                                </tr>
                                <tr>
                                    <td class="small">
                                        <!-- form elements -->
                                        <br>
                                        <table border="0" cellpadding="5" cellspacing="0" width="100%">
                                            <tr>
                                                <td class="small" align="right" width="30%">Tên đăng nhập<!--Người dùng--></td>
                                                <td class="small" align="left" width="70%"><input class="small" type="text" name="user_name"  tabindex="1"></td>
                                            </tr>
                                            <tr>
                                                <td class="small" align="right" width="30%">Mật khẩu<!--Mật khẩu--></td>
                                                <td class="small" align="left" width="70%"><input class="small" type="password" size='20' name="user_password"  tabindex="2"></td>
                                            </tr>
                                            <tr bgcolor="#f5f5f5">
                                                <td class="small" align="right" width="30%">Hiển thị<!--Màu nền--></td>
                                                <td class="small" align="left" width="70%"><select class="small" name='login_theme' style="width:70%" tabindex="3">
                                                        <!-- 
                                                        <OPTION value='alphagrey'>alphagrey</OPTION>
                                                        <OPTION value='bluelagoon'>bluelagoon</OPTION>
                                                        <OPTION selected value='softed'>softed</OPTION>
                                                        <OPTION value='woodspice'>woodspice</OPTION> -->
                                                        <option selected="" value="softed">HOSCO-THEME</option>
                                                    </select></td>
                                            </tr>
                                            <tr bgcolor="#f5f5f5">
                                                <td class="small" align="right" width="30%">Ngôn ngữ<!--Ngôn ngữ--></td>
                                                <td class="small" align="left" width="70%"><select class="small" name='login_language' style="width:70%" tabindex="4">
                                                        <!-- vtlib Customization -->
                                                        <!-- 
                                                            <OPTION value='en_us'>US English</OPTION>
                                                            <OPTION selected value='vn'>Vietnamese</OPTION> -->
                                                        <option value="vn">Tiếng Việt</option>
                                                    </select></td>		
                                            </tr>
                                            <tr>
                                                <td class="small">&nbsp;</td>
                                                <td class="small">
                                                    <input title="Đăng nhập [Alt+L]" alt="Đăng nhập [Alt+L]" accesskey="Đăng nhập [Alt+L]" src="themes/images/btnSignInNEW.gif" type="image" name="Login" value="  Đăng nhập  "  tabindex="5">
                                                </td>
                                            </tr>
                                        </table>
                                        <br><br>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </td>
                </tr>
            </table>
        </div>
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
        <script language = 'JavaScript' type='text/javascript' src = 'include/js/popup.js'></script><br><br><br><table border=0 cellspacing=0 cellpadding=5 width=100% class=settingsSelectedUI ><tr><td class=small align=left><span style='color: rgb(153, 153, 153);'>HOSCO-CRM</span></td><td class=small align=right><span style='color: rgb(153, 153, 153);'>&copy; 2014 <a href='http://www.hosgroup.com.vn' target='_blank'>hosgroup.com.vn</a></span> <img src='http://stats.hosgroup.com.vn/stats.php?uid=777ddc572adcbcebafc476bcc1f627c6&v=5.2.1&type=U'
                    alt='|' title='' border=0 width='1px' height='1px'></td></tr></table>		<script>
            var userDateFormat = "";
            var default_charset = "UTF-8";
        </script>
        <!--end body panes-->
    </td></tr>
<tr><td colspan="2" align="center">
    </td></tr></table>
</body>
</html>
