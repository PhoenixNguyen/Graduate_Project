<%-- 
    Document   : product-edit
    Created on : Apr 10, 2014, 12:46:21 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
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
			
																																																						   					
	   												   							
	   									
													<td class="level2SelTab" nowrap=""><a href="index.php?module=Products&amp;action=index&amp;parenttab=Inventory">Sản phẩm</a></td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=Vendors&amp;action=index&amp;parenttab=Inventory">Nhà cung cấp</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=PriceBooks&amp;action=index&amp;parenttab=Inventory">Bảng giá</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=PurchaseOrder&amp;action=index&amp;parenttab=Inventory">Nhập hàng</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=SalesOrder&amp;action=index&amp;parenttab=Inventory">Đặt hàng</a> </td>
							
												   					
	   												   							
	   									
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
<script type="text/javascript" src="include/js/clock.js"></script><div id="theDate" class="datestyle" style="color: rgb(0, 0, 0); top: 142px; left: 0px;">April 10, 2014 12:46 AM</div><div id="amOrPm" class="ampmstyle" style="color: rgb(153, 153, 153); top: 87px; left: 52px;">AM</div><div id="theFace0" class="facestyle" style="color: rgb(0, 0, 0); top: 81px; left: 96px;">3</div><div id="theFace1" class="facestyle" style="color: rgb(0, 0, 0); top: 102px; left: 90.37306695894642px;">4</div><div id="theFace2" class="facestyle" style="color: rgb(0, 0, 0); top: 117.37306695894642px; left: 75px;">5</div><div id="theFace3" class="facestyle" style="color: rgb(0, 0, 0); top: 123px; left: 54px;">6</div><div id="theFace4" class="facestyle" style="color: rgb(0, 0, 0); top: 117.37306695894644px; left: 33.000000000000014px;">7</div><div id="theFace5" class="facestyle" style="color: rgb(0, 0, 0); top: 102px; left: 17.62693304105357px;">8</div><div id="theFace6" class="facestyle" style="color: rgb(0, 0, 0); top: 81px; left: 12px;">9</div><div id="theFace7" class="facestyle" style="color: rgb(0, 0, 0); top: 59.999999999999986px; left: 17.626933041053576px;">10</div><div id="theFace8" class="facestyle" style="color: rgb(0, 0, 0); top: 44.62693304105359px; left: 32.99999999999997px;">11</div><div id="theFace9" class="facestyle" style="color: rgb(0, 0, 0); top: 39px; left: 53.99999999999999px;">12</div><div id="theFace10" class="facestyle" style="color: rgb(0, 0, 0); top: 44.626933041053576px; left: 75px;">1</div><div id="theFace11" class="facestyle" style="color: rgb(0, 0, 0); top: 59.99999999999997px; left: 90.37306695894641px;">2</div><div id="H0" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 87px; left: 60px;"></div><div id="H1" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 80.55646602583292px; left: 62.735117899424914px;"></div><div id="H2" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 74.11293205166584px; left: 65.47023579884983px;"></div><div id="H3" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 67.66939807749876px; left: 68.20535369827475px;"></div><div id="M0" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 87px; left: 60px;"></div><div id="M1" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 86.26830075712643px; left: 53.038346732422085px;"></div><div id="M2" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 85.53660151425285px; left: 46.076693464844176px;"></div><div id="M3" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 84.80490227137929px; left: 39.11504019726626px;"></div><div id="M4" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 84.07320302850572px; left: 32.15338692968835px;"></div><div id="S0" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 87px; left: 60px;"></div><div id="S1" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 81.79798622165823px; left: 64.68391424451201px;"></div><div id="S2" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 76.59597244331648px; left: 69.36782848902402px;"></div><div id="S3" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 71.39395866497472px; left: 74.05174273353603px;"></div><div id="S4" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 66.19194488663297px; left: 78.73565697804803px;"></div><div id="S5" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 60.9899311082912px; left: 83.41957122256004px;"></div>

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
                                postBody: 'module=Products&action=Tickerdetail&tickersymbol='+Ticker,
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

		<script type="text/javascript" src="modules/Products/Products.js"></script><script type="text/javascript" src="modules/Products/multifile.js"></script><script type="text/javascript" src="include/js/Merge.js"></script>

<table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
<tbody><tr><td style="height:2px"></td></tr>
<tr>
				<td style="padding-left:10px;padding-right:50px" class="moduleName" nowrap="">Tồn kho &gt; <a class="hdrLink" href="index.php?action=ListView&amp;module=Products&amp;parenttab=Inventory">Sản phẩm</a></td>
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
								        			                        		       	<td style="padding-right:0px;padding-left:10px;"><a href="index.php?module=Products&amp;action=EditView&amp;return_action=DetailView&amp;parenttab=Inventory"><img src="themes/softed/images/btnL3Add.gif" alt="Tạo Sản phẩm..." title="Tạo Sản phẩm..." border="0"></a></td>
			                       															
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

			
					   			
					<td style="padding-right:0px;padding-left:10px;"><a href="index.php?module=Products&amp;action=Import&amp;step=1&amp;return_module=Products&amp;return_action=index&amp;parenttab=Inventory"><img src="themes/softed/images/tbarImport.gif" alt="Nhập dữ liệu Sản phẩm" title="Nhập dữ liệu Sản phẩm" border="0"></a></td>	
					
								<td style="padding-right:10px"><a name="export_link" href="javascript:void(0)" onclick="return selectedRecords('Products','Inventory')"><img src="themes/softed/images/tbarExport.gif" alt="Xuất dữ liệu Sản phẩm" title="Xuất dữ liệu Sản phẩm" border="0"></a></td>			
			
										 
									<td style="padding-right:10px"><img src="themes/images/FindDuplicates-Faded.gif" border="0"></td>	
										</tr>
			</tbody></table>	
		</td><td style="width:20px;">&nbsp;</td>
		<td class="small">
			<!-- All Menu -->
				<table border="0" cellspacing="0" cellpadding="5">
				<tbody><tr>
					<td style="padding-left:10px;"><a href="javascript:;" onmouseout="fninvsh('allMenu');" onclick="fnvshobj(this,'allMenu')"><img src="themes/softed/images/btnL3AllMenu.gif" alt="Mở tất cả Menu..." title="Mở tất cả Menu..." border="0"></a></td>
					        		<td style="padding-left:10px;"><a href="index.php?module=Settings&amp;action=ModuleManager&amp;module_settings=true&amp;formodule=Products&amp;parenttab=Settings"><img src="themes/softed/images/settingsBox.png" alt="Sản phẩm Thiết lập" title="Sản phẩm Thiết lập" border="0"></a></td>
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
		
						   			  					
			   
				<span class="lvtHeaderText"><font color="purple">[ PRO11 ] </font>Thiết kế web - Sửa  Thông tin</span> <br>
				Cập nhật 1083 ngày trước (22 Tháng 4 2011)	 
						
			<hr noshade="" size="1">
			<br> 
		
			
	
	<form name="EditView" method="POST" enctype="multipart/form-data" action="index.php" onsubmit="VtigerJS_DialogBox.block();">
	<input type="hidden" name="activity_mode" value="">
	<input type="HIDDEN" name="MAX_FILE_SIZE" value="800000">

<input type="hidden" name="pagenumber" value="">
<input type="hidden" name="module" value="Products">
<input type="hidden" name="record" value="142">
<input type="hidden" name="mode" value="edit">
<input type="hidden" name="action">
<input type="hidden" name="parenttab" value="Inventory">
<input type="hidden" name="return_module" value="Products">
<input type="hidden" name="return_id" value="">
<input type="hidden" name="return_action" value="index">
<input type="hidden" name="return_viewname" value="62">
						<table border="0" cellspacing="0" cellpadding="0" width="95%" align="center">
			   <tbody><tr>
				<td>
					<table border="0" cellspacing="0" cellpadding="3" width="100%" class="small">
					   <tbody><tr>
						<td class="dvtTabCache" style="width:10px" nowrap="">&nbsp;</td>
                                        	<td class="dvtSelectedCell" align="center" nowrap=""> Thông tin</td>
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
											<input title="Lưu [Alt+S]" accesskey="S" class="crmbutton small save" onclick="this.form.action.value='Save'; displaydeleted(); return validateInventory('Products')" type="submit" name="button" value="  Lưu  " style="width:70px">
											<input title="Hủy bỏ [Alt+X]" accesskey="X" class="crmbutton small cancel" onclick="window.history.back()" type="button" name="button" value="Hủy bỏ  " style="width:70px">
										   </div>
										</td>
									   </tr>

									   <!-- included to handle the edit fields based on ui types -->
									   									      <tr>
																				<td colspan="4" class="detailedViewHeader">
											<b>Thông tin sản phẩm</b>
																				</td>
									      </tr>

										<!-- Handle the ui types display -->
										

<!-- Added this file to display the fields in Create Entity page based on ui types  -->
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red">*</font>Tên sản phẩm 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
				<input type="text" name="productname" tabindex="" value="Thiết kế web" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'">
			</td>
																									 
	 	
							
										
				<!-- Non Editable field, only configured value will be loaded -->
				<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Mã sản phẩm </td>
                                <td width="30%" align="left" class="dvtCellInfo"><input readonly="" type="text" tabindex="" name="product_no" id="product_no" value="PRO11" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Có bán sản phẩm 			</td>

												<td width="30%" align="left" class="dvtCellInfo">
						<input name="discontinued" type="checkbox" tabindex="" checked="">
					</td>
																																 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Phần Số </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="productcode" id="productcode" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Ngày bắt đầu bán 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
																		
				<input name="sales_start_date" tabindex="" id="jscal_field_sales_start_date" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="23-07-2010">
				<img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_sales_start_date">
				
								
												
																		
									<br><font size="1"><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
				
				<script type="text/javascript" id="massedit_calendar_sales_start_date">
					Calendar.setup ({
						inputField : "jscal_field_sales_start_date", ifFormat : "%d-%m-%Y", showsTime : false, button : "jscal_trigger_sales_start_date", singleClick : true, step : 1
					})
				</script>


			</td>

																									 
	 	
							
										
				 <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
			<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>
				Nhà sản xuất 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
							   		<select name="manufacturer" tabindex="" class="small">
			   															<option value="--None--" selected="">
                                                --Chưa chọn--
                                        </option>
																			<option value="AltvetPet Inc.">
                                                Tập đoàn AltvetPet.
                                        </option>
																			<option value="LexPon Inc.">
                                                Tập đoàn LexPon.
                                        </option>
																			<option value="MetBeat Corp">
                                                Công ty Cổ phần MetBeat
                                        </option>
												   </select>
			</td>
			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
				 <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
			<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>
				Loại sản phẩm 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
							   		<select name="productcategory" tabindex="" class="small">
			   															<option value="--None--">
                                                --Chưa chọn--
                                        </option>
																			<option value="Hardware">
                                                Phần cứng
                                        </option>
																			<option value="Software" selected="">
                                                Phần mềm
                                        </option>
																			<option value="CRM Applications">
                                                Ứng dụng CRM
                                        </option>
												   </select>
			</td>
																									 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Ngày bắt đầu hỗ trợ 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
																		
				<input name="start_date" tabindex="" id="jscal_field_start_date" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="">
				<img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_start_date">
				
								
												
																		
									<br><font size="1"><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
				
				<script type="text/javascript" id="massedit_calendar_start_date">
					Calendar.setup ({
						inputField : "jscal_field_start_date", ifFormat : "%d-%m-%Y", showsTime : false, button : "jscal_trigger_start_date", singleClick : true, step : 1
					})
				</script>


			</td>

			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Ngày kết thúc bán 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
																		
				<input name="sales_end_date" tabindex="" id="jscal_field_sales_end_date" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="">
				<img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_sales_end_date">
				
								
												
																		
									<br><font size="1"><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
				
				<script type="text/javascript" id="massedit_calendar_sales_end_date">
					Calendar.setup ({
						inputField : "jscal_field_sales_end_date", ifFormat : "%d-%m-%Y", showsTime : false, button : "jscal_trigger_sales_end_date", singleClick : true, step : 1
					})
				</script>


			</td>

																									 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Ngày hết hạn hỗ trợ 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
																		
				<input name="expiry_date" tabindex="" id="jscal_field_expiry_date" type="text" style="border:1px solid #bababa;" size="11" maxlength="10" value="">
				<img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_expiry_date">
				
								
												
																		
									<br><font size="1"><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
				
				<script type="text/javascript" id="massedit_calendar_expiry_date">
					Calendar.setup ({
						inputField : "jscal_field_expiry_date", ifFormat : "%d-%m-%Y", showsTime : false, button : "jscal_trigger_expiry_date", singleClick : true, step : 1
					})
				</script>


			</td>

			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
												<font color="red"></font>Tên nhà cung cấp 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
				<input name="vendor_name" readonly="" type="text" style="border:1px solid #bababa;" value=""><input name="vendor_id" type="hidden" value="0">&nbsp;<img src="themes/softed/images/select.gif" alt="Chọn" title="Chọn" language="javascript" onclick="return window.open(&quot;index.php?module=Vendors&amp;action=Popup&amp;html=Popup_picker&amp;popuptype=specific&amp;form=EditView&amp;fromlink=&quot;,&quot;test&quot;,&quot;width=640,height=602,resizable=0,scrollbars=0&quot;);" align="absmiddle" style="cursor:hand;cursor:pointer">
				<input type="image" tabindex="" src="themes/images/clear_field.gif" alt="Làm sạch" title="Làm sạch" language="javascript" onclick="this.form.vendor_id.value='';this.form.vendor_name.value='';return false;" align="absmiddle" style="cursor:hand;cursor:pointer">
			</td>
																									 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Website 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
				&nbsp;&nbsp;http://
			<input style="width:74%;" class="detailedViewTextBox" type="text" tabindex="" name="website" size="27" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" onkeyup="validateUrl('website');" value="">
			</td>

			   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Số hiệu nhà cung cấp </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="vendor_part_no" id="vendor_part_no" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Số hiệu nhà sản xuất </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="mfr_part_no" id="mfr_part_no" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Ngăn hàng hóa </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="productsheet" id="productsheet" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Số hiệu </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="serial_no" id="serial_no" value="" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
				 <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
			<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>
				Tài khoản Kế toán 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
							   		<select name="glacct" tabindex="" class="small">
			   															<option value="300-Sales-Software" selected="">
                                                300-Kinh doanh phần mềm
                                        </option>
																			<option value="301-Sales-Hardware">
                                                301-Kinh doanh phần cứng
                                        </option>
																			<option value="302-Rental-Income">
                                                302-Cho thuê
                                        </option>
																			<option value="303-Interest-Income">
                                                303-Lợi tức
                                        </option>
																			<option value="304-Sales-Software-Support">
                                                304-Hỗ trợ kinh doanh phần mềm
                                        </option>
																			<option value="305-Sales Other">
                                                305-Kinh doanh khác
                                        </option>
																			<option value="306-Internet Sales">
                                                306-Kinh doanh qua mạng
                                        </option>
																			<option value="307-Service-Hardware Labor">
                                                307-Gia công phần cứng
                                        </option>
																			<option value="308-Sales-Books">
                                                308-Bán sách
                                        </option>
												   </select>
			</td>
																									 
	 	
							
										
					   </tr>

									      <tr style="height:25px"><td>&nbsp;</td></tr>

									   									      <tr>
																				<td colspan="4" class="detailedViewHeader">
											<b>Thông tin Giá cả</b>
																				</td>
									      </tr>

										<!-- Handle the ui types display -->
										

<!-- Added this file to display the fields in Create Entity page based on ui types  -->
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Giá đơn vị: (₫) 			</td>
			<td width="30%" align="left" class="dvtCellInfo">				
									<span id="multiple_currencies">
						<input name="unit_price" id="unit_price" tabindex="" type="text" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'; updateUnitPrice('unit_price', 'curname1');" value="0.00" style="width:60%;">
											&nbsp;<a href="javascript:void(0);" onclick="updateUnitPrice('unit_price', 'curname1'); toggleShowHide('currency_class','multiple_currencies');">thêm tiền tệ »</a>
										</span>
										<div id="currency_class" class="multiCurrencyEditUI" width="350">
						<input type="hidden" name="base_currency" id="base_currency" value="curname1">
						<input type="hidden" name="base_conversion_rate" id="base_currency" value="curname1">
						<table width="100%" height="100%" class="small" cellpadding="5">
						<tbody><tr class="detailedViewHeader">
							<th colspan="4">
								<b>Giá sản phẩm</b>
							</th>
							<th align="right">
								<img border="0" style="cursor: pointer;" onclick="toggleShowHide('multiple_currencies','currency_class');" src="themes/images/close.gif">
							</th>
						</tr>
						<tr class="detailedViewHeader">
							<th>Tiền tệ</th>
							<th>Giá</th>
							<th>Chuyển đổi giá</th>
							<th>Phục hồi giá</th>							
							<th>Tiền tệ cơ bản</th>
						</tr>
													<tr>
																																										
																																	
																																	
								<td align="right" class="dvtCellLabel">
									Vietnam, Dong (₫)
									<input type="checkbox" name="cur_1_check" id="cur_1_check" class="small" onclick="fnenableDisable(this,'1'); updateCurrencyValue(this,'curname1','curname1','1');" checked="">
								</td>
								<td class="dvtCellInfo" align="left">
									<input type="text" size="10" class="small" name="curname1" id="curname1" value="0.00" onblur="updateUnitPrice('curname1', 'unit_price'); fnpriceValidation('curname1');">
								</td>
								<td class="dvtCellInfo" align="left">
									<input disabled="true" type="text" size="10" class="small" name="cur_conv_rate1" value="1">
								</td>
								<td class="dvtCellInfo" align="center">
									<input type="button" class="crmbutton small edit" id="cur_reset1" onclick="updateCurrencyValue(this,'curname1','curname1','1');" value="Phục hồi">
								</td>
								<td class="dvtCellInfo">
									<input type="radio" class="detailedViewTextBox" id="base_currency1" name="base_currency_input" value="curname1" checked="" onchange="updateBaseCurrencyValue()">
								</td>
							</tr>
												</tbody></table>
					</div>
												</td>

																									 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Tiền hoa hồng (%) </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="commissionrate" id="commissionrate" value="0.000" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
				 <!-- Handle the Tax in Inventory -->
																									<td align="right" class="dvtCellLabel" style="border:0px solid red;">
					VAT (%)
					<input type="checkbox" name="tax1_check" id="tax1_check" class="small" onclick="fnshowHide(this,'tax1')">
				</td>
				<td class="dvtCellInfo" align="left" style="border:0px solid red;">
					<input type="text" class="detailedViewTextBox" name="tax1" id="tax1" value="10.000" style="visibility:hidden;" onblur="fntaxValidation('tax1')">
				</td>
			   </tr>
																									<tr><td align="right" class="dvtCellLabel" style="border:0px solid red;">
					Sales (%)
					<input type="checkbox" name="tax2_check" id="tax2_check" class="small" onclick="fnshowHide(this,'tax2')">
				</td>
				<td class="dvtCellInfo" align="left" style="border:0px solid red;">
					<input type="text" class="detailedViewTextBox" name="tax2" id="tax2" value="10.000" style="visibility:hidden;" onblur="fntaxValidation('tax2')">
				</td>
			   </tr>
																									<tr><td align="right" class="dvtCellLabel" style="border:0px solid red;">
					Service (%)
					<input type="checkbox" name="tax3_check" id="tax3_check" class="small" onclick="fnshowHide(this,'tax3')">
				</td>
				<td class="dvtCellInfo" align="left" style="border:0px solid red;">
					<input type="text" class="detailedViewTextBox" name="tax3" id="tax3" value="12.500" style="visibility:hidden;" onblur="fntaxValidation('tax3')">
				</td>
			   </tr>
																									<tr><td align="right" class="dvtCellLabel" style="border:0px solid red;">
					NoVAT (%)
					<input type="checkbox" name="tax4_check" id="tax4_check" class="small" onclick="fnshowHide(this,'tax4')">
				</td>
				<td class="dvtCellInfo" align="left" style="border:0px solid red;">
					<input type="text" class="detailedViewTextBox" name="tax4" id="tax4" value="0.000" style="visibility:hidden;" onblur="fntaxValidation('tax4')">
				</td>
			   </tr>
			
			<tr><td colspan="2" class="dvtCellInfo">&nbsp;</td>
																									 
	 	
							
										
					   </tr>

									      <tr style="height:25px"><td>&nbsp;</td></tr>

									   									      <tr>
																				<td colspan="4" class="detailedViewHeader">
											<b>Thông tin tồn kho</b>
																				</td>
									      </tr>

										<!-- Handle the ui types display -->
										

<!-- Added this file to display the fields in Create Entity page based on ui types  -->
			<tr style="height:25px">
																								 
	 	
							
										
				 <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
			<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>
				Đơn vị sử dụng 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
							   		<select name="usageunit" tabindex="" class="small">
			   															<option value="Box">
                                                Hộp
                                        </option>
																			<option value="Carton">
                                                Hộp bìa cứng
                                        </option>
																			<option value="Dozen">
                                                Dazon
                                        </option>
																			<option value="Each">
                                                Mỗi
                                        </option>
																			<option value="Hours">
                                                Giờ
                                        </option>
																			<option value="Impressions">
                                                Bản in
                                        </option>
																			<option value="Lb">
                                                Pound
                                        </option>
																			<option value="M">
                                                Mét
                                        </option>
																			<option value="Pack">
                                                Gói
                                        </option>
																			<option value="Pages">
                                                Trang
                                        </option>
																			<option value="Pieces">
                                                Phần
                                        </option>
																			<option value="Quantity" selected="">
                                                Số lượng
                                        </option>
																			<option value="Reams">
                                                Ram giấy
                                        </option>
																			<option value="Sheet">
                                                Tấm
                                        </option>
																			<option value="Spiral Binder">
                                                Spiral Binder
                                        </option>
																			<option value="Sq Ft">
                                                Sq Ft
                                        </option>
												   </select>
			</td>
																									 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Số lượng/Đơn vị </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="qty_per_unit" id="qty_per_unit" value="0.00" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Tồn kho </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="qtyinstock" id="qtyinstock" value="7.000" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
																												 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Mức tồn kho chuẩn </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="reorderlevel" id="reorderlevel" value="0" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
						   </tr>
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Người quản lý 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
									<select name="assigned_user_id" tabindex="" class="small">
				
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
			</td>
																									 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right"><font color="red"></font>Số lượng yêu cầu </td>

							<td width="30%" align="left" class="dvtCellInfo"><input type="text" tabindex="" name="qtyindemand" id="qtyindemand" value="0" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'"></td>
						   </tr>

									      <tr style="height:25px"><td>&nbsp;</td></tr>

									   									      <tr>
																				<td colspan="4" class="detailedViewHeader">
											<b>Kho Hàng</b>
																				</td>
									      </tr>

										<!-- Handle the ui types display -->
										

<!-- Added this file to display the fields in Create Entity page based on ui types  -->
			<tr style="height:25px">
																								 
	 	
							
										
				 <!-- uitype 111 added for noneditable existing picklist values - ahmed -->
			<td width="20%" class="dvtCellLabel" align="right">
				<font color="red">*</font>
				Tên kho 			</td>
			<td width="30%" align="left" class="dvtCellInfo">
							   		<select name="cf_628" tabindex="" class="small">
			   															<option value="Kho Mien Bac - KMB">
                                                Kho Mien Bac - KMB
                                        </option>
																			<option value="Kho Mien Nam - KMN">
                                                Kho Mien Nam - KMN
                                        </option>
												   </select>
			</td>
																									 
	 	
							
										
					   </tr>

									      <tr style="height:25px"><td>&nbsp;</td></tr>

									   									      <tr>
																				<td colspan="4" class="detailedViewHeader">
											<b>Thông tin hình ảnh sản phẩm</b>
																				</td>
									      </tr>

										<!-- Handle the ui types display -->
										

<!-- Added this file to display the fields in Create Entity page based on ui types  -->
			<tr style="height:25px">
																								 
	 	
							
										
							<td width="20%" class="dvtCellLabel" align="right">
				<font color="red"></font>Hình ảnh sản phẩm
							</td>
			<td colspan="3" width="30%" align="left" class="dvtCellInfo">
									<input name="del_file_list" type="hidden" value="">
					<div id="files_list" style="border: 1px solid grey; width: 500px; padding: 5px; background: rgb(255, 255, 255) none repeat scroll 0%; -moz-background-clip: initial; -moz-background-origin: initial; -moz-background-inline-policy: initial; font-size: x-small">Số lượng Tập tin tối đa là 6
						<input id="my_file_element" type="file" name="file_0" tabindex="" onchange="validateFilename(this)">
						<!--input type="hidden" name="file_1_hidden" value=""/-->
																	</div>

					<script>
												var multi_selector = new MultiSelector( document.getElementById( 'files_list' ), 6 );
						multi_selector.count = 0
												multi_selector.addElement( document.getElementById( 'my_file_element' ) );
					</script>
							</td>

																									 
	 	
							
										
					   </tr>

									      <tr style="height:25px"><td>&nbsp;</td></tr>

									   									      <tr>
																				<td colspan="4" class="detailedViewHeader">
											<b>Thông tin chi tiết</b>
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
										<td colspan="4" style="padding:5px">
											<div align="center">
												<input title="Lưu [Alt+S]" accesskey="S" class="crmbutton small save" onclick="this.form.action.value='Save';  displaydeleted();return validateInventory('Products')" type="submit" name="button" value="  Lưu  " style="width:70px">
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
        var fieldname = new Array('productname','product_no','productcode','discontinued','manufacturer','productcategory','sales_start_date','sales_end_date','start_date','expiry_date','website','vendor_id','mfr_part_no','vendor_part_no','serial_no','productsheet','glacct','unit_price','commissionrate','taxclass','usageunit','qty_per_unit','qtyinstock','reorderlevel','assigned_user_id','qtyindemand','imagename','description','cf_628')

        var fieldlabel = new Array('Tên sản phẩm','Mã sản phẩm','Phần Số','Có bán sản phẩm','Nhà sản xuất','Loại sản phẩm','Ngày bắt đầu bán','Ngày kết thúc bán','Ngày bắt đầu hỗ trợ','Ngày hết hạn hỗ trợ','Website','Tên nhà cung cấp','Số hiệu nhà sản xuất','Số hiệu nhà cung cấp','Số hiệu','Ngăn hàng hóa','Tài khoản Kế toán','Giá đơn vị','Tiền hoa hồng (%)','GTGT','Đơn vị sử dụng','Số lượng/Đơn vị','Tồn kho','Mức tồn kho chuẩn','Người quản lý','Số lượng yêu cầu','Hình ảnh sản phẩm','Mô tả','T&ecirc;n kho')

        var fielddatatype = new Array('V~M','V~O','V~O','V~O','V~O','V~O','D~O','D~O~OTH~GE~sales_start_date~Sales Start Date','D~O','D~O~OTH~GE~start_date~Start Date','V~O','I~O','V~O','V~O','V~O','V~O','V~O','N~O','N~O','V~O','V~O','N~O','NN~O','I~O','I~O','I~O','V~O','V~O','V~M')

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
					},41000);</script><!--end body panes-->





</body></html>
