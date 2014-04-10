<%-- 
    Document   : product
    Created on : Apr 10, 2014, 12:36:47 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
	<title>admin - Tồn kho - Sản phẩm - Phần mềm quản lý HOSCO-MANAGEMENT</title>
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
															  <td class="tabUnSelected"  onmouseover="fnDropDown(this,'Marketing_sub');" onmouseout="fnHideDrop('Marketing_sub');" align="center" nowrap><a href="index.php?module=Campaigns&action=index&parenttab=Marketing">Marketing</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected"  onmouseover="fnDropDown(this,'Sales_sub');" onmouseout="fnHideDrop('Sales_sub');" align="center" nowrap><a href="index.php?module=Leads&action=index&parenttab=Sales">Bán hàng</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected"  onmouseover="fnDropDown(this,'Support_sub');" onmouseout="fnHideDrop('Support_sub');" align="center" nowrap><a href="index.php?module=HelpDesk&action=index&parenttab=Support">Hỗ trợ</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected"  onmouseover="fnDropDown(this,'Analytics_sub');" onmouseout="fnHideDrop('Analytics_sub');" align="center" nowrap><a href="index.php?module=Reports&action=index&parenttab=Analytics">Phân tích</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabSelected"  onmouseover="fnDropDown(this,'Inventory_sub');" onmouseout="fnHideDrop('Inventory_sub');" align="center" nowrap><a href="index.php?module=Products&action=index&parenttab=Inventory">Tồn kho</a><img src="themes/softed/images/menuDnArrow.gif" border=0 style="padding-left:5px"></td>
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
				<input type="hidden" name="parenttab" value="Inventory" style="margin:0px">
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
      						 
      																		<td class="level2SelTab" nowrap><a href="index.php?module=Products&action=index&parenttab=Inventory">Sản phẩm</a></td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Vendors&action=index&parenttab=Inventory">Nhà cung cấp</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=PriceBooks&action=index&parenttab=Inventory">Bảng giá</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=PurchaseOrder&action=index&parenttab=Inventory">Nhập hàng</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=SalesOrder&action=index&parenttab=Inventory">Đặt hàng</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Quotes&action=index&parenttab=Inventory">Báo giá</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Invoice&action=index&parenttab=Inventory">Hóa đơn</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Services&action=index&parenttab=Inventory">Dịch vụ</a> </td>
							
											      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Assets&action=index&parenttab=Inventory">Assets</a> </td>
							
																										-->
			
																																																						   					
	   												   							
	   									
													<td class="level2SelTab" nowrap><a href="index.php?module=Products&action=index&parenttab=Inventory">Sản phẩm</a></td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap> <a href="index.php?module=Vendors&action=index&parenttab=Inventory">Nhà cung cấp</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap> <a href="index.php?module=PriceBooks&action=index&parenttab=Inventory">Bảng giá</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap> <a href="index.php?module=PurchaseOrder&action=index&parenttab=Inventory">Nhập hàng</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap> <a href="index.php?module=SalesOrder&action=index&parenttab=Inventory">Đặt hàng</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap> <a href="index.php?module=Quotes&action=index&parenttab=Inventory">Báo giá</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap> <a href="index.php?module=Invoice&action=index&parenttab=Inventory">Hóa đơn</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap> <a href="index.php?module=Services&action=index&parenttab=Inventory">Dịch vụ</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap> <a href="index.php?module=Assets&action=index&parenttab=Inventory">Assets</a> </td>
							
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
var gVTModule = 'Products';
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
		<td class="trackerList small"> <a href="index.php?module=PriceBooks&action=DetailView&record=185&parenttab=Inventory">Bảng gi&aacute; phần mềm...</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">2</td>
		<td class="trackerList small"> <a href="index.php?module=SalesOrder&action=DetailView&record=611&parenttab=Inventory">Đặt h&agrave;ng phần mề...</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">3</td>
		<td class="trackerList small"> <a href="index.php?module=SalesOrder&action=DetailView&record=201&parenttab=Inventory">Đặt h&agrave;ng 1</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">4</td>
		<td class="trackerList small"> <a href="index.php?module=Accounts&action=DetailView&record=137&parenttab=Inventory">Trần Thị Khanh</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">5</td>
		<td class="trackerList small"> <a href="index.php?module=Leads&action=DetailView&record=203&parenttab=Inventory">anh Long </a> </td><td class="trackerList small">&nbsp;</td></tr>
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
<script language="JavaScript" type="text/javascript" src="include/js/ListView.js"></script>
<script language="JavaScript" type="text/javascript" src="include/js/search.js"></script>
<script language="JavaScript" type="text/javascript" src="include/js/Merge.js"></script>
<script language="JavaScript" type="text/javascript" src="include/js/dtlviewajax.js"></script>
<script language="javascript" type="text/javascript">
var typeofdata = new Array();
typeofdata['E'] = ['e','n','s','ew','c','k'];
typeofdata['V'] = ['e','n','s','ew','c','k'];
typeofdata['N'] = ['e','n','l','g','m','h'];
typeofdata['NN'] = ['e','n','l','g','m','h'];
typeofdata['T'] = ['e','n','l','g','m','h'];
typeofdata['I'] = ['e','n','l','g','m','h'];
typeofdata['C'] = ['e','n'];
typeofdata['DT'] = ['e','n','l','g','m','h'];
typeofdata['D'] = ['e','n','l','g','m','h'];
var fLabels = new Array();
fLabels['e'] = "là";
fLabels['n'] = "không là";
fLabels['s'] = "bắt đầu với";
fLabels['ew'] = "kết thúc với";
fLabels['c'] = "chứa";
fLabels['k'] = "không chứa";
fLabels['l'] = "nhỏ hơn";
fLabels['g'] = "lớn hơn";
fLabels['m'] = "nhỏ hơn hoặc bằng";
fLabels['h'] = "lớn hơn hoặc bằng";
var noneLabel;

function trimfValues(value)
{
    var string_array;
    string_array = value.split(":");
    return string_array[4];
}

function updatefOptions(sel, opSelName) {
    var selObj = document.getElementById(opSelName);
    var fieldtype = null ;

    var currOption = selObj.options[selObj.selectedIndex];
    var currField = sel.options[sel.selectedIndex];
    
    var fld = currField.value.split(":");
    var tod = fld[4];
    if(currField.value != null && currField.value.length != 0)
    {
	fieldtype = trimfValues(currField.value);
	fieldtype = fieldtype.replace(/\\'/g,'');
	ops = typeofdata[fieldtype];
	var off = 0;
	if(ops != null)
	{

		var nMaxVal = selObj.length;
		for(nLoop = 0; nLoop < nMaxVal; nLoop++)
		{
			selObj.remove(0);
		}
		for (var i = 0; i < ops.length; i++)
		{
			var label = fLabels[ops[i]];
			if (label == null) continue;
			var option = new Option (fLabels[ops[i]], ops[i]);
			selObj.options[i] = option;
			if (currOption != null && currOption.value == option.value)
			{
				option.selected = true;
			}
		}
	}
    }else
    {
	var nMaxVal = selObj.length;
	for(nLoop = 0; nLoop < nMaxVal; nLoop++)
	{
		selObj.remove(0);
	}
	selObj.options[0] = new Option ('None', '');
	if (currField.value == '') {
		selObj.options[0].selected = true;
	}
    }

}

</script>
<script language="JavaScript" type="text/javascript" src="modules/Products/Products.js"></script>
<script language="javascript">
function checkgroup()
{
  if($("group_checkbox").checked)
  {
  document.change_ownerform_name.lead_group_owner.style.display = "block";
  document.change_ownerform_name.lead_owner.style.display = "none";
  }
  else
  {
  document.change_ownerform_name.lead_owner.style.display = "block";
  document.change_ownerform_name.lead_group_owner.style.display = "none";
  }    
  
}
function callSearch(searchtype)
{
	for(i=1;i<=26;i++)
    	{
        	var data_td_id = 'alpha_'+ eval(i);
        	getObj(data_td_id).className = 'searchAlph';
    	}
    	gPopupAlphaSearchUrl = '';
	search_fld_val= $('bas_searchfield').options[$('bas_searchfield').selectedIndex].value;
	search_txt_val= encodeURIComponent(document.basicSearch.search_text.value);
        var urlstring = '';
        if(searchtype == 'Basic')
        {
        		var p_tab = document.getElementsByName("parenttab");
                urlstring = 'search_field='+search_fld_val+'&searchtype=BasicSearch&search_text='+search_txt_val+'&';
                urlstring = urlstring + 'parenttab='+p_tab[0].value+ '&';
        }
        else if(searchtype == 'Advanced')
        {
                var no_rows = document.basicSearch.search_cnt.value;
                for(jj = 0 ; jj < no_rows; jj++)
                {
                        var sfld_name = getObj("Fields"+jj);
                        var scndn_name= getObj("Condition"+jj);
                        var srchvalue_name = getObj("Srch_value"+jj);
                        var p_tab = document.getElementsByName("parenttab");
                        urlstring = urlstring+'Fields'+jj+'='+sfld_name[sfld_name.selectedIndex].value+'&';
                        urlstring = urlstring+'Condition'+jj+'='+scndn_name[scndn_name.selectedIndex].value+'&';
			urlstring = urlstring+'Srch_value'+jj+'='+encodeURIComponent(srchvalue_name.value)+'&';
                        urlstring = urlstring + 'parenttab='+p_tab[0].value+ '&';
                }
                for (i=0;i<getObj("matchtype").length;i++){
                        if (getObj("matchtype")[i].checked==true)
                                urlstring += 'matchtype='+getObj("matchtype")[i].value+'&';
                }
                urlstring += 'search_cnt='+no_rows+'&';
                urlstring += 'searchtype=advance&'
        }
	$("status").style.display="inline";
	new Ajax.Request(
		'index.php',
		{queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody:urlstring +'query=true&file=index&module=Products&action=ProductsAjax&ajax=true&search=true',
			onComplete: function(response) {
								$("status").style.display="none";
                                result = response.responseText.split('&#&#&#');
                                $("ListViewContents").innerHTML= result[2];
                                if(result[1] != '')
									alert(result[1]);
								$('basicsearchcolumns').innerHTML = '';
			}
	       }
        );
	return false
}
function alphabetic(module,url,dataid)
{
        for(i=1;i<=26;i++)
        {
                var data_td_id = 'alpha_'+ eval(i);
                getObj(data_td_id).className = 'searchAlph';

        }
        getObj(dataid).className = 'searchAlphselected';
	$("status").style.display="inline";
	new Ajax.Request(
		'index.php',
		{queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: 'module='+module+'&action='+module+'Ajax&file=index&ajax=true&search=true&'+url,
			onComplete: function(response) {
				$("status").style.display="none";
				result = response.responseText.split('&#&#&#');
				$("ListViewContents").innerHTML= result[2];
				if(result[1] != '')
			                alert(result[1]);
				$('basicsearchcolumns').innerHTML = '';
			}
		}
	);
}

</script>

		<script type="text/javascript" src="modules/Products/Products.js"></script>

<TABLE border=0 cellspacing=0 cellpadding=0 width=100% class=small>
<tr><td style="height:2px"></td></tr>
<tr>
			
	<td style="padding-left:10px;padding-right:50px" class="moduleName" nowrap>Tồn kho > <a class="hdrLink" href="index.php?action=ListView&module=Products&parenttab=Inventory">Sản phẩm</a></td>
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
								        			                        		       	<td style="padding-right:0px;padding-left:10px;"><a href="index.php?module=Products&action=EditView&return_action=DetailView&parenttab=Inventory"><img src="themes/softed/images/btnL3Add.gif" alt="Tạo Sản phẩm..." title="Tạo Sản phẩm..." border=0></a></td>
			                       															
											 <td style="padding-right:10px"><a href="javascript:;" onClick="moveMe('searchAcc');searchshowhide('searchAcc','advSearch');mergehide('mergeDup')" ><img src="themes/softed/images/btnL3Search.gif" alt="Tìm kiếm trong Sản phẩm..." title="Tìm kiếm trong Sản phẩm..." border=0></a></a></td>
										
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
						 
 		                                                						 
 		                                                                <td style="padding-right:0px;padding-left:10px;"><a href="javascript:;" onClick='fnvshobj(this,"miniCal");getMiniCal("parenttab=Inventory");'><img src="themes/softed/images/btnL3Calendar.gif" alt="Mở lịch công tác..." title="Mở lịch công tác..." border=0></a></a></td> 
 		                                                         
																 
 		                                                <td style="padding-right:0px"><a href="javascript:;"><img src="themes/softed/images/btnL3Clock.gif" alt="Hiện đồng hồ..." title="Hiện đồng hồ..." border=0 onClick="fnvshobj(this,'wclock');"></a></a></td> 
 		                                         
 		                                         
 		                                                <td style="padding-right:0px"><a href="#"><img src="themes/softed/images/btnL3Calc.gif" alt="Mở máy tính..." title="Mở máy tính..." border=0 onClick="fnvshobj(this,'calculator_cont');fetch_calc();"></a></td> 
 		                                         
 		                                         
 		                                                <td style="padding-right:10px"><a href="javascript:;" onClick='return window.open("index.php?module=Home&action=vtchat","Chat","width=600,height=450,resizable=1,scrollbars=1");'><img src="themes/softed/images/tbarChat.gif" alt="Tán gẫu..." title="Tán gẫu..." border=0></a> 
 		                                         
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

			
					   			
					<td style="padding-right:0px;padding-left:10px;"><a href="index.php?module=Products&action=Import&step=1&return_module=Products&return_action=index&parenttab=Inventory"><img src="themes/softed/images/tbarImport.gif" alt="Nhập dữ liệu Sản phẩm" title="Nhập dữ liệu Sản phẩm" border="0"></a></td>	
					
					
                    <td style="padding-right:10px"><a name='export_link' href="javascript:void(0)" onclick="return selectedRecords('Products','Inventory')"><img src="themes/softed/images/tbarExport.gif" alt="Xuất dữ liệu Sản phẩm" title="Xuất dữ liệu Sản phẩm" border="0"></a></td>
										 
					
					<!--<td style="padding-right:10px"><a href="index.php?module=Products&action=FindDuplicateRecords&button_view=true&list_view=true&parenttab=Inventory"><img src="themes/softed/images/findduplicates.gif" alt="" title="Tìm kiếm trùng" border="0"></a></td> -->
					<td style="padding-right:10px"><a href="javascript:;" onClick="moveMe('mergeDup');mergeshowhide('mergeDup');searchhide('searchAcc','advSearch');"><img src="themes/images/findduplicates.gif" alt="" title="Tìm kiếm trùng" border="0"></a></td>
										</tr>
			</table>	
		<td style="width:20px;">&nbsp;</td>
		<td class="small">
				<!-- All Menu -->
				<table border=0 cellspacing=0 cellpadding=5>
				<tr>
					<td style="padding-left:10px;"><a href="javascript:;" onmouseout="fninvsh('allMenu');" onClick="fnvshobj(this,'allMenu')"><img src="themes/softed/images/btnL3AllMenu.gif" alt="Mở tất cả Menu..." title="Mở tất cả Menu..." border="0"></a></td>
					        		<td style="padding-left:10px;"><a href='index.php?module=Settings&action=ModuleManager&module_settings=true&formodule=Products&parenttab=Settings'><img src="themes/softed/images/settingsBox.png" alt="Sản phẩm Thiết lập" title="Sản phẩm Thiết lập" border="0"></a></td>
								</tr>
				</table>
		</td>
		</tr>
		</table>
	</td>
</tr>
<tr><td style="height:2px"></td></tr>
</TABLE>                                <div id="searchingUI" style="display:none;">
                                        <table border=0 cellspacing=0 cellpadding=0 width=100%>
                                        <tr>
                                                <td align=center>
                                                <img src="themes/images/searching.gif" alt="Đang tìm... hãy đợi"  title="Đang tìm... hãy đợi">
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

<table border=0 cellspacing=0 cellpadding=0 width=98% align=center>
     <tr>
        <td valign=top><img src="themes/softed/images/showPanelTopLeft.gif"></td>

	<td class="showPanelBg" valign="top" width=100% style="padding:10px;">
	 <!-- SIMPLE SEARCH -->
<div id="searchAcc" style="display: block;position:relative;">
<form name="basicSearch" method="post" action="index.php" onSubmit="return callSearch('Basic');">
<table width="80%" cellpadding="5" cellspacing="0"  class="searchUIBasic small" align="center" border=0>
	<tr>
		<td class="searchUIName small" nowrap align="left">
		<span class="moduleName">Tìm kiếm</span><br><span class="small"><a href="#" onClick="fnhide('searchAcc');show('advSearch');updatefOptions(document.getElementById('Fields0'), 'Condition0');document.basicSearch.searchtype.value='advance';">Chuyển tới Tìm kiếm nâng cao</a></span>
		<!-- <img src="themes/images/basicSearchLens.gif" align="absmiddle" alt="Tìm kiếm cơ bản" title="Tìm kiếm cơ bản" border=0>&nbsp;&nbsp;-->
		</td>
		<td class="small" nowrap align=right><b>Tìm kiếm </b></td>
		<td class="small"><input type="text"  class="txtBox" style="width:120px" name="search_text"></td>
		<td class="small" nowrap><b>Trong</b>&nbsp;</td>
		<td class="small" nowrap>
			<div id="basicsearchcolumns_real">
			<select name="search_field" id="bas_searchfield" class="txtBox" style="width:150px">
			 <option label="Tên sản phẩm" value="productname">Tên sản phẩm</option>
<option label="Số hiệu" value="serial_no">Số hiệu</option>
<option label="Tạo lúc" value="createdtime">Tạo lúc</option>
<option label="Tồn kho" value="qtyinstock">Tồn kho</option>
<option label="Tên kho" value="cf_628">Tên kho</option>
<option label="Mức tồn kho chuẩn" value="reorderlevel">Mức tồn kho chuẩn</option>

			</select>
			</div>
                        <input type="hidden" name="searchtype" value="BasicSearch">
                        <input type="hidden" name="module" value="Products">
                        <input type="hidden" name="parenttab" value="Inventory">
			<input type="hidden" name="action" value="index">
                        <input type="hidden" name="query" value="true">
			<input type="hidden" name="search_cnt">
		</td>
		<td class="small" nowrap width=40% >
			  <input name="submit" type="button" class="crmbutton small create" onClick="callSearch('Basic');" value=" Thực hiện tìm kiếm ">&nbsp;
			  
		</td>
		<td class="small" valign="top" onMouseOver="this.style.cursor='pointer';" onclick="moveMe('searchAcc');searchshowhide('searchAcc','advSearch')">[x]</td>
	</tr>
	<tr>
		<td colspan="7" align="center" class="small">
			<table border=0 cellspacing=0 cellpadding=0 width=100%>
				<tr>
                                                <td class="searchAlph" id="alpha_1" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=A","alpha_1")'>A</td><td class="searchAlph" id="alpha_2" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=B","alpha_2")'>B</td><td class="searchAlph" id="alpha_3" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=C","alpha_3")'>C</td><td class="searchAlph" id="alpha_4" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=D","alpha_4")'>D</td><td class="searchAlph" id="alpha_5" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=E","alpha_5")'>E</td><td class="searchAlph" id="alpha_6" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=F","alpha_6")'>F</td><td class="searchAlph" id="alpha_7" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=G","alpha_7")'>G</td><td class="searchAlph" id="alpha_8" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=H","alpha_8")'>H</td><td class="searchAlph" id="alpha_9" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=I","alpha_9")'>I</td><td class="searchAlph" id="alpha_10" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=J","alpha_10")'>J</td><td class="searchAlph" id="alpha_11" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=K","alpha_11")'>K</td><td class="searchAlph" id="alpha_12" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=L","alpha_12")'>L</td><td class="searchAlph" id="alpha_13" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=M","alpha_13")'>M</td><td class="searchAlph" id="alpha_14" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=N","alpha_14")'>N</td><td class="searchAlph" id="alpha_15" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=O","alpha_15")'>O</td><td class="searchAlph" id="alpha_16" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=P","alpha_16")'>P</td><td class="searchAlph" id="alpha_17" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=Q","alpha_17")'>Q</td><td class="searchAlph" id="alpha_18" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=R","alpha_18")'>R</td><td class="searchAlph" id="alpha_19" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=S","alpha_19")'>S</td><td class="searchAlph" id="alpha_20" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=T","alpha_20")'>T</td><td class="searchAlph" id="alpha_21" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=U","alpha_21")'>U</td><td class="searchAlph" id="alpha_22" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=V","alpha_22")'>V</td><td class="searchAlph" id="alpha_23" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=W","alpha_23")'>W</td><td class="searchAlph" id="alpha_24" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=X","alpha_24")'>X</td><td class="searchAlph" id="alpha_25" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=Y","alpha_25")'>Y</td><td class="searchAlph" id="alpha_26" align="center" onClick='alphabetic("Products","gname=&query=true&search_field=productname&searchtype=BasicSearch&operator=s&type=alpbt&search_text=Z","alpha_26")'>Z</td>
                                </tr>
                        </table>
		</td>
	</tr>
</table>
</form>
</div>
<!-- ADVANCED SEARCH -->
<div id="advSearch" style="display:none;">
<form name="advSearch" method="post" action="index.php" onSubmit="totalnoofrows();return callSearch('Advanced');">
		<table  cellspacing=0 cellpadding=5 width=80% class="searchUIAdv1 small" align="center" border=0>
			<tr>
					<td class="searchUIName small" nowrap align="left"><span class="moduleName">Tìm kiếm</span><br><span class="small"><a href="#" onClick="show('searchAcc');fnhide('advSearch')">Chuyển tới Tìm kiếm cơ bản</a></span></td>
					<td nowrap class="small"><b><input name="matchtype" type="radio" value="all">&nbsp;Có tất cả các từ</b></td>
					<td nowrap width=60% class="small" ><b><input name="matchtype" type="radio" value="any" checked>&nbsp;Không có các từ</b></td>
					<td class="small" valign="top" onMouseOver="this.style.cursor='pointer';" onclick="moveMe('searchAcc');searchshowhide('searchAcc','advSearch')">[x]</td>
			</tr>
		</table>
		<table cellpadding="2" cellspacing="0" width="80%" align="center" class="searchUIAdv2 small" border=0>
			<tr>
				<td align="center" class="small" width=90%>
				<div id="fixed" style="position:relative;width:95%;height:80px;padding:0px; overflow:auto;border:1px solid #CCCCCC;background-color:#ffffff" class="small">
					<table border=0 width=95%>
					<tr>
					<td align=left>
						<table width="100%"  border="0" cellpadding="2" cellspacing="0" id="adSrc" align="left">
						<tr  >
							<td width="31%"><select name="Fields0" id="Fields0" class="detailedViewTextBox" onchange="updatefOptions(this, 'Condition0')"><optgroup label='Kho H&agrave;ng' class='select' style='border:none'><option value=\'cf_628::::V\' >Tên kho</option><optgroup label='Thông tin Giá cả' class='select' style='border:none'><option value=\'taxclass::::V\' >GTGT</option><option value=\'unit_price::::N\' >Giá đơn vị</option><option value=\'commissionrate::::N\' >Tiền hoa hồng (%)</option><optgroup label='Thông tin chi tiết' class='select' style='border:none'><option value=\'description::::V\' >Mô tả</option><optgroup label='Thông tin sản phẩm' class='select' style='border:none'><option value=\'discontinued::::C\' >Có bán sản phẩm</option><option value=\'modifiedtime::::T\' >Cập nhật lúc</option><option value=\'productcategory::::V\' >Loại sản phẩm</option><option value=\'product_no::::V\' >Mã sản phẩm</option><option value=\'sales_start_date::::D\' >Ngày bắt đầu bán</option><option value=\'start_date::::D\' >Ngày bắt đầu hỗ trợ</option><option value=\'expiry_date::::D\' >Ngày hết hạn hỗ trợ</option><option value=\'sales_end_date::::D\' >Ngày kết thúc bán</option><option value=\'productsheet::::V\' >Ngăn hàng hóa</option><option value=\'manufacturer::::V\' >Nhà sản xuất</option><option value=\'productcode::::V\' >Phần Số</option><option value=\'serial_no::::V\' >Số hiệu</option><option value=\'vendor_part_no::::V\' >Số hiệu nhà cung cấp</option><option value=\'mfr_part_no::::V\' >Số hiệu nhà sản xuất</option><option value=\'glacct::::V\' >Tài khoản Kế toán</option><option value=\'vendor_id::::V\' >Tên nhà cung cấp</option><option value=\'productname::::V\' selected>Tên sản phẩm</option><option value=\'createdtime::::T\' >Tạo lúc</option><option value=\'website::::V\' >Website</option><optgroup label='Thông tin tồn kho' class='select' style='border:none'><option value=\'reorderlevel::::I\' >Mức tồn kho chuẩn</option><option value=\'assigned_user_id::::V\' >Người quản lý</option><option value=\'qtyindemand::::I\' >Số lượng yêu cầu</option><option value=\'qty_per_unit::::N\' >Số lượng/Đơn vị</option><option value=\'qtyinstock::::NN\' >Tồn kho</option><option value=\'usageunit::::V\' >Đơn vị sử dụng</option></select>
							</td>
							<td width="32%"><select name="Condition0" id="Condition0" class="detailedViewTextBox"><option value=\'c\'>chứa</option><option value=\'k\'>không chứa</option><option value=\'e\'>là</option><option value=\'n\'>không là</option><option value=\'s\'>bắt đầu với</option><option value=\'ew\'>kết thúc với</option><option value=\'g\'>lớn hơn</option><option value=\'l\'>nhỏ hơn</option><option value=\'h\'>lớn hơn hoặc bằng</option><option value=\'m\'>nhỏ hơn hoặc bằng</option></select>
							</td>
							<td width="32%"><input type="text" name="Srch_value0" id="Srch_value0" class="detailedViewTextBox"></td>
						</tr>
						</table>
					</td>
					</tr>
				</table>
				</div>	
				</td>
			</tr>
		</table>
			
		<table border=0 cellspacing=0 cellpadding=5 width=80% class="searchUIAdv3 small" align="center">
		<tr>
			<td align=left width=40%>
						<input type="button" name="more" value=" Thêm " onClick="fnAddSrch()" class="crmbuttom small edit" >
						<input name="button" type="button" value=" Ít hơn " onclick="delRow()" class="crmbuttom small edit" >
			</td>
			<td align=left class="small"><input type="button" class="crmbutton small create" value=" Thực hiện tìm kiếm " onClick="totalnoofrows();callSearch('Advanced');">
			</td>
		</tr>
	</table>
</form>
</div>		

<div id="mergeDup" style="z-index:1;display:none;position:relative;">
	<script language="JAVASCRIPT" type="text/javascript" src="include/js/smoothscroll.js"></script>
<script language="JavaScript" type="text/JavaScript">    
        var moveupLinkObj,moveupDisabledObj,movedownLinkObj,movedownDisabledObj;
        function setObjects() 
        {
            availListObj=getObj("availList")
            selectedColumnsObj=getObj("selectedColumns")

        }

        function addColumn() 
        {
        setObjects();
            for (i=0;i<selectedColumnsObj.length;i++) 
            {
                selectedColumnsObj.options[i].selected=false
            }

            for (i=0;i<availListObj.length;i++) 
            {
                if (availListObj.options[i].selected==true) 
                {            	
                	var rowFound=false;
                	var existingObj=null;
                    for (j=0;j<selectedColumnsObj.length;j++) 
                    {
                        if (selectedColumnsObj.options[j].value==availListObj.options[i].value) 
                        {
                            rowFound=true
                            existingObj=selectedColumnsObj.options[j]
                            break
                        }
                    }

                    if (rowFound!=true) 
                    {
                        var newColObj=document.createElement("OPTION")
                        newColObj.value=availListObj.options[i].value
                        if (browser_ie) newColObj.innerText=availListObj.options[i].innerText
                        else if (browser_nn4 || browser_nn6) newColObj.text=availListObj.options[i].text
                        selectedColumnsObj.appendChild(newColObj)
                        availListObj.options[i].selected=false
                        newColObj.selected=true
                        rowFound=false
                    } 
                    else 
                    {
                        if(existingObj != null) existingObj.selected=true
                    }
                }
            }
        }

        function delColumn() 
        {
        setObjects();
            for (i=selectedColumnsObj.options.length;i>0;i--) 
            {
                if (selectedColumnsObj.options.selectedIndex>=0)
                selectedColumnsObj.remove(selectedColumnsObj.options.selectedIndex)
            }
        }
        
        function formSelectColumnString()
        {
            var selectedColStr = "";
            setObjects();
            for (i=0;i<selectedColumnsObj.options.length;i++) 
            {
                selectedColStr += selectedColumnsObj.options[i].value + ",";
            }
            if (selectedColStr == "")
            {
            	alert('Chọn ít nhất một trường làm tiêu chuẩn để trộn');
            	return false;
            }
            document.mergeDuplicates.selectedColumnsString.value = selectedColStr;
            return;
        }
	setObjects();		
</script>	

<form enctype="multipart/form-data" name="mergeDuplicates" method="post" action="index.php?module=Products&action=FindDuplicateRecords" onsubmit="VtigerJS_DialogBox.block();">
	<input type="hidden" name="module" value="Products">
	<input type="hidden" name="parenttab" value="Inventory">
	<input type="hidden" name="action" value="FindDuplicateRecords">
	<input type="hidden" name="selectedColumnsString"/>
	<table class="searchUIBasic small" border="0" cellpadding="5" cellspacing="0" width="80%" height="10" align="center">
		<tbody><tr class="lvtCol" style="Font-Weight: normal"><br>
					<td colspan="2">
						<span class="moduleName">Chọn các trường chuẩn vào ô bên phải</span><br>
						<span font-weight:normal>Chọn trường thông tin bạn muốn kiểm tra trùng</span>
					</td>
					<td valign="top" align="right" class="small">
						<span>&nbsp;</span>
						<span align="right" onClick="mergeshowhide('mergeDup')" onmouseover="this.style.cursor='pointer';"><img src="themes/images/close.gif" border="0"></span><br>
					</td>
			   </tr>
			   <tr><td colspan="3"></td></tr>
				<tr>
					<td><b>Các trường đang hiện hữu</b></td>
					<td></td>
					<td><b> Trường được chọn</b></td>
				</tr>
				<tr>
					<td width=47%>
						<select id="availList" multiple size="10" name="availList" class="txtBox" Style="width: 100%">
						<option value="167">Tên sản phẩm</option><option value="169">Phần Số</option><option value="170">Có bán sản phẩm</option><option value="171">Nhà sản xuất</option><option value="172">Loại sản phẩm</option><option value="173">Ngày bắt đầu bán</option><option value="174">Ngày kết thúc bán</option><option value="175">Ngày bắt đầu hỗ trợ</option><option value="176">Ngày hết hạn hỗ trợ</option><option value="177">Website</option><option value="178">Tên nhà cung cấp</option><option value="179">Số hiệu nhà sản xuất</option><option value="180">Số hiệu nhà cung cấp</option><option value="181">Số hiệu</option><option value="182">Ngăn hàng hóa</option><option value="183">Tài khoản Kế toán</option><option value="186">Giá đơn vị</option><option value="187">Tiền hoa hồng (%)</option><option value="188">GTGT</option><option value="189">Đơn vị sử dụng</option><option value="190">Số lượng/Đơn vị</option><option value="191">Tồn kho</option><option value="192">Mức tồn kho chuẩn</option><option value="193">Người quản lý</option><option value="194">Số lượng yêu cầu</option><option value="196">Mô tả</option><option value="628">Tên kho</option>
						</select>
					</td>
					<td width="6%">
						<div align="center">
							<input type="button" name="Button" value="&nbsp;&rsaquo;&rsaquo;&nbsp;" onClick="addColumn()" class="crmButton small" width="100%" /><br /><br />
							<input type="button" name="Button1" value="&nbsp;&lsaquo;&lsaquo;&nbsp;" onClick="delColumn()" class="crmButton small" width="100%" /><br /><br />
						</div>
					</td>
					<td width="47%">
						<select id="selectedColumns" size="10" name="selectedColumns" multiple class="txtBox" Style="width: 100%">
						
						</select>
					</td>
				</tr> 
				<tr>
					<td colspan="3" align="center">
					<input type="submit" name="save&merge" value="Tìm kiếm trùng" class="crmbutton small edit" onClick="return formSelectColumnString()"/>
					<input type="button" name="cancel" value="Hủy bỏ" class="crmbutton small cancel" type="button" onClick="mergeshowhide('mergeDup');">
					</td>
				</tr>
		</tbody>
	</table>
</form>
</div>	 
	   <!-- PUBLIC CONTENTS STARTS-->
	  <div id="ListViewContents" class="small" style="width:100%;">
	  			<script language="JavaScript" type="text/javascript" src="include/js/ListView.js"></script>
<form name="massdelete" method="POST" id="massdelete" onsubmit="VtigerJS_DialogBox.block();">
     <input name='search_url' id="search_url" type='hidden' value=''>
     <input name="idlist" id="idlist" type="hidden">
     <input name="change_owner" type="hidden">
     <input name="change_status" type="hidden">
     <input name="action" type="hidden">
     <input name="where_export" type="hidden" value="">
     <input name="step" type="hidden">
     <input name="allids" type="hidden" id="allids" value="">
     <input name="selectedboxes" id="selectedboxes" type="hidden" value="">
     <input name="allselectedboxes" id="allselectedboxes" type="hidden" value="">
     <input name="current_page_boxes" id="current_page_boxes" type="hidden" value="142;187;188;712;714;716;718;2278;2314;2316;2322;6898;6899;6900;6901;6902;6903;6904;6906;6907">
				<!-- List View Master Holder starts -->
				<table border=0 cellspacing=1 cellpadding=0 width=100% class="lvtBg">
				<tr>
				<td>
				<!-- List View's Buttons and Filters starts -->
		        <table border=0 cellspacing=0 cellpadding=2 width=100% class="small">
			    <tr>
				<!-- Buttons -->
				<td style="padding-right:20px" nowrap>

                                                              <input class="crmbutton small delete" type="button" value="Xóa" onclick="return massDelete('Products')"/>
                                                                                 <input class="crmbutton small edit" type="button" value="Sửa nhanh" onclick="return mass_edit(this, 'massedit', 'Products', 'Inventory')"/>
                                                    
                								
															
                </td>
				<td class="small" nowrap>
					Hiển thị Bản ghi 1 - 20 trên 44
				</td>
				<!-- Page Navigation -->
				<td nowrap width="30%" align="center">
					<table border=0 cellspacing=0 cellpadding=0 class="small">
						<tr><td align="right" style="padding: 5px;"><img src="themes/images/start_disabled.gif" border="0" align="absmiddle">&nbsp;<img src="themes/images/previous_disabled.gif" border="0" align="absmiddle">&nbsp;<input class='small' name='pagenum' type='text' value='1'
		style='width: 3em;margin-right: 0.7em;' onchange="getListViewEntries_js('Products','parenttab=Inventory&start='+this.value+'');"
		onkeypress="return VT_disableFormSubmit(event);"><span name='Products_listViewCountContainerName' class='small' style='white-space: nowrap;'>trên 3</span><a href="javascript:;" onClick="getListViewEntries_js('Products','parenttab=Inventory&start=2');" alt="Tiếp" title="Tiếp"><img src="themes/images/next.gif" border="0" align="absmiddle"></a>&nbsp;<a href="javascript:;" onClick="getListViewEntries_js('Products','parenttab=Inventory&start=3');" alt="Cuối cùng" title="Cuối cùng"><img src="themes/images/end.gif" border="0" align="absmiddle"></a>&nbsp;</td></tr>
					</table>
                </td>
				<td width=40% align="right">
				   <!-- Filters -->
				   					<table border=0 cellspacing=0 cellpadding=0 class="small">
					<tr>
						<td>Lọc </td>
						<td style="padding-left:5px;padding-right:5px">
                            <SELECT NAME="viewname" id="viewname" class="small" onchange="showDefaultCustomView(this,'Products','Inventory')"><option value="24">Tất cả</option><option selected value="62">Theo Kho</option></SELECT></td>
                            							<td>
								<a href="index.php?module=Products&action=CustomView&parenttab=Inventory">Mới</a>
								<span class="small">|</span>
																	<a href="index.php?module=Products&action=CustomView&record=62&parenttab=Inventory">Sửa</a>
																<span class="small">|</span>
																	<a href="javascript:confirmdelete('index.php?module=CustomView&action=Delete&dmodule=Products&record=62&parenttab=Inventory')">Xóa</a>
																							</td>
						    					</tr>
					</table> 
				   <!-- Filters  END-->
				   
				</td>	
       		    </tr>
			</table>
			<!-- List View's Buttons and Filters ends -->
			
			<div  >
			<table border=0 cellspacing=1 cellpadding=3 width=100% class="lvt small">
			<!-- Table Headers -->
			<tr>
            <td class="lvtCol"><input type="checkbox"  name="selectall" onClick=toggleSelect_ListView(this.checked,"selected_id")></td>
				  			<td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products","parenttab=Inventory&foldername=Default&order_by=productname&start=&sorder=ASC");' class='listFormHeaderLinks'>Tên sản phẩm</a></td>
				 			<td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products","parenttab=Inventory&foldername=Default&order_by=serialno&start=&sorder=ASC");' class='listFormHeaderLinks'>Số hiệu</a></td>
				 			<td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products","parenttab=Inventory&foldername=Default&order_by=createdtime&start=&sorder=ASC");' class='listFormHeaderLinks'>Tạo lúc</a></td>
				 			<td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products","parenttab=Inventory&foldername=Default&order_by=qtyinstock&start=&sorder=ASC");' class='listFormHeaderLinks'>Tồn kho</a></td>
				 			<td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products","parenttab=Inventory&foldername=Default&order_by=cf_628&start=&sorder=ASC");' class='listFormHeaderLinks'>Tên kho</a></td>
				 			<td class="lvtCol"><a href='javascript:;' onClick='getListViewEntries_js("Products","parenttab=Inventory&foldername=Default&order_by=reorderlevel&start=&sorder=ASC");' class='listFormHeaderLinks'>Mức tồn kho chuẩn</a></td>
				 			<td class="lvtCol">Hoạt động</td>
							</tr>
			<!-- Table Contents -->
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_142">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="142" value= '142' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=142' title='Products'>Thiết kế web</a> <span type='vtlib_metainfo' vtrecordid='142' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='142' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">16-04-2011 05:49:43 <span type='vtlib_metainfo' vtrecordid='142' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">7.000 <span type='vtlib_metainfo' vtrecordid='142' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='142' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='142' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=142&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D142%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_187">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="187" value= '187' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&paparenttab=Inventory&action=DetailView&record=187' title='Products'>Phần mềm quản l&yacute; gara &ocirc; t&ocirc;</a> <span type='vtlib_metainfo' vtrecordid='187' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='187' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">16-04-2011 12:57:04 <span type='vtlib_metainfo' vtrecordid='187' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">-1.000 <span type='vtlib_metainfo' vtrecordid='187' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='187' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='187' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=187&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D187%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_188">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="188" value= '188' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=188' title='Products'>Phần mềm quản l&yacute; b&aacute;n h&agrave;ng HOSCO POS</a> <span type='vtlib_metainfo' vtrecordid='188' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='188' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">16-04-2011 13:00:58 <span type='vtlib_metainfo' vtrecordid='188' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">-5.000 <span type='vtlib_metainfo' vtrecordid='188' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='188' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='188' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=188&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D188%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_712">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="712" value= '712' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=712' title='Products'>Phần mềm văn ph&ograve;ng điện tử HOSCO Office</a> <span type='vtlib_metainfo' vtrecordid='712' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='712' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">17-06-2011 09:32:10 <span type='vtlib_metainfo' vtrecordid='712' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0.000 <span type='vtlib_metainfo' vtrecordid='712' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='712' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='712' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=712&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D712%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_714">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="714" value= '714' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=714' title='Products'>Phần mềm chăm s&oacute;c kh&aacute;ch h&agrave;ng HOSCO</a> <span type='vtlib_metainfo' vtrecordid='714' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='714' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">17-06-2011 09:34:32 <span type='vtlib_metainfo' vtrecordid='714' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0.000 <span type='vtlib_metainfo' vtrecordid='714' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='714' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='714' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=714&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D714%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_716">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="716" value= '716' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=716' title='Products'>Phần mềm quản l&yacute; quan hệ kh&aacute;ch h&agrave;ng HOSCO</a> <span type='vtlib_metainfo' vtrecordid='716' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='716' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">17-06-2011 09:37:15 <span type='vtlib_metainfo' vtrecordid='716' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0.000 <span type='vtlib_metainfo' vtrecordid='716' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='716' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='716' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=716&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D716%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_718">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="718" value= '718' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=718' title='Products'>Phần mềm quản l&yacute; nh&acirc;n sự tiền lương HOSCO</a> <span type='vtlib_metainfo' vtrecordid='718' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='718' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">17-06-2011 09:38:50 <span type='vtlib_metainfo' vtrecordid='718' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">-1.000 <span type='vtlib_metainfo' vtrecordid='718' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='718' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='718' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=718&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D718%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_2278">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="2278" value= '2278' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=2278' title='Products'>Đầu đọc m&atilde; vạch</a> <span type='vtlib_metainfo' vtrecordid='2278' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='2278' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">29-10-2011 06:03:35 <span type='vtlib_metainfo' vtrecordid='2278' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0.000 <span type='vtlib_metainfo' vtrecordid='2278' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='2278' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='2278' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=2278&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D2278%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_2314">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="2314" value= '2314' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=2314' title='Products'>Đầu đọc m&atilde; vạch 1</a> <span type='vtlib_metainfo' vtrecordid='2314' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='2314' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">03-11-2011 02:03:29 <span type='vtlib_metainfo' vtrecordid='2314' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">7.000 <span type='vtlib_metainfo' vtrecordid='2314' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Kho Mien Bac - KMB <span type='vtlib_metainfo' vtrecordid='2314' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">5 <span type='vtlib_metainfo' vtrecordid='2314' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=2314&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D2314%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_2316">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="2316" value= '2316' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=2316' title='Products'>Đầu đọc m&atilde; vạch 1</a> <span type='vtlib_metainfo' vtrecordid='2316' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='2316' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">03-11-2011 02:07:13 <span type='vtlib_metainfo' vtrecordid='2316' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">10.000 <span type='vtlib_metainfo' vtrecordid='2316' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Kho Mien Nam - KMN <span type='vtlib_metainfo' vtrecordid='2316' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">5 <span type='vtlib_metainfo' vtrecordid='2316' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=2316&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D2316%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_2322">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="2322" value= '2322' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=2322' title='Products'>M&aacute;y in m&atilde; vach</a> <span type='vtlib_metainfo' vtrecordid='2322' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='2322' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">04-11-2011 01:29:46 <span type='vtlib_metainfo' vtrecordid='2322' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0.000 <span type='vtlib_metainfo' vtrecordid='2322' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Kho Mien Bac - KMB <span type='vtlib_metainfo' vtrecordid='2322' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='2322' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=2322&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D2322%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_6898">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="6898" value= '6898' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=6898' title='Products'>Đầu đọc m&atilde; vạch Zebex Z6182</a> <span type='vtlib_metainfo' vtrecordid='6898' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='6898' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">17-01-2012 03:03:52 <span type='vtlib_metainfo' vtrecordid='6898' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0.000 <span type='vtlib_metainfo' vtrecordid='6898' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Kho Mien Bac - KMB <span type='vtlib_metainfo' vtrecordid='6898' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='6898' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=6898&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D6898%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_6899">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="6899" value= '6899' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=6899' title='Products'>Đầu đọc m&atilde; vạch Symbol LS 2208 (MOTOROLA)</a> <span type='vtlib_metainfo' vtrecordid='6899' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='6899' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">17-01-2012 03:06:56 <span type='vtlib_metainfo' vtrecordid='6899' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0.000 <span type='vtlib_metainfo' vtrecordid='6899' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Kho Mien Bac - KMB <span type='vtlib_metainfo' vtrecordid='6899' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='6899' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=6899&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D6899%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_6900">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="6900" value= '6900' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=6900' title='Products'>Zebex Z 3100 Magic C Stock</a> <span type='vtlib_metainfo' vtrecordid='6900' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='6900' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">17-01-2012 03:09:11 <span type='vtlib_metainfo' vtrecordid='6900' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0.000 <span type='vtlib_metainfo' vtrecordid='6900' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Kho Mien Bac - KMB <span type='vtlib_metainfo' vtrecordid='6900' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='6900' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=6900&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D6900%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_6901">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="6901" value= '6901' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=6901' title='Products'>Godex EZ 1100 Plus</a> <span type='vtlib_metainfo' vtrecordid='6901' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='6901' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">17-01-2012 03:10:50 <span type='vtlib_metainfo' vtrecordid='6901' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0.000 <span type='vtlib_metainfo' vtrecordid='6901' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Kho Mien Bac - KMB <span type='vtlib_metainfo' vtrecordid='6901' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='6901' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=6901&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D6901%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_6902">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="6902" value= '6902' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=6902' title='Products'>Đầu đọc m&atilde; vạch Metrologic MS9590</a> <span type='vtlib_metainfo' vtrecordid='6902' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='6902' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">17-01-2012 03:13:59 <span type='vtlib_metainfo' vtrecordid='6902' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0.000 <span type='vtlib_metainfo' vtrecordid='6902' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Kho Mien Bac - KMB <span type='vtlib_metainfo' vtrecordid='6902' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='6902' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=6902&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D6902%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_6903">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="6903" value= '6903' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=6903' title='Products'>Zebex Z 3101 HS</a> <span type='vtlib_metainfo' vtrecordid='6903' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='6903' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">17-01-2012 03:16:03 <span type='vtlib_metainfo' vtrecordid='6903' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0.000 <span type='vtlib_metainfo' vtrecordid='6903' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Kho Mien Bac - KMB <span type='vtlib_metainfo' vtrecordid='6903' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='6903' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=6903&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D6903%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_6904">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="6904" value= '6904' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=6904' title='Products'>Godex EZ Pi 1200</a> <span type='vtlib_metainfo' vtrecordid='6904' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='6904' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">17-01-2012 03:22:12 <span type='vtlib_metainfo' vtrecordid='6904' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0.000 <span type='vtlib_metainfo' vtrecordid='6904' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Kho Mien Bac - KMB <span type='vtlib_metainfo' vtrecordid='6904' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='6904' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=6904&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D6904%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_6906">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="6906" value= '6906' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=6906' title='Products'>Zebex Z 3051 BT Stock</a> <span type='vtlib_metainfo' vtrecordid='6906' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='6906' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">17-01-2012 03:24:33 <span type='vtlib_metainfo' vtrecordid='6906' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0.000 <span type='vtlib_metainfo' vtrecordid='6906' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Kho Mien Bac - KMB <span type='vtlib_metainfo' vtrecordid='6906' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='6906' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=6906&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D6906%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor=white onMouseOver="this.className='lvtColDataHover'" onMouseOut="this.className='lvtColData'" id="row_6907">
			<td width="2%"><input type="checkbox" NAME="selected_id" id="6907" value= '6907' onClick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href='index.php?module=Products&parenttab=Inventory&action=DetailView&record=6907' title='Products'>Godex EZ 2200 Plus</a> <span type='vtlib_metainfo' vtrecordid='6907' vtfieldname='productname' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"> <span type='vtlib_metainfo' vtrecordid='6907' vtfieldname='serial_no' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">17-01-2012 03:26:56 <span type='vtlib_metainfo' vtrecordid='6907' vtfieldname='createdtime' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0.000 <span type='vtlib_metainfo' vtrecordid='6907' vtfieldname='qtyinstock' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">Kho Mien Bac - KMB <span type='vtlib_metainfo' vtrecordid='6907' vtfieldname='cf_628' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">0 <span type='vtlib_metainfo' vtrecordid='6907' vtfieldname='reorderlevel' vtmodule='Products' style='display:none;'></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Products&action=EditView&record=6907&return_module=Products&return_action=index&parenttab=Inventory&return_viewname=62">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DProducts%26action%3DDelete%26record%3D6907%26return_module%3DProducts%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D62")'>Xóa</a></td>
				        			</tr>
						 </table>
			 </div>
			 
			 <table border=0 cellspacing=0 cellpadding=2 width=100%>
			      <tr>
				 <td style="padding-right:20px" nowrap>
                                                                                                                     <input class="crmbutton small delete" type="button" value="Xóa" onclick="return massDelete('Products')"/>
					                                                                                             					                         <input class="crmbutton small edit" type="button" value="Sửa nhanh" onclick="return mass_edit(this, 'massedit', 'Products')"/>
                                                                         						
                
		                												
																		                    </td>
				<td class="small" nowrap>
					Hiển thị Bản ghi 1 - 20 trên 44
				</td>
				<td nowrap width="30%" align="center">
				    <table border=0 cellspacing=0 cellpadding=0 class="small">
				         <tr><td align="right" style="padding: 5px;"><img src="themes/images/start_disabled.gif" border="0" align="absmiddle">&nbsp;<img src="themes/images/previous_disabled.gif" border="0" align="absmiddle">&nbsp;<input class='small' name='pagenum' type='text' value='1'
		style='width: 3em;margin-right: 0.7em;' onchange="getListViewEntries_js('Products','parenttab=Inventory&start='+this.value+'');"
		onkeypress="return VT_disableFormSubmit(event);"><span name='Products_listViewCountContainerName' class='small' style='white-space: nowrap;'>trên 3</span><a href="javascript:;" onClick="getListViewEntries_js('Products','parenttab=Inventory&start=2');" alt="Tiếp" title="Tiếp"><img src="themes/images/next.gif" border="0" align="absmiddle"></a>&nbsp;<a href="javascript:;" onClick="getListViewEntries_js('Products','parenttab=Inventory&start=3');" alt="Cuối cùng" title="Cuối cùng"><img src="themes/images/end.gif" border="0" align="absmiddle"></a>&nbsp;</td></tr>
				     </table>
				 </td>
				 <td align="right" width=40%>
				   <table border=0 cellspacing=0 cellpadding=0 class="small">
					<tr>
                                           
					</tr>
				   </table>
				 </td>
			      </tr>
       		    </table>
		       </td>
		   </tr>
	    </table>

   </form>	

<div id="basicsearchcolumns" style="display:none;"><select name="search_field" id="bas_searchfield" class="txtBox" style="width:150px"><option label="Tên sản phẩm" value="productname">Tên sản phẩm</option>
<option label="Số hiệu" value="serial_no">Số hiệu</option>
<option label="Tạo lúc" value="createdtime">Tạo lúc</option>
<option label="Tồn kho" value="qtyinstock">Tồn kho</option>
<option label="Tên kho" value="cf_628">Tên kho</option>
<option label="Mức tồn kho chuẩn" value="reorderlevel">Mức tồn kho chuẩn</option>
</select></div>	  	</div>

     </td>
        <td valign=top><img src="themes/softed/images/showPanelTopRight.gif"></td>
   </tr>
</table>

<!-- MassEdit Feature -->
<div id="massedit" class="layerPopup" style="display:none;width:80%;">
<table width="100%" border="0" cellpadding="3" cellspacing="0" class="layerHeadingULine">
<tr>
	<td class="layerPopupHeading" align="left" width="60%">Sửa nhanh - Nhiều dòng</td>
	<td>&nbsp;</td>
	<td align="right" width="40%"><img onClick="fninvsh('massedit');" title="Đóng" alt="Đóng" style="cursor:pointer;" src="themes/images/close.gif" align="absmiddle" border="0"></td>
</tr>
</table>
<div id="massedit_form_div"></div>

</div>
<!-- END -->

<script>


function ajaxChangeStatus(statusname)
{
	$("status").style.display="inline";
	var viewid = document.getElementById('viewname').options[document.getElementById('viewname').options.selectedIndex].value;
	var idstring = document.getElementById('idlist').value;
	var searchurl= document.getElementById('search_url').value;
	var tplstart='&';
	if(gstart!='')
	{
		tplstart=tplstart+gstart;
	}
	if(statusname == 'status')
	{
		fninvsh('changestatus');
		var url='&leadval='+document.getElementById('lead_status').options[document.getElementById('lead_status').options.selectedIndex].value;
		var urlstring ="module=Users&action=updateLeadDBStatus&return_module=Leads"+tplstart+url+"&viewname="+viewid+"&idlist="+idstring+searchurl;
	}
	else if(statusname == 'owner')
	{
		if($("user_checkbox").checked)
		{
		    fninvsh('changeowner');
		    var url='&owner_id='+document.getElementById('lead_owner').options[document.getElementById('lead_owner').options.selectedIndex].value;
		    
		        var urlstring ="module=Users&action=updateLeadDBStatus&return_module=Products"+tplstart+url+"&viewname="+viewid+"&idlist="+idstring+searchurl;
		    
		} else {
			fninvsh('changeowner');
			var url='&owner_id='+document.getElementById('lead_group_owner').options[document.getElementById('lead_group_owner').options.selectedIndex].value;
	      	
		        var urlstring ="module=Users&action=updateLeadDBStatus&return_module=Products"+tplstart+url+"&viewname="+viewid+"&idlist="+idstring+searchurl;
        	
    	}
	}
	new Ajax.Request(
                'index.php',
                {queue: {position: 'end', scope: 'command'},
                        method: 'post',
                        postBody: urlstring,
                        onComplete: function(response) {
                                $("status").style.display="none";
                                result = response.responseText.split('&#&#&#');
                                $("ListViewContents").innerHTML= result[2];
                                if(result[1] != '')
                                        alert(result[1]);
				$('basicsearchcolumns').innerHTML = '';
                        }
                }
        );
	
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
					},46000);</script><!--end body panes-->
</td></tr>
<tr><td colspan="2" align="center">
</td></tr></table>
</body>
</html>

