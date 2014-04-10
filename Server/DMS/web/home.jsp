<%-- 
    Document   : home
    Created on : Apr 9, 2014, 10:11:04 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>admin - Trang chủ - Trang chủ - Phần mềm quản lý HOSCO-MANAGEMENT</title>
        <link REL="SHORTCUT ICON" HREF="themes/images/vtigercrm_icon.ico">	
        <style type="text/css">@import url("themes/softed/style.css");</style>
<!--        <link rel="stylesheet" type="text/css" media="all" href="themes/softed/style.css">-->
        <link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
        <!-- ActivityReminder customization for callback -->

        <style type="text/css">div.fixedLay1 { position:fixed; }</style>
        <!--[if lte IE 6]>
        <style type="text/css">div.fixedLay { position:absolute; }</style>
        <![endif]-->

        <!-- End -->
    </head>
    <body leftmargin=0 topmargin=0 marginheight=0 marginwidth=0 class=small>
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

        <img src="themes/softed/images/layerPopupBg.gif" style="display: none;"/>

        <TABLE border=0 cellspacing=0 cellpadding=0 width=100% class="hdrNameBg">
            <tr>
                <td valign=top><img src="themes/softed/images/vtiger-crm.gif" alt="HOSCO-MANAGEMENT" title="HOSCO-MANAGEMENT" border=0></td>
                <td width=100% align=center>
            <marquee id="rss" direction="left" scrolldelay="10" scrollamount="3" behavior="scroll" class="marStyle" onMouseOver="javascript:stop();" onMouseOut="javascript:start();">&nbsp;admin :  Th&ocirc;ng b&aacute;o: Ng&agrave;y 27/10. Bắt đầu l&agrave;m đặc tả phần mềm cho MEDIC   </marquee>

        </td>
        <td class=small nowrap>
            <table border=0 cellspacing=0 cellpadding=0>
                <tr>


                    <!-- gmailbookmarklet customization -->
                    <!--<td style="padding-left:10px;padding-right:10px" class=small nowrap>
                           <a href='javascript:(function()%7Bvar%20doc=top.document;var%20bodyElement=document.body;doc.vtigerURL%20=%22http://hosgroup.com.vn/hoscomng/%22;var%20scriptElement=document.createElement(%22script%22);scriptElement.type=%22text/javascript%22;scriptElement.src=doc.vtigerURL+%22modules/Emails/GmailBookmarkletTrigger.js%22;bodyElement.appendChild(scriptElement);%7D)();'>Gmail Bookmarklet</a>
                    </td> -->
                    <!-- END -->
                    <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap> <a href="javascript:void(0);" onclick="vtiger_news(this)">Tin HOSCO</a></td> -->
                    <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap> <a href="javascript:void(0);" onclick="vtiger_feedback();">Phản hồi</a></td> -->

                    <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap> <a href="home.jsp?module=Users&action=DetailView&record=1&modechk=prefview">Thiết lập cá nhân</a></td>-->
                    <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap><a href="http://wiki.hosgroup.com.vn/home.jsp/Main_Page" target="_blank">Hướng dẫn sử dụng online</a></td> -->
                    <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap><a href="javascript:;" onClick="openwin();">Giới thiệu</a></td> -->
                    <td style="padding-left:10px;padding-right:10px" class=small nowrap> <a href="home.jsp?module=Users&action=Logout">Thoát</a> (admin)</td>
                </tr>
            </table>
        </td>
    </tr>
</TABLE>

<div id='miniCal' style='width:300px; position:absolute; display:none; left:100px; top:100px; z-index:100000'>
</div>

<!-- header - master tabs -->
<TABLE border=0 cellspacing=0 cellpadding=0 width=100% class="hdrTabBg">
    <tr>
        <td style="width:50px" class=small>&nbsp;</td>
        <td class=small nowrap> 
            <table border=0 cellspacing=0 cellpadding=0>

                <tr>
                    <td class=tabSeperator><img src="themes/images/spacer.gif" width=2px height=28px></td>		
                    <td class="tabSelected"  onmouseover="fnDropDown(this, 'My Home Page_sub');" onmouseout="fnHideDrop('My Home Page_sub');" align="center" nowrap><a href="home.jsp?module=Home&action=index&parenttab=My Home Page">Trang chủ</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
                    <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                    <td class="tabUnSelected"  onmouseover="fnDropDown(this, 'Marketing_sub');" onmouseout="fnHideDrop('Marketing_sub');" align="center" nowrap><a href="home.jsp?module=Campaigns&action=index&parenttab=Marketing">Marketing</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
                    <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                    <td class="tabUnSelected"  onmouseover="fnDropDown(this, 'Sales_sub');" onmouseout="fnHideDrop('Sales_sub');" align="center" nowrap><a href="home.jsp?module=Leads&action=index&parenttab=Sales">Bán hàng</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
                    <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                    <td class="tabUnSelected"  onmouseover="fnDropDown(this, 'Support_sub');" onmouseout="fnHideDrop('Support_sub');" align="center" nowrap><a href="home.jsp?module=HelpDesk&action=index&parenttab=Support">Hỗ trợ</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
                    <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                    <td class="tabUnSelected"  onmouseover="fnDropDown(this, 'Analytics_sub');" onmouseout="fnHideDrop('Analytics_sub');" align="center" nowrap><a href="home.jsp?module=Reports&action=index&parenttab=Analytics">Phân tích</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
                    <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                    <td class="tabUnSelected"  onmouseover="fnDropDown(this, 'Inventory_sub');" onmouseout="fnHideDrop('Inventory_sub');" align="center" nowrap><a href="home.jsp?module=Products&action=index&parenttab=Inventory">Tồn kho</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
                    <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                    <td class="tabUnSelected"  onmouseover="fnDropDown(this, 'Tools_sub');" onmouseout="fnHideDrop('Tools_sub');" align="center" nowrap><a href="home.jsp?module=Rss&action=index&parenttab=Tools">Công cụ</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
                    <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                    <td class="tabUnSelected"  onmouseover="fnDropDown(this, 'Settings_sub');" onmouseout="fnHideDrop('Settings_sub');" align="center" nowrap><a href="home.jsp?module=Settings&action=index&parenttab=Settings">Thiết lập</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
                    <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
                    <td style="padding-left:10px" nowrap>
                        <select class=small id="qccombo" style="width:110px"  onchange="QCreate(this);">
                            <option value="none">Khởi tạo nhanh...</option>
                            <option value="Accounts">Tạo&nbsp;Khách hàng</option>
                            <option value="Assets">Tạo&nbsp;SINGLE_Assets</option>
                            <option value="Calendar">Tạo&nbsp;Tác vụ</option>
                            <option value="Campaigns">Tạo&nbsp;Chiến dịch</option>
                            <option value="ModComments">Tạo&nbsp;SINGLE_ModComments</option>
                            <option value="Contacts">Tạo&nbsp;Liên hệ</option>
                            <option value="Documents">Tạo&nbsp;Tài liệu</option>
                            <option value="Events">Tạo&nbsp;Sự kiện</option>
                            <option value="HelpDesk">Tạo&nbsp;Thẻ</option>
                            <option value="Leads">Tạo&nbsp;Đầu mối</option>
                            <option value="Potentials">Tạo&nbsp;Cơ hội</option>
                            <option value="PriceBooks">Tạo&nbsp;Bảng giá</option>
                            <option value="Products">Tạo&nbsp;Sản phẩm</option>
                            <option value="ProjectMilestone">Tạo&nbsp;SINGLE_ProjectMilestone</option>
                            <option value="ProjectTask">Tạo&nbsp;SINGLE_ProjectTask</option>
                            <option value="ServiceContracts">Tạo&nbsp;Hợp đồng dịch vụ</option>
                            <option value="Services">Tạo&nbsp;Dịch vụ</option>
                            <option value="Vendors">Tạo&nbsp;Nhà cung cấp</option>
                        </select>

                    </td>
                </tr>

            </table>
        </td>
        <td align=right style="padding-right:10px" nowrap >
            <table border=0 cellspacing=0 cellpadding=0 id="search" style="border:1px solid #999999;background-color:white">
                <tr>
                <form name="UnifiedSearch" method="post" action="home.jsp" style="margin:0px" onsubmit="VtigerJS_DialogBox.block();">
                    <td style="height:19px;background-color:#ffffef" nowrap>
                        <a href='javascript:void(0);' onclick="UnifiedSearch_SelectModuleForm(this);"><img src="themes/images/settings_top.gif" align='left' border=0></a>
                        <input type="hidden" name="action" value="UnifiedSearch" style="margin:0px">
                        <input type="hidden" name="module" value="Home" style="margin:0px">
                        <input type="hidden" name="parenttab" value="My Home Page" style="margin:0px">
                        <input type="hidden" name="search_onlyin" value="--USESELECTED--" style="margin:0px">
                        <input type="text" name="query_string" value="Tìm kiếm..." class="searchBox" onFocus="this.value = ''" >
                    </td>
                    <td style="background-color:#cccccc">
                        <input type="submit" class="searchBtn" value="Tìm" alt="Tìm" title="Tìm">
                    </td>
                </form>
    </tr>
</table>
</td>
</td>
</tr>
</TABLE>
<!-- - level 2 tabs starts-->
<TABLE border=0 cellspacing=0 cellpadding=2 width=100% class="level2Bg" >
    <tr>
        <td >
            <table border=0 cellspacing=0 cellpadding=0>
                <tr>
                    <!-- ASHA: Avoid using this as it gives module name instead of module label. 
                    Now Using the same array QUICKACCESS that is used to show drop down menu
                    (which gives both module name and module label)-->
<!--															      					 

                    <td class="level2SelTab" nowrap><a href="home.jsp?module=Home&action=index&parenttab=My Home Page">Trang chủ</a></td>



                    <td class="level2UnSelTab" nowrap> <a href="home.jsp?module=Calendar&action=index&parenttab=My Home Page">Lịch</a> </td>



                    <td class="level2UnSelTab" nowrap> <a href="home.jsp?module=Webmails&action=index&parenttab=My Home Page">Webmails</a> </td>

-->




                    <td class="level2SelTab" nowrap><a href="home.jsp?module=Home&action=index&parenttab=My Home Page">Trang chủ</a></td>




                    <td class="level2UnSelTab" nowrap> <a href="home.jsp?module=Calendar&action=index&parenttab=My Home Page">Lịch</a> </td>




                    <td class="level2UnSelTab" nowrap> <a href="home.jsp?module=Webmails&action=index&parenttab=My Home Page">Webmails</a> </td>

                </tr>
            </table>
        </td>
    </tr>
</TABLE>		
<!-- Level 2 tabs ends -->
<div id="calculator_cont" style="position:absolute; z-index:10000" ></div>


<div id="wclock" style="z-index:10000001;" class="layerPopup">
    <table class="mailClientBg" align="center" border="0" cellpadding="5" cellspacing="0" width="100%">
        <tr style="cursor:move;" >
            <td style="text-align:left;" id="Handle"><b>Đồng hồ</b></td>
            <td align="right">
                <a href="javascript:;">
                    <img src="themes/images/close.gif" border="0"  onClick="fninvsh('wclock')" hspace="5" align="absmiddle">
                </a>
            </td>
        </tr>
    </table>
    <table class="hdrNameBg" align="center" border="0" cellpadding="2" cellspacing="0" width="100%">
        <tr>
            <td nowrap="nowrap" colspan="2">
                <div style="background-image: url(themes/softed/images/clock_bg.gif); background-repeat: no-repeat; background-position: 4px 38px;" id="theClockLayer">
                    <div id="theCities" class="citystyle">
                        <form action="" name="frmtimezone">
                            <input name="PHPSESSID" value="162c0ab587f6c555aaaa30d681b61f7c" type="hidden">
                            <select name="clockcity" size="1" class="importBox small"   id="clockcity" style="width:125px;"  onchange="lcl(this.selectedIndex, this.options[0].selected)">
                                <option value="0" selected="selected">Local time</option>
                                <option value="4.30">Afghanistan</option>
                                <option value="1">Algeria</option>
                                <option value="-3">Argentina</option>
                                <option value="9.30">Australia - Adelaide</option>
                                <option value="8">Australia - Perth</option>
                                <option value="10">Australia - Sydney</option>
                                <option value="1">Austria</option>
                                <option value="3">Bahrain</option>
                                <option value="6">Bangladesh</option>
                                <option value="1">Belgium</option>
                                <option value="-4">Bolivia</option>
                                <option value="-5">Brazil - Andes</option>
                                <option value="-3">Brazil - East</option>
                                <option value="-4">Brazil - West</option>
                                <option value="2">Bulgaria</option>
                                <option value="6.30">Burma (Myanmar)</option>
                                <option value="-5">Chile</option>
                                <option value="-7">Canada - Calgary</option>
                                <option value="-3.30">Canada - Newfoundland</option>
                                <option value="-4">Canada - Nova Scotia</option>
                                <option value="-5">Canada - Toronto</option>
                                <option value="-8">Canada - Vancouver</option>
                                <option value="-6">Canada - Winnipeg</option>
                                <option value="8">China - Mainland</option>
                                <option value="8">China - Taiwan</option>
                                <option value="-5">Colombia</option>
                                <option value="-5">Cuba</option>
                                <option value="1">Denmark</option>
                                <option value="-5">Ecuador</option>
                                <option value="2">Egypt</option>
                                <option value="12">Fiji</option>
                                <option value="2">Finland</option>
                                <option value="1">France</option>
                                <option value="1">Germany</option>
                                <option value="0">Ghana</option>
                                <option value="2">Greece</option>
                                <option value="-3">Greenland</option>
                                <option value="1">Hungary</option>
                                <option value="5.30">India</option>
                                <option value="8">Indonesia - Bali, Borneo</option>
                                <option value="9">Indonesia - Irian Jaya</option>
                                <option value="7">Indonesia - Sumatra, Java</option>
                                <option value="3.30">Iran</option>
                                <option value="3">Iraq</option>
                                <option value="2">Israel</option>
                                <option value="1">Italy</option>
                                <option value="-5">Jamaica</option>
                                <option value="9">Japan</option>
                                <option value="3">Kenya</option>
                                <option value="9">Korea (North &amp; South)</option>
                                <option value="3">Kuwait</option>
                                <option value="1">Libya</option>
                                <option value="8">Malaysia</option>
                                <option value="5">Maldives</option>
                                <option value="1">Mali</option>
                                <option value="4">Mauritius</option>
                                <option value="-6">Mexico</option>
                                <option value="0">Morocco</option>
                                <option value="5.45">Nepal</option>
                                <option value="1">Netherlands</option>
                                <option value="12">New Zealand</option>
                                <option value="1">Nigeria</option>
                                <option value="1">Norway</option>
                                <option value="4">Oman</option>
                                <option value="5">Pakistan</option>
                                <option value="-5">Peru</option>
                                <option value="8">Philippines</option>
                                <option value="1">Poland</option>
                                <option value="1">Portugal</option>
                                <option value="3">Qatar</option>
                                <option value="2">Romania</option>
                                <option value="11">Russia - Kamchatka</option>
                                <option value="3">Russia - Moscow</option>
                                <option value="9">Russia - Vladivostok</option>
                                <option value="4">Seychelles</option>
                                <option value="3">Saudi Arabia</option>
                                <option value="8">Singapore</option>
                                <option value="2">South Africa</option>
                                <option value="1">Spain</option>
                                <option value="3">Syria</option>
                                <option value="5.30">Sri Lanka</option>
                                <option value="1">Sweden</option>
                                <option value="1">Switzerland</option>
                                <option value="7">Thailand</option>
                                <option value="12">Tonga</option>
                                <option value="2">Turkey</option>
                                <option value="3">Ukraine</option>
                                <option value="5">Uzbekistan</option>
                                <option value="7">Vietnam</option>
                                <option value="4">UAE</option>
                                <option value="0">UK</option>
                                <option value="-9">USA - Alaska</option>
                                <option value="-9">USA - Arizona</option>
                                <option value="-6">USA - Central</option>
                                <option value="-5">USA - Eastern</option>
                                <option value="-10">USA - Hawaii</option>
                                <option value="-5">USA - Indiana East</option>
                                <option value="-7">USA - Mountain</option>
                                <option value="-8">USA - Pacific</option>
                                <option value="3">Yemen</option>
                                <option value="1">Yugoslavia</option>
                                <option value="2">Zambia</option>
                                <option value="2">Zimbabwe</option>
                            </select>
                        </form>
                    </div>
                    <script type="text/javascript">
                        var theme = "softed";
                    </script>
                    <script type="text/javascript" src="include/js/clock.js"></script>

                    <div id="theFace0" class="facestyle" style="color: rgb(0, 0, 0); top: 81px; left: 96px;">3</div>
                    <div id="theFace1" class="facestyle" style="color: rgb(0, 0, 0); top: 102px; left: 90.3731px;">4</div>
                    <div id="theFace2" class="facestyle" style="color: rgb(0, 0, 0); top: 117.373px; left: 75px;">5</div>
                    <div id="theFace3" class="facestyle" style="color: rgb(0, 0, 0); top: 123px; left: 54px;">6</div>
                    <div id="theFace4" class="facestyle" style="color: rgb(0, 0, 0); top: 117.373px; left: 33px;">7</div>
                    <div id="theFace5" class="facestyle" style="color: rgb(0, 0, 0); top: 102px; left: 17.6269px;">8</div>
                    <div id="theFace6" class="facestyle" style="color: rgb(0, 0, 0); top: 81px; left: 12px;">9</div>
                    <div id="theFace7" class="facestyle" style="color: rgb(0, 0, 0); top: 60px; left: 17.6269px;">10</div>
                    <div id="theFace8" class="facestyle" style="color: rgb(0, 0, 0); top: 44.6269px; left: 33px;">11</div>
                    <div id="theFace9" class="facestyle" style="color: rgb(0, 0, 0); top: 39px; left: 54px;">12</div>
                    <div id="theFace10" class="facestyle" style="color: rgb(0, 0, 0); top: 44.6269px; left: 75px;">1</div>
                    <div id="theFace11" class="facestyle" style="color: rgb(0, 0, 0); top: 60px; left: 90.3731px;">2</div>
                </div></td>
        </tr>
        </tbody>
    </table>
</div>
<script>
    var theHandle = document.getElementById("Handle");
    var theRoot = document.getElementById("wclock");
    Drag.init(theHandle, theRoot);
</script>


<div id="qcform" style="position:absolute;width:700px;top:80px;left:450px;z-index:100000;"></div>

<!-- Unified Search module selection feature -->
<div id="UnifiedSearch_moduleformwrapper" style="position:absolute;width:400px;z-index:100002;display:none;"></div>
<script type='text/javascript'>

    function UnifiedSearch_SelectModuleForm(obj) {
        if ($('UnifiedSearch_moduleform')) {
            // If we have loaded the form already.
            UnifiedSearch_SelectModuleFormCallback(obj);
        } else {
            $('status').show();
            new Ajax.Request(
                    'home.jsp',
                    {queue: {position: 'end', scope: 'command'},
                        method: 'post',
                        postBody: 'module=Home&action=HomeAjax&file=UnifiedSearchModules&ajax=true',
                        onComplete: function(response) {
                            $('status').hide();
                            $('UnifiedSearch_moduleformwrapper').innerHTML = response.responseText;
                            UnifiedSearch_SelectModuleFormCallback(obj);
                        }
                    });
        }
    }
    function UnifiedSearch_SelectModuleFormCallback(obj) {
        fnvshobj(obj, 'UnifiedSearch_moduleformwrapper');
    }
    function UnifiedSearch_SelectModuleToggle(flag) {
        Form.getElements($('UnifiedSearch_moduleform')).each(
                function(element) {
                    if (element.type == 'checkbox') {
                        element.checked = flag;
                    }
                }
        );
    }
    function UnifiedSearch_SelectModuleCancel() {
        $('UnifiedSearch_moduleformwrapper').hide();
    }
    function UnifiedSearch_SelectModuleSave() {
        var UnifiedSearch_form = document.forms.UnifiedSearch;
        UnifiedSearch_form.search_onlyin.value = Form.serialize($('UnifiedSearch_moduleform')).replace(/search_onlyin=/g, '').replace(/&/g, ',');
        UnifiedSearch_SelectModuleCancel();
    }

</script>
<!-- End -->

<script>
    var gVTModule = 'Home';
    function fetch_clock()
    {
        new Ajax.Request(
                'home.jsp',
                {queue: {position: 'end', scope: 'command'},
                    method: 'post',
                    postBody: 'module=Utilities&action=UtilitiesAjax&file=Clock',
                    onComplete: function(response)
                    {
                        $("clock_cont").innerHTML = response.responseText;
                        execJS($('clock_cont'));
                    }
                }
        );

    }

    function fetch_calc()
    {
        new Ajax.Request(
                'home.jsp',
                {queue: {position: 'end', scope: 'command'},
                    method: 'post',
                    postBody: 'module=Utilities&action=UtilitiesAjax&file=Calculator',
                    onComplete: function(response)
                    {
                        $("calculator_cont").innerHTML = response.responseText;
                        execJS($('calculator_cont'));
                    }
                }
        );
    }
</script>

<script>

    function QCreate(qcoptions) {
        var module = qcoptions.options[qcoptions.options.selectedIndex].value;
        if (module != 'none') {
            $("status").style.display = "inline";
            if (module == 'Events') {
                module = 'Calendar';
                var urlstr = '&activity_mode=Events';
            } else if (module == 'Calendar') {
                module = 'Calendar';
                var urlstr = '&activity_mode=Task';
            } else {
                var urlstr = '';
            }
            new Ajax.Request(
                    'home.jsp',
                    {queue: {position: 'end', scope: 'command'},
                        method: 'post',
                        postBody: 'module=' + module + '&action=' + module + 'Ajax&file=QuickCreate' + urlstr,
                        onComplete: function(response) {
                            $("status").style.display = "none";
                            $("qcform").style.display = "inline";
                            $("qcform").innerHTML = response.responseText;
                            // Evaluate all the script tags in the response text.
                            var scriptTags = $("qcform").getElementsByTagName("script");
                            for (var i = 0; i < scriptTags.length; i++) {
                                var scriptTag = scriptTags[i];
                                eval(scriptTag.innerHTML);
                            }
                            eval($("qcform"));
                            posLay(qcoptions, "qcform");
                        }
                    }
            );
        } else {
            hide('qcform');
        }
    }

    function getFormValidate(divValidate)
    {
        var st = document.getElementById('qcvalidate');
        eval(st.innerHTML);
        for (var i = 0; i < qcfieldname.length; i++) {
            var curr_fieldname = qcfieldname[i];
            if (window.document.QcEditView[curr_fieldname] != null)
            {
                var type = qcfielddatatype[i].split("~")
                var input_type = window.document.QcEditView[curr_fieldname].type;
                if (type[1] == "M") {
                    if (!qcemptyCheck(curr_fieldname, qcfieldlabel[i], input_type))
                        return false
                }
                switch (type[0]) {
                    case "O"  :
                        break;
                    case "V"  :
                        break;
                    case "C"  :
                        break;
                    case "DT" :
                        if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length != 0)
                        {
                            if (type[1] == "M")
                                if (!qcemptyCheck(type[2], qcfieldlabel[i], getObj(type[2]).type))
                                    return false
                            if (typeof (type[3]) == "undefined")
                                var currdatechk = "OTH"
                            else
                                var currdatechk = type[3]

                            if (!qcdateTimeValidate(curr_fieldname, type[2], qcfieldlabel[i], currdatechk))
                                return false
                            if (type[4]) {
                                if (!dateTimeComparison(curr_fieldname, type[2], qcfieldlabel[i], type[5], type[6], type[4]))
                                    return false

                            }
                        }
                        break;
                    case "D"  :
                        if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length != 0)
                        {
                            if (typeof (type[2]) == "undefined")
                                var currdatechk = "OTH"
                            else
                                var currdatechk = type[2]

                            if (!qcdateValidate(curr_fieldname, qcfieldlabel[i], currdatechk))
                                return false
                            if (type[3]) {
                                if (!qcdateComparison(curr_fieldname, qcfieldlabel[i], type[4], type[5], type[3]))
                                    return false
                            }
                        }
                        break;
                    case "T"  :
                        if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length != 0)
                        {
                            if (typeof (type[2]) == "undefined")
                                var currtimechk = "OTH"
                            else
                                var currtimechk = type[2]

                            if (!timeValidate(curr_fieldname, qcfieldlabel[i], currtimechk))
                                return false
                            if (type[3]) {
                                if (!timeComparison(curr_fieldname, qcfieldlabel[i], type[4], type[5], type[3]))
                                    return false
                            }
                        }
                        break;
                    case "I"  :
                        if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length != 0)
                        {
                            if (window.document.QcEditView[curr_fieldname].value.length != 0)
                            {
                                if (!qcintValidate(curr_fieldname, qcfieldlabel[i]))
                                    return false
                                if (type[2]) {
                                    if (!qcnumConstComp(curr_fieldname, qcfieldlabel[i], type[2], type[3]))
                                        return false
                                }
                            }
                        }
                        break;
                    case "N"  :
                    case "NN" :
                        if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length != 0)
                        {
                            if (window.document.QcEditView[curr_fieldname].value.length != 0)
                            {
                                if (typeof (type[2]) == "undefined")
                                    var numformat = "any"
                                else
                                    var numformat = type[2]

                                if (type[0] == "NN") {

                                    if (!numValidate(curr_fieldname, qcfieldlabel[i], numformat, true))
                                        return false
                                } else {
                                    if (!numValidate(curr_fieldname, qcfieldlabel[i], numformat))
                                        return false
                                }
                                if (type[3]) {
                                    if (!numConstComp(curr_fieldname, qcfieldlabel[i], type[3], type[4]))
                                        return false
                                }
                            }
                        }
                        break;
                    case "E"  :
                        if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length != 0)
                        {
                            if (window.document.QcEditView[curr_fieldname].value.length != 0)
                            {
                                var etype = "EMAIL"
                                if (!qcpatternValidate(curr_fieldname, qcfieldlabel[i], etype))
                                    return false
                            }
                        }
                        break;
                }
            }
        }
        //added to check Start Date & Time,if Activity Status is Planned.//start
        for (var j = 0; j < qcfieldname.length; j++)
        {
            curr_fieldname = qcfieldname[j];
            if (window.document.QcEditView[curr_fieldname] != null)
            {
                if (qcfieldname[j] == "date_start")
                {
                    var datelabel = qcfieldlabel[j]
                    var datefield = qcfieldname[j]
                    var startdatevalue = window.document.QcEditView[datefield].value.replace(/^\s+/g, '').replace(/\s+$/g, '')
                }
                if (qcfieldname[j] == "time_start")
                {
                    var timelabel = qcfieldlabel[j]
                    var timefield = qcfieldname[j]
                    var timeval = window.document.QcEditView[timefield].value.replace(/^\s+/g, '').replace(/\s+$/g, '')
                }
                if (qcfieldname[j] == "eventstatus" || qcfieldname[j] == "taskstatus")
                {
                    var statusvalue = window.document.QcEditView[curr_fieldname].options[window.document.QcEditView[curr_fieldname].selectedIndex].value.replace(/^\s+/g, '').replace(/\s+$/g, '')
                    var statuslabel = qcfieldlabel[j++]
                }
            }
        }
        if (statusvalue == "Planned")
        {
            var dateelements = splitDateVal(startdatevalue)
            var hourval = parseInt(timeval.substring(0, timeval.indexOf(":")))
            var minval = parseInt(timeval.substring(timeval.indexOf(":") + 1, timeval.length))
            var dd = dateelements[0]
            var mm = dateelements[1]
            var yyyy = dateelements[2]

            var chkdate = new Date()
            chkdate.setYear(yyyy)
            chkdate.setMonth(mm - 1)
            chkdate.setDate(dd)
            chkdate.setMinutes(minval)
            chkdate.setHours(hourval)
            if (!comparestartdate(chkdate))
                return false;


        }//end
        return true;
    }
</SCRIPT>


<div id="allMenu" onmouseout="fninvsh('allMenu');" onMouseOver="fnvshNrm('allMenu');" style="width:650px;z-index: 10000001;display:none;">
    <table border=0 cellpadding="5" cellspacing="0" class="allMnuTable" >
        <tr>
            <td valign="top">
                <span class="allMnuHdr">Trang chủ</span>


                <a href="home.jsp?module=Home&action=index&parenttab=My Home Page" class="allMnu">Trang chủ</a>


                <a href="home.jsp?module=Calendar&action=index&parenttab=My Home Page" class="allMnu">Lịch</a>


                <a href="home.jsp?module=Webmails&action=index&parenttab=My Home Page" class="allMnu">Webmails</a>
                <span class="allMnuHdr">Marketing</span>


                <a href="home.jsp?module=Campaigns&action=index&parenttab=Marketing" class="allMnu">Chiến dịch</a>


                <a href="home.jsp?module=Accounts&action=index&parenttab=Marketing" class="allMnu">Khách hàng</a>


                <a href="home.jsp?module=Contacts&action=index&parenttab=Marketing" class="allMnu">Liên hệ</a>


                <a href="home.jsp?module=Webmails&action=index&parenttab=Marketing" class="allMnu">Webmails</a>


                <a href="home.jsp?module=Leads&action=index&parenttab=Marketing" class="allMnu">Đầu mối</a>


                <a href="home.jsp?module=Calendar&action=index&parenttab=Marketing" class="allMnu">Lịch</a>


                <a href="home.jsp?module=Documents&action=index&parenttab=Marketing" class="allMnu">Tài liệu</a>
                <span class="allMnuHdr">Bán hàng</span>


                <a href="home.jsp?module=Leads&action=index&parenttab=Sales" class="allMnu">Đầu mối</a>


                <a href="home.jsp?module=Accounts&action=index&parenttab=Sales" class="allMnu">Khách hàng</a>


                <a href="home.jsp?module=Contacts&action=index&parenttab=Sales" class="allMnu">Liên hệ</a>


                <a href="home.jsp?module=Potentials&action=index&parenttab=Sales" class="allMnu">Cơ hội</a>


            </td><td valign="top">
                <a href="home.jsp?module=Quotes&action=index&parenttab=Sales" class="allMnu">Báo giá</a>


                <a href="home.jsp?module=SalesOrder&action=index&parenttab=Sales" class="allMnu">Đặt hàng</a>


                <a href="home.jsp?module=Invoice&action=index&parenttab=Sales" class="allMnu">Hóa đơn</a>


                <a href="home.jsp?module=PriceBooks&action=index&parenttab=Sales" class="allMnu">Bảng giá</a>


                <a href="home.jsp?module=Documents&action=index&parenttab=Sales" class="allMnu">Tài liệu</a>


                <a href="home.jsp?module=Calendar&action=index&parenttab=Sales" class="allMnu">Lịch</a>
                <span class="allMnuHdr">Hỗ trợ</span>


                <a href="home.jsp?module=HelpDesk&action=index&parenttab=Support" class="allMnu">Trợ giúp</a>


                <a href="home.jsp?module=Faq&action=index&parenttab=Support" class="allMnu">Câu hỏi thường gặp</a>


                <a href="home.jsp?module=Accounts&action=index&parenttab=Support" class="allMnu">Khách hàng</a>


                <a href="home.jsp?module=Contacts&action=index&parenttab=Support" class="allMnu">Liên hệ</a>


                <a href="home.jsp?module=Documents&action=index&parenttab=Support" class="allMnu">Tài liệu</a>


                <a href="home.jsp?module=Webmails&action=index&parenttab=Support" class="allMnu">Webmails</a>


                <a href="home.jsp?module=Calendar&action=index&parenttab=Support" class="allMnu">Lịch</a>


                <a href="home.jsp?module=ServiceContracts&action=index&parenttab=Support" class="allMnu">Hợp đồng dịch vụ</a>


                <a href="home.jsp?module=ProjectMilestone&action=index&parenttab=Support" class="allMnu">ProjectMilestone</a>


            </td><td valign="top">
                <a href="home.jsp?module=ProjectTask&action=index&parenttab=Support" class="allMnu">ProjectTask</a>
                <span class="allMnuHdr">Phân tích</span>


                <a href="home.jsp?module=Reports&action=index&parenttab=Analytics" class="allMnu">Báo cáo</a>


                <a href="home.jsp?module=Dashboard&action=index&parenttab=Analytics" class="allMnu">Biểu đồ</a>
                <span class="allMnuHdr">Tồn kho</span>


                <a href="home.jsp?module=Products&action=index&parenttab=Inventory" class="allMnu">Sản phẩm</a>


                <a href="home.jsp?module=Vendors&action=index&parenttab=Inventory" class="allMnu">Nhà cung cấp</a>


                <a href="home.jsp?module=PriceBooks&action=index&parenttab=Inventory" class="allMnu">Bảng giá</a>


                <a href="home.jsp?module=PurchaseOrder&action=index&parenttab=Inventory" class="allMnu">Nhập hàng</a>


                <a href="home.jsp?module=SalesOrder&action=index&parenttab=Inventory" class="allMnu">Đặt hàng</a>


                <a href="home.jsp?module=Quotes&action=index&parenttab=Inventory" class="allMnu">Báo giá</a>


                <a href="home.jsp?module=Invoice&action=index&parenttab=Inventory" class="allMnu">Hóa đơn</a>


                <a href="home.jsp?module=Services&action=index&parenttab=Inventory" class="allMnu">Dịch vụ</a>


                <a href="home.jsp?module=Assets&action=index&parenttab=Inventory" class="allMnu">Assets</a>
                <span class="allMnuHdr">Công cụ</span>


                <a href="home.jsp?module=Rss&action=index&parenttab=Tools" class="allMnu">Tin nhanh</a>


                <a href="home.jsp?module=Portal&action=index&parenttab=Tools" class="allMnu">Trang Web</a>


                <a href="home.jsp?module=Documents&action=index&parenttab=Tools" class="allMnu">Tài liệu</a>


            </td><td valign="top">
                <a href="home.jsp?module=PBXManager&action=index&parenttab=Tools" class="allMnu">Quản lý PBX</a>


                <a href="home.jsp?module=SMSNotifier&action=index&parenttab=Tools" class="allMnu">SMSNotifier</a>


                <a href="home.jsp?module=RecycleBin&action=index&parenttab=Tools" class="allMnu">Thùng rác</a>


                <a href="home.jsp?module=ModComments&action=index&parenttab=Tools" class="allMnu">Comments</a>
                <span class="allMnuHdr">Thiết lập</span>


                <a href="home.jsp?module=Settings&action=index&parenttab=Settings" class="allMnu">Thiết lập</a>


                <a href="home.jsp?module=Settings&action=index&parenttab=Settings" class="allMnu">Quản lý phân hệ</a>
            </td>
        </tr>
    </table>
</div>

<!-- Drop Down Menu in the Main Tab -->
<div class="drop_mnu" id="My Home Page_sub" onmouseout="fnHideDrop('My Home Page_sub')" onmouseover="fnShowDrop('My Home Page_sub')">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">


        <tr><td><a href="home.jsp?module=Home&action=index&parenttab=My Home Page" class="drop_down">Trang chủ</a></td></tr>


        <tr><td><a href="home.jsp?module=Calendar&action=index&parenttab=My Home Page" class="drop_down">Lịch</a></td></tr>


        <tr><td><a href="home.jsp?module=Webmails&action=index&parenttab=My Home Page" class="drop_down">Webmails</a></td></tr>
    </table>
</div>
<div class="drop_mnu" id="Marketing_sub" onmouseout="fnHideDrop('Marketing_sub')" onmouseover="fnShowDrop('Marketing_sub')">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">


        <tr><td><a href="home.jsp?module=Campaigns&action=index&parenttab=Marketing" class="drop_down">Chiến dịch</a></td></tr>


        <tr><td><a href="home.jsp?module=Accounts&action=index&parenttab=Marketing" class="drop_down">Khách hàng</a></td></tr>


        <tr><td><a href="home.jsp?module=Contacts&action=index&parenttab=Marketing" class="drop_down">Liên hệ</a></td></tr>


        <tr><td><a href="home.jsp?module=Webmails&action=index&parenttab=Marketing" class="drop_down">Webmails</a></td></tr>


        <tr><td><a href="home.jsp?module=Leads&action=index&parenttab=Marketing" class="drop_down">Đầu mối</a></td></tr>


        <tr><td><a href="home.jsp?module=Calendar&action=index&parenttab=Marketing" class="drop_down">Lịch</a></td></tr>


        <tr><td><a href="home.jsp?module=Documents&action=index&parenttab=Marketing" class="drop_down">Tài liệu</a></td></tr>
    </table>
</div>
<div class="drop_mnu" id="Sales_sub" onmouseout="fnHideDrop('Sales_sub')" onmouseover="fnShowDrop('Sales_sub')">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">


        <tr><td><a href="home.jsp?module=Leads&action=index&parenttab=Sales" class="drop_down">Đầu mối</a></td></tr>


        <tr><td><a href="home.jsp?module=Accounts&action=index&parenttab=Sales" class="drop_down">Khách hàng</a></td></tr>


        <tr><td><a href="home.jsp?module=Contacts&action=index&parenttab=Sales" class="drop_down">Liên hệ</a></td></tr>


        <tr><td><a href="home.jsp?module=Potentials&action=index&parenttab=Sales" class="drop_down">Cơ hội</a></td></tr>


        <tr><td><a href="home.jsp?module=Quotes&action=index&parenttab=Sales" class="drop_down">Báo giá</a></td></tr>


        <tr><td><a href="home.jsp?module=SalesOrder&action=index&parenttab=Sales" class="drop_down">Đặt hàng</a></td></tr>


        <tr><td><a href="home.jsp?module=Invoice&action=index&parenttab=Sales" class="drop_down">Hóa đơn</a></td></tr>


        <tr><td><a href="home.jsp?module=PriceBooks&action=index&parenttab=Sales" class="drop_down">Bảng giá</a></td></tr>


        <tr><td><a href="home.jsp?module=Documents&action=index&parenttab=Sales" class="drop_down">Tài liệu</a></td></tr>


        <tr><td><a href="home.jsp?module=Calendar&action=index&parenttab=Sales" class="drop_down">Lịch</a></td></tr>
    </table>
</div>
<div class="drop_mnu" id="Support_sub" onmouseout="fnHideDrop('Support_sub')" onmouseover="fnShowDrop('Support_sub')">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">


        <tr><td><a href="home.jsp?module=HelpDesk&action=index&parenttab=Support" class="drop_down">Trợ giúp</a></td></tr>


        <tr><td><a href="home.jsp?module=Faq&action=index&parenttab=Support" class="drop_down">Câu hỏi thường gặp</a></td></tr>


        <tr><td><a href="home.jsp?module=Accounts&action=index&parenttab=Support" class="drop_down">Khách hàng</a></td></tr>


        <tr><td><a href="home.jsp?module=Contacts&action=index&parenttab=Support" class="drop_down">Liên hệ</a></td></tr>


        <tr><td><a href="home.jsp?module=Documents&action=index&parenttab=Support" class="drop_down">Tài liệu</a></td></tr>


        <tr><td><a href="home.jsp?module=Webmails&action=index&parenttab=Support" class="drop_down">Webmails</a></td></tr>


        <tr><td><a href="home.jsp?module=Calendar&action=index&parenttab=Support" class="drop_down">Lịch</a></td></tr>


        <tr><td><a href="home.jsp?module=ServiceContracts&action=index&parenttab=Support" class="drop_down">Hợp đồng dịch vụ</a></td></tr>


        <tr><td><a href="home.jsp?module=ProjectMilestone&action=index&parenttab=Support" class="drop_down">ProjectMilestone</a></td></tr>


        <tr><td><a href="home.jsp?module=ProjectTask&action=index&parenttab=Support" class="drop_down">ProjectTask</a></td></tr>
    </table>
</div>
<div class="drop_mnu" id="Analytics_sub" onmouseout="fnHideDrop('Analytics_sub')" onmouseover="fnShowDrop('Analytics_sub')">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">


        <tr><td><a href="home.jsp?module=Reports&action=index&parenttab=Analytics" class="drop_down">Báo cáo</a></td></tr>


        <tr><td><a href="home.jsp?module=Dashboard&action=index&parenttab=Analytics" class="drop_down">Biểu đồ</a></td></tr>
    </table>
</div>
<div class="drop_mnu" id="Inventory_sub" onmouseout="fnHideDrop('Inventory_sub')" onmouseover="fnShowDrop('Inventory_sub')">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">


        <tr><td><a href="home.jsp?module=Products&action=index&parenttab=Inventory" class="drop_down">Sản phẩm</a></td></tr>


        <tr><td><a href="home.jsp?module=Vendors&action=index&parenttab=Inventory" class="drop_down">Nhà cung cấp</a></td></tr>


        <tr><td><a href="home.jsp?module=PriceBooks&action=index&parenttab=Inventory" class="drop_down">Bảng giá</a></td></tr>


        <tr><td><a href="home.jsp?module=PurchaseOrder&action=index&parenttab=Inventory" class="drop_down">Nhập hàng</a></td></tr>


        <tr><td><a href="home.jsp?module=SalesOrder&action=index&parenttab=Inventory" class="drop_down">Đặt hàng</a></td></tr>


        <tr><td><a href="home.jsp?module=Quotes&action=index&parenttab=Inventory" class="drop_down">Báo giá</a></td></tr>


        <tr><td><a href="home.jsp?module=Invoice&action=index&parenttab=Inventory" class="drop_down">Hóa đơn</a></td></tr>


        <tr><td><a href="home.jsp?module=Services&action=index&parenttab=Inventory" class="drop_down">Dịch vụ</a></td></tr>


        <tr><td><a href="home.jsp?module=Assets&action=index&parenttab=Inventory" class="drop_down">Assets</a></td></tr>
    </table>
</div>
<div class="drop_mnu" id="Tools_sub" onmouseout="fnHideDrop('Tools_sub')" onmouseover="fnShowDrop('Tools_sub')">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">


        <tr><td><a href="home.jsp?module=Rss&action=index&parenttab=Tools" class="drop_down">Tin nhanh</a></td></tr>


        <tr><td><a href="home.jsp?module=Portal&action=index&parenttab=Tools" class="drop_down">Trang Web</a></td></tr>


        <tr><td><a href="home.jsp?module=Documents&action=index&parenttab=Tools" class="drop_down">Tài liệu</a></td></tr>


        <tr><td><a href="home.jsp?module=PBXManager&action=index&parenttab=Tools" class="drop_down">Quản lý PBX</a></td></tr>


        <tr><td><a href="home.jsp?module=SMSNotifier&action=index&parenttab=Tools" class="drop_down">SMSNotifier</a></td></tr>


        <tr><td><a href="home.jsp?module=RecycleBin&action=index&parenttab=Tools" class="drop_down">Thùng rác</a></td></tr>


        <tr><td><a href="home.jsp?module=ModComments&action=index&parenttab=Tools" class="drop_down">Comments</a></td></tr>
    </table>
</div>
<div class="drop_mnu" id="Settings_sub" onmouseout="fnHideDrop('Settings_sub')" onmouseover="fnShowDrop('Settings_sub')">
    <table width="100%" border="0" cellpadding="0" cellspacing="0">


        <tr><td><a href="home.jsp?module=Settings&action=index&parenttab=Settings" class="drop_down">Thiết lập</a></td></tr>


        <tr><td><a href="home.jsp?module=Settings&action=ModuleManager&parenttab=Settings" class="drop_down">Quản lý phân hệ</a></td></tr>
    </table>
</div>


<div id="status" style="position:absolute;display:none;left:850px;top:95px;height:27px;white-space:nowrap;"><img src="themes/softed/images/status.gif"></div>
<script>
    function openwin()
    {
        window.open("home.jsp?module=Users&action=about_us", "aboutwin", "height=520,width=515,top=200,left=300")
    }

</script>


<div id="tracker" style="display:none;position:absolute;z-index:100000001;" class="layerPopup">

    <table border="0" cellpadding="5" cellspacing="0" width="200">
        <tr style="cursor:move;">
            <td colspan="2" class="mailClientBg small" id="Track_Handle"><strong>Xem gần nhất</strong></td>
            <td align="right" style="padding:5px;" class="mailClientBg small">
                <a href="javascript:;"><img src="themes/images/close.gif" border="0"  onClick="fninvsh('tracker')" hspace="5" align="absmiddle"></a>
            </td></tr>
    </table>
    <table border="0" cellpadding="5" cellspacing="0" width="200" class="hdrNameBg">
        <tr>
            <td class="trackerListBullet small" align="center" width="12">1</td>
            <td class="trackerList small"> <a href="home.jsp?module=SalesOrder&action=DetailView&record=611&parenttab=My Home Page">Đặt h&agrave;ng phần mề...</a> </td><td class="trackerList small">&nbsp;</td></tr>
        <tr>
            <td class="trackerListBullet small" align="center" width="12">2</td>
            <td class="trackerList small"> <a href="home.jsp?module=SalesOrder&action=DetailView&record=201&parenttab=My Home Page">Đặt h&agrave;ng 1</a> </td><td class="trackerList small">&nbsp;</td></tr>
        <tr>
            <td class="trackerListBullet small" align="center" width="12">3</td>
            <td class="trackerList small"> <a href="home.jsp?module=Accounts&action=DetailView&record=137&parenttab=My Home Page">Trần Thị Khanh</a> </td><td class="trackerList small">&nbsp;</td></tr>
        <tr>
            <td class="trackerListBullet small" align="center" width="12">4</td>
            <td class="trackerList small"> <a href="home.jsp?module=Leads&action=DetailView&record=203&parenttab=My Home Page">anh Long </a> </td><td class="trackerList small">&nbsp;</td></tr>
        <tr>
            <td class="trackerListBullet small" align="center" width="12">5</td>
            <td class="trackerList small"> <a href="home.jsp?module=Accounts&action=DetailView&record=138&parenttab=My Home Page">Nguyễn Can Trường</a> </td><td class="trackerList small">&nbsp;</td></tr>
    </table>
</div>

<script>
    var THandle = document.getElementById("Track_Handle");
    var TRoot = document.getElementById("tracker");
    Drag.init(THandle, TRoot);
</script>		

<!-- vtiger Feedback -->
<script type="text/javascript">

    function vtiger_feedback() {
        window.open("http://www.hosgroup.com.vn/products/crm/feedback.php?uid=777ddc572adcbcebafc476bcc1f627c6", "feedbackwin", "height=300,width=515,top=200,left=300")
    }

</script>
<!-- hosco news -->
<script type="text/javascript">

    function vtiger_news(obj) {
        $('status').style.display = 'inline';
        new Ajax.Request(
                'home.jsp',
                {queue: {position: 'end', scope: 'command'},
                    method: 'post',
                    postBody: 'module=Home&action=HomeAjax&file=HomeNews',
                    onComplete: function(response) {
                        $("vtigerNewsPopupLay").innerHTML = response.responseText;
                        fnvshobj(obj, 'vtigerNewsPopupLay');
                        $('status').style.display = 'none';
                    }
                }
        );

    }

</script>
<div class="lvtCol fixedLay1" id="vtigerNewsPopupLay" style="display: none; height: 250px; bottom: 2px; padding: 2px; z-index: 12; font-weight: normal;" align="left">
</div>
<!-- END -->

<!-- ActivityReminder Customization for callback -->
<!--<div class="lvtCol fixedLay1" id="ActivityRemindercallback" style="border: 0; right: 0px; bottom: 2px; display:none; padding: 2px; z-index: 10; font-weight: normal;" align="left">
</div>-->
<!-- End -->

<!-- divs for asterisk integration -->
<div class="lvtCol fixedLay1" id="notificationDiv" style="float: right;  padding-right: 5px; overflow: hidden; border-style: solid; right: 0px; border-color: rgb(141, 141, 141); bottom: 0px; display: none; padding: 2px; z-index: 10; font-weight: normal;" align="left">
</div>

<div id="OutgoingCall" style="display: none;position: absolute;z-index:200;" class="layerPopup">
    <table  border='0' cellpadding='5' cellspacing='0' width='100%'>
        <tr style='cursor:move;' >
            <td class='mailClientBg small' id='outgoing_handle'>
                <b>Các cuộc gọi đi</b>
            </td>
        </tr>
    </table>
    <table  border='0' cellpadding='0' cellspacing='0' width='100%' class='hdrNameBg'>
        </tr>
        <tr><td style='padding:10px;' colspan='2'>
                Pick up the extensions receiver to dial the number
            </td></tr>
    </table>
</div>
<!-- divs for asterisk integration :: end--><!-- startscrmprint -->
<div class='hide_tab' id="editRowmodrss_" style="position:absolute; top:0px;left:0px;">
    <table width="100%" border="0" cellpadding="0" cellspacing="0" class="small" valign="top">
        <tr>
        </tr>
    </table>
</div>

<script language="javascript" type="text/javascript" src="modules/Home/Homestuff.js"></script>
<script language="javascript" type="text/javascript" src="include/scriptaculous/prototype.js"></script>
<script language="javascript" type="text/javascript" src="include/scriptaculous/scriptaculous.js"></script>
<script language="javascript" type="text/javascript" src="include/scriptaculous/unittest.js"></script>
<script language="javascript" type="text/javascript" src="include/js/notebook.js"></script>

<input id="homeLayout" type="hidden" value="4">


<table border=0 cellspacing=0 cellpadding=5 width="50%" class="small homePageButtons">
    <tr style="cursor: pointer;">
        <td style="padding-left:10px;padding-right:50px" width=10% class="moduleName" nowrap>
            Trang chủ&nbsp;&gt; 
            <a class="hdrLink" href="home.jsp?action=index&module=Home">
                Trang chủ
            </a>
        </td>
        <td class="sep1">
            &nbsp;
        </td>	

        <td align='left'>
            <img width="27" height="27" onClick='fnAddWindow(this, "addWidgetDropDown");' onMouseOut='fnRemoveWindow();' src="themes/softed/images/btnL3Add.gif" border="0" title="" alt"" style="cursor:pointer;">
        </td>

        <td>
            <img width="27" height="27" src="themes/softed/images/btnL3Calendar.gif" alt="Mở lịch công tác..." title="Mở lịch công tác..." border=0  onClick='fnvshobj(this, "miniCal");
                        getMiniCal();'/>
        </td>
        <td>
            <img width="27" height="27" src="themes/softed/images/btnL3Clock.gif" alt="Hiện đồng hồ..." title="Hiện đồng hồ..." border=0 onClick="fnvshobj(this, 'wclock');">
        </td>
        <td>
            <img width="27" height="27" src="themes/softed/images/btnL3Calc.gif" alt="Mở máy tính..." title="Mở máy tính..." border=0 onClick="fnvshobj(this, 'calculator_cont');
                        fetch_calc();">
        </td>
        <td>
            <img width="27" height="27" src="themes/softed/images/tbarChat.gif" alt="Tán gẫu..." title="Tán gẫu..." border=0  onClick='return window.open("home.jsp?module=Home&action=vtchat", "Chat", "width=600,height=450,resizable=1,scrollbars=1");'>
        </td>	
        <td>
            <img width="27" height="27" src="themes/softed/images/btnL3Tracker.gif" alt="Xem gần nhất" title="Xem gần nhất" border="0" onClick="fnvshobj(this, 'tracker');">
        </td>

        <td>
            <img width="27" height="27" src="themes/softed/images/btnL3AllMenu.gif" alt="Mở tất cả Menu..." title="Mở tất cả Menu..." border="0" onmouseout="fninvsh('allMenu');" onClick="$('allMenu').style.display = 'block';
                        $('allMenu').style.visibility = 'visible';
                        placeAtCenter($('allMenu'))">
        </td>

        <td align='left'>
            <img width="27" height="27" onClick='showOptions("changeLayoutDiv");' src="themes/images/orgshar.gif" border="0" title="Đổi giao diện" alt"Đổi giao diện" style="cursor:pointer;">
        </td>

        <td width="100%" align="center">
            <div id="vtbusy_info" style="display: none;">
                <img src="themes/softed/images/status.gif" border="0" />
            </div>
        </td>
    </tr>
</table>

<form name="Homestuff" id="formStuff" style="display: inline;">
    <input type="hidden" name="action" value="homestuff">
    <input type="hidden" name="module" value="Home">
    <div id='addWidgetDropDown' style='background-color: #fff; display:none;' onmouseover='fnShowWindow()' onmouseout='fnRemoveWindow()'>
        <ul class="widgetDropDownList">
            <li>
                <a href='javascript:;' class='drop_down' id="addmodule">
                    Phân hệ
                </a>
            </li>
            <li>
                <a href='javascript:;' class='drop_down' id="addrss">
                    Tin nhanh
                </a>
            </li>

            <li>
                <a href='javascript:;' class='drop_down' id="adddash">
                    Biểu đồ
                </a>
            </li>
            <li>
                <a href='javascript:;' class='drop_down' id="addNotebook">
                    Sổ tay
                </a>
            </li>
    </div>

    <div id="addWidgetsDiv" class="layerPopup" style="z-index:2000; display:none; width: 400px;">
        <input type="hidden" name="stufftype" id="stufftype_id">	
        <table width="100%" border="0" cellpadding="5" cellspacing="0" class="layerHeadingULine">
            <tr>
                <td class="layerPopupHeading" align="left" id="divHeader"></td>
                <td align="right"><a href="javascript:;" onclick="fnhide('addWidgetsDiv');
                                $('stufftitle_id').value = '';"><img src="themes/images/close.gif" border="0"  align="absmiddle" /></a></td>
            </tr>
        </table>
        <table border=0 cellspacing=0 cellpadding=5 width=95% align=center> 
            <tr>
                <td class=small >
                    <table border="0" cellspacing="0" cellpadding="3" width="100%" align="center" bgcolor="white">
                        <tr id="StuffTitleId" style="display:block;">
                            <td class="dvtCellLabel"  width="110" align="right">
                                Tiêu đề cửa sổ
                                <font color='red'>*</font>
                            </td>
                            <td class="dvtCellInfo" colspan="2" width="300">
                                <input type="text" name="stufftitle" id="stufftitle_id" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'" style="width:57%">
                            </td>
                        </tr>
                        <tr id="showrow">
                            <td class="dvtCellLabel"  width="110" align="right">Hiện</td>
                            <td class="dvtCellInfo" width="300" colspan="2">
                                <select name="maxentries" id="maxentryid" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'" style="width:60%">
                                    <option value="1">1</option>
                                    <option value="2">2</option>
                                    <option value="3">3</option>
                                    <option value="4">4</option>
                                    <option value="5">5</option>
                                    <option value="6">6</option>
                                    <option value="7">7</option>
                                    <option value="8">8</option>
                                    <option value="9">9</option>
                                    <option value="10">10</option>
                                    <option value="11">11</option>
                                    <option value="12">12</option>
                                </select>&nbsp;&nbsp;mục
                            </td>
                        </tr>
                        <tr id="moduleNameRow" style="display:block">
                            <td class="dvtCellLabel"  width="110" align="right">Phân hệ</td>
                            <td width="300" class="dvtCellInfo" colspan="2">
                                <select name="selmodule" id="selmodule_id" onchange="setFilter(this)" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'" style="width:60%">
                                    <option value="Accounts">Khách hàng</option>
                                    <option value="Assets">Assets</option>
                                    <option value="Calendar">Lịch</option>
                                    <option value="Campaigns">Chiến dịch</option>
                                    <option value="Contacts">Liên hệ</option>
                                    <option value="Documents">Tài liệu</option>
                                    <option value="Faq">Câu hỏi thường gặp</option>
                                    <option value="HelpDesk">Trợ giúp</option>
                                    <option value="Invoice">Hóa đơn</option>
                                    <option value="Leads">Đầu mối</option>
                                    <option value="ModComments">ModComments</option>
                                    <option value="PBXManager">Quản lý PBX</option>
                                    <option value="Potentials">Cơ hội</option>
                                    <option value="PriceBooks">Bảng giá</option>
                                    <option value="Products">Sản phẩm</option>
                                    <option value="ProjectMilestone">ProjectMilestone</option>
                                    <option value="ProjectTask">ProjectTask</option>
                                    <option value="PurchaseOrder">Nhập hàng</option>
                                    <option value="Quotes">Báo giá</option>
                                    <option value="SMSNotifier">SMSNotifier</option>
                                    <option value="SalesOrder">Đặt hàng</option>
                                    <option value="ServiceContracts">Hợp đồng dịch vụ</option>
                                    <option value="Services">Dịch vụ</option>
                                    <option value="Vendors">Nhà cung cấp</option>
                                </select>
                                <input type="hidden" name="fldname">
                            </td>
                        </tr>
                        <tr id="moduleFilterRow" style="display:block">
                            <td class="dvtCellLabel" align="right" width="110" >Lọc theo</td>
                            <td id="selModFilter_id" colspan="2" class="dvtCellInfo" width="300">
                            </td>
                        </tr>
                        <tr id="modulePrimeRow" style="display:block">
                            <td class="dvtCellLabel" width="110" align="right" valign="top">Trường muốn xem <br>(chọn 2 trường bất kỳ)</td>
                            <td id="selModPrime_id" colspan="2" class="dvtCellInfo" width="300">
                            </td>
                        </tr>
                        <tr id="rssRow" style="display:none">
                            <td class="dvtCellLabel"  width="110" align="right">Địa chỉ tin nhanh<font color='red'>*</font></td>
                            <td width="300" colspan="2" class="dvtCellInfo"><input type="text" name="txtRss" id="txtRss_id" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'" style="width:58%"></td>
                        </tr>
                        <tr id="dashNameRow" style="display:none">
                            <td class="dvtCellLabel"  width="110" align="right">Tên biểu đồ</td>
                            <td id="selDashName" class="dvtCellInfo" colspan="2" width="300"></td>
                        </tr>
                        <tr id="dashTypeRow" style="display:none">
                            <td class="dvtCellLabel" align="right" width="110">Kiểu biểu đồ</td>
                            <td id="selDashType" class="dvtCellInfo" width="300" colspan="2">
                                <select name="seldashtype" id="seldashtype_id" class="detailedViewTextBox" onfocus="this.className = 'detailedViewTextBoxOn'" onblur="this.className = 'detailedViewTextBox'" style="width:60%">
                                    <option value="horizontalbarchart">Biểu đồ ngang</option>
                                    <option value="verticalbarchart">Biểu đồ dọc</option>
                                    <option value="piechart">Biểu đồ tròn</option>
                                </select>
                            </td>
                        </tr>
                    </table>	
                </td>
            </tr>
        </table>

        <table border=0 cellspacing=0 cellpadding=5 width=95% align="center">
            <tr>
                <td align="right">
                    <input type="button" name="save" value=" &nbsp;Lưu&nbsp; " id="savebtn" class="crmbutton small save" onclick="frmValidate()"></td>
                <td align="left"><input type="button" name="cancel" value="Hủy bỏ" class="crmbutton small cancel" onclick="fnhide('addWidgetsDiv');
                                        $('stufftitle_id').value = '';">
                </td>
            </tr>
        </table>
    </div>
</form>

<div id="seqSettings" style="background-color:#E0ECFF;z-index:6000000;display:none;">
</div>


<div id="changeLayoutDiv" class="layerPopup" style="z-index:2000; display:none;">
    <table>
        <tr class="layerHeadingULine">
            <td class="big">
                Đổi giao diện
            </td>
            <td>
                <img onclick="hideOptions('changeLayoutDiv');" src="themes/images/close.gif" border="0" align="right" style="cursor: pointer;"/>
            </td>
        </tr>
        <tr id="numberOfColumns">
            <td class="dvtCellLabel" align="right">
                Số cột trên trang
            </td>
            <td class="dvtCellLabel">
                <select id="layoutSelect" class="small">
                    <option value="2">
                        Hai cột
                    </option>
                    <option value="3">
                        Ba cột
                    </option>
                    <option value="4">
                        Bốn cột
                    </option>
                </select>
            </td>
        </tr>
        <tr>
            <td align="right">
                <input type="button" name="save" value=" &nbsp;Lưu&nbsp; " id="savebtn" class="crmbutton small save" onclick="saveLayout();">
            </td>
            <td align="left">
                <input type="button" name="cancel" value="Hủy bỏ" class="crmbutton small cancel" onclick="hideOptions('changeLayoutDiv');">
            </td>
        </tr>

    </table>
</div><div id="vtbusy_homeinfo" style="display:none;">
    <img src="themes/images/vtbusy.gif" border="0">
</div>

<!--<table width="97%" class="small showPanelBg" cellpadding="0" cellspacing="0" border="0" align="center" valign="top">
    <tr>
        <td width="100%" align="center" valign="top" height="350">
            <div id="MainMatrix" class="show_tab topMarginHomepage" style="padding:0px;width:100%">

                <script type="text/javascript">var vtdashboard_defaultDashbaordWidgetTitle = 'Bảng tổng kết';</script>
                <div id="stuff_387" class="MatrixLayer " style="float:left;overflow-x:hidden;overflow-y:auto;">
                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="headerrow_387" class="headerrow">
                            <td align="left" class="homePageMatrixHdr" style="height:30px;" nowrap width=60%><b>&nbsp;Khách có thể chốt</b></td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=5%>
                                <span id="refresh_387" style="position:relative;">&nbsp;&nbsp;</span>
                            </td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=35% nowrap>

                                <a id="editlink" style='cursor:pointer;' onclick="showEditrow(387)">
                                    <img src="themes/images/windowSettings.gif" border="0" alt="Sửa" title="Sửa [Alt+E]" hspace="2" align="absmiddle"/>
                                </a>	

                                <a style='cursor:pointer;' onclick="loadStuff(387, 'Module');">
                                    <img src="themes/images/windowRefresh.gif" border="0" alt="" title="" hspace="2" align="absmiddle"/>
                                </a>

                                <img src="themes/images/windowMinMax-off.gif" border="0" alt="Ẩn" title="Ẩn" hspace="5" align="absmiddle"/>

                                <a id="deletelink" style='cursor:pointer;' onclick="DelStuff(387)"><img src="themes/images/windowClose.gif" border="0" alt="Đóng" title="Đóng" hspace="5" align="absmiddle"/></a>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="maincont_row_387" class="show_tab winmarkModulesusr">
                            <td colspan="2">
                                <div id="stuffcont_387" style="height:260px; overflow-y: auto; overflow-x:hidden;width:100%;height:100%;"> 
                                </div>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small scrollLink">
                        <tr>
                            <td align="left">
                                <a href="javascript:;" onclick="addScrollBar(387);">
                                    Cuộn
                                </a>
                            </td>
                            <td align="right">
                                <a href="#" id="a_387">
                                    Thêm
                                </a>
                            </td>
                        </tr>	
                    </table>
                </div>

                <script language="javascript">
                    window.onresize = function() {
                        positionDivInAccord('stuff_387', 'Khách có thể chốt', 'Module');
                    };
                    positionDivInAccord('stuff_387', 'Khách có thể chốt', 'Module');
                </script>					<script>
                </script>

                <script type="text/javascript">var vtdashboard_defaultDashbaordWidgetTitle = 'Bảng tổng kết';</script>
                <div id="stuff_13" class="MatrixLayer twoColumnWidget" style="float:left;overflow-x:hidden;overflow-y:auto;">
                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="headerrow_13" class="headerrow">
                            <td align="left" class="homePageMatrixHdr" style="height:30px;" nowrap width=60%><b>&nbsp;Bảng tổng kết</b></td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=5%>
                                <span id="refresh_13" style="position:relative;">&nbsp;&nbsp;</span>
                            </td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=35% nowrap>

                                <img src="themes/images/windowSettings-off.gif" border="0" alt="Sửa" title="Sửa [Alt+E]" hspace="2" align="absmiddle"/>

                                <a style='cursor:pointer;' onclick="fetch_homeDB(13);">
                                    <img src="themes/images/windowRefresh.gif" border="0" alt="" title="" hspace="2" align="absmiddle"/>
                                </a>

                                <a style='cursor:pointer;' onclick="HideDefault(13)"><img src="themes/images/windowMinMax.gif" border="0" alt="Ẩn" title="Ẩn" hspace="5" align="absmiddle"/></a>

                                <img src="themes/images/windowClose-off.gif" border="0" alt="Đóng" title="Đóng" hspace="5" align="absmiddle"/>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="maincont_row_13" class="show_tab winmarkDashboarddef">
                            <td colspan="2">
                                <div id="stuffcont_13" style="height:260px; overflow-y: auto; overflow-x:hidden;width:100%;height:100%;"> 
                                </div>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small scrollLink">
                        <tr>
                            <td align="left">
                                <a href="javascript:;" onclick="addScrollBar(13);">
                                    Cuộn
                                </a>
                            </td>
                        </tr>	
                    </table>
                </div>

                <script language="javascript">
                    window.onresize = function() {
                        positionDivInAccord('stuff_13', 'Bảng tổng kết', 'Default');
                    };
                    positionDivInAccord('stuff_13', 'Bảng tổng kết', 'Default');
                </script>					<script>
                    fetch_homeDB(13);
                </script>

                <script type="text/javascript">var vtdashboard_defaultDashbaordWidgetTitle = 'Bảng tổng kết';</script>
                <div id="stuff_384" class="MatrixLayer " style="float:left;overflow-x:hidden;overflow-y:auto;">
                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="headerrow_384" class="headerrow">
                            <td align="left" class="homePageMatrixHdr" style="height:30px;" nowrap width=60%><b>&nbsp;Đầu mối theo Nguồn</b></td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=5%>
                                <span id="refresh_384" style="position:relative;">&nbsp;&nbsp;</span>
                            </td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=35% nowrap>

                                <a id="editlink" style='cursor:pointer;' onclick="showEditrow(384)">
                                    <img src="themes/images/windowSettings.gif" border="0" alt="Sửa" title="Sửa [Alt+E]" hspace="2" align="absmiddle"/>
                                </a>	

                                <a style='cursor:pointer;' onclick="loadStuff(384, 'DashBoard');">
                                    <img src="themes/images/windowRefresh.gif" border="0" alt="" title="" hspace="2" align="absmiddle"/>
                                </a>

                                <img src="themes/images/windowMinMax-off.gif" border="0" alt="Ẩn" title="Ẩn" hspace="5" align="absmiddle"/>

                                <a id="deletelink" style='cursor:pointer;' onclick="DelStuff(384)"><img src="themes/images/windowClose.gif" border="0" alt="Đóng" title="Đóng" hspace="5" align="absmiddle"/></a>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="maincont_row_384" class="show_tab winmarkDashboardusr">
                            <td colspan="2">
                                <div id="stuffcont_384" style="height:260px; overflow-y: auto; overflow-x:hidden;width:100%;height:100%;"> 
                                </div>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small scrollLink">
                        <tr>
                            <td align="left">
                                <a href="javascript:;" onclick="addScrollBar(384);">
                                    Cuộn
                                </a>
                            </td>
                            <td align="right">
                                <a href="#" id="a_384">
                                    Thêm
                                </a>
                            </td>
                        </tr>	
                    </table>
                </div>

                <script language="javascript">
                    window.onresize = function() {
                        positionDivInAccord('stuff_384', 'Đầu mối theo Nguồn', 'DashBoard');
                    };
                    positionDivInAccord('stuff_384', 'Đầu mối theo Nguồn', 'DashBoard');
                </script>					<script>
                    loadStuff(384, 'DashBoard');
                </script>

                <script type="text/javascript">var vtdashboard_defaultDashbaordWidgetTitle = 'Bảng tổng kết';</script>
                <div id="stuff_4" class="MatrixLayer " style="float:left;overflow-x:hidden;overflow-y:auto;">
                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="headerrow_4" class="headerrow">
                            <td align="left" class="homePageMatrixHdr" style="height:30px;" nowrap width=60%><b>&nbsp;Đầu mối mới nhất</b></td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=5%>
                                <span id="refresh_4" style="position:relative;">&nbsp;&nbsp;</span>
                            </td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=35% nowrap>

                                <a id="editlink" style='cursor:pointer;' onclick="showEditrow(4)">
                                    <img src="themes/images/windowSettings.gif" border="0" alt="Sửa" title="Sửa [Alt+E]" hspace="2" align="absmiddle"/>
                                </a>	

                                <a style='cursor:pointer;' onclick="loadStuff(4, 'Default');">
                                    <img src="themes/images/windowRefresh.gif" border="0" alt="" title="" hspace="2" align="absmiddle"/>
                                </a>

                                <a style='cursor:pointer;' onclick="HideDefault(4)"><img src="themes/images/windowMinMax.gif" border="0" alt="Ẩn" title="Ẩn" hspace="5" align="absmiddle"/></a>

                                <img src="themes/images/windowClose-off.gif" border="0" alt="Đóng" title="Đóng" hspace="5" align="absmiddle"/>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="maincont_row_4" class="show_tab winmarkModulesdef">
                            <td colspan="2">
                                <div id="stuffcont_4" style="height:260px; overflow-y: auto; overflow-x:hidden;width:100%;height:100%;"> 
                                </div>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small scrollLink">
                        <tr>
                            <td align="left">
                                <a href="javascript:;" onclick="addScrollBar(4);">
                                    Cuộn
                                </a>
                            </td>
                            <td align="right">
                                <a href="#" id="a_4">
                                    Thêm
                                </a>
                            </td>
                        </tr>	
                    </table>
                </div>

                <script language="javascript">
                    window.onresize = function() {
                        positionDivInAccord('stuff_4', 'Đầu mối mới nhất', 'Default');
                    };
                    positionDivInAccord('stuff_4', 'Đầu mối mới nhất', 'Default');
                </script>					<script>
                </script>

                <script type="text/javascript">var vtdashboard_defaultDashbaordWidgetTitle = 'Bảng tổng kết';</script>
                <div id="stuff_14" class="MatrixLayer " style="float:left;overflow-x:hidden;overflow-y:auto;">
                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="headerrow_14" class="headerrow">
                            <td align="left" class="homePageMatrixHdr" style="height:30px;" nowrap width=60%><b>&nbsp;Khách hàng quan trọng nhất</b></td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=5%>
                                <span id="refresh_14" style="position:relative;">&nbsp;&nbsp;</span>
                            </td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=35% nowrap>

                                <a id="editlink" style='cursor:pointer;' onclick="showEditrow(14)">
                                    <img src="themes/images/windowSettings.gif" border="0" alt="Sửa" title="Sửa [Alt+E]" hspace="2" align="absmiddle"/>
                                </a>	

                                <a style='cursor:pointer;' onclick="loadStuff(14, 'Default');">
                                    <img src="themes/images/windowRefresh.gif" border="0" alt="" title="" hspace="2" align="absmiddle"/>
                                </a>

                                <a style='cursor:pointer;' onclick="HideDefault(14)"><img src="themes/images/windowMinMax.gif" border="0" alt="Ẩn" title="Ẩn" hspace="5" align="absmiddle"/></a>

                                <img src="themes/images/windowClose-off.gif" border="0" alt="Đóng" title="Đóng" hspace="5" align="absmiddle"/>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="maincont_row_14" class="show_tab winmarkModulesdef">
                            <td colspan="2">
                                <div id="stuffcont_14" style="height:260px; overflow-y: auto; overflow-x:hidden;width:100%;height:100%;"> 
                                </div>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small scrollLink">
                        <tr>
                            <td align="left">
                                <a href="javascript:;" onclick="addScrollBar(14);">
                                    Cuộn
                                </a>
                            </td>
                            <td align="right">
                                <a href="#" id="a_14">
                                    Thêm
                                </a>
                            </td>
                        </tr>	
                    </table>
                </div>

                <script language="javascript">
                    window.onresize = function() {
                        positionDivInAccord('stuff_14', 'Khách hàng quan trọng nhất', 'Default');
                    };
                    positionDivInAccord('stuff_14', 'Khách hàng quan trọng nhất', 'Default');
                </script>					<script>
                </script>

                <script type="text/javascript">var vtdashboard_defaultDashbaordWidgetTitle = 'Bảng tổng kết';</script>
                <div id="stuff_10" class="MatrixLayer " style="float:left;overflow-x:hidden;overflow-y:auto;">
                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="headerrow_10" class="headerrow">
                            <td align="left" class="homePageMatrixHdr" style="height:30px;" nowrap width=60%><b>&nbsp;Danh sách các điều kiện lọc</b></td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=5%>
                                <span id="refresh_10" style="position:relative;">&nbsp;&nbsp;</span>
                            </td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=35% nowrap>

                                <img src="themes/images/windowSettings-off.gif" border="0" alt="Sửa" title="Sửa [Alt+E]" hspace="2" align="absmiddle"/>

                                <a style='cursor:pointer;' onclick="loadStuff(10, 'Default');">
                                    <img src="themes/images/windowRefresh.gif" border="0" alt="" title="" hspace="2" align="absmiddle"/>
                                </a>

                                <a style='cursor:pointer;' onclick="HideDefault(10)"><img src="themes/images/windowMinMax.gif" border="0" alt="Ẩn" title="Ẩn" hspace="5" align="absmiddle"/></a>

                                <img src="themes/images/windowClose-off.gif" border="0" alt="Đóng" title="Đóng" hspace="5" align="absmiddle"/>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="maincont_row_10" class="show_tab winmarkModulesdef">
                            <td colspan="2">
                                <div id="stuffcont_10" style="height:260px; overflow-y: auto; overflow-x:hidden;width:100%;height:100%;"> 
                                </div>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small scrollLink">
                        <tr>
                            <td align="left">
                                <a href="javascript:;" onclick="addScrollBar(10);">
                                    Cuộn
                                </a>
                            </td>
                            <td align="right">
                                <a href="#" id="a_10">
                                    Thêm
                                </a>
                            </td>
                        </tr>	
                    </table>
                </div>

                <script language="javascript">
                    window.onresize = function() {
                        positionDivInAccord('stuff_10', 'Danh sách các điều kiện lọc', 'Default');
                    };
                    positionDivInAccord('stuff_10', 'Danh sách các điều kiện lọc', 'Default');
                </script>					<script>
                </script>

                <script type="text/javascript">var vtdashboard_defaultDashbaordWidgetTitle = 'Bảng tổng kết';</script>
                <div id="stuff_12" class="MatrixLayer " style="float:left;overflow-x:hidden;overflow-y:auto;">
                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="headerrow_12" class="headerrow">
                            <td align="left" class="homePageMatrixHdr" style="height:30px;" nowrap width=60%><b>&nbsp;Những Cơ hội hàng đầu</b></td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=5%>
                                <span id="refresh_12" style="position:relative;">&nbsp;&nbsp;</span>
                            </td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=35% nowrap>

                                <a id="editlink" style='cursor:pointer;' onclick="showEditrow(12)">
                                    <img src="themes/images/windowSettings.gif" border="0" alt="Sửa" title="Sửa [Alt+E]" hspace="2" align="absmiddle"/>
                                </a>	

                                <a style='cursor:pointer;' onclick="loadStuff(12, 'Default');">
                                    <img src="themes/images/windowRefresh.gif" border="0" alt="" title="" hspace="2" align="absmiddle"/>
                                </a>

                                <a style='cursor:pointer;' onclick="HideDefault(12)"><img src="themes/images/windowMinMax.gif" border="0" alt="Ẩn" title="Ẩn" hspace="5" align="absmiddle"/></a>

                                <img src="themes/images/windowClose-off.gif" border="0" alt="Đóng" title="Đóng" hspace="5" align="absmiddle"/>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="maincont_row_12" class="show_tab winmarkModulesdef">
                            <td colspan="2">
                                <div id="stuffcont_12" style="height:260px; overflow-y: auto; overflow-x:hidden;width:100%;height:100%;"> 
                                </div>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small scrollLink">
                        <tr>
                            <td align="left">
                                <a href="javascript:;" onclick="addScrollBar(12);">
                                    Cuộn
                                </a>
                            </td>
                            <td align="right">
                                <a href="#" id="a_12">
                                    Thêm
                                </a>
                            </td>
                        </tr>	
                    </table>
                </div>

                <script language="javascript">
                    window.onresize = function() {
                        positionDivInAccord('stuff_12', 'Những Cơ hội hàng đầu', 'Default');
                    };
                    positionDivInAccord('stuff_12', 'Những Cơ hội hàng đầu', 'Default');
                </script>					<script>
                </script>

                <script type="text/javascript">var vtdashboard_defaultDashbaordWidgetTitle = 'Bảng tổng kết';</script>
                <div id="stuff_2" class="MatrixLayer " style="float:left;overflow-x:hidden;overflow-y:auto;">
                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="headerrow_2" class="headerrow">
                            <td align="left" class="homePageMatrixHdr" style="height:30px;" nowrap width=60%><b>&nbsp;Các hoạt động chưa tiến hành</b></td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=5%>
                                <span id="refresh_2" style="position:relative;">&nbsp;&nbsp;</span>
                            </td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=35% nowrap>

                                <a id="editlink" style='cursor:pointer;' onclick="showEditrow(2)">
                                    <img src="themes/images/windowSettings.gif" border="0" alt="Sửa" title="Sửa [Alt+E]" hspace="2" align="absmiddle"/>
                                </a>	

                                <a style='cursor:pointer;' onclick="loadStuff(2, 'Default');">
                                    <img src="themes/images/windowRefresh.gif" border="0" alt="" title="" hspace="2" align="absmiddle"/>
                                </a>

                                <a style='cursor:pointer;' onclick="HideDefault(2)"><img src="themes/images/windowMinMax.gif" border="0" alt="Ẩn" title="Ẩn" hspace="5" align="absmiddle"/></a>

                                <img src="themes/images/windowClose-off.gif" border="0" alt="Đóng" title="Đóng" hspace="5" align="absmiddle"/>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="maincont_row_2" class="show_tab winmarkModulesdef">
                            <td colspan="2">
                                <div id="stuffcont_2" style="height:260px; overflow-y: auto; overflow-x:hidden;width:100%;height:100%;"> 
                                </div>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small scrollLink">
                        <tr>
                            <td align="left">
                                <a href="javascript:;" onclick="addScrollBar(2);">
                                    Cuộn
                                </a>
                            </td>
                            <td align="right">
                                <a href="#" id="a_2">
                                    Thêm
                                </a>
                            </td>
                        </tr>	
                    </table>
                </div>

                <script language="javascript">
                    window.onresize = function() {
                        positionDivInAccord('stuff_2', 'Các hoạt động chưa tiến hành', 'Default');
                    };
                    positionDivInAccord('stuff_2', 'Các hoạt động chưa tiến hành', 'Default');
                </script>					<script>
                </script>

                <script type="text/javascript">var vtdashboard_defaultDashbaordWidgetTitle = 'Bảng tổng kết';</script>
                <div id="stuff_8" class="MatrixLayer " style="float:left;overflow-x:hidden;overflow-y:auto;">
                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="headerrow_8" class="headerrow">
                            <td align="left" class="homePageMatrixHdr" style="height:30px;" nowrap width=60%><b>&nbsp;Các hoạt động sắp tới</b></td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=5%>
                                <span id="refresh_8" style="position:relative;">&nbsp;&nbsp;</span>
                            </td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=35% nowrap>

                                <a id="editlink" style='cursor:pointer;' onclick="showEditrow(8)">
                                    <img src="themes/images/windowSettings.gif" border="0" alt="Sửa" title="Sửa [Alt+E]" hspace="2" align="absmiddle"/>
                                </a>	

                                <a style='cursor:pointer;' onclick="loadStuff(8, 'Default');">
                                    <img src="themes/images/windowRefresh.gif" border="0" alt="" title="" hspace="2" align="absmiddle"/>
                                </a>

                                <a style='cursor:pointer;' onclick="HideDefault(8)"><img src="themes/images/windowMinMax.gif" border="0" alt="Ẩn" title="Ẩn" hspace="5" align="absmiddle"/></a>

                                <img src="themes/images/windowClose-off.gif" border="0" alt="Đóng" title="Đóng" hspace="5" align="absmiddle"/>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="maincont_row_8" class="show_tab winmarkModulesdef">
                            <td colspan="2">
                                <div id="stuffcont_8" style="height:260px; overflow-y: auto; overflow-x:hidden;width:100%;height:100%;"> 
                                </div>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small scrollLink">
                        <tr>
                            <td align="left">
                                <a href="javascript:;" onclick="addScrollBar(8);">
                                    Cuộn
                                </a>
                            </td>
                            <td align="right">
                                <a href="#" id="a_8">
                                    Thêm
                                </a>
                            </td>
                        </tr>	
                    </table>
                </div>

                <script language="javascript">
                    window.onresize = function() {
                        positionDivInAccord('stuff_8', 'Các hoạt động sắp tới', 'Default');
                    };
                    positionDivInAccord('stuff_8', 'Các hoạt động sắp tới', 'Default');
                </script>					<script>
                </script>

                <script type="text/javascript">var vtdashboard_defaultDashbaordWidgetTitle = 'Bảng tổng kết';</script>
                <div id="stuff_7" class="MatrixLayer " style="float:left;overflow-x:hidden;overflow-y:auto;">
                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="headerrow_7" class="headerrow">
                            <td align="left" class="homePageMatrixHdr" style="height:30px;" nowrap width=60%><b>&nbsp;Sự kiện và tác vụ trong nhóm</b></td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=5%>
                                <span id="refresh_7" style="position:relative;">&nbsp;&nbsp;</span>
                            </td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=35% nowrap>

                                <a id="editlink" style='cursor:pointer;' onclick="showEditrow(7)">
                                    <img src="themes/images/windowSettings.gif" border="0" alt="Sửa" title="Sửa [Alt+E]" hspace="2" align="absmiddle"/>
                                </a>	

                                <a style='cursor:pointer;' onclick="loadStuff(7, 'Default');">
                                    <img src="themes/images/windowRefresh.gif" border="0" alt="" title="" hspace="2" align="absmiddle"/>
                                </a>

                                <a style='cursor:pointer;' onclick="HideDefault(7)"><img src="themes/images/windowMinMax.gif" border="0" alt="Ẩn" title="Ẩn" hspace="5" align="absmiddle"/></a>

                                <img src="themes/images/windowClose-off.gif" border="0" alt="Đóng" title="Đóng" hspace="5" align="absmiddle"/>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="maincont_row_7" class="show_tab winmarkModulesdef">
                            <td colspan="2">
                                <div id="stuffcont_7" style="height:260px; overflow-y: auto; overflow-x:hidden;width:100%;height:100%;"> 
                                </div>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small scrollLink">
                        <tr>
                            <td align="left">
                                <a href="javascript:;" onclick="addScrollBar(7);">
                                    Cuộn
                                </a>
                            </td>
                            <td align="right">
                                <a href="#" id="a_7">
                                    Thêm
                                </a>
                            </td>
                        </tr>	
                    </table>
                </div>

                <script language="javascript">
                    window.onresize = function() {
                        positionDivInAccord('stuff_7', 'Sự kiện và tác vụ trong nhóm', 'Default');
                    };
                    positionDivInAccord('stuff_7', 'Sự kiện và tác vụ trong nhóm', 'Default');
                </script>					<script>
                </script>

                <script type="text/javascript">var vtdashboard_defaultDashbaordWidgetTitle = 'Bảng tổng kết';</script>
                <div id="stuff_1" class="MatrixLayer " style="float:left;overflow-x:hidden;overflow-y:auto;">
                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="headerrow_1" class="headerrow">
                            <td align="left" class="homePageMatrixHdr" style="height:30px;" nowrap width=60%><b>&nbsp;Câu hỏi thường gặp mới</b></td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=5%>
                                <span id="refresh_1" style="position:relative;">&nbsp;&nbsp;</span>
                            </td>
                            <td align="right" class="homePageMatrixHdr" style="height:30px;" width=35% nowrap>

                                <a id="editlink" style='cursor:pointer;' onclick="showEditrow(1)">
                                    <img src="themes/images/windowSettings.gif" border="0" alt="Sửa" title="Sửa [Alt+E]" hspace="2" align="absmiddle"/>
                                </a>	

                                <a style='cursor:pointer;' onclick="loadStuff(1, 'Default');">
                                    <img src="themes/images/windowRefresh.gif" border="0" alt="" title="" hspace="2" align="absmiddle"/>
                                </a>

                                <a style='cursor:pointer;' onclick="HideDefault(1)"><img src="themes/images/windowMinMax.gif" border="0" alt="Ẩn" title="Ẩn" hspace="5" align="absmiddle"/></a>

                                <img src="themes/images/windowClose-off.gif" border="0" alt="Đóng" title="Đóng" hspace="5" align="absmiddle"/>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small" style="padding-right:0px;padding-left:0px;padding-top:0px;">
                        <tr id="maincont_row_1" class="show_tab winmarkModulesdef">
                            <td colspan="2">
                                <div id="stuffcont_1" style="height:260px; overflow-y: auto; overflow-x:hidden;width:100%;height:100%;"> 
                                </div>
                            </td>
                        </tr>
                    </table>

                    <table width="100%" cellpadding="0" cellspacing="0" class="small scrollLink">
                        <tr>
                            <td align="left">
                                <a href="javascript:;" onclick="addScrollBar(1);">
                                    Cuộn
                                </a>
                            </td>
                            <td align="right">
                                <a href="#" id="a_1">
                                    Thêm
                                </a>
                            </td>
                        </tr>	
                    </table>
                </div>

                <script language="javascript">
                    window.onresize = function() {
                        positionDivInAccord('stuff_1', 'Câu hỏi thường gặp mới', 'Default');
                    };
                    positionDivInAccord('stuff_1', 'Câu hỏi thường gặp mới', 'Default');
                </script>					<script>
                </script>
            </div>
        </td>
    </tr>
</table>-->

<script>
    var Vt_homePageWidgetInfoList = [
        {
            'widgetId': 1,
            'widgetType': 'Default'
        }
        , {
            'widgetId': 7,
            'widgetType': 'Default'
        }
        , {
            'widgetId': 8,
            'widgetType': 'Default'
        }
        , {
            'widgetId': 2,
            'widgetType': 'Default'
        }
        , {
            'widgetId': 12,
            'widgetType': 'Default'
        }
        , {
            'widgetId': 10,
            'widgetType': 'Default'
        }
        , {
            'widgetId': 14,
            'widgetType': 'Default'
        }
        , {
            'widgetId': 4,
            'widgetType': 'Default'
        }
        , {
            'widgetId': 387,
            'widgetType': 'Module'
        }
    ];
    loadAllWidgets(Vt_homePageWidgetInfoList, 12);

    initHomePage();

    /**
     * this function is used to display the add window for different dashboard widgets
     */
    function fnAddWindow(obj, CurrObj) {
        var tagName = document.getElementById(CurrObj);
        var left_Side = findPosX(obj);
        var top_Side = findPosY(obj);
        tagName.style.left = left_Side + 2 + 'px';
        tagName.style.top = top_Side + 22 + 'px';
        tagName.style.display = 'block';
        document.getElementById("addmodule").href = "javascript:chooseType('Module');fnRemoveWindow();setFilter($('selmodule_id'))";
        document.getElementById("addNotebook").href = "javascript:chooseType('Notebook');fnRemoveWindow();show('addWidgetsDiv');placeAtCenter($('addWidgetsDiv'));";
        //document.getElementById("addURL").href="javascript:chooseType('URL');fnRemoveWindow();show('addWidgetsDiv');placeAtCenter($('addWidgetsDiv'));";

        document.getElementById("addrss").href = "javascript:chooseType('RSS');fnRemoveWindow();show('addWidgetsDiv');placeAtCenter($('addWidgetsDiv'));";
        document.getElementById("adddash").href = "javascript:chooseType('DashBoard');fnRemoveWindow()";

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
            w = window.open("home.jsp?action=Logout&module=Users");
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
        }, 26000);</script><!--end body panes-->
</td></tr>
<tr><td colspan="2" align="center">
    </td></tr></table>
</body>
</html>

