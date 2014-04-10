<%-- 
    Document   : edit-customer
    Created on : Apr 10, 2014, 12:33:32 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
			 
			 <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap> <a href="index.php?module=Users&action=DetailView&record=1&modechk=prefview">Thiết lập cá nhân</a></td>-->
			 <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap><a href="http://wiki.hosgroup.com.vn/index.php/Main_Page" target="_blank">Hướng dẫn sử dụng online</a></td> -->
			 <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap><a href="javascript:;" onClick="openwin();">Giới thiệu</a></td> -->
			 <td style="padding-left:10px;padding-right:10px" class=small nowrap> <a href="index.php?module=Users&action=Logout">Thoát</a> (admin)</td>
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
											  <td class="tabUnSelected"  onmouseover="fnDropDown(this,'My Home Page_sub');" onmouseout="fnHideDrop('My Home Page_sub');" align="center" nowrap><a href="index.php?module=Home&action=index&parenttab=My Home Page">Trang chủ</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabSelected"  onmouseover="fnDropDown(this,'Marketing_sub');" onmouseout="fnHideDrop('Marketing_sub');" align="center" nowrap><a href="index.php?module=Campaigns&action=index&parenttab=Marketing">Marketing</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected"  onmouseover="fnDropDown(this,'Sales_sub');" onmouseout="fnHideDrop('Sales_sub');" align="center" nowrap><a href="index.php?module=Leads&action=index&parenttab=Sales">Bán hàng</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected"  onmouseover="fnDropDown(this,'Support_sub');" onmouseout="fnHideDrop('Support_sub');" align="center" nowrap><a href="index.php?module=HelpDesk&action=index&parenttab=Support">Hỗ trợ</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected"  onmouseover="fnDropDown(this,'Analytics_sub');" onmouseout="fnHideDrop('Analytics_sub');" align="center" nowrap><a href="index.php?module=Reports&action=index&parenttab=Analytics">Phân tích</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected"  onmouseover="fnDropDown(this,'Inventory_sub');" onmouseout="fnHideDrop('Inventory_sub');" align="center" nowrap><a href="index.php?module=Products&action=index&parenttab=Inventory">Tồn kho</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected"  onmouseover="fnDropDown(this,'Tools_sub');" onmouseout="fnHideDrop('Tools_sub');" align="center" nowrap><a href="index.php?module=Rss&action=index&parenttab=Tools">Công cụ</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected"  onmouseover="fnDropDown(this,'Settings_sub');" onmouseout="fnHideDrop('Settings_sub');" align="center" nowrap><a href="index.php?module=Settings&action=index&parenttab=Settings">Thiết lập</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
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
			<form name="UnifiedSearch" method="post" action="index.php" style="margin:0px" onsubmit="VtigerJS_DialogBox.block();">
			<td style="height:19px;background-color:#ffffef" nowrap>
				<a href='javascript:void(0);' onclick="UnifiedSearch_SelectModuleForm(this);"><img src="themes/images/settings_top.gif" align='left' border=0></a>
				<input type="hidden" name="action" value="UnifiedSearch" style="margin:0px">
				<input type="hidden" name="module" value="Home" style="margin:0px">
				<input type="hidden" name="parenttab" value="Marketing" style="margin:0px">
				<input type="hidden" name="search_onlyin" value="--USESELECTED--" style="margin:0px">
				<input type="text" name="query_string" value="Tìm kiếm..." class="searchBox" onFocus="this.value=''" >
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
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Campaigns&action=index&parenttab=Marketing">Chiến dịch</a> </td>
							
											      					 
      						 
      																		<td class="level2SelTab" nowrap><a href="index.php?module=Accounts&action=index&parenttab=Marketing">Khách hàng</a></td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Contacts&action=index&parenttab=Marketing">Liên hệ</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Webmails&action=index&parenttab=Marketing">Webmails</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Leads&action=index&parenttab=Marketing">Đầu mối</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Calendar&action=index&parenttab=Marketing">Lịch</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Documents&action=index&parenttab=Marketing">Tài liệu</a> </td>
							
																																																						-->
			
																										   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap> <a href="index.php?module=Campaigns&action=index&parenttab=Marketing">Chiến dịch</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2SelTab" nowrap><a href="index.php?module=Accounts&action=index&parenttab=Marketing">Khách hàng</a></td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap> <a href="index.php?module=Contacts&action=index&parenttab=Marketing">Liên hệ</a> </td>
							
													   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap> <a href="index.php?module=Webmails&action=index&parenttab=Marketing">Webmails</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap> <a href="index.php?module=Leads&action=index&parenttab=Marketing">Đầu mối</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap> <a href="index.php?module=Calendar&action=index&parenttab=Marketing">Lịch</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap> <a href="index.php?module=Documents&action=index&parenttab=Marketing">Tài liệu</a> </td>
							
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
<select name="clockcity" size="1" class="importBox small"   id="clockcity" style="width:125px;"  onchange="lcl(this.selectedIndex,this.options[0].selected)">
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
	var theRoot   = document.getElementById("wclock");
	Drag.init(theHandle, theRoot);
</script>


<div id="qcform" style="position:absolute;width:700px;top:80px;left:450px;z-index:100000;"></div>

<!-- Unified Search module selection feature -->
<div id="UnifiedSearch_moduleformwrapper" style="position:absolute;width:400px;z-index:100002;display:none;"></div>
<script type='text/javascript'>

function UnifiedSearch_SelectModuleForm(obj) {
	if($('UnifiedSearch_moduleform')) {
		// If we have loaded the form already.
		UnifiedSearch_SelectModuleFormCallback(obj);
	} else {
		$('status').show();
		new Ajax.Request(
		'index.php',
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
			if(element.type == 'checkbox') {
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
	UnifiedSearch_form.search_onlyin.value = Form.serialize($('UnifiedSearch_moduleform')).replace(/search_onlyin=/g, '').replace(/&/g,',');
	UnifiedSearch_SelectModuleCancel();
}

</script>
<!-- End -->

<script>
var gVTModule = 'Accounts';
function fetch_clock()
{
	new Ajax.Request(
		'index.php',
		{queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: 'module=Utilities&action=UtilitiesAjax&file=Clock',
			onComplete: function(response)
				    {
					$("clock_cont").innerHTML=response.responseText;
					execJS($('clock_cont'));
				    }
		}
	);

}

function fetch_calc()
{
	new Ajax.Request(
		'index.php',
		{queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: 'module=Utilities&action=UtilitiesAjax&file=Calculator',
			onComplete: function(response)
					{
						$("calculator_cont").innerHTML=response.responseText;
						execJS($('calculator_cont'));
					}
		}
	);
}
</script>

<script>

function QCreate(qcoptions){
	var module = qcoptions.options[qcoptions.options.selectedIndex].value;
	if(module != 'none'){
		$("status").style.display="inline";
		if(module == 'Events'){
			module = 'Calendar';
			var urlstr = '&activity_mode=Events';
		}else if(module == 'Calendar'){
			module = 'Calendar';
			var urlstr = '&activity_mode=Task';
		}else{
			var urlstr = '';
		}
		new Ajax.Request(
			'index.php',
				{queue: {position: 'end', scope: 'command'},
				method: 'post',
				postBody: 'module='+module+'&action='+module+'Ajax&file=QuickCreate'+urlstr,
				onComplete: function(response){
					$("status").style.display="none";
					$("qcform").style.display="inline";
					$("qcform").innerHTML = response.responseText;
					// Evaluate all the script tags in the response text.
					var scriptTags = $("qcform").getElementsByTagName("script");
					for(var i = 0; i< scriptTags.length; i++){
						var scriptTag = scriptTags[i];
						eval(scriptTag.innerHTML);
					}
                    eval($("qcform"));
                    posLay(qcoptions, "qcform");
				}
			}
		);
	}else{
		hide('qcform');
	}
}

function getFormValidate(divValidate)
{
  var st = document.getElementById('qcvalidate');
  eval(st.innerHTML);
  for (var i=0; i<qcfieldname.length; i++) {
		var curr_fieldname = qcfieldname[i];	
		if(window.document.QcEditView[curr_fieldname] != null)
		{
			var type=qcfielddatatype[i].split("~")
			var input_type = window.document.QcEditView[curr_fieldname].type;	
			if (type[1]=="M") {
					if (!qcemptyCheck(curr_fieldname,qcfieldlabel[i],input_type))
						return false
				}
			switch (type[0]) {
				case "O"  : break;
				case "V"  : break;
				case "C"  : break;
				case "DT" :
					if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length!=0)
					{	 
						if (type[1]=="M")
							if (!qcemptyCheck(type[2],qcfieldlabel[i],getObj(type[2]).type))
								return false
						if(typeof(type[3])=="undefined") var currdatechk="OTH"
						else var currdatechk=type[3]

						if (!qcdateTimeValidate(curr_fieldname,type[2],qcfieldlabel[i],currdatechk))
							return false
						if (type[4]) {
							if (!dateTimeComparison(curr_fieldname,type[2],qcfieldlabel[i],type[5],type[6],type[4]))
								return false

						}
					}		
				break;
				case "D"  :
					if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length!=0)
					{	
						if(typeof(type[2])=="undefined") var currdatechk="OTH"
						else var currdatechk=type[2]

							if (!qcdateValidate(curr_fieldname,qcfieldlabel[i],currdatechk))
								return false
									if (type[3]) {
										if (!qcdateComparison(curr_fieldname,qcfieldlabel[i],type[4],type[5],type[3]))
											return false
									}
					}	
				break;
				case "T"  :
					if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length!=0)
					{	 
						if(typeof(type[2])=="undefined") var currtimechk="OTH"
						else var currtimechk=type[2]

							if (!timeValidate(curr_fieldname,qcfieldlabel[i],currtimechk))
								return false
									if (type[3]) {
										if (!timeComparison(curr_fieldname,qcfieldlabel[i],type[4],type[5],type[3]))
											return false
									}
					}
				break;
				case "I"  :
					if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length!=0)
					{	
						if (window.document.QcEditView[curr_fieldname].value.length!=0)
						{
							if (!qcintValidate(curr_fieldname,qcfieldlabel[i]))
								return false
							if (type[2]) {
								if (!qcnumConstComp(curr_fieldname,qcfieldlabel[i],type[2],type[3]))
									return false
							}
						}
					}
				break;
				case "N"  :
					case "NN" :
					if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length!=0)
					{
						if (window.document.QcEditView[curr_fieldname].value.length!=0)
						{
							if (typeof(type[2])=="undefined") var numformat="any"
							else var numformat=type[2]

								if (type[0]=="NN") {

									if (!numValidate(curr_fieldname,qcfieldlabel[i],numformat,true))
										return false
								} else {
									if (!numValidate(curr_fieldname,qcfieldlabel[i],numformat))
										return false
								}
							if (type[3]) {
								if (!numConstComp(curr_fieldname,qcfieldlabel[i],type[3],type[4]))
									return false
							}
						}
					}
				break;
				case "E"  :
					if (window.document.QcEditView[curr_fieldname] != null && window.document.QcEditView[curr_fieldname].value.replace(/^\s+/g, '').replace(/\s+$/g, '').length!=0)
					{
						if (window.document.QcEditView[curr_fieldname].value.length!=0)
						{
							var etype = "EMAIL"
								if (!qcpatternValidate(curr_fieldname,qcfieldlabel[i],etype))
									return false
						}
					}
				break;
			}
		}
	}
       //added to check Start Date & Time,if Activity Status is Planned.//start
        for (var j=0; j<qcfieldname.length; j++)
		{
			curr_fieldname = qcfieldname[j];
			if(window.document.QcEditView[curr_fieldname] != null)
			{
				if(qcfieldname[j] == "date_start")
				{
					var datelabel = qcfieldlabel[j]
						var datefield = qcfieldname[j]
						var startdatevalue = window.document.QcEditView[datefield].value.replace(/^\s+/g, '').replace(/\s+$/g, '')
				}
				if(qcfieldname[j] == "time_start")
				{
					var timelabel = qcfieldlabel[j]
						var timefield = qcfieldname[j]
						var timeval=window.document.QcEditView[timefield].value.replace(/^\s+/g, '').replace(/\s+$/g, '')
				}
				if(qcfieldname[j] == "eventstatus" || qcfieldname[j] == "taskstatus")
				{
					var statusvalue = window.document.QcEditView[curr_fieldname].options[window.document.QcEditView[curr_fieldname].selectedIndex].value.replace(/^\s+/g, '').replace(/\s+$/g, '')
					var statuslabel = qcfieldlabel[j++]
				}
			}
		}
	if(statusvalue == "Planned")
        {
               var dateelements=splitDateVal(startdatevalue)
	       var hourval=parseInt(timeval.substring(0,timeval.indexOf(":")))
               var minval=parseInt(timeval.substring(timeval.indexOf(":")+1,timeval.length))
               var dd=dateelements[0]
               var mm=dateelements[1]
               var yyyy=dateelements[2]

               var chkdate=new Date()
               chkdate.setYear(yyyy)
               chkdate.setMonth(mm-1)
               chkdate.setDate(dd)
	       chkdate.setMinutes(minval)
               chkdate.setHours(hourval)
		if(!comparestartdate(chkdate)) return false;
		

	 }//end
	return true;
}
</SCRIPT>


<div id="allMenu" onmouseout="fninvsh('allMenu');" onMouseOver="fnvshNrm('allMenu');" style="width:650px;z-index: 10000001;display:none;">
	<table border=0 cellpadding="5" cellspacing="0" class="allMnuTable" >
	<tr>
		<td valign="top">
							<span class="allMnuHdr">Trang chủ</span>
			       		
			
												<a href="index.php?module=Home&action=index&parenttab=My Home Page" class="allMnu">Trang chủ</a>
			       		
			
												<a href="index.php?module=Calendar&action=index&parenttab=My Home Page" class="allMnu">Lịch</a>
			       		
			
												<a href="index.php?module=Webmails&action=index&parenttab=My Home Page" class="allMnu">Webmails</a>
								<span class="allMnuHdr">Marketing</span>
			       		
			
												<a href="index.php?module=Campaigns&action=index&parenttab=Marketing" class="allMnu">Chiến dịch</a>
			       		
			
												<a href="index.php?module=Accounts&action=index&parenttab=Marketing" class="allMnu">Khách hàng</a>
			       		
			
												<a href="index.php?module=Contacts&action=index&parenttab=Marketing" class="allMnu">Liên hệ</a>
			       		
			
												<a href="index.php?module=Webmails&action=index&parenttab=Marketing" class="allMnu">Webmails</a>
			       		
			
												<a href="index.php?module=Leads&action=index&parenttab=Marketing" class="allMnu">Đầu mối</a>
			       		
			
												<a href="index.php?module=Calendar&action=index&parenttab=Marketing" class="allMnu">Lịch</a>
			       		
			
												<a href="index.php?module=Documents&action=index&parenttab=Marketing" class="allMnu">Tài liệu</a>
								<span class="allMnuHdr">Bán hàng</span>
			       		
			
												<a href="index.php?module=Leads&action=index&parenttab=Sales" class="allMnu">Đầu mối</a>
			       		
			
												<a href="index.php?module=Accounts&action=index&parenttab=Sales" class="allMnu">Khách hàng</a>
			       		
			
												<a href="index.php?module=Contacts&action=index&parenttab=Sales" class="allMnu">Liên hệ</a>
			       		
			
												<a href="index.php?module=Potentials&action=index&parenttab=Sales" class="allMnu">Cơ hội</a>
			       		
			
										</td><td valign="top">
									<a href="index.php?module=Quotes&action=index&parenttab=Sales" class="allMnu">Báo giá</a>
			       		
			
												<a href="index.php?module=SalesOrder&action=index&parenttab=Sales" class="allMnu">Đặt hàng</a>
			       		
			
												<a href="index.php?module=Invoice&action=index&parenttab=Sales" class="allMnu">Hóa đơn</a>
			       		
			
												<a href="index.php?module=PriceBooks&action=index&parenttab=Sales" class="allMnu">Bảng giá</a>
			       		
			
												<a href="index.php?module=Documents&action=index&parenttab=Sales" class="allMnu">Tài liệu</a>
			       		
			
												<a href="index.php?module=Calendar&action=index&parenttab=Sales" class="allMnu">Lịch</a>
								<span class="allMnuHdr">Hỗ trợ</span>
			       		
			
												<a href="index.php?module=HelpDesk&action=index&parenttab=Support" class="allMnu">Trợ giúp</a>
			       		
			
												<a href="index.php?module=Faq&action=index&parenttab=Support" class="allMnu">Câu hỏi thường gặp</a>
			       		
			
												<a href="index.php?module=Accounts&action=index&parenttab=Support" class="allMnu">Khách hàng</a>
			       		
			
												<a href="index.php?module=Contacts&action=index&parenttab=Support" class="allMnu">Liên hệ</a>
			       		
			
												<a href="index.php?module=Documents&action=index&parenttab=Support" class="allMnu">Tài liệu</a>
			       		
			
												<a href="index.php?module=Webmails&action=index&parenttab=Support" class="allMnu">Webmails</a>
			       		
			
												<a href="index.php?module=Calendar&action=index&parenttab=Support" class="allMnu">Lịch</a>
			       		
			
												<a href="index.php?module=ServiceContracts&action=index&parenttab=Support" class="allMnu">Hợp đồng dịch vụ</a>
			       		
			
												<a href="index.php?module=ProjectMilestone&action=index&parenttab=Support" class="allMnu">ProjectMilestone</a>
			       		
			
										</td><td valign="top">
									<a href="index.php?module=ProjectTask&action=index&parenttab=Support" class="allMnu">ProjectTask</a>
								<span class="allMnuHdr">Phân tích</span>
			       		
			
												<a href="index.php?module=Reports&action=index&parenttab=Analytics" class="allMnu">Báo cáo</a>
			       		
			
												<a href="index.php?module=Dashboard&action=index&parenttab=Analytics" class="allMnu">Biểu đồ</a>
								<span class="allMnuHdr">Tồn kho</span>
			       		
			
												<a href="index.php?module=Products&action=index&parenttab=Inventory" class="allMnu">Sản phẩm</a>
			       		
			
												<a href="index.php?module=Vendors&action=index&parenttab=Inventory" class="allMnu">Nhà cung cấp</a>
			       		
			
												<a href="index.php?module=PriceBooks&action=index&parenttab=Inventory" class="allMnu">Bảng giá</a>
			       		
			
												<a href="index.php?module=PurchaseOrder&action=index&parenttab=Inventory" class="allMnu">Nhập hàng</a>
			       		
			
												<a href="index.php?module=SalesOrder&action=index&parenttab=Inventory" class="allMnu">Đặt hàng</a>
			       		
			
												<a href="index.php?module=Quotes&action=index&parenttab=Inventory" class="allMnu">Báo giá</a>
			       		
			
												<a href="index.php?module=Invoice&action=index&parenttab=Inventory" class="allMnu">Hóa đơn</a>
			       		
			
												<a href="index.php?module=Services&action=index&parenttab=Inventory" class="allMnu">Dịch vụ</a>
			       		
			
												<a href="index.php?module=Assets&action=index&parenttab=Inventory" class="allMnu">Assets</a>
								<span class="allMnuHdr">Công cụ</span>
			       		
			
												<a href="index.php?module=Rss&action=index&parenttab=Tools" class="allMnu">Tin nhanh</a>
			       		
			
												<a href="index.php?module=Portal&action=index&parenttab=Tools" class="allMnu">Trang Web</a>
			       		
			
												<a href="index.php?module=Documents&action=index&parenttab=Tools" class="allMnu">Tài liệu</a>
			       		
			
										</td><td valign="top">
									<a href="index.php?module=PBXManager&action=index&parenttab=Tools" class="allMnu">Quản lý PBX</a>
			       		
			
												<a href="index.php?module=SMSNotifier&action=index&parenttab=Tools" class="allMnu">SMSNotifier</a>
			       		
			
												<a href="index.php?module=RecycleBin&action=index&parenttab=Tools" class="allMnu">Thùng rác</a>
			       		
			
												<a href="index.php?module=ModComments&action=index&parenttab=Tools" class="allMnu">Comments</a>
								<span class="allMnuHdr">Thiết lập</span>
			       		
			
												<a href="index.php?module=Settings&action=index&parenttab=Settings" class="allMnu">Thiết lập</a>
			       		
			
												<a href="index.php?module=Settings&action=index&parenttab=Settings" class="allMnu">Quản lý phân hệ</a>
							</td>
	</tr>
</table>
</div>

<!-- Drop Down Menu in the Main Tab -->
<div class="drop_mnu" id="My Home Page_sub" onmouseout="fnHideDrop('My Home Page_sub')" onmouseover="fnShowDrop('My Home Page_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tr><td><a href="index.php?module=Home&action=index&parenttab=My Home Page" class="drop_down">Trang chủ</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Calendar&action=index&parenttab=My Home Page" class="drop_down">Lịch</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Webmails&action=index&parenttab=My Home Page" class="drop_down">Webmails</a></td></tr>
			</table>
</div>
<div class="drop_mnu" id="Marketing_sub" onmouseout="fnHideDrop('Marketing_sub')" onmouseover="fnShowDrop('Marketing_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tr><td><a href="index.php?module=Campaigns&action=index&parenttab=Marketing" class="drop_down">Chiến dịch</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Accounts&action=index&parenttab=Marketing" class="drop_down">Khách hàng</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Contacts&action=index&parenttab=Marketing" class="drop_down">Liên hệ</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Webmails&action=index&parenttab=Marketing" class="drop_down">Webmails</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Leads&action=index&parenttab=Marketing" class="drop_down">Đầu mối</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Calendar&action=index&parenttab=Marketing" class="drop_down">Lịch</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Documents&action=index&parenttab=Marketing" class="drop_down">Tài liệu</a></td></tr>
			</table>
</div>
<div class="drop_mnu" id="Sales_sub" onmouseout="fnHideDrop('Sales_sub')" onmouseover="fnShowDrop('Sales_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tr><td><a href="index.php?module=Leads&action=index&parenttab=Sales" class="drop_down">Đầu mối</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Accounts&action=index&parenttab=Sales" class="drop_down">Khách hàng</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Contacts&action=index&parenttab=Sales" class="drop_down">Liên hệ</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Potentials&action=index&parenttab=Sales" class="drop_down">Cơ hội</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Quotes&action=index&parenttab=Sales" class="drop_down">Báo giá</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=SalesOrder&action=index&parenttab=Sales" class="drop_down">Đặt hàng</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Invoice&action=index&parenttab=Sales" class="drop_down">Hóa đơn</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=PriceBooks&action=index&parenttab=Sales" class="drop_down">Bảng giá</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Documents&action=index&parenttab=Sales" class="drop_down">Tài liệu</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Calendar&action=index&parenttab=Sales" class="drop_down">Lịch</a></td></tr>
			</table>
</div>
<div class="drop_mnu" id="Support_sub" onmouseout="fnHideDrop('Support_sub')" onmouseover="fnShowDrop('Support_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tr><td><a href="index.php?module=HelpDesk&action=index&parenttab=Support" class="drop_down">Trợ giúp</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Faq&action=index&parenttab=Support" class="drop_down">Câu hỏi thường gặp</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Accounts&action=index&parenttab=Support" class="drop_down">Khách hàng</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Contacts&action=index&parenttab=Support" class="drop_down">Liên hệ</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Documents&action=index&parenttab=Support" class="drop_down">Tài liệu</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Webmails&action=index&parenttab=Support" class="drop_down">Webmails</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Calendar&action=index&parenttab=Support" class="drop_down">Lịch</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=ServiceContracts&action=index&parenttab=Support" class="drop_down">Hợp đồng dịch vụ</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=ProjectMilestone&action=index&parenttab=Support" class="drop_down">ProjectMilestone</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=ProjectTask&action=index&parenttab=Support" class="drop_down">ProjectTask</a></td></tr>
			</table>
</div>
<div class="drop_mnu" id="Analytics_sub" onmouseout="fnHideDrop('Analytics_sub')" onmouseover="fnShowDrop('Analytics_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tr><td><a href="index.php?module=Reports&action=index&parenttab=Analytics" class="drop_down">Báo cáo</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Dashboard&action=index&parenttab=Analytics" class="drop_down">Biểu đồ</a></td></tr>
			</table>
</div>
<div class="drop_mnu" id="Inventory_sub" onmouseout="fnHideDrop('Inventory_sub')" onmouseover="fnShowDrop('Inventory_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tr><td><a href="index.php?module=Products&action=index&parenttab=Inventory" class="drop_down">Sản phẩm</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Vendors&action=index&parenttab=Inventory" class="drop_down">Nhà cung cấp</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=PriceBooks&action=index&parenttab=Inventory" class="drop_down">Bảng giá</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=PurchaseOrder&action=index&parenttab=Inventory" class="drop_down">Nhập hàng</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=SalesOrder&action=index&parenttab=Inventory" class="drop_down">Đặt hàng</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Quotes&action=index&parenttab=Inventory" class="drop_down">Báo giá</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Invoice&action=index&parenttab=Inventory" class="drop_down">Hóa đơn</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Services&action=index&parenttab=Inventory" class="drop_down">Dịch vụ</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Assets&action=index&parenttab=Inventory" class="drop_down">Assets</a></td></tr>
			</table>
</div>
<div class="drop_mnu" id="Tools_sub" onmouseout="fnHideDrop('Tools_sub')" onmouseover="fnShowDrop('Tools_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tr><td><a href="index.php?module=Rss&action=index&parenttab=Tools" class="drop_down">Tin nhanh</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Portal&action=index&parenttab=Tools" class="drop_down">Trang Web</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Documents&action=index&parenttab=Tools" class="drop_down">Tài liệu</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=PBXManager&action=index&parenttab=Tools" class="drop_down">Quản lý PBX</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=SMSNotifier&action=index&parenttab=Tools" class="drop_down">SMSNotifier</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=RecycleBin&action=index&parenttab=Tools" class="drop_down">Thùng rác</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=ModComments&action=index&parenttab=Tools" class="drop_down">Comments</a></td></tr>
			</table>
</div>
<div class="drop_mnu" id="Settings_sub" onmouseout="fnHideDrop('Settings_sub')" onmouseover="fnShowDrop('Settings_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tr><td><a href="index.php?module=Settings&action=index&parenttab=Settings" class="drop_down">Thiết lập</a></td></tr>
						
					   		   			   			
		<tr><td><a href="index.php?module=Settings&action=ModuleManager&parenttab=Settings" class="drop_down">Quản lý phân hệ</a></td></tr>
			</table>
</div>


<div id="status" style="position:absolute;display:none;left:850px;top:95px;height:27px;white-space:nowrap;"><img src="themes/softed/images/status.gif"></div>
<script>
function openwin()
{
            window.open("index.php?module=Users&action=about_us","aboutwin","height=520,width=515,top=200,left=300")
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
		<td class="trackerList small"> <a href="index.php?module=PriceBooks&action=DetailView&record=185&parenttab=Marketing">Bảng gi&aacute; phần mềm...</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">2</td>
		<td class="trackerList small"> <a href="index.php?module=SalesOrder&action=DetailView&record=611&parenttab=Marketing">Đặt h&agrave;ng phần mề...</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">3</td>
		<td class="trackerList small"> <a href="index.php?module=SalesOrder&action=DetailView&record=201&parenttab=Marketing">Đặt h&agrave;ng 1</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">4</td>
		<td class="trackerList small"> <a href="index.php?module=Accounts&action=DetailView&record=137&parenttab=Marketing">Trần Thị Khanh</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">5</td>
		<td class="trackerList small"> <a href="index.php?module=Leads&action=DetailView&record=203&parenttab=Marketing">anh Long </a> </td><td class="trackerList small">&nbsp;</td></tr>
		</table>
</div>
	
<script>
	var THandle = document.getElementById("Track_Handle");
	var TRoot   = document.getElementById("tracker");
	Drag.init(THandle, TRoot);
</script>		

<!-- vtiger Feedback -->
<script type="text/javascript">

function vtiger_feedback() {
	window.open("http://www.hosgroup.com.vn/products/crm/feedback.php?uid=777ddc572adcbcebafc476bcc1f627c6","feedbackwin","height=300,width=515,top=200,left=300")
}

</script>
<!-- hosco news -->
<script type="text/javascript">

function vtiger_news(obj) {
	$('status').style.display = 'inline';
	new Ajax.Request(
		'index.php',
		{queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: 'module=Home&action=HomeAjax&file=HomeNews',
			onComplete: function(response) {
				$("vtigerNewsPopupLay").innerHTML=response.responseText;
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
<div class="lvtCol fixedLay1" id="ActivityRemindercallback" style="border: 0; right: 0px; bottom: 2px; display:none; padding: 2px; z-index: 10; font-weight: normal;" align="left">
</div>
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

<link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
<script type="text/javascript" src="jscalendar/calendar.js"></script>
<script type="text/javascript" src="jscalendar/lang/calendar-vn.js"></script>
<script type="text/javascript" src="jscalendar/calendar-setup.js"></script>

<!-- overriding the pre-defined #company to avoid clash with vtiger_field in the view -->

<style type='text/css'>
#company {
	height: auto;
	width: 90%;
}
</style>


<script type="text/javascript">
var gVTModule = 'Accounts';
function sensex_info()
{
        var Ticker = $('tickersymbol').value;
        if(Ticker!='')
        {
                $("vtbusy_info").style.display="inline";
                new Ajax.Request(
                      'index.php',
                      {queue: {position: 'end', scope: 'command'},
                                method: 'post',
                                postBody: 'module=Accounts&action=Tickerdetail&tickersymbol='+Ticker,
                                onComplete: function(response) {
                                        $('autocom').innerHTML = response.responseText;
                                        $('autocom').style.display="block";
                                        $("vtbusy_info").style.display="none";
                                }
                        }
                );
        }
}
function AddressSync(Addform,id)
{
	checkAddress(Addform,id);
}

</script>

		<script type="text/javascript" src="modules/Accounts/Accounts.js"></script>

<TABLE border=0 cellspacing=0 cellpadding=0 width=100% class=small>
<tr><td style="height:2px"></td></tr>
<tr>
				<td style="padding-left:10px;padding-right:50px" class="moduleName" nowrap>Marketing > <a class="hdrLink" href="index.php?action=ListView&module=Accounts&parenttab=Marketing">Khách hàng</a></td>
		<td width=100% nowrap>
	
		<table border="0" cellspacing="0" cellpadding="0" >
		<tr>
		<td class="sep1" style="width:1px;"></td>
		<td class=small >
			<!-- Add and Search -->
			<table border=0 cellspacing=0 cellpadding=0>
			<tr>
			<td>
				<table border=0 cellspacing=0 cellpadding=5>
				<tr>
								        			                        		       	<td style="padding-right:0px;padding-left:10px;"><a href="index.php?module=Accounts&action=EditView&return_action=DetailView&parenttab=Marketing"><img src="themes/softed/images/btnL3Add.gif" alt="Tạo Khách hàng..." title="Tạo Khách hàng..." border=0></a></td>
			                       															
						<td style="padding-right:10px"><img src="themes/images/btnL3Search-Faded.gif" border=0></td>
					
				</tr>
				</table>
			</td>
			</tr>
			</table>
		</td>
		<td style="width:20px;">&nbsp;</td>
		<td class="small">
			<!-- Calendar Clock Calculator and Chat -->
				<table border=0 cellspacing=0 cellpadding=5>
				<tr>
					 
 		                                                						 
 		                                                                <td style="padding-right:0px;padding-left:10px;"><a href="javascript:;" onClick='fnvshobj(this,"miniCal");getMiniCal("parenttab=Marketing");'><img src="themes/softed/images/btnL3Calendar.gif" alt="Mở lịch công tác..." title="Mở lịch công tác..." border=0></a></a></td> 
 		                                                         		                                
										 
 		                                                <td style="padding-right:0px"><a href="javascript:;"><img src="themes/softed/images/btnL3Clock.gif" alt="Hiện đồng hồ..." title="Hiện đồng hồ..." border=0 onClick="fnvshobj(this,'wclock');"></a></a></td> 
 		                                         
 		                                         
 		                                                <td style="padding-right:0px"><a href="#"><img src="themes/softed/images/btnL3Calc.gif" alt="Mở máy tính..." title="Mở máy tính..." border=0 onClick="fnvshobj(this,'calculator_cont');fetch_calc();"></a></td> 
 		                                         
 		                                         
 		                                                <td style="padding-right:0px"><a href="javascript:;" onClick='return window.open("index.php?module=Home&action=vtchat","Chat","width=600,height=450,resizable=1,scrollbars=1");'><img src="themes/softed/images/tbarChat.gif" alt="Tán gẫu..." title="Tán gẫu..." border=0></a> 
 		                                         
				</td>
					<td style="padding-right:10px"><img src="themes/softed/images/btnL3Tracker.gif" alt="Xem gần nhất" title="Xem gần nhất" border=0 onClick="fnvshobj(this,'tracker');">
                    			</td>	
				</tr>
				</table>
		</td>
		<td style="width:20px;">&nbsp;</td>
		<td class="small">
			<!-- Import / Export -->
			<table border=0 cellspacing=0 cellpadding=5>
			<tr>

			
					   			
					<td style="padding-right:0px;padding-left:10px;"><a href="index.php?module=Accounts&action=Import&step=1&return_module=Accounts&return_action=index&parenttab=Marketing"><img src="themes/softed/images/tbarImport.gif" alt="Nhập dữ liệu Khách hàng" title="Nhập dữ liệu Khách hàng" border="0"></a></td>	
					
								<td style="padding-right:10px"><a name='export_link' href="javascript:void(0)" onclick="return selectedRecords('Accounts','Marketing')"><img src="themes/softed/images/tbarExport.gif" alt="Xuất dữ liệu Khách hàng" title="Xuất dữ liệu Khách hàng" border="0"></a></td>			
			
										 
									<td style="padding-right:10px"><img src="themes/images/FindDuplicates-Faded.gif" border="0"></td>	
										</tr>
			</table>	
		<td style="width:20px;">&nbsp;</td>
		<td class="small">
			<!-- All Menu -->
				<table border=0 cellspacing=0 cellpadding=5>
				<tr>
					<td style="padding-left:10px;"><a href="javascript:;" onmouseout="fninvsh('allMenu');" onClick="fnvshobj(this,'allMenu')"><img src="themes/softed/images/btnL3AllMenu.gif" alt="Mở tất cả Menu..." title="Mở tất cả Menu..." border="0"></a></td>
					        		<td style="padding-left:10px;"><a href='index.php?module=Settings&action=ModuleManager&module_settings=true&formodule=Accounts&parenttab=Settings'><img src="themes/softed/images/settingsBox.png" alt="Khách hàng Thiết lập" title="Khách hàng Thiết lập" border="0"></a></td>
								</tr>
				</table>
		</td>			
		</tr>
		</table>
	</td>
</tr>
</TABLE>	

<table border=0 cellspacing=0 cellpadding=0 width=98% align=center>
   <tr>
	<td valign=top><img src="themes/softed/images/showPanelTopLeft.gif"></td>

	<td class="showPanelBg" valign=top width=100%>
				<div class="small" style="padding:20px">
									  				
			 
						  					
				<span class="lvtHeaderText"><font color="purple">[ ACC16 ] </font>Trần Thị Khanh - Sửa Khách hàng Thông tin</span> <br>
				Cập nhật 860 ngày trước (01 Tháng 12 2011)	 
						
			<hr noshade size=1>
			<br> 
		
			
	<form name="EditView" method="POST" action="index.php" onsubmit="VtigerJS_DialogBox.block();">


<input type="hidden" name="pagenumber" value="">
<input type="hidden" name="module" value="Accounts">
<input type="hidden" name="record" value="137">
<input type="hidden" name="mode" value="edit">
<input type="hidden" name="action">
<input type="hidden" name="parenttab" value="Marketing">
<input type="hidden" name="return_module" value="Accounts">
<input type="hidden" name="return_id" value="">
<input type="hidden" name="return_action" value="index">
<input type="hidden" name="return_viewname" value="66">
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
																							<input title="Lưu [Alt+S]" accessKey="S" class="crmbutton small save" onclick="this.form.action.value='Save'; displaydeleted();  if(formValidate()) { if(AjaxDuplicateValidate('Accounts','accountname',this.form)) { AddressSync(this.form,137); } }"  type="button" name="button" value="  Lưu  " style="width:70px" >
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
				<font color="red">*</font>Tên Khách hàng 			</td>
			<td width=30% align=left class="dvtCellInfo">
				<input type="text" name="accountname" tabindex="" value="Trần Thị Khanh" tabindex="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'">
			</td>
																									 
	 	
							
										
				<!-- Non Editable field, only configured value will be loaded -->
				<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Mã số Khách hàng </td>
                                <td width=30% align=left class="dvtCellInfo"><input readonly type="text" tabindex="" name="account_no" id ="account_no"  value="ACC16"  class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align=right>
				<font color="red"></font>Website 			</td>
			<td width="30%" align=left class="dvtCellInfo">
				&nbsp;&nbsp;http://
			<input style="width:74%;" class = 'detailedViewTextBox' type="text" tabindex="" name="website" style="border:1px solid #bababa;" size="27" onFocus="this.className='detailedViewTextBoxOn'"onBlur="this.className='detailedViewTextBox'" onkeyup="validateUrl('website');" value="vjl.com.vn">
			</td>

																									 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Điện thoại </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="phone" id ="phone" value="0915166889" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Mã chứng khoán </td>

							<td width=30% align=left class="dvtCellInfo">
					<input type="text" name="tickersymbol" tabindex="" id ="tickersymbol" value="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn';" onBlur="this.className='detailedViewTextBox';sensex_info()">
					<span id="vtbusy_info" style="display:none;">
						<img src="themes/images/vtbusy.gif" border="0"></span>
				</td>

																												 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Fax </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="fax" id ="fax" value="+84-4-3577 2007" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
																	<td width="20%" class="dvtCellLabel" align=right>
				<font color="red"></font>Thành viên của 			</td>
			<td width="30%" align=left class="dvtCellInfo">
				<input readonly name="account_name" style="border:1px solid #bababa;" type="text" value=""><input name="account_id" type="hidden" value="0">&nbsp;<img tabindex="" src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" LANGUAGE=javascript onclick='return window.open("index.php?module=Accounts&action=Popup&popuptype=specific_account_address&form=TasksEditView&form_submit=false&fromlink=&recordid=137","test","width=640,height=602,resizable=0,scrollbars=0");' align="absmiddle" style='cursor:hand;cursor:pointer'>&nbsp;<input type="image" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" LANGUAGE=javascript onClick="this.form.account_id.value=''; this.form.account_name.value='';return false;" align="absmiddle" style='cursor:hand;cursor:pointer'>
			</td>
																									 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Điện thoại khác </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="otherphone" id ="otherphone" value="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Số nhân viên </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="employees" id ="employees" value="0" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Email </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="email1" id ="email1" value="khanhtt@vjl.com.vn" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Email khác </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="email2" id ="email2" value="khanh@s-i-e.jp" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Người sở hữu </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="ownership" id ="ownership" value="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
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
				Đánh giá 			</td>
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

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="siccode" id ="siccode" value="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align=right>
				<font color="red"></font>Từ chối email 			</td>

												<td width="30%" align=left class="dvtCellInfo">
						<input name="emailoptout" tabindex="" type="checkbox" >
					</td>
																																 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align=right>
				<font color="red"></font>Doanh thu hàng năm: (₫) 			</td>
			<td width="30%" align=left class="dvtCellInfo">				
									<input name="annual_revenue" tabindex="" type="text" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"  value="0">
							</td>

			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align=right>
				<font color="red">*</font>Được gán cho 			</td>
			<td width="30%" align=left class="dvtCellInfo">
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													
																							
				<input type="radio" tabindex="" name="assigntype" checked value="U" onclick="toggleAssignType(this.value)" >&nbsp;Người dùng

									<input type="radio" name="assigntype"  value="T" onclick="toggleAssignType(this.value)">&nbsp;Nhóm
								
				<span id="assign_user" style="display:block">
					<select name="assigned_user_id" class="small">
																					<option value="1" selected>admin</option>
																												<option value="2730" >binhnt</option>
																												<option value="6" >cancv</option>
																												<option value="10" >cuongtq</option>
																												<option value="2729" >ducpl</option>
																												<option value="18" >hungnv</option>
																												<option value="20" >huylm</option>
																												<option value="2731" >karofi</option>
																												<option value="26" >quandm</option>
																												<option value="25" >quyennt</option>
																												<option value="21" >sangch</option>
																												<option value="24" >thamnh</option>
																												<option value="2725" >ThaoDT</option>
																												<option value="2726" >ThaoNTT</option>
																												<option value="5" >thoant</option>
																												<option value="2727" >thomlt</option>
																												<option value="2721" >trangnt</option>
																												<option value="28" >trattp</option>
																												<option value="2728" >TuyetVT</option>
																												<option value="15" >vuidt</option>
																												<option value="27" >yennt</option>
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
				<font color="red"></font>Thông báo khi dữ liệu này thay đổi 			</td>

												<td width="30%" align=left class="dvtCellInfo">
						<input name="notify_owner" type="checkbox" tabindex="" checked>
					</td>
										   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align=right>
				<font color="red"></font>Ngày sinh 			</td>
			<td width="30%" align=left class="dvtCellInfo">
																		
				<input name="cf_607" tabindex="" id="jscal_field_cf_607" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="12-10-1979">
				<img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_cf_607">
				
								
												
																		
									<br><font size=1><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
				
				<script type="text/javascript" id='massedit_calendar_cf_607'>
					Calendar.setup ({
						inputField : "jscal_field_cf_607", ifFormat : "%d-%m-%Y", showsTime : false, button : "jscal_trigger_cf_607", singleClick : true, step : 1
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
				<font color="red"></font>Nhu cầu gửi đĩa 			</td>

												<td width="30%" align=left class="dvtCellInfo">
						<input name="cf_639" tabindex="" type="checkbox" >
					</td>
																																 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align=right>
				<font color="red"></font>Nhu cầu đại lý 			</td>

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
				<textarea value="" name="bill_street" tabindex="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'" rows=2></textarea>
			</td>
																									 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right>
					<font color="red"></font>
				Địa chỉ vận chuyển 			</td>
			<td width=30% align=left class="dvtCellInfo">
				<textarea value="" name="ship_street" tabindex="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'" rows=2></textarea>
			</td>
			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Hộp thư thanh toán </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="bill_pobox" id ="bill_pobox" value="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Hộp thư vận chuyển </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="ship_pobox" id ="ship_pobox" value="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Thanh toán tại thành phố </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="bill_city" id ="bill_city" value="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Vận chuyển tới thành phố </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="ship_city" id ="ship_city" value="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Thanh toán tại Tỉnh/Bang </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="bill_state" id ="bill_state" value="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Vận chuyển tới Tỉnh/Bang </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="ship_state" id ="ship_state" value="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Mã vùng thanh toán </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="bill_code" id ="bill_code" value="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Mã vùng vận chuyển </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="ship_code" id ="ship_code" value="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Thanh toán tại quốc gia </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="bill_country" id ="bill_country" value="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width=20% class="dvtCellLabel" align=right><font color="red"></font>Vận chuyển tới quốc gia </td>

							<td width=30% align=left class="dvtCellInfo"><input type="text" tabindex="" name="ship_country" id ="ship_country" value="" class=detailedViewTextBox onFocus="this.className='detailedViewTextBoxOn'" onBlur="this.className='detailedViewTextBox'"></td>
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
				<textarea class="detailedViewTextBox" tabindex="" onFocus="this.className='detailedViewTextBoxOn'" name="description"  onBlur="this.className='detailedViewTextBox'" cols="90" rows="8">Kh&aacute;ch h&agrave;ng thiết kế website http://vjl.com.vn</textarea>
							</td>
			   </tr>

									   

									   <!-- Added to display the Product Details in Inventory-->
									   
									   <tr>
										<td  colspan=4 style="padding:5px">
											<div align="center">
																				                                		                     <input type='hidden'  name='address_change' value='no'>
                                                                             <input title="Lưu [Alt+S]" accessKey="S" class="crmbutton small save" onclick="this.form.action.value='Save'; displaydeleted();  if(formValidate()) { if(AjaxDuplicateValidate('Accounts','accountname',this.form)) { AddressSync(this.form,137); } }" type="button" name="button" value="  Lưu  " style="width:70px" >		
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
		<div>
	</td>
	<td align=right valign=top><img src="themes/softed/images/showPanelTopRight.gif"></td>
   </tr>
</table>
<!--added to fix 4600-->
<input name='search_url' id="search_url" type='hidden' value=''>
</form>



<script>
	ScrollEffect.limit = 201;
	ScrollEffect.closelimit= 200;
</script>
<script>	

        var fieldname = new Array('accountname','account_no','phone','website','fax','tickersymbol','otherphone','account_id','email1','employees','email2','ownership','rating','industry','siccode','accounttype','annual_revenue','emailoptout','notify_owner','assigned_user_id','bill_street','ship_street','bill_city','ship_city','bill_state','ship_state','bill_code','ship_code','bill_country','ship_country','bill_pobox','ship_pobox','description','campaignrelstatus','cf_607','cf_638','cf_639','cf_640')

        var fieldlabel = new Array('Tên Khách hàng','Mã số Khách hàng','Điện thoại','Website','Fax','Mã chứng khoán','Điện thoại khác','Thành viên của','Email','Số nhân viên','Email khác','Người sở hữu','Đánh giá','Ngành nghề','Mã ngành','Loại','Doanh thu hàng năm','Từ chối email','Thông báo khi dữ liệu này thay đổi','Được gán cho','Địa chỉ thanh toán','Địa chỉ vận chuyển','Thanh toán tại thành phố','Vận chuyển tới thành phố','Thanh toán tại Tỉnh/Bang','Vận chuyển tới Tỉnh/Bang','Mã vùng thanh toán','Mã vùng vận chuyển','Thanh toán tại quốc gia','Vận chuyển tới quốc gia','Hộp thư thanh toán','Hộp thư vận chuyển','Mô tả','Trạng thái','Ng&agrave;y sinh','Loại Sản Phẩm','Nhu cầu gửi đĩa','Nhu cầu đại l&yacute;')

        var fielddatatype = new Array('V~M','V~O','V~O','V~O','V~O','V~O','V~O','I~O','E~O','I~O','E~O','V~O','V~O','V~O','V~O','V~O','I~O','C~O','C~O','V~M','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','D~O','V~O','C~O','C~O')

	var ProductImages=new Array();
	var count=0;

	function delRowEmt(imagename)
	{
		ProductImages[count++]=imagename;
	}

	function displaydeleted()
	{
		var imagelists='';
		for(var x = 0; x < ProductImages.length; x++)
		{
			imagelists+=ProductImages[x]+'###';
		}

		if(imagelists != '')
			document.EditView.imagelist.value=imagelists
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
		<script language = 'JavaScript' type='text/javascript' src = 'include/js/popup.js'></script><br><br><br><table border=0 cellspacing=0 cellpadding=5 width=100% class=settingsSelectedUI ><tr><td class=small align=left><span style='color: rgb(153, 153, 153);'>HOSCO-CRM</span></td><td class=small align=right><span style='color: rgb(153, 153, 153);'>&copy; 2014 <a href='http://www.hosgroup.com.vn' target='_blank'>hosgroup.com.vn</a></span> </td></tr></table>		<script>
			var userDateFormat = "dd-mm-yyyy";
			var default_charset = "UTF-8";
		</script>
<script type='text/javascript'>if(typeof(ActivityReminderCallback) != 'undefined') window.setTimeout(function(){
						ActivityReminderCallback();
					},27000);</script><!--end body panes-->
</td></tr>
<tr><td colspan="2" align="center">
</td></tr></table>
</body>
</html>

