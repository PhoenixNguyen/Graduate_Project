<%-- 
    Document   : take-order-detail
    Created on : Apr 10, 2014, 1:09:25 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
	<title>admin - Tồn kho - Đặt hàng - Phần mềm quản lý HOSCO-MANAGEMENT</title>
	<link rel="SHORTCUT ICON" href="themes/images/vtigercrm_icon.ico">	
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
	<tbody><tr>
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
			 
			 <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap> <a href="index.php?module=Users&action=DetailView&record=1&modechk=prefview">Thiết lập cá nhân</a></td>-->
			 <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap><a href="http://wiki.hosgroup.com.vn/index.php/Main_Page" target="_blank">Hướng dẫn sử dụng online</a></td> -->
			 <!-- <td style="padding-left:10px;padding-right:10px" class=small nowrap><a href="javascript:;" onClick="openwin();">Giới thiệu</a></td> -->
			 <td style="padding-left:10px;padding-right:10px" class="small" nowrap=""> <a href="index.php?module=Users&amp;action=Logout">Thoát</a> (admin)</td>
			 </tr>
			</tbody></table>
		</td>
	</tr>
	</tbody></table>

<div id="miniCal" style="width:300px; position:absolute; display:none; left:100px; top:100px; z-index:100000">
</div>

<!-- header - master tabs -->
<table border="0" cellspacing="0" cellpadding="0" width="100%" class="hdrTabBg">
<tbody><tr>
	<td style="width:50px" class="small">&nbsp;</td>
	<td class="small" nowrap=""> 
		<table border="0" cellspacing="0" cellpadding="0">

		<tbody><tr>
			<td class="tabSeperator"><img src="themes/images/spacer.gif" width="2px" height="28px"></td>		
											  <td class="tabUnSelected" onmouseover="fnDropDown(this,'My Home Page_sub');" onmouseout="fnHideDrop('My Home Page_sub');" align="center" nowrap=""><a href="index.php?module=Home&amp;action=index&amp;parenttab=My Home Page">Trang chủ</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected" onmouseover="fnDropDown(this,'Marketing_sub');" onmouseout="fnHideDrop('Marketing_sub');" align="center" nowrap=""><a href="index.php?module=Campaigns&amp;action=index&amp;parenttab=Marketing">Marketing</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected" onmouseover="fnDropDown(this,'Sales_sub');" onmouseout="fnHideDrop('Sales_sub');" align="center" nowrap=""><a href="index.php?module=Leads&amp;action=index&amp;parenttab=Sales">Bán hàng</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected" onmouseover="fnDropDown(this,'Support_sub');" onmouseout="fnHideDrop('Support_sub');" align="center" nowrap=""><a href="index.php?module=HelpDesk&amp;action=index&amp;parenttab=Support">Hỗ trợ</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected" onmouseover="fnDropDown(this,'Analytics_sub');" onmouseout="fnHideDrop('Analytics_sub');" align="center" nowrap=""><a href="index.php?module=Reports&amp;action=index&amp;parenttab=Analytics">Phân tích</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabSelected" onmouseover="fnDropDown(this,'Inventory_sub');" onmouseout="fnHideDrop('Inventory_sub');" align="center" nowrap=""><a href="index.php?module=Products&amp;action=index&amp;parenttab=Inventory">Tồn kho</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected" onmouseover="fnDropDown(this,'Tools_sub');" onmouseout="fnHideDrop('Tools_sub');" align="center" nowrap=""><a href="index.php?module=Rss&amp;action=index&amp;parenttab=Tools">Công cụ</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected" onmouseover="fnDropDown(this,'Settings_sub');" onmouseout="fnHideDrop('Settings_sub');" align="center" nowrap=""><a href="index.php?module=Settings&amp;action=index&amp;parenttab=Settings">Thiết lập</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
										<td style="padding-left:10px" nowrap="">
									<select class="small" id="qccombo" style="width:110px" onchange="QCreate(this);">
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

		</tbody></table>
	</td>
	<td align="right" style="padding-right:10px" nowrap="">
		<table border="0" cellspacing="0" cellpadding="0" id="search" style="border:1px solid #999999;background-color:white">
		   <tbody><tr>
			<form name="UnifiedSearch" method="post" action="index.php" style="margin:0px" onsubmit="VtigerJS_DialogBox.block();"></form>
			<td style="height:19px;background-color:#ffffef" nowrap="">
				<a href="javascript:void(0);" onclick="UnifiedSearch_SelectModuleForm(this);"><img src="themes/images/settings_top.gif" align="left" border="0"></a>
				<input type="hidden" name="action" value="UnifiedSearch" style="margin:0px">
				<input type="hidden" name="module" value="Home" style="margin:0px">
				<input type="hidden" name="parenttab" value="Inventory" style="margin:0px">
				<input type="hidden" name="search_onlyin" value="--USESELECTED--" style="margin:0px">
				<input type="text" name="query_string" value="Tìm kiếm..." class="searchBox" onfocus="this.value=''">
			</td>
			<td style="background-color:#cccccc">
				<input type="submit" class="searchBtn" value="Tìm" alt="Tìm" title="Tìm">
			</td>
			
		   </tr>
		</tbody></table>
	</td>

</tr>
</tbody></table>
<!-- - level 2 tabs starts-->
<table border="0" cellspacing="0" cellpadding="2" width="100%" class="level2Bg">
<tbody><tr>
	<td>
		<table border="0" cellspacing="0" cellpadding="0">
		<tbody><tr>
			<!-- ASHA: Avoid using this as it gives module name instead of module label. 
			Now Using the same array QUICKACCESS that is used to show drop down menu
			(which gives both module name and module label)-->
			<!--																																																		      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Products&action=index&parenttab=Inventory">Sản phẩm</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Vendors&action=index&parenttab=Inventory">Nhà cung cấp</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=PriceBooks&action=index&parenttab=Inventory">Bảng giá</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=PurchaseOrder&action=index&parenttab=Inventory">Nhập hàng</a> </td>
							
											      					 
      						 
      																		<td class="level2SelTab" nowrap><a href="index.php?module=SalesOrder&action=index&parenttab=Inventory">Đặt hàng</a></td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Quotes&action=index&parenttab=Inventory">Báo giá</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Invoice&action=index&parenttab=Inventory">Hóa đơn</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Services&action=index&parenttab=Inventory">Dịch vụ</a> </td>
							
											      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Assets&action=index&parenttab=Inventory">Assets</a> </td>
							
																										-->
			
																																																						   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=Products&amp;action=index&amp;parenttab=Inventory">Sản phẩm</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=Vendors&amp;action=index&amp;parenttab=Inventory">Nhà cung cấp</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=PriceBooks&amp;action=index&amp;parenttab=Inventory">Bảng giá</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=PurchaseOrder&amp;action=index&amp;parenttab=Inventory">Nhập hàng</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2SelTab" nowrap=""><a href="index.php?module=SalesOrder&amp;action=index&amp;parenttab=Inventory">Đặt hàng</a></td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=Quotes&amp;action=index&amp;parenttab=Inventory">Báo giá</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=Invoice&amp;action=index&amp;parenttab=Inventory">Hóa đơn</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=Services&amp;action=index&amp;parenttab=Inventory">Dịch vụ</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=Assets&amp;action=index&amp;parenttab=Inventory">Assets</a> </td>
							
																												</tr>
		</tbody></table>
	</td>
</tr>
</tbody></table>		
<!-- Level 2 tabs ends -->
<div id="calculator_cont" style="position:absolute; z-index:10000"></div>
	

<div id="wclock" style="z-index: 10000001; left: 0px; top: 0px;" class="layerPopup">
	<table class="mailClientBg" align="center" border="0" cellpadding="5" cellspacing="0" width="100%">
	<tbody><tr style="cursor:move;">
		<td style="text-align:left;" id="Handle"><b>Đồng hồ</b></td>
		<td align="right">
			<a href="javascript:;">
				<img src="themes/images/close.gif" border="0" onclick="fninvsh('wclock')" hspace="5" align="absmiddle">
			</a>
		</td>
	</tr>
	</tbody></table>
	<table class="hdrNameBg" align="center" border="0" cellpadding="2" cellspacing="0" width="100%">
	<tbody><tr>
	<td nowrap="nowrap" colspan="2">
	<div style="background-image: url(http://hosgroup.com.vn/hoscomng/themes/images/clock_bg.gif); background-position: 4px 38px; background-repeat: no-repeat no-repeat;" id="theClockLayer">
<div id="theCities" class="citystyle" style="top: 7px; left: 5px;">
<form action="" name="frmtimezone">
<input name="PHPSESSID" value="162c0ab587f6c555aaaa30d681b61f7c" type="hidden">
<select name="clockcity" size="1" class="importBox small" id="clockcity" style="width:125px;" onchange="lcl(this.selectedIndex,this.options[0].selected)">
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
<script type="text/javascript" src="include/js/clock.js"></script><div id="theDate" class="datestyle" style="color: rgb(0, 0, 0); top: 142px; left: 0px;">April 10, 2014 1:09 AM</div><div id="amOrPm" class="ampmstyle" style="color: rgb(153, 153, 153); top: 87px; left: 52px;">AM</div><div id="theFace0" class="facestyle" style="color: rgb(0, 0, 0); top: 81px; left: 96px;">3</div><div id="theFace1" class="facestyle" style="color: rgb(0, 0, 0); top: 102px; left: 90.37306695894642px;">4</div><div id="theFace2" class="facestyle" style="color: rgb(0, 0, 0); top: 117.37306695894642px; left: 75px;">5</div><div id="theFace3" class="facestyle" style="color: rgb(0, 0, 0); top: 123px; left: 54px;">6</div><div id="theFace4" class="facestyle" style="color: rgb(0, 0, 0); top: 117.37306695894644px; left: 33.000000000000014px;">7</div><div id="theFace5" class="facestyle" style="color: rgb(0, 0, 0); top: 102px; left: 17.62693304105357px;">8</div><div id="theFace6" class="facestyle" style="color: rgb(0, 0, 0); top: 81px; left: 12px;">9</div><div id="theFace7" class="facestyle" style="color: rgb(0, 0, 0); top: 59.999999999999986px; left: 17.626933041053576px;">10</div><div id="theFace8" class="facestyle" style="color: rgb(0, 0, 0); top: 44.62693304105359px; left: 32.99999999999997px;">11</div><div id="theFace9" class="facestyle" style="color: rgb(0, 0, 0); top: 39px; left: 53.99999999999999px;">12</div><div id="theFace10" class="facestyle" style="color: rgb(0, 0, 0); top: 44.626933041053576px; left: 75px;">1</div><div id="theFace11" class="facestyle" style="color: rgb(0, 0, 0); top: 59.99999999999997px; left: 90.37306695894641px;">2</div><div id="H0" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 87px; left: 60px;"></div><div id="H1" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 81.2311166796459px; left: 63.96484365847383px;"></div><div id="H2" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 75.46223335929179px; left: 67.92968731694766px;"></div><div id="H3" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 69.69335003893767px; left: 71.89453097542149px;"></div><div id="M0" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 87px; left: 60px;"></div><div id="M1" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 82.88550323395269px; left: 65.66311896062463px;"></div><div id="M2" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 78.77100646790538px; left: 71.32623792124926px;"></div><div id="M3" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 74.65650970185807px; left: 76.9893568818739px;"></div><div id="M4" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 70.54201293581076px; left: 82.65247584249853px;"></div><div id="S0" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 87px; left: 60px;"></div><div id="S1" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 83.5px; left: 66.06217782649107px;"></div><div id="S2" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 80px; left: 72.12435565298215px;"></div><div id="S3" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 76.5px; left: 78.18653347947321px;"></div><div id="S4" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 73px; left: 84.24871130596429px;"></div><div id="S5" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 69.5px; left: 90.31088913245536px;"></div>

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
<script type="text/javascript">

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
var gVTModule = 'SalesOrder';
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
</script>


<div id="allMenu" onmouseout="fninvsh('allMenu');" onmouseover="fnvshNrm('allMenu');" style="width:650px;z-index: 10000001;display:none;">
	<table border="0" cellpadding="5" cellspacing="0" class="allMnuTable">
	<tbody><tr>
		<td valign="top">
							<span class="allMnuHdr">Trang chủ</span>
			       		
			
												<a href="index.php?module=Home&amp;action=index&amp;parenttab=My Home Page" class="allMnu">Trang chủ</a>
			       		
			
												<a href="index.php?module=Calendar&amp;action=index&amp;parenttab=My Home Page" class="allMnu">Lịch</a>
			       		
			
													<a href="index.php?module=Webmails&amp;action=index&amp;parenttab=My Home Page" class="allMnu">Webmails</a>
								<span class="allMnuHdr">Marketing</span>
			       		
			
												<a href="index.php?module=Campaigns&amp;action=index&amp;parenttab=Marketing" class="allMnu">Chiến dịch</a>
			       		
			
												<a href="index.php?module=Accounts&amp;action=index&amp;parenttab=Marketing" class="allMnu">Khách hàng</a>
			       		
			
												<a href="index.php?module=Contacts&amp;action=index&amp;parenttab=Marketing" class="allMnu">Liên hệ</a>
			       		
			
												<a href="index.php?module=Webmails&amp;action=index&amp;parenttab=Marketing" class="allMnu">Webmails</a>
			       		
			
												<a href="index.php?module=Leads&amp;action=index&amp;parenttab=Marketing" class="allMnu">Đầu mối</a>
			       		
			
												<a href="index.php?module=Calendar&amp;action=index&amp;parenttab=Marketing" class="allMnu">Lịch</a>
			       		
			
												<a href="index.php?module=Documents&amp;action=index&amp;parenttab=Marketing" class="allMnu">Tài liệu</a>
								<span class="allMnuHdr">Bán hàng</span>
			       		
			
												<a href="index.php?module=Leads&amp;action=index&amp;parenttab=Sales" class="allMnu">Đầu mối</a>
			       		
			
												<a href="index.php?module=Accounts&amp;action=index&amp;parenttab=Sales" class="allMnu">Khách hàng</a>
			       		
			
												<a href="index.php?module=Contacts&amp;action=index&amp;parenttab=Sales" class="allMnu">Liên hệ</a>
			       		
			
												<a href="index.php?module=Potentials&amp;action=index&amp;parenttab=Sales" class="allMnu">Cơ hội</a>
			       		
			
										</td><td valign="top">
									<a href="index.php?module=Quotes&amp;action=index&amp;parenttab=Sales" class="allMnu">Báo giá</a>
			       		
			
												<a href="index.php?module=SalesOrder&amp;action=index&amp;parenttab=Sales" class="allMnu">Đặt hàng</a>
			       		
			
												<a href="index.php?module=Invoice&amp;action=index&amp;parenttab=Sales" class="allMnu">Hóa đơn</a>
			       		
			
												<a href="index.php?module=PriceBooks&amp;action=index&amp;parenttab=Sales" class="allMnu">Bảng giá</a>
			       		
			
												<a href="index.php?module=Documents&amp;action=index&amp;parenttab=Sales" class="allMnu">Tài liệu</a>
			       		
			
												<a href="index.php?module=Calendar&amp;action=index&amp;parenttab=Sales" class="allMnu">Lịch</a>
								<span class="allMnuHdr">Hỗ trợ</span>
			       		
			
												<a href="index.php?module=HelpDesk&amp;action=index&amp;parenttab=Support" class="allMnu">Trợ giúp</a>
			       		
			
												<a href="index.php?module=Faq&amp;action=index&amp;parenttab=Support" class="allMnu">Câu hỏi thường gặp</a>
			       		
			
												<a href="index.php?module=Accounts&amp;action=index&amp;parenttab=Support" class="allMnu">Khách hàng</a>
			       		
			
												<a href="index.php?module=Contacts&amp;action=index&amp;parenttab=Support" class="allMnu">Liên hệ</a>
			       		
			
												<a href="index.php?module=Documents&amp;action=index&amp;parenttab=Support" class="allMnu">Tài liệu</a>
			       		
			
												<a href="index.php?module=Webmails&amp;action=index&amp;parenttab=Support" class="allMnu">Webmails</a>
			       		
			
												<a href="index.php?module=Calendar&amp;action=index&amp;parenttab=Support" class="allMnu">Lịch</a>
			       		
			
												<a href="index.php?module=ServiceContracts&amp;action=index&amp;parenttab=Support" class="allMnu">Hợp đồng dịch vụ</a>
			       		
			
												<a href="index.php?module=ProjectMilestone&amp;action=index&amp;parenttab=Support" class="allMnu">ProjectMilestone</a>
			       		
			
										</td><td valign="top">
									<a href="index.php?module=ProjectTask&amp;action=index&amp;parenttab=Support" class="allMnu">ProjectTask</a>
								<span class="allMnuHdr">Phân tích</span>
			       		
			
												<a href="index.php?module=Reports&amp;action=index&amp;parenttab=Analytics" class="allMnu">Báo cáo</a>
			       		
			
												<a href="index.php?module=Dashboard&amp;action=index&amp;parenttab=Analytics" class="allMnu">Biểu đồ</a>
								<span class="allMnuHdr">Tồn kho</span>
			       		
			
												<a href="index.php?module=Products&amp;action=index&amp;parenttab=Inventory" class="allMnu">Sản phẩm</a>
			       		
			
												<a href="index.php?module=Vendors&amp;action=index&amp;parenttab=Inventory" class="allMnu">Nhà cung cấp</a>
			       		
			
												<a href="index.php?module=PriceBooks&amp;action=index&amp;parenttab=Inventory" class="allMnu">Bảng giá</a>
			       		
			
												<a href="index.php?module=PurchaseOrder&amp;action=index&amp;parenttab=Inventory" class="allMnu">Nhập hàng</a>
			       		
			
												<a href="index.php?module=SalesOrder&amp;action=index&amp;parenttab=Inventory" class="allMnu">Đặt hàng</a>
			       		
			
												<a href="index.php?module=Quotes&amp;action=index&amp;parenttab=Inventory" class="allMnu">Báo giá</a>
			       		
			
												<a href="index.php?module=Invoice&amp;action=index&amp;parenttab=Inventory" class="allMnu">Hóa đơn</a>
			       		
			
												<a href="index.php?module=Services&amp;action=index&amp;parenttab=Inventory" class="allMnu">Dịch vụ</a>
			       		
			
												<a href="index.php?module=Assets&amp;action=index&amp;parenttab=Inventory" class="allMnu">Assets</a>
								<span class="allMnuHdr">Công cụ</span>
			       		
			
												<a href="index.php?module=Rss&amp;action=index&amp;parenttab=Tools" class="allMnu">Tin nhanh</a>
			       		
			
												<a href="index.php?module=Portal&amp;action=index&amp;parenttab=Tools" class="allMnu">Trang Web</a>
			       		
			
												<a href="index.php?module=Documents&amp;action=index&amp;parenttab=Tools" class="allMnu">Tài liệu</a>
			       		
			
										</td><td valign="top">
									<a href="index.php?module=PBXManager&amp;action=index&amp;parenttab=Tools" class="allMnu">Quản lý PBX</a>
			       		
			
												<a href="index.php?module=SMSNotifier&amp;action=index&amp;parenttab=Tools" class="allMnu">SMSNotifier</a>
			       		
			
												<a href="index.php?module=RecycleBin&amp;action=index&amp;parenttab=Tools" class="allMnu">Thùng rác</a>
			       		
			
												<a href="index.php?module=ModComments&amp;action=index&amp;parenttab=Tools" class="allMnu">Comments</a>
								<span class="allMnuHdr">Thiết lập</span>
			       		
			
												<a href="index.php?module=Settings&amp;action=index&amp;parenttab=Settings" class="allMnu">Thiết lập</a>
			       		
			
												<a href="index.php?module=Settings&amp;action=index&amp;parenttab=Settings" class="allMnu">Quản lý phân hệ</a>
							</td>
	</tr>
</tbody></table>
</div>

<!-- Drop Down Menu in the Main Tab -->
<div class="drop_mnu" id="My Home Page_sub" onmouseout="fnHideDrop('My Home Page_sub')" onmouseover="fnShowDrop('My Home Page_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tbody><tr><td><a href="index.php?module=Home&amp;action=index&amp;parenttab=My Home Page" class="drop_down">Trang chủ</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Calendar&amp;action=index&amp;parenttab=My Home Page" class="drop_down">Lịch</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Webmails&amp;action=index&amp;parenttab=My Home Page" class="drop_down">Webmails</a></td></tr>
			</tbody></table>
</div>
<div class="drop_mnu" id="Marketing_sub" onmouseout="fnHideDrop('Marketing_sub')" onmouseover="fnShowDrop('Marketing_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tbody><tr><td><a href="index.php?module=Campaigns&amp;action=index&amp;parenttab=Marketing" class="drop_down">Chiến dịch</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Accounts&amp;action=index&amp;parenttab=Marketing" class="drop_down">Khách hàng</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Contacts&amp;action=index&amp;parenttab=Marketing" class="drop_down">Liên hệ</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Webmails&amp;action=index&amp;parenttab=Marketing" class="drop_down">Webmails</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Leads&amp;action=index&amp;parenttab=Marketing" class="drop_down">Đầu mối</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Calendar&amp;action=index&amp;parenttab=Marketing" class="drop_down">Lịch</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Documents&amp;action=index&amp;parenttab=Marketing" class="drop_down">Tài liệu</a></td></tr>
			</tbody></table>
</div>
<div class="drop_mnu" id="Sales_sub" onmouseout="fnHideDrop('Sales_sub')" onmouseover="fnShowDrop('Sales_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tbody><tr><td><a href="index.php?module=Leads&amp;action=index&amp;parenttab=Sales" class="drop_down">Đầu mối</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Accounts&amp;action=index&amp;parenttab=Sales" class="drop_down">Khách hàng</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Contacts&amp;action=index&amp;parenttab=Sales" class="drop_down">Liên hệ</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Potentials&amp;action=index&amp;parenttab=Sales" class="drop_down">Cơ hội</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Quotes&amp;action=index&amp;parenttab=Sales" class="drop_down">Báo giá</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=SalesOrder&amp;action=index&amp;parenttab=Sales" class="drop_down">Đặt hàng</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Invoice&amp;action=index&amp;parenttab=Sales" class="drop_down">Hóa đơn</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=PriceBooks&amp;action=index&amp;parenttab=Sales" class="drop_down">Bảng giá</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Documents&amp;action=index&amp;parenttab=Sales" class="drop_down">Tài liệu</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Calendar&amp;action=index&amp;parenttab=Sales" class="drop_down">Lịch</a></td></tr>
			</tbody></table>
</div>
<div class="drop_mnu" id="Support_sub" onmouseout="fnHideDrop('Support_sub')" onmouseover="fnShowDrop('Support_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tbody><tr><td><a href="index.php?module=HelpDesk&amp;action=index&amp;parenttab=Support" class="drop_down">Trợ giúp</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Faq&amp;action=index&amp;parenttab=Support" class="drop_down">Câu hỏi thường gặp</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Accounts&amp;action=index&amp;parenttab=Support" class="drop_down">Khách hàng</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Contacts&amp;action=index&amp;parenttab=Support" class="drop_down">Liên hệ</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Documents&amp;action=index&amp;parenttab=Support" class="drop_down">Tài liệu</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Webmails&amp;action=index&amp;parenttab=Support" class="drop_down">Webmails</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Calendar&amp;action=index&amp;parenttab=Support" class="drop_down">Lịch</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=ServiceContracts&amp;action=index&amp;parenttab=Support" class="drop_down">Hợp đồng dịch vụ</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=ProjectMilestone&amp;action=index&amp;parenttab=Support" class="drop_down">ProjectMilestone</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=ProjectTask&amp;action=index&amp;parenttab=Support" class="drop_down">ProjectTask</a></td></tr>
			</tbody></table>
</div>
<div class="drop_mnu" id="Analytics_sub" onmouseout="fnHideDrop('Analytics_sub')" onmouseover="fnShowDrop('Analytics_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tbody><tr><td><a href="index.php?module=Reports&amp;action=index&amp;parenttab=Analytics" class="drop_down">Báo cáo</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Dashboard&amp;action=index&amp;parenttab=Analytics" class="drop_down">Biểu đồ</a></td></tr>
			</tbody></table>
</div>
<div class="drop_mnu" id="Inventory_sub" onmouseout="fnHideDrop('Inventory_sub')" onmouseover="fnShowDrop('Inventory_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tbody><tr><td><a href="index.php?module=Products&amp;action=index&amp;parenttab=Inventory" class="drop_down">Sản phẩm</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Vendors&amp;action=index&amp;parenttab=Inventory" class="drop_down">Nhà cung cấp</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=PriceBooks&amp;action=index&amp;parenttab=Inventory" class="drop_down">Bảng giá</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=PurchaseOrder&amp;action=index&amp;parenttab=Inventory" class="drop_down">Nhập hàng</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=SalesOrder&amp;action=index&amp;parenttab=Inventory" class="drop_down">Đặt hàng</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Quotes&amp;action=index&amp;parenttab=Inventory" class="drop_down">Báo giá</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Invoice&amp;action=index&amp;parenttab=Inventory" class="drop_down">Hóa đơn</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Services&amp;action=index&amp;parenttab=Inventory" class="drop_down">Dịch vụ</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Assets&amp;action=index&amp;parenttab=Inventory" class="drop_down">Assets</a></td></tr>
			</tbody></table>
</div>
<div class="drop_mnu" id="Tools_sub" onmouseout="fnHideDrop('Tools_sub')" onmouseover="fnShowDrop('Tools_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tbody><tr><td><a href="index.php?module=Rss&amp;action=index&amp;parenttab=Tools" class="drop_down">Tin nhanh</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Portal&amp;action=index&amp;parenttab=Tools" class="drop_down">Trang Web</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=Documents&amp;action=index&amp;parenttab=Tools" class="drop_down">Tài liệu</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=PBXManager&amp;action=index&amp;parenttab=Tools" class="drop_down">Quản lý PBX</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=SMSNotifier&amp;action=index&amp;parenttab=Tools" class="drop_down">SMSNotifier</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=RecycleBin&amp;action=index&amp;parenttab=Tools" class="drop_down">Thùng rác</a></td></tr>
						
					   			
		<tr><td><a href="index.php?module=ModComments&amp;action=index&amp;parenttab=Tools" class="drop_down">Comments</a></td></tr>
			</tbody></table>
</div>
<div class="drop_mnu" id="Settings_sub" onmouseout="fnHideDrop('Settings_sub')" onmouseover="fnShowDrop('Settings_sub')">
	<table width="100%" border="0" cellpadding="0" cellspacing="0">
						
					   			
		<tbody><tr><td><a href="index.php?module=Settings&amp;action=index&amp;parenttab=Settings" class="drop_down">Thiết lập</a></td></tr>
						
					   		   			   			
		<tr><td><a href="index.php?module=Settings&amp;action=ModuleManager&amp;parenttab=Settings" class="drop_down">Quản lý phân hệ</a></td></tr>
			</tbody></table>
</div>


<div id="status" style="position:absolute;display:none;left:850px;top:95px;height:27px;white-space:nowrap;"><img src="themes/softed/images/status.gif"></div>
<script>
function openwin()
{
            window.open("index.php?module=Users&action=about_us","aboutwin","height=520,width=515,top=200,left=300")
}

</script>


<div id="tracker" style="display: none; position: absolute; z-index: 100000001; left: 0px; top: 0px;" class="layerPopup">

	<table border="0" cellpadding="5" cellspacing="0" width="200">
	<tbody><tr style="cursor:move;">
		<td colspan="2" class="mailClientBg small" id="Track_Handle"><strong>Xem gần nhất</strong></td>
		<td align="right" style="padding:5px;" class="mailClientBg small">
		<a href="javascript:;"><img src="themes/images/close.gif" border="0" onclick="fninvsh('tracker')" hspace="5" align="absmiddle"></a>
		</td></tr>
	</tbody></table>
	<table border="0" cellpadding="5" cellspacing="0" width="200" class="hdrNameBg">
		<tbody><tr>
		<td class="trackerListBullet small" align="center" width="12">1</td>
		<td class="trackerList small"> <a href="index.php?module=SalesOrder&amp;action=DetailView&amp;record=201&amp;parenttab=Inventory">Đặt hàng 1</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">2</td>
		<td class="trackerList small"> <a href="index.php?module=PriceBooks&amp;action=DetailView&amp;record=185&amp;parenttab=Inventory">Bảng giá phần mềm...</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">3</td>
		<td class="trackerList small"> <a href="index.php?module=SalesOrder&amp;action=DetailView&amp;record=611&amp;parenttab=Inventory">Đặt hàng phần mề...</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">4</td>
		<td class="trackerList small"> <a href="index.php?module=Accounts&amp;action=DetailView&amp;record=137&amp;parenttab=Inventory">Trần Thị Khanh</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">5</td>
		<td class="trackerList small"> <a href="index.php?module=Leads&amp;action=DetailView&amp;record=203&amp;parenttab=Inventory">anh Long </a> </td><td class="trackerList small">&nbsp;</td></tr>
		</tbody></table>
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
	<table border="0" cellpadding="5" cellspacing="0" width="100%">
		<tbody><tr style="cursor:move;">
			<td class="mailClientBg small" id="outgoing_handle">
				<b>Các cuộc gọi đi</b>
			</td>
		</tr>
	</tbody></table>
	<table border="0" cellpadding="0" cellspacing="0" width="100%" class="hdrNameBg">
		
		<tbody><tr><td style="padding:10px;" colspan="2">
			Pick up the extensions receiver to dial the number
		</td></tr>
	</tbody></table>
</div>
<!-- divs for asterisk integration :: end--><!-- startscrmprint --><script language="JavaScript" type="text/javascript" src="include/js/dtlviewajax.js"></script>
<script src="include/scriptaculous/scriptaculous.js" type="text/javascript"></script><script type="text/javascript" src="http://hosgroup.com.vn/hoscomng/include/scriptaculous/builder.js"></script><script type="text/javascript" src="http://hosgroup.com.vn/hoscomng/include/scriptaculous/effects.js"></script><script type="text/javascript" src="http://hosgroup.com.vn/hoscomng/include/scriptaculous/dragdrop.js"></script><script type="text/javascript" src="http://hosgroup.com.vn/hoscomng/include/scriptaculous/controls.js"></script><script type="text/javascript" src="http://hosgroup.com.vn/hoscomng/include/scriptaculous/slider.js"></script>
<div id="convertleaddiv" style="display:block;position:absolute;left:225px;top:150px;"></div>
<span id="crmspanid" style="display: none; position: absolute; left: 968px; top: 869px;" onmouseover="show('crmspanid');" onclick="handleEdit();">
   <a class="link" align="right" href="javascript:;">Sửa</a>
</span>
<script>
function tagvalidate()
{
	if(trim(document.getElementById('txtbox_tagfields').value) != '')
		SaveTag('txtbox_tagfields','201','SalesOrder');	
	else
	{
		alert("Hãy nhập một thẻ");
		return false;
	}
}
function DeleteTag(id,recordid)
{
	$("vtbusy_info").style.display="inline";
	Effect.Fade('tag_'+id);
	new Ajax.Request(
		'index.php',
                {queue: {position: 'end', scope: 'command'},
                        method: 'post',
                        postBody: "file=TagCloud&module=SalesOrder&action=SalesOrderAjax&ajxaction=DELETETAG&recordid="+recordid+"&tagid=" +id,
                        onComplete: function(response) {
						getTagCloud();
						$("vtbusy_info").style.display="none";
                        }
                }
        );
}

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
function setCoOrdinate(elemId)
{
	oBtnObj = document.getElementById(elemId);
	var tagName = document.getElementById('lstRecordLayout');
	leftpos  = 0;
	toppos = 0;
	aTag = oBtnObj;
	do 
	{					  
	  leftpos  += aTag.offsetLeft;
	  toppos += aTag.offsetTop;
	} while(aTag = aTag.offsetParent);
	
	tagName.style.top= toppos + 20 + 'px';
	tagName.style.left= leftpos - 276 + 'px';
}

function getListOfRecords(obj, sModule, iId,sParentTab)
{
		new Ajax.Request(
		'index.php',
		{queue: {position: 'end', scope: 'command'},
			method: 'post',
			postBody: 'module=Users&action=getListOfRecords&ajax=true&CurModule='+sModule+'&CurRecordId='+iId+'&CurParentTab='+sParentTab,
			onComplete: function(response) {
				sResponse = response.responseText;
				$("lstRecordLayout").innerHTML = sResponse;
				Lay = 'lstRecordLayout';	
				var tagName = document.getElementById(Lay);
				var leftSide = findPosX(obj);
				var topSide = findPosY(obj);
				var maxW = tagName.style.width;
				var widthM = maxW.substring(0,maxW.length-2);
				var getVal = eval(leftSide) + eval(widthM);
				if(getVal  > document.body.clientWidth ){
					leftSide = eval(leftSide) - eval(widthM);
					tagName.style.left = leftSide + 230 + 'px';
				}
				else
					tagName.style.left= leftSide + 388 + 'px';
				
				setCoOrdinate(obj.id);
				
				tagName.style.display = 'block';
				tagName.style.visibility = "visible";
			}
		}
	);
}


</script>

<div id="lstRecordLayout" class="layerPopup" style="display:none;width:325px;height:300px;"></div> <!-- Code added by SAKTI on 16th Jun, 2008 -->

<table width="100%" cellpadding="2" cellspacing="0" border="0">
   <tbody><tr>
	<td>
		<script type="text/javascript" src="modules/SalesOrder/SalesOrder.js"></script><script type="text/javascript" src="include/js/Inventory.js"></script>

<table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
<tbody><tr><td style="height:2px"></td></tr>
<tr>
				<td style="padding-left:10px;padding-right:50px" class="moduleName" nowrap="">Tồn kho &gt; <a class="hdrLink" href="index.php?action=ListView&amp;module=SalesOrder&amp;parenttab=Inventory">Đặt hàng</a></td>
		<td width="100%" nowrap="">
	
		<table border="0" cellspacing="0" cellpadding="0">
		<tbody><tr>
		<td class="sep1" style="width:1px;"></td>
		<td class="small">
			<!-- Add and Search -->
			<table border="0" cellspacing="0" cellpadding="0">
			<tbody><tr>
			<td>
				<table border="0" cellspacing="0" cellpadding="5">
				<tbody><tr>
								        			                        		       	<td style="padding-right:0px;padding-left:10px;"><a href="index.php?module=SalesOrder&amp;action=EditView&amp;return_action=DetailView&amp;parenttab=Inventory"><img src="themes/softed/images/btnL3Add.gif" alt="Tạo Đặt hàng..." title="Tạo Đặt hàng..." border="0"></a></td>
			                       															
						<td style="padding-right:10px"><img src="themes/images/btnL3Search-Faded.gif" border="0"></td>
					
				</tr>
				</tbody></table>
			</td>
			</tr>
			</tbody></table>
		</td>
		<td style="width:20px;">&nbsp;</td>
		<td class="small">
			<!-- Calendar Clock Calculator and Chat -->
				<table border="0" cellspacing="0" cellpadding="5">
				<tbody><tr>
					 
 		                                                						 
 		                                                                <td style="padding-right:0px;padding-left:10px;"><a href="javascript:;" onclick="fnvshobj(this,&quot;miniCal&quot;);getMiniCal(&quot;parenttab=Inventory&quot;);"><img src="themes/softed/images/btnL3Calendar.gif" alt="Mở lịch công tác..." title="Mở lịch công tác..." border="0"></a></td> 
 		                                                         		                                
										 
 		                                                <td style="padding-right:0px"><a href="javascript:;"><img src="themes/softed/images/btnL3Clock.gif" alt="Hiện đồng hồ..." title="Hiện đồng hồ..." border="0" onclick="fnvshobj(this,'wclock');"></a></td> 
 		                                         
 		                                         
 		                                                <td style="padding-right:0px"><a href="#"><img src="themes/softed/images/btnL3Calc.gif" alt="Mở máy tính..." title="Mở máy tính..." border="0" onclick="fnvshobj(this,'calculator_cont');fetch_calc();"></a></td> 
 		                                         
 		                                         
 		                                                <td style="padding-right:0px"><a href="javascript:;" onclick="return window.open(&quot;index.php?module=Home&amp;action=vtchat&quot;,&quot;Chat&quot;,&quot;width=600,height=450,resizable=1,scrollbars=1&quot;);"><img src="themes/softed/images/tbarChat.gif" alt="Tán gẫu..." title="Tán gẫu..." border="0"></a> 
 		                                         
				</td>
					<td style="padding-right:10px"><img src="themes/softed/images/btnL3Tracker.gif" alt="Xem gần nhất" title="Xem gần nhất" border="0" onclick="fnvshobj(this,'tracker');">
                    			</td>	
				</tr>
				</tbody></table>
		</td>
		<td style="width:20px;">&nbsp;</td>
		<td class="small">
			<!-- Import / Export -->
			<table border="0" cellspacing="0" cellpadding="5">
			<tbody><tr>

			
							<td style="padding-right:0px;padding-left:10px;"><img src="themes/images/tbarImport-Faded.gif" border="0"></td>
                <td style="padding-right:10px"><img src="themes/images/tbarExport-Faded.gif" border="0"></td>
										<td style="padding-right:10px"><img src="themes/images/FindDuplicates-Faded.gif" border="0"></td>
						</tr>
			</tbody></table>	
		</td><td style="width:20px;">&nbsp;</td>
		<td class="small">
			<!-- All Menu -->
				<table border="0" cellspacing="0" cellpadding="5">
				<tbody><tr>
					<td style="padding-left:10px;"><a href="javascript:;" onmouseout="fninvsh('allMenu');" onclick="fnvshobj(this,'allMenu')"><img src="themes/softed/images/btnL3AllMenu.gif" alt="Mở tất cả Menu..." title="Mở tất cả Menu..." border="0"></a></td>
					        		<td style="padding-left:10px;"><a href="index.php?module=Settings&amp;action=ModuleManager&amp;module_settings=true&amp;formodule=SalesOrder&amp;parenttab=Settings"><img src="themes/softed/images/settingsBox.png" alt="Đặt hàng Thiết lập" title="Đặt hàng Thiết lập" border="0"></a></td>
								</tr>
				</tbody></table>
		</td>			
		</tr>
		</tbody></table>
	</td>
</tr>
</tbody></table>
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
			         			         		  			 		  			
						<span class="lvtHeaderText"><font color="purple">[ SO6 ] </font>Đặt hàng 1 -  Đặt hàng Thông tin</span>&nbsp;&nbsp;&nbsp;<span class="small">Cập nhật 1086 ngày trước (19 Tháng 4 2011)</span>&nbsp;<span id="vtbusy_info" style="display:none;" valign="bottom"><img src="themes/images/vtbusy.gif" border="0"></span><span id="vtbusy_info" style="visibility:hidden;" valign="bottom"><img src="themes/images/vtbusy.gif" border="0"></span>
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
																		<input title="Sửa [Alt+E]" accesskey="E" class="crmbutton small edit" onclick="DetailView.return_module.value='SalesOrder'; DetailView.return_action.value='DetailView'; DetailView.return_id.value='201';DetailView.module.value='SalesOrder'; submitFormForAction('DetailView','EditView');" type="button" name="Edit" value="&nbsp;Sửa&nbsp;">&nbsp;
																											<input title="Sao chép [Alt+U]" accesskey="U" class="crmbutton small create" onclick="DetailView.return_module.value='SalesOrder'; DetailView.return_action.value='DetailView'; DetailView.isDuplicate.value='true';DetailView.module.value='SalesOrder'; submitFormForAction('DetailView','EditView');" type="button" name="Duplicate" value="Sao chép">&nbsp;
																											<input title="Xóa [Alt+D]" accesskey="D" class="crmbutton small delete" onclick="DetailView.return_module.value='SalesOrder'; DetailView.return_action.value='index';  var confirmMsg = 'Bạn muốn xóa bản ghi này chứ?' ; submitFormForActionWithConfirmation('DetailView', 'Delete', confirmMsg);" type="button" name="Delete" value="Xóa">&nbsp;
																	
																		<img align="absmiddle" title="Lùi" src="themes/images/rec_prev_disabled.gif">
																
																		<img align="absmiddle" title="JUMP" accesskey="JUMP" onclick="var obj = this;var lhref = getListOfRecords(obj, 'SalesOrder',201,'Inventory');" name="jumpBtnIdTop" id="jumpBtnIdTop" src="themes/images/rec_jump.gif">&nbsp;
																											<img align="absmiddle" title="Tiếp" accesskey="Tiếp" onclick="location.href='index.php?module=SalesOrder&amp;viewtype=&amp;action=DetailView&amp;record=611&amp;parenttab=Inventory'" name="nextrecord" src="themes/images/rec_next.gif">&nbsp;
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
<input type="hidden" name="allselectedboxes" id="allselectedboxes">
	<input type="hidden" name="module" value="SalesOrder">
        <input type="hidden" name="record" value="201">
        <input type="hidden" name="isDuplicate" value="false">
        <input type="hidden" name="action">
        <input type="hidden" name="return_module">
        <input type="hidden" name="return_action">
        <input type="hidden" name="return_id">
        <input type="hidden" name="member_id">
        <input type="hidden" name="opportunity_id">
        <input type="hidden" name="case_id">
        <input type="hidden" name="task_id">
        <input type="hidden" name="meeting_id">
        <input type="hidden" name="call_id">
        <input type="hidden" name="email_id">
        <input type="hidden" name="source_module">
        <input type="hidden" name="entity_id">
	        	<input type="hidden" name="convertmode">
	
						
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
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tiêu đề" onmouseover="hndMouseOver(2,'Tiêu đề');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Tiêu đề">Đặt hàng 1</span>
				                <div id="editarea_Tiêu đề" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Tiêu đề" name="subject" maxlength="100" value="Đặt hàng 1">
                    <br><input name="button_Tiêu đề" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Tiêu đề','SalesOrder',2,'vtiger_salesorder','subject','201');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Tiêu đề','editarea_Tiêu đề','Tiêu đề')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																																																											   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tên Cơ hội</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--PotentialPopup-->
                                                  <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tên Cơ hội">&nbsp;<a href="index.php?module=Potentials&amp;action=DetailView&amp;record=0"></a>
                                                  </td>
                                             																								   </tr>	
	   	   <tr style="height:25px">
																																						   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Khách hàng thứ</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Khách hàng thứ" onmouseover="hndMouseOver(1,'Khách hàng thứ');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Khách hàng thứ">2</span>
				                <div id="editarea_Khách hàng thứ" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Khách hàng thứ" name="customerno" maxlength="100" value="2">
                    <br><input name="button_Khách hàng thứ" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Khách hàng thứ','SalesOrder',1,'vtiger_salesorder','customerno','201');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Khách hàng thứ','editarea_Khách hàng thứ','Khách hàng thứ')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																																																											   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã Đặt hàng</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
											
					<td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;SO6</td>
																												   </tr>	
	   	   <tr style="height:25px">
																																						   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tên Báo giá</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--QuotePopup-->
                                                  <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tên Báo giá">&nbsp;<a href="index.php?module=Quotes&amp;action=DetailView&amp;record=0"></a>
                                                  </td>
                                             																																																											   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Nhập hàng</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Nhập hàng" onmouseover="hndMouseOver(1,'Nhập hàng');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Nhập hàng"></span>
				                <div id="editarea_Nhập hàng" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Nhập hàng" name="vtiger_purchaseorder" maxlength="100" value="">
                    <br><input name="button_Nhập hàng" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Nhập hàng','SalesOrder',1,'vtiger_salesorder','vtiger_purchaseorder','201');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Nhập hàng','editarea_Nhập hàng','Nhập hàng')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																								   </tr>	
	   	   <tr style="height:25px">
																																						   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tên Liên hệ</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--ContactPopup-->
						<!-- Ajax edit link not provided for contact - Reports To -->
                                                  	<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tên Liên hệ">&nbsp;<a href="index.php?module=Contacts&amp;action=DetailView&amp;record=0"> </a></td>
                                             																																																											   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Ngày liên quan</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
																												<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Ngày liên quan" onmouseover="hndMouseOver(5,'Ngày liên quan');" onmouseout="fnhide('crmspanid');">
						&nbsp;&nbsp;<span id="dtlview_Ngày liên quan">
							19-04-2011
						</span>
						<div id="editarea_Ngày liên quan" style="display:none;">
							<input style="border:1px solid #bababa;" size="11" maxlength="10" type="text" id="txtbox_Ngày liên quan" name="duedate" value="19-04-2011">
							<img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_duedate">
							<br><input name="button_Ngày liên quan" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Ngày liên quan','SalesOrder',5,'vtiger_salesorder','duedate','201');fnhide('crmspanid');"> hoặc
							<a href="javascript:;" onclick="hndCancel('dtlview_Ngày liên quan','editarea_Ngày liên quan','Ngày liên quan')" class="link">Hủy bỏ</a>
							<script type="text/javascript">
								Calendar.setup ({
									inputField : "txtbox_Ngày liên quan", ifFormat : '%d-%m-%Y', showsTime : false, button : "jscal_trigger_duedate", singleClick : true, step : 1
								})
							</script>
						</div>
					</td>

																												   </tr>	
	   	   <tr style="height:25px">
																																						   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Công ty vận chuyển</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--ComboBox-->
													                                                                																				                                                                																				                                                                																				                                                                																				                                                                													               
							<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Công ty vận chuyển" onmouseover="hndMouseOver(15,'Công ty vận chuyển');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Công ty vận chuyển"><font color="">FedEx</font></span>
                                              		<div id="editarea_Công ty vận chuyển" style="display:none;">
                    							   <select id="txtbox_Công ty vận chuyển" name="carrier" class="small">
                    																			        							                                <option value="BlueDart">
							                                                BlueDart
								                                </option>
							                                
																					        							                                <option value="DHL">
							                                                DHL
								                                </option>
							                                
																					        							                                <option value="FedEx" selected="">
							                                                FedEx
								                                </option>
							                                
																					        							                                <option value="UPS">
							                                                UPS
								                                </option>
							                                
																					        							                                <option value="USPS">
							                                                USPS
								                                </option>
							                                
										                    							   </select>
                    							   <br><input name="button_Công ty vận chuyển" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Công ty vận chuyển','SalesOrder',15,'vtiger_salesorder','carrier','201');fnhide('crmspanid');"> hoặc
                                              		   <a href="javascript:;" onclick="hndCancel('dtlview_Công ty vận chuyển','editarea_Công ty vận chuyển','Công ty vận chuyển')" class="link">Hủy bỏ</a>
                    							</div>
               							</td>
                                          																																																											   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Lý do chưa thực hiện</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Lý do chưa thực hiện" onmouseover="hndMouseOver(1,'Lý do chưa thực hiện');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Lý do chưa thực hiện"></span>
				                <div id="editarea_Lý do chưa thực hiện" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Lý do chưa thực hiện" name="pending" maxlength="100" value="">
                    <br><input name="button_Lý do chưa thực hiện" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Lý do chưa thực hiện','SalesOrder',1,'vtiger_salesorder','pending','201');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Lý do chưa thực hiện','editarea_Lý do chưa thực hiện','Lý do chưa thực hiện')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																								   </tr>	
	   	   <tr style="height:25px">
																																						   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tình trạng</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--ComboBox-->
													                                                                																				                                                                																				                                                                																				                                                                													               
							<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tình trạng" onmouseover="hndMouseOver(15,'Tình trạng');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Tình trạng"><font color="">Đã tạo</font></span>
                                              		<div id="editarea_Tình trạng" style="display:none;">
                    							   <select id="txtbox_Tình trạng" name="sostatus" class="small">
                    																			        							                                <option value="Approved">
							                                                Đã chấp nhận
								                                </option>
							                                
																					        							                                <option value="Cancelled">
							                                                Hủy bỏ
								                                </option>
							                                
																					        							                                <option value="Created" selected="">
							                                                Đã tạo
								                                </option>
							                                
																					        							                                <option value="Delivered">
							                                                Đã giao
								                                </option>
							                                
										                    							   </select>
                    							   <br><input name="button_Tình trạng" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Tình trạng','SalesOrder',15,'vtiger_salesorder','sostatus','201');fnhide('crmspanid');"> hoặc
                                              		   <a href="javascript:;" onclick="hndCancel('dtlview_Tình trạng','editarea_Tình trạng','Tình trạng')" class="link">Hủy bỏ</a>
                    							</div>
               							</td>
                                          																																																											   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tiền hoa hồng</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tiền hoa hồng" onmouseover="hndMouseOver(1,'Tiền hoa hồng');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Tiền hoa hồng"></span>
				                <div id="editarea_Tiền hoa hồng" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Tiền hoa hồng" name="salescommission" maxlength="100" value="">
                    <br><input name="button_Tiền hoa hồng" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Tiền hoa hồng','SalesOrder',1,'vtiger_salesorder','salescommission','201');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Tiền hoa hồng','editarea_Tiền hoa hồng','Tiền hoa hồng')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																								   </tr>	
	   	   <tr style="height:25px">
																																						   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thuế hàng hóa</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thuế hàng hóa" onmouseover="hndMouseOver(1,'Thuế hàng hóa');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Thuế hàng hóa"></span>
				                <div id="editarea_Thuế hàng hóa" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Thuế hàng hóa" name="exciseduty" maxlength="100" value="">
                    <br><input name="button_Thuế hàng hóa" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Thuế hàng hóa','SalesOrder',1,'vtiger_salesorder','exciseduty','201');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Thuế hàng hóa','editarea_Thuế hàng hóa','Thuế hàng hóa')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																																																											   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tên Khách hàng</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--AccountPopup-->
                                                  <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tên Khách hàng">&nbsp;<a href="index.php?module=Accounts&amp;action=DetailView&amp;record=139">La Thị Hệ</a>
                                                  </td>
                                             																								   </tr>	
	   	   <tr style="height:25px">
																																						   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Gán cho</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--Assigned To-->
							<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Gán cho" onmouseover="hndMouseOver(53,'Gán cho');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Gán cho">
															<a href="index.php?module=Users&amp;action=DetailView&amp;record=1">admin</a>         
														&nbsp;</span>
							<div id="editarea_Gán cho" style="display:none;">
							<input type="hidden" id="hdtxt_Gán cho" value="admin">
													<input name="assigntype" id="assigntype" checked="checked" value="U" onclick="toggleAssignType(this.value),setSelectValue('Gán cho');" type="radio">&nbsp;Người dùng
															<input name="assigntype" id="assigntype" value="T" onclick="toggleAssignType(this.value),setSelectValue('Gán cho');" type="radio">&nbsp;Nhóm
														<span id="assign_user" style="display: block;">
						                   				<select id="txtbox_UGán cho" onchange="setSelectValue('Gán cho')" name="assigned_user_id" class="small">
				                    				                    	                       						 <option value="1" selected="">admin</option>
				                        				                    				                    	                       						 <option value="2730">binhnt</option>
				                        				                    				                    	                       						 <option value="6">cancv</option>
				                        				                    				                    	                       						 <option value="10">cuongtq</option>
				                        				                    				                    	                       						 <option value="2729">ducpl</option>
				                        				                    				                    	                       						 <option value="18">hungnv</option>
				                        				                    				                    	                       						 <option value="20">huylm</option>
				                        				                    				                    	                       						 <option value="2731">karofi</option>
				                        				                    				                    	                       						 <option value="26">quandm</option>
				                        				                    				                    	                       						 <option value="25">quyennt</option>
				                        				                    				                    	                       						 <option value="21">sangch</option>
				                        				                    				                    	                       						 <option value="24">thamnh</option>
				                        				                    				                    	                       						 <option value="2725">ThaoDT</option>
				                        				                    				                    	                       						 <option value="2726">ThaoNTT</option>
				                        				                    				                    	                       						 <option value="5">thoant</option>
				                        				                    				                    	                       						 <option value="2727">thomlt</option>
				                        				                    				                    	                       						 <option value="2721">trangnt</option>
				                        				                    				                    	                       						 <option value="28">trattp</option>
				                        				                    				                    	                       						 <option value="2728">TuyetVT</option>
				                        				                    				                    	                       						 <option value="15">vuidt</option>
				                        				                    				                    	                       						 <option value="27">yennt</option>
				                        				                    			                    	</select>
						</span>
											<span id="assign_team" style="display: none;">
					                   	<select id="txtbox_GGán cho" onchange="setSelectValue('Gán cho')" name="assigned_group_id" class="groupname small">
                                        	                       		 <option value="2">Đội sales</option>
                                                                	                       		 <option value="4">Nhóm hỗ trợ</option>
                                                                	                       		 <option value="7">Nhóm kỹ thuật</option>
                                                                	                       		 <option value="3">Nhóm Marketing</option>
                                                                </select>
					</span>

                    <br>
                    <input name="button_Gán cho" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Gán cho','SalesOrder',53,'vtiger_crmentity','assigned_user_id','201');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Gán cho','editarea_Gán cho','Gán cho')" class="link">Hủy bỏ</a>
                    </div>
                    </td>
																																																																	   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tạo lúc</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
											
					<td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;19-04-2011 08:26:56</td>
																												   </tr>	
	   	   <tr style="height:25px">
																																						   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Cập nhật lúc</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
											
					<td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;19-04-2011 08:26:56</td>
																																																															   							   

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
                      <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Bật chức năng định kỳ" onmouseover="hndMouseOver(56,'Bật chức năng định kỳ');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Bật chức năng định kỳ">không&nbsp;</span>
                    	<div id="editarea_Bật chức năng định kỳ" style="display:none;">
                    	                        	                          		<input id="txtbox_Bật chức năng định kỳ" type="checkbox" name="enable_recurring" style="border:1px solid #bababa;" value="0">
                       		                       	                         <br><input name="button_Bật chức năng định kỳ" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Bật chức năng định kỳ','SalesOrder',56,'vtiger_salesorder','enable_recurring','201');"> hoặc
                          <a href="javascript:;" onclick="hndCancel('dtlview_Bật chức năng định kỳ','editarea_Bật chức năng định kỳ','Bật chức năng định kỳ')" class="link">Hủy bỏ</a>
                        </div>
                        </td>    
																																																														   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mức độ thường xuyên</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--ComboBox-->
													                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                													               
							<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mức độ thường xuyên" onmouseover="hndMouseOver(16,'Mức độ thường xuyên');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Mức độ thường xuyên"><font color=""></font></span>
                                              		<div id="editarea_Mức độ thường xuyên" style="display:none;">
                    							   <select id="txtbox_Mức độ thường xuyên" name="recurring_frequency" class="small">
                    																			        							                                <option value="--None--">
							                                                --Chưa chọn--
								                                </option>
							                                
																					        							                                <option value="Daily">
							                                                Hàng ngày
								                                </option>
							                                
																					        							                                <option value="Weekly">
							                                                Hàng tuần
								                                </option>
							                                
																					        							                                <option value="Monthly">
							                                                Hàng tháng
								                                </option>
							                                
																					        							                                <option value="Quarterly">
							                                                Hàng qúy
								                                </option>
							                                
																					        							                                <option value="Yearly">
							                                                Hàng năm
								                                </option>
							                                
										                    							   </select>
                    							   <br><input name="button_Mức độ thường xuyên" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Mức độ thường xuyên','SalesOrder',16,'vtiger_invoice_recurring_info','recurring_frequency','201');fnhide('crmspanid');"> hoặc
                                              		   <a href="javascript:;" onclick="hndCancel('dtlview_Mức độ thường xuyên','editarea_Mức độ thường xuyên','Mức độ thường xuyên')" class="link">Hủy bỏ</a>
                    							</div>
               							</td>
                                          																								   </tr>	
	   	   <tr style="height:25px">
																																						   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thời gian bắt đầu</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
																												<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thời gian bắt đầu" onmouseover="hndMouseOver(5,'Thời gian bắt đầu');" onmouseout="fnhide('crmspanid');">
						&nbsp;&nbsp;<span id="dtlview_Thời gian bắt đầu">
							--
						</span>
						<div id="editarea_Thời gian bắt đầu" style="display:none;">
							<input style="border:1px solid #bababa;" size="11" maxlength="10" type="text" id="txtbox_Thời gian bắt đầu" name="start_period" value="">
							<img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_start_period">
							<br><input name="button_Thời gian bắt đầu" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Thời gian bắt đầu','SalesOrder',5,'vtiger_invoice_recurring_info','start_period','201');fnhide('crmspanid');"> hoặc
							<a href="javascript:;" onclick="hndCancel('dtlview_Thời gian bắt đầu','editarea_Thời gian bắt đầu','Thời gian bắt đầu')" class="link">Hủy bỏ</a>
							<script type="text/javascript">
								Calendar.setup ({
									inputField : "txtbox_Thời gian bắt đầu", ifFormat : '%d-%m-%Y', showsTime : false, button : "jscal_trigger_start_period", singleClick : true, step : 1
								})
							</script>
						</div>
					</td>

																																																															   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thời gian kết thúc</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
																												<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thời gian kết thúc" onmouseover="hndMouseOver(5,'Thời gian kết thúc');" onmouseout="fnhide('crmspanid');">
						&nbsp;&nbsp;<span id="dtlview_Thời gian kết thúc">
							--
						</span>
						<div id="editarea_Thời gian kết thúc" style="display:none;">
							<input style="border:1px solid #bababa;" size="11" maxlength="10" type="text" id="txtbox_Thời gian kết thúc" name="end_period" value="">
							<img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_end_period">
							<br><input name="button_Thời gian kết thúc" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Thời gian kết thúc','SalesOrder',5,'vtiger_invoice_recurring_info','end_period','201');fnhide('crmspanid');"> hoặc
							<a href="javascript:;" onclick="hndCancel('dtlview_Thời gian kết thúc','editarea_Thời gian kết thúc','Thời gian kết thúc')" class="link">Hủy bỏ</a>
							<script type="text/javascript">
								Calendar.setup ({
									inputField : "txtbox_Thời gian kết thúc", ifFormat : '%d-%m-%Y', showsTime : false, button : "jscal_trigger_end_period", singleClick : true, step : 1
								})
							</script>
						</div>
					</td>

																												   </tr>	
	   	   <tr style="height:25px">
																																						   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thời gian thanh toán</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--ComboBox-->
													                                                                																				                                                                																				                                                                													               
							<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thời gian thanh toán" onmouseover="hndMouseOver(16,'Thời gian thanh toán');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Thời gian thanh toán"><font color=""></font></span>
                                              		<div id="editarea_Thời gian thanh toán" style="display:none;">
                    							   <select id="txtbox_Thời gian thanh toán" name="payment_duration" class="small">
                    																			        							                                <option value="Net 30 days">
							                                                Trong vòng 30 ngày
								                                </option>
							                                
																					        							                                <option value="Net 45 days">
							                                                Trong vòng 45 ngày
								                                </option>
							                                
																					        							                                <option value="Net 60 days">
							                                                Trong vòng 60 ngày
								                                </option>
							                                
										                    							   </select>
                    							   <br><input name="button_Thời gian thanh toán" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Thời gian thanh toán','SalesOrder',16,'vtiger_invoice_recurring_info','payment_duration','201');fnhide('crmspanid');"> hoặc
                                              		   <a href="javascript:;" onclick="hndCancel('dtlview_Thời gian thanh toán','editarea_Thời gian thanh toán','Thời gian thanh toán')" class="link">Hủy bỏ</a>
                    							</div>
               							</td>
                                          																																																											   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Trạng thái hóa đơn</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--ComboBox-->
													                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                													               
							<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Trạng thái hóa đơn" onmouseover="hndMouseOver(15,'Trạng thái hóa đơn');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Trạng thái hóa đơn"><font color=""></font></span>
                                              		<div id="editarea_Trạng thái hóa đơn" style="display:none;">
                    							   <select id="txtbox_Trạng thái hóa đơn" name="invoicestatus" class="small">
                    																			        							                                <option value="Approved">
							                                                Đã chấp nhận
								                                </option>
							                                
																					        							                                <option value="AutoCreated">
							                                                Tạo tự động
								                                </option>
							                                
																					        							                                <option value="Created">
							                                                Đã tạo
								                                </option>
							                                
																					        							                                <option value="Credit Invoice">
							                                                Hóa đơn tín dụng
								                                </option>
							                                
																					        							                                <option value="Paid">
							                                                Đã thanh toán
								                                </option>
							                                
																					        							                                <option value="Sent">
							                                                Đã gửi
								                                </option>
							                                
										                    							   </select>
                    							   <br><input name="button_Trạng thái hóa đơn" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Trạng thái hóa đơn','SalesOrder',15,'vtiger_invoice_recurring_info','invoicestatus','201');fnhide('crmspanid');"> hoặc
                                              		   <a href="javascript:;" onclick="hndCancel('dtlview_Trạng thái hóa đơn','editarea_Trạng thái hóa đơn','Trạng thái hóa đơn')" class="link">Hủy bỏ</a>
                    							</div>
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
                                                  <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Địa chỉ thanh toán" onmouseover="hndMouseOver(24,'Địa chỉ thanh toán');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Địa chỉ thanh toán">129 Phố Vọng</span>
                                              		<div id="editarea_Địa chỉ thanh toán" style="display:none;">
                                              		  <textarea id="txtbox_Địa chỉ thanh toán" name="bill_street" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" rows="2">129 Phố Vọng</textarea>                                            		  
                                              		  <br><input name="button_Địa chỉ thanh toán" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Địa chỉ thanh toán','SalesOrder',24,'vtiger_sobillads','bill_street','201');fnhide('crmspanid');"> hoặc
                                              		  <a href="javascript:;" onclick="hndCancel('dtlview_Địa chỉ thanh toán','editarea_Địa chỉ thanh toán','Địa chỉ thanh toán')" class="link">Hủy bỏ</a>
                                                       </div>
                                                  </td>
                                             																																																											   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Địa chỉ vận chuyển</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextArea/Street-->
                                                  <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Địa chỉ vận chuyển" onmouseover="hndMouseOver(24,'Địa chỉ vận chuyển');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Địa chỉ vận chuyển">129 Phố Vọng</span>
                                              		<div id="editarea_Địa chỉ vận chuyển" style="display:none;">
                                              		  <textarea id="txtbox_Địa chỉ vận chuyển" name="ship_street" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" rows="2">129 Phố Vọng</textarea>                                            		  
                                              		  <br><input name="button_Địa chỉ vận chuyển" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Địa chỉ vận chuyển','SalesOrder',24,'vtiger_soshipads','ship_street','201');fnhide('crmspanid');"> hoặc
                                              		  <a href="javascript:;" onclick="hndCancel('dtlview_Địa chỉ vận chuyển','editarea_Địa chỉ vận chuyển','Địa chỉ vận chuyển')" class="link">Hủy bỏ</a>
                                                       </div>
                                                  </td>
                                             																								   </tr>	
	   	   <tr style="height:25px">
																																						   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Hộp thư thanh toán</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Hộp thư thanh toán" onmouseover="hndMouseOver(1,'Hộp thư thanh toán');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Hộp thư thanh toán"></span>
				                <div id="editarea_Hộp thư thanh toán" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Hộp thư thanh toán" name="bill_pobox" maxlength="100" value="">
                    <br><input name="button_Hộp thư thanh toán" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Hộp thư thanh toán','SalesOrder',1,'vtiger_sobillads','bill_pobox','201');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Hộp thư thanh toán','editarea_Hộp thư thanh toán','Hộp thư thanh toán')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																																																											   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Hộp thư vận chuyển</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Hộp thư vận chuyển" onmouseover="hndMouseOver(1,'Hộp thư vận chuyển');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Hộp thư vận chuyển"></span>
				                <div id="editarea_Hộp thư vận chuyển" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Hộp thư vận chuyển" name="ship_pobox" maxlength="100" value="">
                    <br><input name="button_Hộp thư vận chuyển" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Hộp thư vận chuyển','SalesOrder',1,'vtiger_soshipads','ship_pobox','201');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Hộp thư vận chuyển','editarea_Hộp thư vận chuyển','Hộp thư vận chuyển')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																								   </tr>	
	   	   <tr style="height:25px">
																																						   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thanh toán tại thành phố</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thanh toán tại thành phố" onmouseover="hndMouseOver(1,'Thanh toán tại thành phố');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Thanh toán tại thành phố"></span>
				                <div id="editarea_Thanh toán tại thành phố" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Thanh toán tại thành phố" name="bill_city" maxlength="100" value="">
                    <br><input name="button_Thanh toán tại thành phố" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Thanh toán tại thành phố','SalesOrder',1,'vtiger_sobillads','bill_city','201');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Thanh toán tại thành phố','editarea_Thanh toán tại thành phố','Thanh toán tại thành phố')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																																																											   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Vận chuyển tới thành phố</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Vận chuyển tới thành phố" onmouseover="hndMouseOver(1,'Vận chuyển tới thành phố');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Vận chuyển tới thành phố"></span>
				                <div id="editarea_Vận chuyển tới thành phố" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Vận chuyển tới thành phố" name="ship_city" maxlength="100" value="">
                    <br><input name="button_Vận chuyển tới thành phố" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Vận chuyển tới thành phố','SalesOrder',1,'vtiger_soshipads','ship_city','201');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Vận chuyển tới thành phố','editarea_Vận chuyển tới thành phố','Vận chuyển tới thành phố')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																								   </tr>	
	   	   <tr style="height:25px">
																																						   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thanh toán tại Tỉnh/Bang</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thanh toán tại Tỉnh//Bang" onmouseover="hndMouseOver(1,'Thanh toán tại Tỉnh/Bang');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Thanh toán tại Tỉnh//Bang"></span>
				                <div id="editarea_Thanh toán tại Tỉnh//Bang" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Thanh toán tại Tỉnh//Bang" name="bill_state" maxlength="100" value="">
                    <br><input name="button_Thanh toán tại Tỉnh/Bang" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Thanh toán tại Tỉnh/Bang','SalesOrder',1,'vtiger_sobillads','bill_state','201');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Thanh toán tại Tỉnh/Bang','editarea_Thanh toán tại Tỉnh/Bang','Thanh toán tại Tỉnh/Bang')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																																																											   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Vận chuyển tới Tỉnh/Bang</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Vận chuyển tới Tỉnh//Bang" onmouseover="hndMouseOver(1,'Vận chuyển tới Tỉnh/Bang');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Vận chuyển tới Tỉnh//Bang"></span>
				                <div id="editarea_Vận chuyển tới Tỉnh//Bang" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Vận chuyển tới Tỉnh//Bang" name="ship_state" maxlength="100" value="">
                    <br><input name="button_Vận chuyển tới Tỉnh/Bang" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Vận chuyển tới Tỉnh/Bang','SalesOrder',1,'vtiger_soshipads','ship_state','201');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Vận chuyển tới Tỉnh/Bang','editarea_Vận chuyển tới Tỉnh/Bang','Vận chuyển tới Tỉnh/Bang')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																								   </tr>	
	   	   <tr style="height:25px">
																																						   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã vùng thanh toán</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mã vùng thanh toán" onmouseover="hndMouseOver(1,'Mã vùng thanh toán');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Mã vùng thanh toán"></span>
				                <div id="editarea_Mã vùng thanh toán" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Mã vùng thanh toán" name="bill_code" maxlength="100" value="">
                    <br><input name="button_Mã vùng thanh toán" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Mã vùng thanh toán','SalesOrder',1,'vtiger_sobillads','bill_code','201');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Mã vùng thanh toán','editarea_Mã vùng thanh toán','Mã vùng thanh toán')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																																																											   							   

									<!-- Avoid to display the label Tax Class -->
													<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã vùng vận chuyển</td>
											  
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mã vùng vận chuyển" onmouseover="hndMouseOver(1,'Mã vùng vận chuyển');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Mã vùng vận chuyển"></span>
				                <div id="editarea_Mã vùng vận chuyển" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Mã vùng vận chuyển" name="ship_code" maxlength="100" value="">
                    <br><input name="button_Mã vùng vận chuyển" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Mã vùng vận chuyển','SalesOrder',1,'vtiger_soshipads','ship_code','201');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Mã vùng vận chuyển','editarea_Mã vùng vận chuyển','Mã vùng vận chuyển')" class="link">Hủy bỏ</a>
                </div>
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
							                                                        <td width="100%" colspan="3" class="dvtCellInfo" align="left" id="mouseArea_Điều khoản" onmouseover="hndMouseOver(19,'Điều khoản');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Điều khoản">
								- Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.
<br>&nbsp;
<br>&nbsp; - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.
                                                                </span>
                                                                <div id="editarea_Điều khoản" style="display:none;">
                                                                <textarea id="txtbox_Điều khoản" name="terms_conditions" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" cols="90" rows="8">- Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.

 - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.</textarea>
                                                                <br><input name="button_Điều khoản" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Điều khoản','SalesOrder',19,'vtiger_salesorder','terms_conditions','201');fnhide('crmspanid');"> hoặc
                                                                <a href="javascript:;" onclick="hndCancel('dtlview_Điều khoản','editarea_Điều khoản','Điều khoản')" class="link">Hủy bỏ</a>
                                                                </div>
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
							                                                        <td width="100%" colspan="3" class="dvtCellInfo" align="left" id="mouseArea_Mô tả" onmouseover="hndMouseOver(19,'Mô tả');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Mô tả">
								
                                                                </span>
                                                                <div id="editarea_Mô tả" style="display:none;">
                                                                <textarea id="txtbox_Mô tả" name="description" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" cols="90" rows="8"></textarea>
                                                                <br><input name="button_Mô tả" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Mô tả','SalesOrder',19,'vtiger_crmentity','description','201');fnhide('crmspanid');"> hoặc
                                                                <a href="javascript:;" onclick="hndCancel('dtlview_Mô tả','editarea_Mô tả','Mô tả')" class="link">Hủy bỏ</a>
                                                                </div>
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
		<td width="40%" class="lvtCol"><font color="red">*</font>
			<b>Tên mặt hàng</b>
		</td><td width="10%" class="lvtCol"><b>Tồn kho</b></td>
	
		<td width="10%" class="lvtCol"><b>Số lượng</b></td>
		<td width="10%" class="lvtCol" align="right"><b>Đơn giá</b></td>
		<td width="12%" nowrap="" class="lvtCol" align="right"><b>Tổng số</b></td>
		<td width="13%" valign="top" class="lvtCol" align="right"><b>Thành tiền</b></td>
	   </tr>
	   	
			   <tr valign="top">
				<td class="crmTableRow small lineOnTop">
					Thiết kế web&nbsp; 				
					<br>
				</td><td class="crmTableRow small lineOnTop">7.000</td><td class="crmTableRow small lineOnTop">1.000</td>
			<td class="crmTableRow small lineOnTop" align="right">
				<table width="100%" border="0" cellpadding="5" cellspacing="0">
				   <tbody><tr>
				   	<td align="right">6000000.000</td>
				   </tr>
				   <tr>
					   <td align="right">(-)&nbsp;<b><a href="javascript:;" onclick="alert(''); ">Chiết khấu : </a></b></td>
				   </tr>
				   <tr>
				   	<td align="right" nowrap="">Giá sau khi chiết khấu : </td>
				   </tr>
				   <tr>
					   <td align="right" nowrap="">(+)&nbsp;<b><a href="javascript:;" onclick="alert('Giá sau khi chiết khấu = 6000000 \n\n Tổng số thuế = 0.00');">Thuế : </a></b></td>
				   </tr>
				</tbody></table>
			</td>
			<td class="crmTableRow small lineOnTop" align="right">
				<table width="100%" border="0" cellpadding="5" cellspacing="0">
				   <tbody><tr><td align="right">6000000</td></tr>
				   <tr><td align="right">0.00</td></tr>
				   <tr><td align="right" nowrap="">6000000</td></tr><tr><td align="right" nowrap="">0.00</td></tr>		   
				</tbody></table>
			</td><td class="crmTableRow small lineOnTop" valign="bottom" align="right">6000000</td></tr></tbody></table><table width="100%" border="0" cellspacing="0" cellpadding="5" class="crmTable"><tbody><tr><td width="88%" class="crmTableRow small" align="right"><b>Cộng tiền hàng</b></td><td width="12%" class="crmTableRow small" align="right"><b>6000000.000</b></td></tr><tr><td align="right" class="crmTableRow small lineOnTop">(-)&nbsp;<b><a href="javascript:;" onclick="alert('Giảm giá = 0');">Chiết khấu</a></b></td><td align="right" class="crmTableRow small lineOnTop">0.00</td></tr><tr><td align="right" class="crmTableRow small">(+)&nbsp;<b>Chi phí vận chuyển và đóng gói</b></td><td align="right" class="crmTableRow small">0.000</td></tr><tr><td align="right" class="crmTableRow small">(+)&nbsp;<b><a href="javascript:;" onclick="alert('Chi phí vận chuyển và đóng gói = 0.000 \nVAT : 4.500 % = 0 \nSales : 10.000 % = 0 \nService : 12.500 % = 0 \n\n Tổng số thuế = 0')">Thuế vận chuyển và đóng gói</a></b></td><td align="right" class="crmTableRow small">0</td></tr><tr><td align="right" class="crmTableRow small">&nbsp;<b>Điều chỉnh thêm bớt</b></td><td align="right" class="crmTableRow small">0.000</td></tr><tr><td align="right" class="crmTableRow small lineOnTop"><b>Tổng tiền thanh toán</b></td><td align="right" class="crmTableRow small lineOnTop">6000000.000</td></tr></tbody></table>
										
									</td>
<!-- The following table is used to display the buttons -->
								</tr></tbody></table><table border="0" cellspacing="0" cellpadding="0" width="100%">
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
<script type="text/javascript">


function isRelatedListBlockLoaded(id,urldata){
	var elem = document.getElementById(id);
	if(elem == null || typeof elem == 'undefined' || urldata.indexOf('order_by') != -1 ||
		urldata.indexOf('start') != -1 || urldata.indexOf('withCount') != -1){
		return false;
	}
	var tables = elem.getElementsByTagName('table');
	return tables.length > 0;
}

function loadRelatedListBlock(urldata,target,imagesuffix) {
	var showdata = 'show_'+imagesuffix;
	var showdata_element = $(showdata);

	var hidedata = 'hide_'+imagesuffix;
	var hidedata_element = $(hidedata);
	if(isRelatedListBlockLoaded(target,urldata) == true){
		$(target).show();
		showdata_element.hide();
      	hidedata_element.show();
		$('delete_'+imagesuffix).show();
		return;
	}
	var indicator = 'indicator_'+imagesuffix;
	var indicator_element = $(indicator);
	indicator_element.show();
	$('delete_'+imagesuffix).show();
	
	var target_element = $(target);
	
	new Ajax.Request(
		'index.php',
        {queue: {position: 'end', scope: 'command'},
                method: 'post',
                postBody: urldata,
                onComplete: function(response) {
					var responseData = trim(response.responseText);
      				target_element.innerHTML = responseData;
					target_element.show();
      				showdata_element.hide();
      				hidedata_element.show();
      				indicator_element.hide();
				}
        }
	);
}

function hideRelatedListBlock(target, imagesuffix) {
	
	var showdata = 'show_'+imagesuffix;
	var showdata_element = $(showdata);
	
	var hidedata = 'hide_'+imagesuffix;
	var hidedata_element = $(hidedata);
	
	var target_element = $(target);
	if(target_element){
		target_element.hide();
	}
	hidedata_element.hide();
	showdata_element.show();
	$('delete_'+imagesuffix).hide();
}

function disableRelatedListBlock(urldata,target,imagesuffix){
	var showdata = 'show_'+imagesuffix;
	var showdata_element = $(showdata);

	var hidedata = 'hide_'+imagesuffix;
	var hidedata_element = $(hidedata);

	var indicator = 'indicator_'+imagesuffix;
	var indicator_element = $(indicator);
	indicator_element.show();
	
	var target_element = $(target);
	new Ajax.Request(
		'index.php',
        {queue: {position: 'end', scope: 'command'},
                method: 'post',
                postBody: urldata,
                onComplete: function(response) {
					var responseData = trim(response.responseText);
					target_element.hide();
					$('delete_'+imagesuffix).hide();
      				hidedata_element.hide();
					showdata_element.show();
      				indicator_element.hide();
				}
        }
	);
}


</script>



<table width="100%" cellspacing="0" cellpadding="0" border="0" class="small lvt">
	<tbody><tr>
		<td class="dvInnerHeader">
			<div style="font-weight: bold;height: 1.75em;">
				<span>
					<a href="javascript:loadRelatedListBlock(
						'module=SalesOrder&action=SalesOrderAjax&file=DetailViewAjax&record=201&ajxaction=LOADRELATEDLIST&header=Activities&relation_id=72&actions=add&parenttab=Inventory',
						'tbl_SalesOrder_Activities','SalesOrder_Activities');">
						<img id="show_SalesOrder_Activities" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_SalesOrder_Activities','SalesOrder_Activities');">
						<img id="hide_SalesOrder_Activities" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Hoạt động&nbsp;
				<img id="indicator_SalesOrder_Activities" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=SalesOrder&action=SalesOrderAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=72&header=Activities',
						'tbl_SalesOrder_Activities','SalesOrder_Activities');">
						<img id="delete_SalesOrder_Activities" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_SalesOrder_Activities"></div>
		</td>
	</tr>
</tbody></table>
<br>


<table width="100%" cellspacing="0" cellpadding="0" border="0" class="small lvt">
	<tbody><tr>
		<td class="dvInnerHeader">
			<div style="font-weight: bold;height: 1.75em;">
				<span>
					<a href="javascript:loadRelatedListBlock(
						'module=SalesOrder&action=SalesOrderAjax&file=DetailViewAjax&record=201&ajxaction=LOADRELATEDLIST&header=Documents&relation_id=73&actions=add,select&parenttab=Inventory',
						'tbl_SalesOrder_Documents','SalesOrder_Documents');">
						<img id="show_SalesOrder_Documents" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_SalesOrder_Documents','SalesOrder_Documents');">
						<img id="hide_SalesOrder_Documents" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Tài liệu&nbsp;
				<img id="indicator_SalesOrder_Documents" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=SalesOrder&action=SalesOrderAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=73&header=Documents',
						'tbl_SalesOrder_Documents','SalesOrder_Documents');">
						<img id="delete_SalesOrder_Documents" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_SalesOrder_Documents"></div>
		</td>
	</tr>
</tbody></table>
<br>


<table width="100%" cellspacing="0" cellpadding="0" border="0" class="small lvt">
	<tbody><tr>
		<td class="dvInnerHeader">
			<div style="font-weight: bold;height: 1.75em;">
				<span>
					<a href="javascript:loadRelatedListBlock(
						'module=SalesOrder&action=SalesOrderAjax&file=DetailViewAjax&record=201&ajxaction=LOADRELATEDLIST&header=Invoice&relation_id=74&actions=&parenttab=Inventory',
						'tbl_SalesOrder_Invoice','SalesOrder_Invoice');">
						<img id="show_SalesOrder_Invoice" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_SalesOrder_Invoice','SalesOrder_Invoice');">
						<img id="hide_SalesOrder_Invoice" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Hóa đơn&nbsp;
				<img id="indicator_SalesOrder_Invoice" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=SalesOrder&action=SalesOrderAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=74&header=Invoice',
						'tbl_SalesOrder_Invoice','SalesOrder_Invoice');">
						<img id="delete_SalesOrder_Invoice" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_SalesOrder_Invoice"></div>
		</td>
	</tr>
</tbody></table>
<br>


<table width="100%" cellspacing="0" cellpadding="0" border="0" class="small lvt">
	<tbody><tr>
		<td class="dvInnerHeader">
			<div style="font-weight: bold;height: 1.75em;">
				<span>
					<a href="javascript:loadRelatedListBlock(
						'module=SalesOrder&action=SalesOrderAjax&file=DetailViewAjax&record=201&ajxaction=LOADRELATEDLIST&header=Activity History&relation_id=75&actions=&parenttab=Inventory',
						'tbl_SalesOrder_ActivityHistory','SalesOrder_ActivityHistory');">
						<img id="show_SalesOrder_ActivityHistory" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_SalesOrder_ActivityHistory','SalesOrder_ActivityHistory');">
						<img id="hide_SalesOrder_ActivityHistory" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Theo dõi hoạt động&nbsp;
				<img id="indicator_SalesOrder_ActivityHistory" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=SalesOrder&action=SalesOrderAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=75&header=Activity History',
						'tbl_SalesOrder_ActivityHistory','SalesOrder_ActivityHistory');">
						<img id="delete_SalesOrder_ActivityHistory" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_SalesOrder_ActivityHistory"></div>
		</td>
	</tr>
</tbody></table>
<br>


<table width="100%" cellspacing="0" cellpadding="0" border="0" class="small lvt">
	<tbody><tr>
		<td class="dvInnerHeader">
			<div style="font-weight: bold;height: 1.75em;">
				<span>
					<a href="javascript:loadRelatedListBlock(
						'module=SalesOrder&action=SalesOrderAjax&file=DetailViewAjax&record=201&ajxaction=LOADRELATEDLIST&header=SalesOrder Status History&relation_id=76&actions=&parenttab=Inventory',
						'tbl_SalesOrder_SalesOrderStatusHistory','SalesOrder_SalesOrderStatusHistory');">
						<img id="show_SalesOrder_SalesOrderStatusHistory" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_SalesOrder_SalesOrderStatusHistory','SalesOrder_SalesOrderStatusHistory');">
						<img id="hide_SalesOrder_SalesOrderStatusHistory" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Theo dõi tình trạng Đặt hàng&nbsp;
				<img id="indicator_SalesOrder_SalesOrderStatusHistory" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=SalesOrder&action=SalesOrderAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=76&header=SalesOrder Status History',
						'tbl_SalesOrder_SalesOrderStatusHistory','SalesOrder_SalesOrderStatusHistory');">
						<img id="delete_SalesOrder_SalesOrderStatusHistory" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_SalesOrder_SalesOrderStatusHistory"></div>
		</td>
	</tr>
</tbody></table>
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
		   <!-- SO Actions starts -->
	   <tr>
		<td align="left" style="padding-left:10px;">
			<a href="javascript: document.DetailView.module.value='Invoice'; document.DetailView.action.value='EditView'; document.DetailView.return_module.value='SalesOrder'; document.DetailView.return_action.value='DetailView'; document.DetailView.return_id.value='201'; document.DetailView.record.value='201'; document.DetailView.convertmode.value='sotoinvoice'; document.DetailView.submit();" class="webMnu"><img src="themes/images/actionGenerateInvoice.gif" hspace="5" align="absmiddle" border="0"></a>
			<a href="javascript: document.DetailView.module.value='Invoice'; document.DetailView.action.value='EditView'; document.DetailView.return_module.value='SalesOrder'; document.DetailView.return_action.value='DetailView'; document.DetailView.return_id.value='201'; document.DetailView.record.value='201'; document.DetailView.convertmode.value='sotoinvoice'; document.DetailView.submit();" class="webMnu">Tạo Hóa đơn</a> 
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
		<a href="index.php?module=SalesOrder&amp;action=CreateSOPDF&amp;return_module=SalesOrder&amp;return_action=DetailView&amp;record=201&amp;return_id=201" class="webMnu"><img src="themes/images/actionGeneratePDF.gif" hspace="5" align="absmiddle" border="0"></a>
                <a href="index.php?module=SalesOrder&amp;action=CreateSOPDF&amp;return_module=SalesOrder&amp;return_action=DetailView&amp;record=201&amp;return_id=201" class="webMnu">Xuất ra Tập tin PDF</a>
	</td>
   </tr>

<!-- Added to give link to  send Invoice PDF through mail -->
 <tr>
	<td align="left" style="padding-left:10px;">
		<a href="javascript: document.DetailView.return_module.value='SalesOrder'; document.DetailView.return_action.value='DetailView'; document.DetailView.module.value='SalesOrder'; document.DetailView.action.value='SendPDFMail'; document.DetailView.record.value='201'; document.DetailView.return_id.value='201'; sendpdf_submit();" class="webMnu"><img src="themes/images/PDFMail.gif" hspace="5" align="absmiddle" border="0"></a>
		<a href="javascript: document.DetailView.return_module.value='SalesOrder'; document.DetailView.return_action.value='DetailView'; document.DetailView.module.value='SalesOrder'; document.DetailView.action.value='SendPDFMail'; document.DetailView.record.value='201'; document.DetailView.return_id.value='201'; sendpdf_submit();" class="webMnu">Gửi thư với PDF</a> 
	</td>
   </tr>
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
																		<input title="Sửa [Alt+E]" accesskey="E" class="crmbutton small edit" onclick="DetailView.return_module.value='SalesOrder'; DetailView.return_action.value='DetailView'; DetailView.return_id.value='201';DetailView.module.value='SalesOrder'; submitFormForAction('DetailView','EditView');" type="button" name="Edit" value="&nbsp;Sửa&nbsp;">&nbsp;
																											<input title="Sao chép [Alt+U]" accesskey="U" class="crmbutton small create" onclick="DetailView.return_module.value='SalesOrder'; DetailView.return_action.value='DetailView'; DetailView.isDuplicate.value='true';DetailView.module.value='SalesOrder'; submitFormForAction('DetailView','EditView');" type="button" name="Duplicate" value="Sao chép">&nbsp;
																											<input title="Xóa [Alt+D]" accesskey="D" class="crmbutton small delete" onclick="DetailView.return_module.value='SalesOrder'; DetailView.return_action.value='index';  var confirmMsg = 'Bạn muốn xóa bản ghi này chứ?' ; submitFormForActionWithConfirmation('DetailView', 'Delete', confirmMsg);" type="button" name="Delete" value="Xóa">&nbsp;
																	
																		<img align="absmiddle" title="Lùi" src="themes/images/rec_prev_disabled.gif">
																
																		<img align="absmiddle" title="JUMP" accesskey="JUMP" onclick="var obj = this;var lhref = getListOfRecords(obj, 'SalesOrder',201,'Inventory');" name="jumpBtnIdBottom" id="jumpBtnIdBottom" src="themes/images/rec_jump.gif">&nbsp;
																											<img align="absmiddle" title="Tiếp" accesskey="Tiếp" onclick="location.href='index.php?module=SalesOrder&amp;viewtype=&amp;action=DetailView&amp;record=611&amp;parenttab=Inventory'" name="nextrecord" src="themes/images/rec_next.gif">&nbsp;
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
