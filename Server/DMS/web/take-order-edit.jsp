<%-- 
    Document   : take-order-edit
    Created on : Apr 10, 2014, 1:06:49 AM
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
<script type="text/javascript" src="include/js/clock.js"></script><div id="theDate" class="datestyle" style="color: rgb(0, 0, 0); top: 142px; left: 0px;">April 10, 2014 1:06 AM</div><div id="amOrPm" class="ampmstyle" style="color: rgb(153, 153, 153); top: 87px; left: 52px;">AM</div><div id="theFace0" class="facestyle" style="color: rgb(0, 0, 0); top: 81px; left: 96px;">3</div><div id="theFace1" class="facestyle" style="color: rgb(0, 0, 0); top: 102px; left: 90.37306695894642px;">4</div><div id="theFace2" class="facestyle" style="color: rgb(0, 0, 0); top: 117.37306695894642px; left: 75px;">5</div><div id="theFace3" class="facestyle" style="color: rgb(0, 0, 0); top: 123px; left: 54px;">6</div><div id="theFace4" class="facestyle" style="color: rgb(0, 0, 0); top: 117.37306695894644px; left: 33.000000000000014px;">7</div><div id="theFace5" class="facestyle" style="color: rgb(0, 0, 0); top: 102px; left: 17.62693304105357px;">8</div><div id="theFace6" class="facestyle" style="color: rgb(0, 0, 0); top: 81px; left: 12px;">9</div><div id="theFace7" class="facestyle" style="color: rgb(0, 0, 0); top: 59.999999999999986px; left: 17.626933041053576px;">10</div><div id="theFace8" class="facestyle" style="color: rgb(0, 0, 0); top: 44.62693304105359px; left: 32.99999999999997px;">11</div><div id="theFace9" class="facestyle" style="color: rgb(0, 0, 0); top: 39px; left: 53.99999999999999px;">12</div><div id="theFace10" class="facestyle" style="color: rgb(0, 0, 0); top: 44.626933041053576px; left: 75px;">1</div><div id="theFace11" class="facestyle" style="color: rgb(0, 0, 0); top: 59.99999999999997px; left: 90.37306695894641px;">2</div><div id="H0" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 87px; left: 60px;"></div><div id="H1" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 81.12930602438203px; left: 63.81247324510519px;"></div><div id="H2" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 75.25861204876406px; left: 67.62494649021038px;"></div><div id="H3" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 69.3879180731461px; left: 71.43741973531557px;"></div><div id="M0" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 87px; left: 60px;"></div><div id="M1" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 81.33688103937537px; left: 64.11449676604731px;"></div><div id="M2" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 75.67376207875074px; left: 68.22899353209462px;"></div><div id="M3" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 70.0106431181261px; left: 72.34349029814193px;"></div><div id="M4" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 64.34752415750147px; left: 76.45798706418924px;"></div><div id="S0" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 87px; left: 60px;"></div><div id="S1" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 93.06217782649107px; left: 56.5px;"></div><div id="S2" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 99.12435565298215px; left: 53px;"></div><div id="S3" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 105.18653347947321px; left: 49.50000000000001px;"></div><div id="S4" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 111.24871130596429px; left: 46.00000000000001px;"></div><div id="S5" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 117.31088913245536px; left: 42.500000000000014px;"></div>

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
		<td class="trackerList small"> <a href="index.php?module=PriceBooks&amp;action=DetailView&amp;record=185&amp;parenttab=Inventory">Bảng giá phần mềm...</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">2</td>
		<td class="trackerList small"> <a href="index.php?module=SalesOrder&amp;action=DetailView&amp;record=611&amp;parenttab=Inventory">Đặt hàng phần mề...</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">3</td>
		<td class="trackerList small"> <a href="index.php?module=SalesOrder&amp;action=DetailView&amp;record=201&amp;parenttab=Inventory">Đặt hàng 1</a> </td><td class="trackerList small">&nbsp;</td></tr>
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
<div class="lvtCol fixedLay1" id="ActivityRemindercallback" style="border: 0px; right: 0px; bottom: 2px; display: block; padding: 2px; z-index: 10; font-weight: normal;" align="left">
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
<!-- divs for asterisk integration :: end--><!-- startscrmprint -->

<link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
<script type="text/javascript" src="jscalendar/calendar.js"></script>
<script type="text/javascript" src="jscalendar/lang/calendar-vn.js"></script>
<script type="text/javascript" src="jscalendar/calendar-setup.js"></script>
<script type="text/javascript" src="include/js/Inventory.js"></script>
<script type="text/javascript" src="modules/Services/Services.js"></script><script type="text/javascript" src="modules/Products/multifile.js"></script><script type="text/javascript" src="include/js/Merge.js"></script>
<script type="text/javascript">

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
                                postBody: 'module=SalesOrder&action=Tickerdetail&tickersymbol='+Ticker,
                                onComplete: function(response) {
                                        $('autocom').innerHTML = response.responseText;
                                        $('autocom').style.display="block";
                                        $("vtbusy_info").style.display="none";
                                }
                        }
                );
        }
}

</script>

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

<table border="0" cellspacing="0" cellpadding="0" width="98%" align="center">
   <tbody><tr>
	<td valign="top"><img src="themes/softed/images/showPanelTopLeft.gif"></td>

	<td class="showPanelBg" valign="top" width="100%">
				<div class="small" style="padding:20px">
		
						   			  					
			   
				<span class="lvtHeaderText"><font color="purple">[ SO6 ] </font>Đặt hàng 1 - Sửa Đặt hàng Thông tin</span> <br>
				Cập nhật 1086 ngày trước (19 Tháng 4 2011)	 
						
			<hr noshade="" size="1">
			<br> 
		
			
	<!-- (id="frmEditView") content added to form tag and new hidden field added,  -->
	<form id="frmEditView" name="EditView" method="POST" action="index.php" onsubmit="settotalnoofrows();calcTotal();VtigerJS_DialogBox.block();">
	<input type="hidden" name="hidImagePath" id="hidImagePath" value="themes/softed/images/">
	<!-- End of code added -->

	       		 <input type="hidden" name="convertmode">
	

<input type="hidden" name="pagenumber" value="">
<input type="hidden" name="module" value="SalesOrder">
<input type="hidden" name="record" value="201">
<input type="hidden" name="mode" value="edit">
<input type="hidden" name="action">
<input type="hidden" name="parenttab" value="Inventory">
<input type="hidden" name="return_module" value="SalesOrder">
<input type="hidden" name="return_id" value="">
<input type="hidden" name="return_action" value="index">
<input type="hidden" name="return_viewname" value="26">
						<table border="0" cellspacing="0" cellpadding="0" width="95%" align="center">
			   <tbody><tr>
				<td>
					<table border="0" cellspacing="0" cellpadding="3" width="100%" class="small">
					   <tbody><tr>
						<td class="dvtTabCache" style="width:10px" nowrap="">&nbsp;</td>
                                        	<td class="dvtSelectedCell" align="center" nowrap="">Đặt hàng Thông tin</td>
	                                        <td class="dvtTabCache" style="width:10px">&nbsp;</td>
                	                        <td class="dvtTabCache" style="width:100%">&nbsp;</td>
					   </tr>
					</tbody></table>
				</td>
			   </tr>
			   <tr>
				<td valign="top" align="left">
					<table border="0" cellspacing="0" cellpadding="3" width="100%" class="dvtContentSpace">
					   <tbody><tr>

						<td align="left" style="padding:10px;border-right:1px #CCCCCC;" width="80%">
												
							<table border="0" cellspacing="0" cellpadding="0" width="100%">
							   <tbody><tr>
								<td id="autocom"></td>
							   </tr>
							   <tr>
								<td style="padding:10px">
								<!-- General details -->
									<table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
									   <tbody><tr>
										<td colspan="4" style="padding:5px">
										   <div align="center">
											<input title="Lưu [Alt+S]" accesskey="S" class="crmbutton small save" onclick="this.form.action.value='Save'; displaydeleted(); return validateInventory('SalesOrder')" type="submit" name="button" value="  Lưu  " style="width:70px">
											<input title="Hủy bỏ [Alt+X]" accesskey="X" class="crmbutton small cancel" onclick="window.history.back()" type="button" name="button" value="Hủy bỏ  " style="width:70px">
										   </div>
										</td>
									   </tr>

									   <!-- included to handle the edit fields based on ui types -->
									   									      <tr>
																				<td colspan="4" class="detailedViewHeader">
											<b>Thông tin Đặt hàng</b>
																				</td>
									      </tr>

										<!-- Handle the ui types display -->
										

<!-- Added this file to display the fields in Create Entity page based on ui types  -->
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red">*</font>Tiêu đề 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
				<input type="text" name="subject" tabindex="" value="Đặt hàng 1" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'">
			</td>
																									 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Tên Cơ hội 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
				<input name="potential_name" readonly="" type="text" style="border:1px solid #bababa;" value=""><input name="potential_id" type="hidden" value="0">&nbsp;<img tabindex="" src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" language="javascript" onclick="selectPotential()" align="absmiddle" style="cursor:hand;cursor:pointer">&nbsp;<input type="image" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" language="javascript" onclick="this.form.potential_id.value=''; this.form.potential_name.value='';return false;" align="absmiddle" style="cursor:hand;cursor:pointer">
			</td>

			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Khách hàng thứ </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="customerno" id="customerno" value="2" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
				<!-- Non Editable field, only configured value will be loaded -->
				<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Mã Đặt hàng </td>
                                <td width="30%" align="left" class="dvtCellInfo"><input readonly="" type="text" tabindex="" name="salesorder_no" id="salesorder_no" value="SO6" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Tên Báo giá 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
				<input name="quote_name" readonly="" type="text" style="border:1px solid #bababa;" value=""><input name="quote_id" type="hidden" value="0">&nbsp;<img src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" language="javascript" onclick="selectQuote()" align="absmiddle" style="cursor:hand;cursor:pointer">&nbsp;<input type="image" tabindex="" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" language="javascript" onclick="this.form.quote_id.value=''; this.form.quote_name.value='';return false;" align="absmiddle" style="cursor:hand;cursor:pointer">
			</td>

																									 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Nhập hàng </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="vtiger_purchaseorder" id="vtiger_purchaseorder" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Tên Liên hệ 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
									<input name="contact_name" readonly="" type="text" style="border:1px solid #bababa;" value=" "><input name="contact_id" type="hidden" value="0">&nbsp;<img src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" language="javascript" onclick="selectContact(&quot;false&quot;,&quot;general&quot;,document.EditView)" align="absmiddle" style="cursor:hand;cursor:pointer">&nbsp;<input type="image" tabindex="" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" language="javascript" onclick="this.form.contact_id.value=''; this.form.contact_name.value='';return false;" align="absmiddle" style="cursor:hand;cursor:pointer">
							</td>
		
																									 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Ngày liên quan 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
																		
				<input name="duedate" tabindex="" id="jscal_field_duedate" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="19-04-2011">
				<img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_duedate">
				
								
												
																		
									<br><font size="1"><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
				
				<script type="text/javascript" id="massedit_calendar_duedate">
					Calendar.setup ({
						inputField : "jscal_field_duedate", ifFormat : "%d-%m-%Y", showsTime : false, button : "jscal_trigger_duedate", singleClick : true, step : 1
					})
				</script>


			</td>

			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
				 <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
			<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>
				Công ty vận chuyển 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
							   		<select name="carrier" tabindex="" class="small">
			   															<option value="FedEx" selected="">
                                                FedEx
                                        </option>
																			<option value="UPS">
                                                UPS
                                        </option>
																			<option value="USPS">
                                                USPS
                                        </option>
																			<option value="DHL">
                                                DHL
                                        </option>
																			<option value="BlueDart">
                                                BlueDart
                                        </option>
												   </select>
			</td>
																									 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Lý do chưa thực hiện </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="pending" id="pending" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
				 <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
			<td width="20%" class="dvtCellLabel" align="right">
				<font color="red">*</font>
				Tình trạng 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
							   		<select name="sostatus" tabindex="" class="small">
			   															<option value="Created" selected="">
                                                Đã tạo
                                        </option>
																			<option value="Approved">
                                                Đã chấp nhận
                                        </option>
																			<option value="Delivered">
                                                Đã giao
                                        </option>
																			<option value="Cancelled">
                                                Hủy bỏ
                                        </option>
												   </select>
			</td>
																									 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Tiền hoa hồng </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="salescommission" id="salescommission" value="0.000" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Thuế hàng hóa </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="exciseduty" id="exciseduty" value="0.000" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red">*</font>Tên Khách hàng 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
				<input readonly="" name="account_name" id="single_accountid" type="text" value="La Thị Hệ"><input name="account_id" type="hidden" value="139">&nbsp;<img src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" language="javascript" onclick="return window.open(&quot;index.php?module=Accounts&amp;action=Popup&amp;popuptype=specific_account_address&amp;form=TasksEditView&amp;form_submit=false&amp;fromlink=&quot;,&quot;test&quot;,&quot;width=640,height=602,resizable=0,scrollbars=0&quot;);" align="absmiddle" style="cursor:hand;cursor:pointer">
				<input type="image" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" language="javascript" onclick="this.form.account_id.value=''; this.form.account_name.value='';return false;" align="absmiddle" style="cursor:hand;cursor:pointer">
			</td>

			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red">*</font>Gán cho 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																													
																							
				<input type="radio" tabindex="" name="assigntype" checked="" value="U" onclick="toggleAssignType(this.value)">&nbsp;Người dùng

									<input type="radio" name="assigntype" value="T" onclick="toggleAssignType(this.value)">&nbsp;Nhóm
								
				<span id="assign_user" style="display:block">
					<select name="assigned_user_id" class="small">
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

									<span id="assign_team" style="display:none">
						<select name="assigned_group_id" class="small">';
																								<option value="2">Đội sales</option>
																																<option value="4">Nhóm hỗ trợ</option>
																																<option value="7">Nhóm kỹ thuật</option>
																																<option value="3">Nhóm Marketing</option>
																					</select>
					</span>
							</td>
																									 
	 	
							
										
					   </tr>

									      <tr style="height:25px"><td>&nbsp;</td></tr>

									   									      <tr>
																				<td colspan="4" class="detailedViewHeader">
											<b>Thông tin định kỳ</b>
																				</td>
									      </tr>

										<!-- Handle the ui types display -->
										

<!-- Added this file to display the fields in Create Entity page based on ui types  -->
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Bật chức năng định kỳ 			</td>

												<td width="30%" align="left" class="dvtCellInfo">
						<input name="enable_recurring" tabindex="" type="checkbox">
					</td>
																																 
	 	
							
										
				 <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
			<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>
				Mức độ thường xuyên 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
							   		<select name="recurring_frequency" tabindex="" class="small">
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
			</td>
			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Thời gian bắt đầu 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
																		
				<input name="start_period" tabindex="" id="jscal_field_start_period" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="09-04-2014">
				<img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_start_period">
				
								
												
																		
									<br><font size="1"><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
				
				<script type="text/javascript" id="massedit_calendar_start_period">
					Calendar.setup ({
						inputField : "jscal_field_start_period", ifFormat : "%d-%m-%Y", showsTime : false, button : "jscal_trigger_start_period", singleClick : true, step : 1
					})
				</script>


			</td>

																									 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Thời gian kết thúc 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
																		
				<input name="end_period" tabindex="" id="jscal_field_end_period" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="09-04-2014">
				<img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_end_period">
				
								
												
																		
									<br><font size="1"><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
				
				<script type="text/javascript" id="massedit_calendar_end_period">
					Calendar.setup ({
						inputField : "jscal_field_end_period", ifFormat : "%d-%m-%Y", showsTime : false, button : "jscal_trigger_end_period", singleClick : true, step : 1
					})
				</script>


			</td>

			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
				 <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
			<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>
				Thời gian thanh toán 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
							   		<select name="payment_duration" tabindex="" class="small">
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
			</td>
																									 
	 	
							
										
				 <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
			<td width="20%" class="dvtCellLabel" align="right">
				<font color="red">*</font>
				Trạng thái hóa đơn 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
							   		<select name="invoicestatus" tabindex="" class="small">
			   															<option value="AutoCreated">
                                                Tạo tự động
                                        </option>
																			<option value="Created">
                                                Đã tạo
                                        </option>
																			<option value="Approved">
                                                Đã chấp nhận
                                        </option>
																			<option value="Sent">
                                                Đã gửi
                                        </option>
																			<option value="Credit Invoice">
                                                Hóa đơn tín dụng
                                        </option>
																			<option value="Paid">
                                                Đã thanh toán
                                        </option>
												   </select>
			</td>
			   </tr>

									      <tr style="height:25px"><td>&nbsp;</td></tr>

									   									      <tr>
										                                                                        	<td colspan="2" class="detailedViewHeader">
	                                                                        <b>Thông tin địa chỉ</b></td>
        	                                                                <td class="detailedViewHeader">
                	                                                        <input name="cpy" onclick="return copyAddressLeft(EditView)" type="radio"><b>Sao chép địa chỉ vận chuyển</b></td>
                        	                                                <td class="detailedViewHeader">
                                	                                        <input name="cpy" onclick="return copyAddressRight(EditView)" type="radio"><b>Sao chép địa chỉ thanh toán</b></td>
                                        	                                										
									      </tr>

										<!-- Handle the ui types display -->
										

<!-- Added this file to display the fields in Create Entity page based on ui types  -->
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
					<font color="red">*</font>
				Địa chỉ thanh toán 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
				<textarea value="129 Phố Vọng" name="bill_street" tabindex="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" rows="2">129 Phố Vọng</textarea>
			</td>
																									 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
					<font color="red">*</font>
				Địa chỉ vận chuyển 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
				<textarea value="129 Phố Vọng" name="ship_street" tabindex="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" rows="2">129 Phố Vọng</textarea>
			</td>
			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Hộp thư thanh toán </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="bill_pobox" id="bill_pobox" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Hộp thư vận chuyển </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="ship_pobox" id="ship_pobox" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Thanh toán tại thành phố </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="bill_city" id="bill_city" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Vận chuyển tới thành phố </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="ship_city" id="ship_city" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Thanh toán tại Tỉnh/Bang </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="bill_state" id="bill_state" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Vận chuyển tới Tỉnh/Bang </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="ship_state" id="ship_state" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Mã vùng thanh toán </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="bill_code" id="bill_code" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Mã vùng vận chuyển </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="ship_code" id="ship_code" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
						   </tr>

									      <tr style="height:25px"><td>&nbsp;</td></tr>

									   									      <tr>
																				<td colspan="4" class="detailedViewHeader">
											<b>Quyền hạn và trách nhiệm</b>
																				</td>
									      </tr>

										<!-- Handle the ui types display -->
										

<!-- Added this file to display the fields in Create Entity page based on ui types  -->
			<tr style="height:25px">
																								 
	 	
							
										
							<!-- In Add Comment are we should not display anything -->
						<td width="20%" class="dvtCellLabel" align="right">
					<font color="red"></font> 
				Điều khoản 			</td>
			<td colspan="3">
				<textarea class="detailedViewTextBox" tabindex="" onfocus="this.className='detailedViewTextBoxOn'" name="terms_conditions" onblur="this.className='detailedViewTextBox'" cols="90" rows="8">- Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.

 - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.</textarea>
							</td>
			   </tr>

									      <tr style="height:25px"><td>&nbsp;</td></tr>

									   									      <tr>
																				<td colspan="4" class="detailedViewHeader">
											<b>Thông tin mô tả</b>
																				</td>
									      </tr>

										<!-- Handle the ui types display -->
										

<!-- Added this file to display the fields in Create Entity page based on ui types  -->
			<tr style="height:25px">
																								 
	 	
							
										
							<!-- In Add Comment are we should not display anything -->
						<td width="20%" class="dvtCellLabel" align="right">
					<font color="red"></font> 
				Mô tả 			</td>
			<td colspan="3">
				<textarea class="detailedViewTextBox" tabindex="" onfocus="this.className='detailedViewTextBoxOn'" name="description" onblur="this.className='detailedViewTextBox'" cols="90" rows="8"></textarea>
							</td>
			   </tr>

									      <tr style="height:25px"><td>&nbsp;</td></tr>

									   

									   <!-- Added to display the Product Details in Inventory-->
									   									   <tr>
										<td colspan="4">
											
<script type="text/javascript" src="include/js/Inventory.js"></script>
<!-- Added to display the Product Details -->
<script type="text/javascript">
if(!e)
	window.captureEvents(Event.MOUSEMOVE);

//  window.onmousemove= displayCoords;
//  window.onclick = fnRevert;
  
function displayCoords(currObj,obj,mode,curr_row) 
{
	if(mode != 'discount_final' && mode != 'sh_tax_div_title' && mode != 'group_tax_div_title')
	{
		var curr_productid = document.getElementById("hdnProductId"+curr_row).value;
		if(curr_productid == '')
		{
			alert("Vui lòng chọn một mặt hàng");
			return false;
		}
		var curr_quantity = document.getElementById("qty"+curr_row).value;
		if(curr_quantity == '')
		{
			alert("Hãy điền số lượng");
			return false;
		}
	}

	//Set the Header value for Discount
	if(mode == 'discount')
	{
		document.getElementById("discount_div_title"+curr_row).innerHTML = '<b>Thiết lập Khấu trừ cho x  '+document.getElementById("productTotal"+curr_row).innerHTML+'</b>';
	}
	else if(mode == 'tax')
	{
		document.getElementById("tax_div_title"+curr_row).innerHTML = "<b>Thiết lập Thuế cho "+document.getElementById("totalAfterDiscount"+curr_row).innerHTML+'</b>';
	}
	else if(mode == 'discount_final')
	{
		document.getElementById("discount_div_title_final").innerHTML = '<b>Thiết lập Khấu trừ cho  '+document.getElementById("netTotal").innerHTML+'</b>';
	}
	else if(mode == 'sh_tax_div_title')
	{
		document.getElementById("sh_tax_div_title").innerHTML = '<b>Thiết lập Thuế Giao nhận cho  '+document.getElementById("shipping_handling_charge").value+'</b>';
	}
	else if(mode == 'group_tax_div_title')
	{
		var net_total_after_discount = eval(document.getElementById("netTotal").innerHTML)-eval(document.getElementById("discountTotal_final").innerHTML);
		document.getElementById("group_tax_div_title").innerHTML = '<b>Thiết lập Nhóm Thuế cho  '+net_total_after_discount+'</b>';
	}

	fnvshobj(currObj,'tax_container');
	if(document.all)
	{
		var divleft = document.getElementById("tax_container").style.left;
		var divabsleft = divleft.substring(0,divleft.length-2);
		document.getElementById(obj).style.left = eval(divabsleft) - 120;

		var divtop = document.getElementById("tax_container").style.top;
		var divabstop =  divtop.substring(0,divtop.length-2);
		document.getElementById(obj).style.top = eval(divabstop);
	}else
	{
		document.getElementById(obj).style.left =  document.getElementById("tax_container").left;
		document.getElementById(obj).style.top = document.getElementById("tax_container").top;
	}
	document.getElementById(obj).style.display = "block";

}
  
	function doNothing(){
	}
	
	function fnHidePopDiv(obj){
		document.getElementById(obj).style.display = 'none';
	}
</script>


</td></tr><tr><td colspan="4" align="left">

<table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" class="crmTable" id="proTab">
   <tbody><tr>
   				<td colspan="3" class="dvInnerHeader">
			<b>Chi tiết mặt hàng</b>
	</td>
	
	<td class="dvInnerHeader" align="center" colspan="2">
		<input type="hidden" value="1" id="prev_selected_currency_id">
		<b>Tiền tệ</b>&nbsp;&nbsp;
		<select class="small" id="inventory_currency" name="inventory_currency" onchange="updatePrices();">
															<option value="1" selected="">Vietnam, Dong (₫)</option>
				</select>
	</td>
	
	<td class="dvInnerHeader" align="center" colspan="2">
		<b>Loại thuế</b>&nbsp;&nbsp;
		
							
		<select class="small" id="taxtype" name="taxtype" onchange="decideTaxDiv(); calcTotal();">
			<option value="individual" selected="">Khác biệt</option>
			<option value="group">Nhóm</option>
		</select>
	</td>
   </tr>

   <!-- Header for the Product Details -->
   <tr valign="top">
	<td width="5%" valign="top" class="lvtCol" align="right"><b>Công cụ</b></td>
	<td width="40%" class="lvtCol"><font color="red">*</font><b>Tên mặt hàng</b></td>
			<td width="10%" class="lvtCol"><b>Tồn kho</b></td>
		<td width="10%" class="lvtCol"><b>Số lượng</b></td>
	<td width="10%" class="lvtCol" align="right"><b>Đơn giá</b></td>
	<td width="12%" nowrap="" class="lvtCol" align="right"><b>Tổng số</b></td>
	<td width="13%" valign="top" class="lvtCol" align="right"><b>Thành tiền</b></td>
   </tr>

   													
								
				

   <tr id="row1" valign="top">

	<!-- column 1 - delete link - starts -->
	<td class="crmTableRow small lineOnTop"><input id="deleted1" name="deleted1" type="hidden" value="0"><br><br><a href="javascript:moveUpDown('DOWN','SalesOrder',1)" title="Move Downward"><img src="themes/images/down_layout.gif" border="0"></a></td>

	<!-- column 2 - Product Name - starts -->
	<td class="crmTableRow small lineOnTop">
		<!-- Product Re-Ordering Feature Code Addition Starts -->
		<input type="hidden" name="hidtax_row_no1" id="hidtax_row_no1" value="">
		<!-- Product Re-Ordering Feature Code Addition ends -->
		<table width="100%" border="0" cellspacing="0" cellpadding="1">
			<tbody><tr>
				<td class="small" valign="top">
					<input type="text" id="productName1" name="productName1" value="Thiết kế web" class="small" style="width: 70%;" readonly="">
					<input type="hidden" id="hdnProductId1" name="hdnProductId1" value="142">
					<input type="hidden" id="lineItemType1" name="lineItemType1" value="Products">
					&nbsp;
											<img id="searchIcon1" title="Products" src="themes/images/products.gif" style="cursor: pointer;" align="absmiddle" onclick="productPickList(this,'SalesOrder','1')">
									</td>
			</tr>
			<tr>
				<td class="small">
					<input type="hidden" value="" id="subproduct_ids1" name="subproduct_ids1">
					<span id="subprod_names1" name="subprod_names1" style="color:#C0C0C0;font-style:italic;"></span>
				</td>
			</tr>
			<tr>
				<td class="small" id="setComment">
					<textarea id="comment1" name="comment1" class="small" style="width:70%;height:40px"></textarea>
					<img src="themes/images/clear_field.gif" onclick="$('comment1').value=''" ;="" style="cursor:pointer;">
				</td>
			</tr>
		</tbody></table>
	</td>
	<!-- column 2 - Product Name - ends -->

	<!-- column 3 - Quantity in Stock - starts -->
		   <td class="crmTableRow small lineOnTop" valign="top"><span id="qtyInStock1">7.000</span></td>
		<!-- column 3 - Quantity in Stock - ends -->


	<!-- column 4 - Quantity - starts -->
	<td class="crmTableRow small lineOnTop" valign="top">
		<input id="qty1" name="qty1" type="text" class="detailedViewTextBoxOn" style="width:50px" onfocus="this.className='detailedViewTextBoxOn'" onblur="settotalnoofrows(); calcTotal(); loadTaxes_Ajax('1');" onchange="setDiscount(this,'1')" value="1.000"><br><span id="stock_alert1"></span>
	</td>
	<!-- column 4 - Quantity - ends -->

	<!-- column 5 - List Price with Discount, Total After Discount and Tax as table - starts -->
	<td class="crmTableRow small lineOnTop" align="right" valign="top">
		<table width="100%" cellpadding="0" cellspacing="0">
		   <tbody><tr>
			<td align="right">
				<input id="listPrice1" name="listPrice1" value="6000000.000" type="text" class="small " style="width:70px" onblur="calcTotal(); setDiscount(this,'1');callTaxCalc('1');">&nbsp;<img src="themes/images/pricebook.gif" onclick="priceBookPickList(this,'1')">
			</td>
		   </tr>
		   <tr>
			<td align="right" style="padding:5px;" nowrap="">
				(-)&nbsp;<b><a href="javascript:doNothing();" onclick="displayCoords(this,'discount_div1','discount','1')">Chiết khấu</a> : </b>
				<div class="discountUI" id="discount_div1">
					<input type="hidden" id="discount_type1" name="discount_type1" value="">
					<table width="100%" border="0" cellpadding="5" cellspacing="0" class="small">
					   <tbody><tr>
						<td id="discount_div_title1" nowrap="" align="left"></td>
						<td align="right"><img src="themes/images/close.gif" border="0" onclick="fnHidePopDiv('discount_div1')" style="cursor:pointer;"></td>
					   </tr>
					   <tr>
						<td align="left" class="lineOnTop"><input type="radio" name="discount1" checked="" onclick="setDiscount(this,'1'); callTaxCalc('1');calcTotal();">&nbsp; Khấu trừ ít nhất</td>
						<td class="lineOnTop">&nbsp;</td>
					   </tr>
					   <tr>
						<td align="left"><input type="radio" name="discount1" onclick="setDiscount(this,'1'); callTaxCalc('1'); calcTotal();">&nbsp; % trong giá bán</td>
						<td align="right"><input type="text" class="small" size="5" id="discount_percentage1" name="discount_percentage1" value="0" onblur="setDiscount(this,'1'); callTaxCalc('1'); calcTotal();">&nbsp;%</td>
					   </tr>
					   <tr>
						<td align="left" nowrap=""><input type="radio" name="discount1" onclick="setDiscount(this,'1'); callTaxCalc('1'); calcTotal();">&nbsp;Quản lý giảm giá</td>
						<td align="right"><input type="text" id="discount_amount1" name="discount_amount1" size="5" value="0" onblur="setDiscount(this,1); callTaxCalc('1'); calcTotal();"></td>
					   </tr>
					</tbody></table>
				</div>
			</td>
		   </tr>
		   <tr>
			<td align="right" style="padding:5px;" nowrap="">
				<b>Giá sau khi chiết khấu :</b>
			</td>
		   </tr>
		   <tr id="individual_tax_row1" class="TaxShow">
			<td align="right" style="padding:5px;" nowrap="">
				(+)&nbsp;<b><a href="javascript:doNothing();" onclick="displayCoords(this,'tax_div1','tax','1')">Thuế </a> : </b>
				<div class="discountUI" id="tax_div1">
		<table width="100%" border="0" cellpadding="5" cellspacing="0" class="small" id="tax_table1">
		   <tbody><tr>
			<td id="tax_div_title1" nowrap="" align="left"><b>Thiết lập Thuế cho : 6000000.00</b></td>
			<td>&nbsp;</td>
			<td align="right"><img src="themes/images/close.gif" border="0" onclick="fnHidePopDiv('tax_div1')" style="cursor:pointer;"></td>
		   </tr>
	   </tbody></table><div align="left" class="lineOnTop" width="100%">Sản phẩm này không tính thuế.</div><input type="hidden" id="hdnTaxTotal1" name="hdnTaxTotal1" value="0"></div>
				<!-- This above div is added to display the tax informations -->
			</td>
		   </tr>
		</tbody></table>
	</td>
	<!-- column 5 - List Price with Discount, Total After Discount and Tax as table - ends -->


	<!-- column 6 - Product Total - starts -->
	<td class="crmTableRow small lineOnTop" align="right">
		<table width="100%" cellpadding="5" cellspacing="0">
		   <tbody><tr>
			<td id="productTotal1" align="right">6000000.00</td>
		   </tr>
		   <tr>
			<td id="discountTotal1" align="right">0.00</td>
		   </tr>
		   <tr>
			<td id="totalAfterDiscount1" align="right">6000000.00</td>
		   </tr>
		   <tr>
			<td id="taxTotal1" align="right" style="display: block;">0</td>
		   </tr>
		</tbody></table>
	</td>
	<!-- column 6 - Product Total - ends -->

	<!-- column 7 - Net Price - starts -->
	<td valign="bottom" class="crmTableRow small lineOnTop" align="right">
		<span id="netPrice1">6000000.00</span>
	</td>
	<!-- column 7 - Net Price - ends -->


   </tr>
   <!-- Product Details First row - Ends -->
   <tr id="row2" style="vertical-align: top;"><td class="crmTableRow small" id="row2_col1"><img src="themes/images/delete.gif" border="0" onclick="deleteRow('SalesOrder',2,'themes/images/')"><input id="deleted2" name="deleted2" type="hidden" value="0"><br><br>&nbsp;<a href="javascript:moveUpDown('UP','SalesOrder',2)" title="Move Upward"><img src="themes/images/up_layout.gif" border="0"></a></td><td class="crmTableRow small"><table border="0" cellpadding="1" cellspacing="0" width="100%"><tbody><tr><td class="small"><input id="productName2" name="productName2" class="small" style="width: 70%;" value="" readonly="readonly" type="text"><input id="hdnProductId2" name="hdnProductId2" value="" type="hidden"><input type="hidden" id="lineItemType2" name="lineItemType2" value="Products">&nbsp;<img id="searchIcon2" title="Products" src="themes/images/products.gif" style="cursor: pointer;" onclick="productPickList(this,'SalesOrder',2)" align="absmiddle"></td></tr><tr><td class="small"><input type="hidden" value="" id="subproduct_ids2" name="subproduct_ids2"><span id="subprod_names2" name="subprod_names2" style="color:#C0C0C0;font-style:italic;"> </span></td></tr><tr><td class="small" id="setComment2"><textarea id="comment2" name="comment2" class="small" style="width:70%;height:40px"></textarea><img src="themes/images/clear_field.gif" onclick="getObj('comment2').value=''" ;="" style="cursor:pointer;"></td></tr></tbody></table></td><td class="crmTableRow small"><span id="qtyInStock2">&nbsp;</span></td><td class="crmTableRow small"><input id="qty2" name="qty2" type="text" class="detailedViewTextBoxOn" style="width:50px" onfocus="this.className='detailedViewTextBoxOn'" onblur="settotalnoofrows(); calcTotal(); loadTaxes_Ajax(2);" onchange="setDiscount(this,2)" value=""><br><span id="stock_alert2"></span></td><td class="crmTableRow small"><table width="100%" cellpadding="0" cellspacing="0"><tbody><tr><td align="right"><input id="listPrice2" name="listPrice2" value="0.00" type="text" class="small " style="width:70px" onblur="calcTotal();setDiscount(this,2);callTaxCalc(2); calcTotal();">&nbsp;<img src="themes/images/pricebook.gif" onclick="priceBookPickList(this,2)"></td></tr><tr><td align="right" style="padding:5px;" nowrap="">		(-)&nbsp;<b><a href="javascript:doNothing();" onclick="displayCoords(this,'discount_div2','discount',2)">Chiết khấu</a> : </b><div class="discountUI" id="discount_div2"><input type="hidden" id="discount_type2" name="discount_type2" value=""><table width="100%" border="0" cellpadding="5" cellspacing="0" class="small"><tbody><tr><td id="discount_div_title2" nowrap="" align="left"></td><td align="right"><img src="themes/images/close.gif" border="0" onclick="fnHidePopDiv('discount_div2')" style="cursor:pointer;"></td></tr><tr><td align="left" class="lineOnTop"><input type="radio" name="discount2" checked="" onclick="setDiscount(this,2); callTaxCalc(2);calcTotal();">&nbsp; Khấu trừ ít nhất</td><td class="lineOnTop">&nbsp;</td></tr><tr><td align="left"><input type="radio" name="discount2" onclick="setDiscount(this,2); callTaxCalc(2);calcTotal();">&nbsp; % trong giá bán </td><td align="right"><input type="text" class="small" size="2" id="discount_percentage2" name="discount_percentage2" value="0" style="visibility:hidden" onblur="setDiscount(this,2); callTaxCalc(2);calcTotal();">&nbsp;%</td></tr><tr><td align="left" nowrap=""><input type="radio" name="discount2" onclick="setDiscount(this,2); callTaxCalc(2);calcTotal();">&nbsp; Quản lý giảm giá</td><td align="right"><input type="text" id="discount_amount2" name="discount_amount2" size="5" value="0" style="visibility:hidden" onblur="setDiscount(this,2); callTaxCalc(2);calcTotal();"></td></tr></tbody></table></div></td></tr><tr> <td align="right" style="padding:5px;" nowrap=""><b>Giá sau khi chiết khấu :</b></td></tr><tr id="individual_tax_row2" class="TaxShow"><td align="right" style="padding:5px;" nowrap="">(+)&nbsp;<b><a href="javascript:doNothing();" onclick="displayCoords(this,'tax_div2','tax',2)">Thuế </a> : </b><div class="discountUI" id="tax_div2">
		<table width="100%" border="0" cellpadding="5" cellspacing="0" class="small" id="tax_table2">
		   <tbody><tr>
			<td id="tax_div_title2" nowrap="" align="left"><b>Thiết lập Thuế cho : 0.00</b></td>
			<td>&nbsp;</td>
			<td align="right"><img src="themes/images/close.gif" border="0" onclick="fnHidePopDiv('tax_div2')" style="cursor:pointer;"></td>
		   </tr>
	   </tbody></table><div align="left" class="lineOnTop" width="100%">Sản phẩm này không tính thuế.</div><input type="hidden" id="hdnTaxTotal2" name="hdnTaxTotal2" value="0"></div></td></tr></tbody></table> </td><td class="crmTableRow small"><table width="100%" cellpadding="5" cellspacing="0"><tbody><tr><td id="productTotal2" align="right">0.00</td></tr><tr><td id="discountTotal2" align="right">0.00</td></tr><tr><td id="totalAfterDiscount2" align="right">0.00</td></tr><tr><td id="taxTotal2" align="right" style="display: block;">0</td></tr></tbody></table></td><td class="crmTableRow small" align="right" style="vertical-align: bottom;"><span id="netPrice2">0.00</span></td></tr></tbody></table>



<table width="100%" border="0" align="center" cellpadding="5" cellspacing="0" class="crmTable">
   <!-- Add Product Button -->
   <tbody><tr>
	<td colspan="3">
			<input type="button" name="Button" class="crmbutton small create" value="Thêm sản phẩm" onclick="fnAddProductRow('SalesOrder','themes/softed/images/');">
			<input type="button" name="Button" class="crmbutton small create" value="Thêm dịch vụ" onclick="fnAddServiceRow('SalesOrder','themes/softed/images/');">
	</td>
   </tr>




<!--
All these details are stored in the first element in the array with the index name as final_details 
so we will get that array, parse that array and fill the details
-->

   <!-- Product Details Final Total Discount, Tax and Shipping&Hanling  - Starts -->
   <tr valign="top">
	<td width="88%" colspan="2" class="crmTableRow small lineOnTop" align="right"><b>Cộng tiền hàng</b></td>
	<td width="12%" id="netTotal" class="crmTableRow small lineOnTop" align="right">6000000</td>
   </tr>

   <tr valign="top">
	<td class="crmTableRow small lineOnTop" width="60%" style="border-right:1px #dadada;">&nbsp;</td>
	<td class="crmTableRow small lineOnTop" align="right">
		(-)&nbsp;<b><a href="javascript:doNothing();" onclick="displayCoords(this,'discount_div_final','discount_final','1')">Chiết khấu</a>

		<!-- Popup Discount DIV -->
		<div class="discountUI" id="discount_div_final">
			<input type="hidden" id="discount_type_final" name="discount_type_final" value="zero">
			<table width="100%" border="0" cellpadding="5" cellspacing="0" class="small">
			   <tbody><tr>
				<td id="discount_div_title_final" nowrap="" align="left"></td>
				<td align="right"><img src="themes/images/close.gif" border="0" onclick="fnHidePopDiv('discount_div_final')" style="cursor:pointer;"></td>
			   </tr>
			   <tr>
				<td align="left" class="lineOnTop"><input type="radio" name="discount_final" checked="" onclick="setDiscount(this,'_final'); calcGroupTax(); calcTotal();">&nbsp; Khấu trừ ít nhất</td>
				<td class="lineOnTop">&nbsp;</td>
			   </tr>
			   <tr>
				<td align="left"><input type="radio" name="discount_final" onclick="setDiscount(this,'_final');  calcTotal(); calcGroupTax();">&nbsp; % trong giá bán</td>
				<td align="right"><input type="text" class="small" size="5" id="discount_percentage_final" name="discount_percentage_final" value="0" onblur="setDiscount(this,'_final'); calcGroupTax(); calcTotal();" style="visibility: hidden;">&nbsp;%</td>
			   </tr>
			   <tr>
				<td align="left" nowrap=""><input type="radio" name="discount_final" onclick="setDiscount(this,'_final');  calcTotal(); calcGroupTax();">&nbsp;Quản lý giảm giá</td>
				<td align="right"><input type="text" id="discount_amount_final" name="discount_amount_final" size="5" value="0" onblur="setDiscount(this,'_final');  calcGroupTax(); calcTotal();" style="visibility: hidden;"></td>
			   </tr>
			</tbody></table>
		</div>
		<!-- End Div -->

	</b></td>
	<td id="discountTotal_final" class="crmTableRow small lineOnTop" align="right">0</td>
   </tr>


   <!-- Group Tax - starts -->
   <tr id="group_tax_row" valign="top" class="TaxHide">
	<td class="crmTableRow small lineOnTop" style="border-right:1px #dadada;">&nbsp;</td>
	<td class="crmTableRow small lineOnTop" align="right">
		(+)&nbsp;<b><a href="javascript:doNothing();" onclick="displayCoords(this,'group_tax_div','group_tax_div_title','');  calcTotal(); calcGroupTax();">Thuế</a></b>

				<!-- Pop Div For Group TAX -->
				<div class="discountUI" id="group_tax_div">
					<table width="100%" border="0" cellpadding="5" cellspacing="0" class="small">
					   <tbody><tr>
						<td id="group_tax_div_title" colspan="2" nowrap="" align="left"></td>
						<td align="right"><img src="themes/images/close.gif" border="0" onclick="fnHidePopDiv('group_tax_div')" style="cursor:pointer;"></td>
					   </tr>

					
					   <tr>
						<td align="left" class="lineOnTop">
							<input type="text" class="small" size="5" name="tax1_group_percentage" id="group_tax_percentage1" value="10.000" onblur="calcTotal()">&nbsp;%
						</td>
						<td align="center" class="lineOnTop">VAT</td>
						<td align="right" class="lineOnTop">
							<input type="text" class="small" size="6" name="tax1_group_amount" id="group_tax_amount1" style="cursor:pointer;" value="0.00" readonly="">
						</td>
					   </tr>

					
					   <tr>
						<td align="left" class="lineOnTop">
							<input type="text" class="small" size="5" name="tax2_group_percentage" id="group_tax_percentage2" value="10.000" onblur="calcTotal()">&nbsp;%
						</td>
						<td align="center" class="lineOnTop">Sales</td>
						<td align="right" class="lineOnTop">
							<input type="text" class="small" size="6" name="tax2_group_amount" id="group_tax_amount2" style="cursor:pointer;" value="0.00" readonly="">
						</td>
					   </tr>

					
					   <tr>
						<td align="left" class="lineOnTop">
							<input type="text" class="small" size="5" name="tax3_group_percentage" id="group_tax_percentage3" value="12.500" onblur="calcTotal()">&nbsp;%
						</td>
						<td align="center" class="lineOnTop">Service</td>
						<td align="right" class="lineOnTop">
							<input type="text" class="small" size="6" name="tax3_group_amount" id="group_tax_amount3" style="cursor:pointer;" value="0.00" readonly="">
						</td>
					   </tr>

					
					   <tr>
						<td align="left" class="lineOnTop">
							<input type="text" class="small" size="5" name="tax4_group_percentage" id="group_tax_percentage4" value="0.000" onblur="calcTotal()">&nbsp;%
						</td>
						<td align="center" class="lineOnTop">NoVAT</td>
						<td align="right" class="lineOnTop">
							<input type="text" class="small" size="6" name="tax4_group_amount" id="group_tax_amount4" style="cursor:pointer;" value="0.00" readonly="">
						</td>
					   </tr>

										<input type="hidden" id="group_tax_count" value="4">

					</tbody></table>

				</div>
				<!-- End Popup Div Group Tax -->


	</td>
	<td id="tax_final" class="crmTableRow small lineOnTop" align="right">1950000.00</td>
   </tr>
   <!-- Group Tax - ends -->



   <tr valign="top">
	<td class="crmTableRow small" style="border-right:1px #dadada;">&nbsp;</td>
	<td class="crmTableRow small" align="right">
		(+)&nbsp;<b>Chi phí vận chuyển và đóng gói </b>
	</td>
	<td class="crmTableRow small" align="right">
		<input id="shipping_handling_charge" name="shipping_handling_charge" type="text" class="small" style="width:40px" align="right" value="0.000" onblur="calcSHTax();">
	</td>
   </tr>


   <tr valign="top">
	<td class="crmTableRow small" style="border-right:1px #dadada;">&nbsp;</td>
	<td class="crmTableRow small" align="right">
		(+)&nbsp;<b><a href="javascript:doNothing();" onclick="displayCoords(this,'shipping_handling_div','sh_tax_div_title',''); calcSHTax();">Thuế vận chuyển và đóng gói </a></b>

				<!-- Pop Div For Shipping and Handlin TAX -->
				<div class="discountUI" id="shipping_handling_div">
					<table width="100%" border="0" cellpadding="5" cellspacing="0" class="small">
					   <tbody><tr>
						<td id="sh_tax_div_title" colspan="2" nowrap="" align="left"></td>
						<td align="right"><img src="themes/images/close.gif" border="0" onclick="fnHidePopDiv('shipping_handling_div')" style="cursor:pointer;"></td>
					   </tr>

					
					   <tr>
						<td align="left" class="lineOnTop">
							<input type="text" class="small" size="3" name="shtax1_sh_percent" id="sh_tax_percentage1" value="4.500" onblur="calcSHTax()">&nbsp;%
						</td>
						<td align="center" class="lineOnTop">VAT</td>
						<td align="right" class="lineOnTop">
							<input type="text" class="small" size="4" name="shtax1_sh_amount" id="sh_tax_amount1" style="cursor:pointer;" value="0.00" readonly="">
						</td>
					   </tr>

					
					   <tr>
						<td align="left" class="lineOnTop">
							<input type="text" class="small" size="3" name="shtax2_sh_percent" id="sh_tax_percentage2" value="10.000" onblur="calcSHTax()">&nbsp;%
						</td>
						<td align="center" class="lineOnTop">Sales</td>
						<td align="right" class="lineOnTop">
							<input type="text" class="small" size="4" name="shtax2_sh_amount" id="sh_tax_amount2" style="cursor:pointer;" value="0.00" readonly="">
						</td>
					   </tr>

					
					   <tr>
						<td align="left" class="lineOnTop">
							<input type="text" class="small" size="3" name="shtax3_sh_percent" id="sh_tax_percentage3" value="12.500" onblur="calcSHTax()">&nbsp;%
						</td>
						<td align="center" class="lineOnTop">Service</td>
						<td align="right" class="lineOnTop">
							<input type="text" class="small" size="4" name="shtax3_sh_amount" id="sh_tax_amount3" style="cursor:pointer;" value="0.00" readonly="">
						</td>
					   </tr>

										<input type="hidden" id="sh_tax_count" value="3">

					</tbody></table>
				</div>
				<!-- End Popup Div for Shipping and Handling TAX -->

	</td>
	<td id="shipping_handling_tax" class="crmTableRow small" align="right">0.00</td>
   </tr>


   <tr valign="top">
	<td class="crmTableRow small" style="border-right:1px #dadada;">&nbsp;</td>
	<td class="crmTableRow small" align="right">
		Điều chỉnh thêm bớt
		<select id="adjustmentType" name="adjustmentType" class="small" onchange="calcTotal();">
			<option value="+">Thêm</option>
			<option value="-">Bớt</option>
		</select>
	</td>
	<td class="crmTableRow small" align="right">
		<input id="adjustment" name="adjustment" type="text" class="small" style="width:40px" align="right" value="0.000" onblur="calcTotal();">
	</td>
   </tr>


   <tr valign="top">
	<td class="crmTableRow big lineOnTop" style="border-right:1px #dadada;">&nbsp;</td>
	<td class="crmTableRow big lineOnTop" align="right"><b>Tổng tiền thanh toán</b></td>
	<td id="grandTotal" name="grandTotal" class="crmTableRow big lineOnTop" align="right">6000000.00</td>
   </tr>
</tbody></table>

		<input type="hidden" name="totalProductCount" id="totalProductCount" value="2">
		<input type="hidden" name="subtotal" id="subtotal" value="6000000">
		<input type="hidden" name="total" id="total" value="6000000.00">
</td></tr>
<!-- Upto this Added to display the Product Details -->

	<!-- This is added to call the function calcCurrentTax which will calculate the tax amount from percentage -->
			

<!-- Added to calculate the tax and total values when page loads -->
<script>decideTaxDiv();</script>
<script>calcTotal();</script>
<script>calcSHTax();</script>
<!-- This above div is added to display the tax informations --> 

										
									   
									   
									   <tr>
										<td colspan="4" style="padding:5px">
											<div align="center">
												<input title="Lưu [Alt+S]" accesskey="S" class="crmbutton small save" onclick="this.form.action.value='Save';  displaydeleted();return validateInventory('SalesOrder')" type="submit" name="button" value="  Lưu  " style="width:70px">
												<input title="Hủy bỏ [Alt+X]" accesskey="X" class="crmbutton small cancel" onclick="window.history.back()" type="button" name="button" value="  Hủy bỏ  " style="width:70px">
											</div>
										</td>
									   </tr>
									</tbody></table>
								</td>
							   </tr>
							</tbody></table>
						</td>
						<!-- Inventory Actions - ends -->
					   </tr>
					</tbody></table>
				</td>
			   </tr>
			</tbody></table>
		</form></div>
	</td>
   </tr>
</tbody></table>
<input name="search_url" id="search_url" type="hidden" value="">


<!-- This div is added to get the left and top values to show the tax details-->
<div id="tax_container" style="display:none; position:absolute; z-index:1px;"></div>

<script>	
        var fieldname = new Array('salesorder_no','subject','potential_id','customerno','quote_id','vtiger_purchaseorder','contact_id','duedate','carrier','pending','sostatus','txtAdjustment','salescommission','exciseduty','hdnGrandTotal','hdnSubTotal','hdnTaxType','hdnDiscountPercent','hdnDiscountAmount','hdnS_H_Amount','account_id','assigned_user_id','currency_id','conversion_rate','bill_street','ship_street','bill_city','ship_city','bill_state','ship_state','bill_code','ship_code','bill_country','ship_country','bill_pobox','ship_pobox','description','terms_conditions','enable_recurring','recurring_frequency','start_period','end_period','payment_duration','invoicestatus')

        var fieldlabel = new Array('Mã Đặt hàng','Tiêu đề','Tên Cơ hội','Khách hàng thứ','Tên Báo giá','Nhập hàng','Tên Liên hệ','Ngày liên quan','Công ty vận chuyển','Lý do chưa thực hiện','Tình trạng','Điều chỉnh','Tiền hoa hồng','Thuế hàng hóa','Tổng cộng','Cộng tiền hàng','Kiểu thuế','Phần trăm giảm trừ','Số tiền giảm trừ','S&amp;H Amount','Tên Khách hàng','Gán cho','Currency','Conversion Rate','Địa chỉ thanh toán','Địa chỉ vận chuyển','Thanh toán tại thành phố','Vận chuyển tới thành phố','Thanh toán tại Tỉnh/Bang','Vận chuyển tới Tỉnh/Bang','Mã vùng thanh toán','Mã vùng vận chuyển','Thanh toán tại quốc gia','Vận chuyển tới quốc gia','Hộp thư thanh toán','Hộp thư vận chuyển','Mô tả','Terms &amp; Conditions','Bật chức năng định kỳ','Mức độ thường xuyên','Thời gian bắt đầu','Thời gian kết thúc','Thời gian thanh toán','Trạng thái hóa đơn')

        var fielddatatype = new Array('V~O','V~M','I~O','V~O','I~O','V~O','I~O','D~O','V~O','V~O','V~M','NN~O','N~O','N~O','N~O','N~O','V~O','N~O','N~O','N~O','I~M','V~M','I~O','N~O','V~M','V~M','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','C~O','V~O','D~O','D~O~OTH~G~start_period~Start Period','V~O','V~M')

	var product_labelarr = {CLEAR_COMMENT:'Xóa hết ý kiến',
				DISCOUNT:'Chiết khấu',
				TOTAL_AFTER_DISCOUNT:'Giá sau khi chiết khấu',
				TAX:'Thuế',
				ZERO_DISCOUNT:'Khấu trừ ít nhất',
				PERCENT_OF_PRICE:'trong giá bán',
				DIRECT_PRICE_REDUCTION:'Quản lý giảm giá'};

	var ProductImages=new Array();
	var count=0;
	function delRowEmt(imagename)
	{
		ProductImages[count++]=imagename;
		multi_selector.current_element.disabled = false;
		multi_selector.count--;
	}
	function displaydeleted()
	{
		if(ProductImages.length > 0)
			document.EditView.del_file_list.value=ProductImages.join('###');
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
					},50000);</script><!--end body panes-->





</body></html>
