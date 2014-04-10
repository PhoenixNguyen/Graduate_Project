<%-- 
    Document   : take-order
    Created on : Apr 10, 2014, 12:58:52 AM
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
<script type="text/javascript" src="include/js/clock.js"></script><div id="theDate" class="datestyle" style="color: rgb(0, 0, 0); top: 142px; left: 0px;">April 10, 2014 12:58 AM</div><div id="amOrPm" class="ampmstyle" style="color: rgb(153, 153, 153); top: 87px; left: 52px;">AM</div><div id="theFace0" class="facestyle" style="color: rgb(0, 0, 0); top: 81px; left: 96px;">3</div><div id="theFace1" class="facestyle" style="color: rgb(0, 0, 0); top: 102px; left: 90.37306695894642px;">4</div><div id="theFace2" class="facestyle" style="color: rgb(0, 0, 0); top: 117.37306695894642px; left: 75px;">5</div><div id="theFace3" class="facestyle" style="color: rgb(0, 0, 0); top: 123px; left: 54px;">6</div><div id="theFace4" class="facestyle" style="color: rgb(0, 0, 0); top: 117.37306695894644px; left: 33.000000000000014px;">7</div><div id="theFace5" class="facestyle" style="color: rgb(0, 0, 0); top: 102px; left: 17.62693304105357px;">8</div><div id="theFace6" class="facestyle" style="color: rgb(0, 0, 0); top: 81px; left: 12px;">9</div><div id="theFace7" class="facestyle" style="color: rgb(0, 0, 0); top: 59.999999999999986px; left: 17.626933041053576px;">10</div><div id="theFace8" class="facestyle" style="color: rgb(0, 0, 0); top: 44.62693304105359px; left: 32.99999999999997px;">11</div><div id="theFace9" class="facestyle" style="color: rgb(0, 0, 0); top: 39px; left: 53.99999999999999px;">12</div><div id="theFace10" class="facestyle" style="color: rgb(0, 0, 0); top: 44.626933041053576px; left: 75px;">1</div><div id="theFace11" class="facestyle" style="color: rgb(0, 0, 0); top: 59.99999999999997px; left: 90.37306695894641px;">2</div><div id="H0" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 87px; left: 60px;"></div><div id="H1" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 80.87766205002423px; left: 63.39366734172436px;"></div><div id="H2" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 74.75532410004845px; left: 66.78733468344872px;"></div><div id="H3" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 68.6329861500727px; left: 70.18100202517309px;"></div><div id="M0" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 87px; left: 60px;"></div><div id="M1" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 80.15296679486336px; left: 58.54461816427568px;"></div><div id="M2" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 73.30593358972672px; left: 57.08923632855136px;"></div><div id="M3" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 66.45890038459008px; left: 55.63385449282704px;"></div><div id="M4" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 59.61186717945344px; left: 54.17847265710272px;"></div><div id="S0" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 87px; left: 60px;"></div><div id="S1" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 93.65739561406608px; left: 62.16311896062463px;"></div><div id="S2" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 100.31479122813215px; left: 64.32623792124926px;"></div><div id="S3" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 106.97218684219823px; left: 66.4893568818739px;"></div><div id="S4" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 113.6295824562643px; left: 68.65247584249853px;"></div><div id="S5" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 120.28697807033038px; left: 70.81559480312316px;"></div>

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
<script language="JavaScript" type="text/javascript" src="modules/SalesOrder/SalesOrder.js"></script><script type="text/javascript" src="include/js/Inventory.js"></script>
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
			postBody:urlstring +'query=true&file=index&module=SalesOrder&action=SalesOrderAjax&ajax=true&search=true',
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
			                       															
											 <td style="padding-right:10px"><a href="javascript:;" onclick="moveMe('searchAcc');searchshowhide('searchAcc','advSearch');mergehide('mergeDup')"><img src="themes/softed/images/btnL3Search.gif" alt="Tìm kiếm trong Đặt hàng..." title="Tìm kiếm trong Đặt hàng..." border="0"></a></td>
										
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
 		                                         
 		                                         
 		                                                <td style="padding-right:10px"><a href="javascript:;" onclick="return window.open(&quot;index.php?module=Home&amp;action=vtchat&quot;,&quot;Chat&quot;,&quot;width=600,height=450,resizable=1,scrollbars=1&quot;);"><img src="themes/softed/images/tbarChat.gif" alt="Tán gẫu..." title="Tán gẫu..." border="0"></a> 
 		                                         
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
<tr><td style="height:2px"></td></tr>
</tbody></table>                                <div id="searchingUI" style="display:none;">
                                        <table border="0" cellspacing="0" cellpadding="0" width="100%">
                                        <tbody><tr>
                                                <td align="center">
                                                <img src="themes/images/searching.gif" alt="Đang tìm... hãy đợi" title="Đang tìm... hãy đợi">
                                                </td>
                                        </tr>
                                        </tbody></table>

                                </div>
                        
                
                
        



<table border="0" cellspacing="0" cellpadding="0" width="98%" align="center">
     <tbody><tr>
        <td valign="top"><img src="themes/softed/images/showPanelTopLeft.gif"></td>

	<td class="showPanelBg" valign="top" width="100%" style="padding:10px;">
	 <!-- SIMPLE SEARCH -->
<div id="searchAcc" style="display: block;position:relative;">
<form name="basicSearch" method="post" action="index.php" onsubmit="return callSearch('Basic');">
<table width="80%" cellpadding="5" cellspacing="0" class="searchUIBasic small" align="center" border="0">
	<tbody><tr>
		<td class="searchUIName small" nowrap="" align="left">
		<span class="moduleName">Tìm kiếm</span><br><span class="small"><a href="#" onclick="fnhide('searchAcc');show('advSearch');updatefOptions(document.getElementById('Fields0'), 'Condition0');document.basicSearch.searchtype.value='advance';">Chuyển tới Tìm kiếm nâng cao</a></span>
		<!-- <img src="themes/images/basicSearchLens.gif" align="absmiddle" alt="Tìm kiếm cơ bản" title="Tìm kiếm cơ bản" border=0>&nbsp;&nbsp;-->
		</td>
		<td class="small" nowrap="" align="right"><b>Tìm kiếm </b></td>
		<td class="small"><input type="text" class="txtBox" style="width:120px" name="search_text"></td>
		<td class="small" nowrap=""><b>Trong</b>&nbsp;</td>
		<td class="small" nowrap="">
			<div id="basicsearchcolumns_real">
			<select name="search_field" id="bas_searchfield" class="txtBox" style="width:150px">
			 <option label="Mã Đặt hàng" value="salesorder_no">Mã Đặt hàng</option>
<option label="Tiêu đề" value="subject">Tiêu đề</option>
<option label="Tên Khách hàng" value="account_id">Tên Khách hàng</option>
<option label="Tên Báo giá" value="quote_id">Tên Báo giá</option>
<option label="Tổng cộng" value="hdnGrandTotal">Tổng cộng</option>
<option label="Gán cho" value="assigned_user_id">Gán cho</option>

			</select>
			</div>
                        <input type="hidden" name="searchtype" value="BasicSearch">
                        <input type="hidden" name="module" value="SalesOrder">
                        <input type="hidden" name="parenttab" value="Inventory">
			<input type="hidden" name="action" value="index">
                        <input type="hidden" name="query" value="true">
			<input type="hidden" name="search_cnt">
		</td>
		<td class="small" nowrap="" width="40%">
			  <input name="submit" type="button" class="crmbutton small create" onclick="callSearch('Basic');" value=" Thực hiện tìm kiếm ">&nbsp;
			  
		</td>
		<td class="small" valign="top" onmouseover="this.style.cursor='pointer';" onclick="moveMe('searchAcc');searchshowhide('searchAcc','advSearch')">[x]</td>
	</tr>
	<tr>
		<td colspan="7" align="center" class="small">
			<table border="0" cellspacing="0" cellpadding="0" width="100%">
				<tbody><tr>
                                                <td class="searchAlph" id="alpha_1" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=A&quot;,&quot;alpha_1&quot;)">A</td><td class="searchAlph" id="alpha_2" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=B&quot;,&quot;alpha_2&quot;)">B</td><td class="searchAlph" id="alpha_3" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=C&quot;,&quot;alpha_3&quot;)">C</td><td class="searchAlph" id="alpha_4" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=D&quot;,&quot;alpha_4&quot;)">D</td><td class="searchAlph" id="alpha_5" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=E&quot;,&quot;alpha_5&quot;)">E</td><td class="searchAlph" id="alpha_6" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=F&quot;,&quot;alpha_6&quot;)">F</td><td class="searchAlph" id="alpha_7" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=G&quot;,&quot;alpha_7&quot;)">G</td><td class="searchAlph" id="alpha_8" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=H&quot;,&quot;alpha_8&quot;)">H</td><td class="searchAlph" id="alpha_9" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=I&quot;,&quot;alpha_9&quot;)">I</td><td class="searchAlph" id="alpha_10" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=J&quot;,&quot;alpha_10&quot;)">J</td><td class="searchAlph" id="alpha_11" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=K&quot;,&quot;alpha_11&quot;)">K</td><td class="searchAlph" id="alpha_12" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=L&quot;,&quot;alpha_12&quot;)">L</td><td class="searchAlph" id="alpha_13" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=M&quot;,&quot;alpha_13&quot;)">M</td><td class="searchAlph" id="alpha_14" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=N&quot;,&quot;alpha_14&quot;)">N</td><td class="searchAlph" id="alpha_15" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=O&quot;,&quot;alpha_15&quot;)">O</td><td class="searchAlph" id="alpha_16" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=P&quot;,&quot;alpha_16&quot;)">P</td><td class="searchAlph" id="alpha_17" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=Q&quot;,&quot;alpha_17&quot;)">Q</td><td class="searchAlph" id="alpha_18" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=R&quot;,&quot;alpha_18&quot;)">R</td><td class="searchAlph" id="alpha_19" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=S&quot;,&quot;alpha_19&quot;)">S</td><td class="searchAlph" id="alpha_20" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=T&quot;,&quot;alpha_20&quot;)">T</td><td class="searchAlph" id="alpha_21" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=U&quot;,&quot;alpha_21&quot;)">U</td><td class="searchAlph" id="alpha_22" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=V&quot;,&quot;alpha_22&quot;)">V</td><td class="searchAlph" id="alpha_23" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=W&quot;,&quot;alpha_23&quot;)">W</td><td class="searchAlph" id="alpha_24" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=X&quot;,&quot;alpha_24&quot;)">X</td><td class="searchAlph" id="alpha_25" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=Y&quot;,&quot;alpha_25&quot;)">Y</td><td class="searchAlph" id="alpha_26" align="center" onclick="alphabetic(&quot;SalesOrder&quot;,&quot;gname=&amp;query=true&amp;search_field=subject&amp;searchtype=BasicSearch&amp;operator=s&amp;type=alpbt&amp;search_text=Z&quot;,&quot;alpha_26&quot;)">Z</td>
                                </tr>
                        </tbody></table>
		</td>
	</tr>
</tbody></table>
</form>
</div>
<!-- ADVANCED SEARCH -->
<div id="advSearch" style="display:none;">
<form name="advSearch" method="post" action="index.php" onsubmit="totalnoofrows();return callSearch('Advanced');">
		<table cellspacing="0" cellpadding="5" width="80%" class="searchUIAdv1 small" align="center" border="0">
			<tbody><tr>
					<td class="searchUIName small" nowrap="" align="left"><span class="moduleName">Tìm kiếm</span><br><span class="small"><a href="#" onclick="show('searchAcc');fnhide('advSearch')">Chuyển tới Tìm kiếm cơ bản</a></span></td>
					<td nowrap="" class="small"><b><input name="matchtype" type="radio" value="all">&nbsp;Có tất cả các từ</b></td>
					<td nowrap="" width="60%" class="small"><b><input name="matchtype" type="radio" value="any" checked="">&nbsp;Không có các từ</b></td>
					<td class="small" valign="top" onmouseover="this.style.cursor='pointer';" onclick="moveMe('searchAcc');searchshowhide('searchAcc','advSearch')">[x]</td>
			</tr>
		</tbody></table>
		<table cellpadding="2" cellspacing="0" width="80%" align="center" class="searchUIAdv2 small" border="0">
			<tbody><tr>
				<td align="center" class="small" width="90%">
				<div id="fixed" style="position:relative;width:95%;height:80px;padding:0px; overflow:auto;border:1px solid #CCCCCC;background-color:#ffffff" class="small">
					<table border="0" width="95%">
					<tbody><tr>
					<td align="left">
						<table width="100%" border="0" cellpadding="2" cellspacing="0" id="adSrc" align="left">
						<tbody><tr>
							<td width="31%"><select name="Fields0" id="Fields0" class="detailedViewTextBox" onchange="updatefOptions(this, 'Condition0')"><optgroup label="Quyền hạn và trách nhiệm" class="select" style="border:none"><option value="\'terms_conditions::::V\'">Điều khoản</option></optgroup><optgroup label="Thông tin mô tả" class="select" style="border:none"><option value="\'description::::V\'">Mô tả</option></optgroup><optgroup label="Thông tin Đặt hàng" class="select" style="border:none"><option value="\'conversion_rate::::N\'">Conversion Rate</option><option value="\'currency_id::::V\'">Currency</option><option value="\'carrier::::V\'">Công ty vận chuyển</option><option value="\'modifiedtime::::T\'">Cập nhật lúc</option><option value="\'hdnSubTotal::::N\'">Cộng tiền hàng</option><option value="\'assigned_user_id::::V\'">Gán cho</option><option value="\'customerno::::V\'">Khách hàng thứ</option><option value="\'hdnTaxType::::V\'">Kiểu thuế</option><option value="\'pending::::V\'">Lý do chưa thực hiện</option><option value="\'salesorder_no::::V\'" selected="">Mã Đặt hàng</option><option value="\'duedate::::D\'">Ngày liên quan</option><option value="\'vtiger_purchaseorder::::V\'">Nhập hàng</option><option value="\'hdnDiscountPercent::::N\'">Phần trăm giảm trừ</option><option value="\'hdnS_H_Amount::::N\'">S&amp;H Amount</option><option value="\'hdnDiscountAmount::::N\'">Số tiền giảm trừ</option><option value="\'exciseduty::::N\'">Thuế hàng hóa</option><option value="\'subject::::V\'">Tiêu đề</option><option value="\'salescommission::::N\'">Tiền hoa hồng</option><option value="\'quote_id::::V\'">Tên Báo giá</option><option value="\'potential_id::::V\'">Tên Cơ hội</option><option value="\'account_id::::V\'">Tên Khách hàng</option><option value="\'contact_id::::V\'">Tên Liên hệ</option><option value="\'sostatus::::V\'">Tình trạng</option><option value="\'createdtime::::T\'">Tạo lúc</option><option value="\'hdnGrandTotal::::N\'">Tổng cộng</option><option value="\'txtAdjustment::::NN\'">Điều chỉnh</option></optgroup><optgroup label="Thông tin địa chỉ" class="select" style="border:none"><option value="\'bill_pobox::::V\'">Hộp thư thanh toán</option><option value="\'ship_pobox::::V\'">Hộp thư vận chuyển</option><option value="\'bill_code::::V\'">Mã vùng thanh toán</option><option value="\'ship_code::::V\'">Mã vùng vận chuyển</option><option value="\'bill_state::::V\'">Thanh toán tại Tỉnh/Bang</option><option value="\'bill_country::::V\'">Thanh toán tại quốc gia</option><option value="\'bill_city::::V\'">Thanh toán tại thành phố</option><option value="\'ship_state::::V\'">Vận chuyển tới Tỉnh/Bang</option><option value="\'ship_country::::V\'">Vận chuyển tới quốc gia</option><option value="\'ship_city::::V\'">Vận chuyển tới thành phố</option><option value="\'bill_street::::V\'">Địa chỉ thanh toán</option><option value="\'ship_street::::V\'">Địa chỉ vận chuyển</option></optgroup><optgroup label="Thông tin định kỳ" class="select" style="border:none"><option value="\'enable_recurring::::C\'">Bật chức năng định kỳ</option><option value="\'recurring_frequency::::V\'">Mức độ thường xuyên</option><option value="\'start_period::::D\'">Thời gian bắt đầu</option><option value="\'end_period::::D\'">Thời gian kết thúc</option><option value="\'payment_duration::::V\'">Thời gian thanh toán</option><option value="\'invoicestatus::::V\'">Trạng thái hóa đơn</option></optgroup></select>
							</td>
							<td width="32%"><select name="Condition0" id="Condition0" class="detailedViewTextBox"><option value="\'c\'">chứa</option><option value="\'k\'">không chứa</option><option value="\'e\'">là</option><option value="\'n\'">không là</option><option value="\'s\'">bắt đầu với</option><option value="\'ew\'">kết thúc với</option><option value="\'g\'">lớn hơn</option><option value="\'l\'">nhỏ hơn</option><option value="\'h\'">lớn hơn hoặc bằng</option><option value="\'m\'">nhỏ hơn hoặc bằng</option></select>
							</td>
							<td width="32%"><input type="text" name="Srch_value0" id="Srch_value0" class="detailedViewTextBox"></td>
						</tr>
						</tbody></table>
					</td>
					</tr>
				</tbody></table>
				</div>	
				</td>
			</tr>
		</tbody></table>
			
		<table border="0" cellspacing="0" cellpadding="5" width="80%" class="searchUIAdv3 small" align="center">
		<tbody><tr>
			<td align="left" width="40%">
						<input type="button" name="more" value=" Thêm " onclick="fnAddSrch()" class="crmbuttom small edit">
						<input name="button" type="button" value=" Ít hơn " onclick="delRow()" class="crmbuttom small edit">
			</td>
			<td align="left" class="small"><input type="button" class="crmbutton small create" value=" Thực hiện tìm kiếm " onclick="totalnoofrows();callSearch('Advanced');">
			</td>
		</tr>
	</tbody></table>
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

<form enctype="multipart/form-data" name="mergeDuplicates" method="post" action="index.php?module=SalesOrder&amp;action=FindDuplicateRecords" onsubmit="VtigerJS_DialogBox.block();">
	<input type="hidden" name="module" value="SalesOrder">
	<input type="hidden" name="parenttab" value="Inventory">
	<input type="hidden" name="action" value="FindDuplicateRecords">
	<input type="hidden" name="selectedColumnsString">
	<br><table class="searchUIBasic small" border="0" cellpadding="5" cellspacing="0" width="80%" height="10" align="center">
		<tbody><tr class="lvtCol" style="Font-Weight: normal">
					<td colspan="2">
						<span class="moduleName">Chọn các trường chuẩn vào ô bên phải</span><br>
						<span font-weight:normal="">Chọn trường thông tin bạn muốn kiểm tra trùng</span>
					</td>
					<td valign="top" align="right" class="small">
						<span>&nbsp;</span>
						<span align="right" onclick="mergeshowhide('mergeDup')" onmouseover="this.style.cursor='pointer';"><img src="themes/images/close.gif" border="0"></span><br>
					</td>
			   </tr>
			   <tr><td colspan="3"></td></tr>
				<tr>
					<td><b>Các trường đang hiện hữu</b></td>
					<td></td>
					<td><b> Trường được chọn</b></td>
				</tr>
				<tr>
					<td width="47%">
						<select id="availList" multiple="" size="10" name="availList" class="txtBox" style="width: 100%">
						
						</select>
					</td>
					<td width="6%">
						<div align="center">
							<input type="button" name="Button" value="&nbsp;››&nbsp;" onclick="addColumn()" class="crmButton small" width="100%"><br><br>
							<input type="button" name="Button1" value="&nbsp;‹‹&nbsp;" onclick="delColumn()" class="crmButton small" width="100%"><br><br>
						</div>
					</td>
					<td width="47%">
						<select id="selectedColumns" size="10" name="selectedColumns" multiple="" class="txtBox" style="width: 100%">
						
						</select>
					</td>
				</tr> 
				<tr>
					<td colspan="3" align="center">
					<input type="submit" name="save&amp;merge" value="Tìm kiếm trùng" class="crmbutton small edit" onclick="return formSelectColumnString()">
					<input type="button" name="cancel" value="Hủy bỏ" class="crmbutton small cancel" onclick="mergeshowhide('mergeDup');">
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
     <input name="search_url" id="search_url" type="hidden" value="">
     <input name="idlist" id="idlist" type="hidden">
     <input name="change_owner" type="hidden">
     <input name="change_status" type="hidden">
     <input name="action" type="hidden">
     <input name="where_export" type="hidden" value="">
     <input name="step" type="hidden">
     <input name="allids" type="hidden" id="allids" value="">
     <input name="selectedboxes" id="selectedboxes" type="hidden" value="">
     <input name="allselectedboxes" id="allselectedboxes" type="hidden" value="">
     <input name="current_page_boxes" id="current_page_boxes" type="hidden" value="201;611;793">
				<!-- List View Master Holder starts -->
				<table border="0" cellspacing="1" cellpadding="0" width="100%" class="lvtBg">
				<tbody><tr>
				<td>
				<!-- List View's Buttons and Filters starts -->
		        <table border="0" cellspacing="0" cellpadding="2" width="100%" class="small">
			    <tbody><tr>
				<!-- Buttons -->
				<td style="padding-right:20px" nowrap="">

                                                              <input class="crmbutton small delete" type="button" value="Xóa" onclick="return massDelete('SalesOrder')">
                                                                                 <input class="crmbutton small edit" type="button" value="Sửa nhanh" onclick="return mass_edit(this, 'massedit', 'SalesOrder', 'Inventory')">
                                                                                        
                								
															
                </td>
				<td class="small" nowrap="">
					Hiển thị Bản ghi 1 - 3 trên 3
				</td>
				<!-- Page Navigation -->
				<td nowrap="" width="30%" align="center">
					<table border="0" cellspacing="0" cellpadding="0" class="small">
						<tbody><tr><td align="right" style="padding: 5px;"><img src="themes/images/start_disabled.gif" border="0" align="absmiddle">&nbsp;<img src="themes/images/previous_disabled.gif" border="0" align="absmiddle">&nbsp;<input class="small" name="pagenum" type="text" value="1" style="width: 3em;margin-right: 0.7em;" onchange="getListViewEntries_js('SalesOrder','parenttab=Inventory&amp;start='+this.value+'');" onkeypress="return VT_disableFormSubmit(event);"><span name="SalesOrder_listViewCountContainerName" class="small" style="white-space: nowrap;">trên 1</span><img src="themes/images/next_disabled.gif" border="0" align="absmiddle">&nbsp;<img src="themes/images/end_disabled.gif" border="0" align="absmiddle">&nbsp;</td></tr>
					</tbody></table>
                </td>
				<td width="40%" align="right">
				   <!-- Filters -->
				   					<table border="0" cellspacing="0" cellpadding="0" class="small">
					<tbody><tr>
						<td>Lọc </td>
						<td style="padding-left:5px;padding-right:5px">
                            <select name="viewname" id="viewname" class="small" onchange="showDefaultCustomView(this,'SalesOrder','Inventory')"><option selected="" value="26">Tất cả</option><option value="37">Pending Sales Orders</option></select></td>
                            							<td><a href="index.php?module=SalesOrder&amp;action=CustomView&amp;parenttab=Inventory">Mới</a>
							<span class="small">|</span>
							<span class="small" disabled="">Sửa</span>
							<span class="small">|</span>
							<span class="small" disabled="">Xóa</span></td>
						    					</tr>
					</tbody></table> 
				   <!-- Filters  END-->
				   
				</td>	
       		    </tr>
			</tbody></table>
			<!-- List View's Buttons and Filters ends -->
			
			<div>
			<table border="0" cellspacing="1" cellpadding="3" width="100%" class="lvt small">
			<!-- Table Headers -->
			<tbody><tr>
            <td class="lvtCol"><input type="checkbox" name="selectall" onclick="toggleSelect_ListView(this.checked,&quot;selected_id&quot;)"></td>
				  			<td class="lvtCol"><a href="javascript:;" onclick="getListViewEntries_js(&quot;SalesOrder&quot;,&quot;parenttab=Inventory&amp;foldername=Default&amp;order_by=salesorder_no&amp;start=1&amp;sorder=ASC&amp;viewname=26&quot;);" class="listFormHeaderLinks">Mã Đặt hàng</a></td>
				 			<td class="lvtCol"><a href="javascript:;" onclick="getListViewEntries_js(&quot;SalesOrder&quot;,&quot;parenttab=Inventory&amp;foldername=Default&amp;order_by=subject&amp;start=1&amp;sorder=ASC&amp;viewname=26&quot;);" class="listFormHeaderLinks">Tiêu đề</a></td>
				 			<td class="lvtCol">Tên Khách hàng</td>
				 			<td class="lvtCol">Tên Báo giá</td>
				 			<td class="lvtCol"><a href="javascript:;" onclick="getListViewEntries_js(&quot;SalesOrder&quot;,&quot;parenttab=Inventory&amp;foldername=Default&amp;order_by=total&amp;start=1&amp;sorder=ASC&amp;viewname=26&quot;);" class="listFormHeaderLinks">Tổng cộng</a></td>
				 			<td class="lvtCol"><a href="javascript:;" onclick="getListViewEntries_js(&quot;SalesOrder&quot;,&quot;parenttab=Inventory&amp;foldername=Default&amp;order_by=smownerid&amp;start=1&amp;sorder=ASC&amp;viewname=26&quot;);" class="listFormHeaderLinks">Gán cho</a></td>
				 			<td class="lvtCol">Hoạt động</td>
							</tr>
			<!-- Table Contents -->
						<tr bgcolor="white" onmouseover="this.className='lvtColDataHover'" onmouseout="this.className='lvtColData'" id="row_201" class="lvtColData">
			<td width="2%"><input type="checkbox" name="selected_id" id="201" value="201" onclick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">SO6 <span type="vtlib_metainfo" vtrecordid="201" vtfieldname="salesorder_no" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=SalesOrder&amp;parenttab=Inventory&amp;action=DetailView&amp;record=201" title="SalesOrder">Đặt hàng 1</a> <span type="vtlib_metainfo" vtrecordid="201" vtfieldname="subject" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Accounts&amp;action=DetailView&amp;record=139" title="Accounts">La Thị Hệ</a> <span type="vtlib_metainfo" vtrecordid="201" vtfieldname="account_id" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">-- <span type="vtlib_metainfo" vtrecordid="201" vtfieldname="quote_id" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">₫6000000.000 <span type="vtlib_metainfo" vtrecordid="201" vtfieldname="hdnGrandTotal" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">admin <span type="vtlib_metainfo" vtrecordid="201" vtfieldname="assigned_user_id" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=SalesOrder&amp;action=EditView&amp;record=201&amp;return_module=SalesOrder&amp;return_action=index&amp;parenttab=Inventory&amp;return_viewname=26">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DSalesOrder%26action%3DDelete%26record%3D201%26return_module%3DSalesOrder%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D26")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor="white" onmouseover="this.className='lvtColDataHover'" onmouseout="this.className='lvtColData'" id="row_611" class="lvtColData">
			<td width="2%"><input type="checkbox" name="selected_id" id="611" value="611" onclick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">SO7 <span type="vtlib_metainfo" vtrecordid="611" vtfieldname="salesorder_no" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=SalesOrder&amp;parenttab=Inventory&amp;action=DetailView&amp;record=611" title="SalesOrder">Đặt hàng phần mềm nhà hàng</a> <span type="vtlib_metainfo" vtrecordid="611" vtfieldname="subject" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Accounts&amp;action=DetailView&amp;record=137" title="Accounts">Trần Thị Khanh</a> <span type="vtlib_metainfo" vtrecordid="611" vtfieldname="account_id" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">-- <span type="vtlib_metainfo" vtrecordid="611" vtfieldname="quote_id" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">₫6000000.000 <span type="vtlib_metainfo" vtrecordid="611" vtfieldname="hdnGrandTotal" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">admin <span type="vtlib_metainfo" vtrecordid="611" vtfieldname="assigned_user_id" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=SalesOrder&amp;action=EditView&amp;record=611&amp;return_module=SalesOrder&amp;return_action=index&amp;parenttab=Inventory&amp;return_viewname=26">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DSalesOrder%26action%3DDelete%26record%3D611%26return_module%3DSalesOrder%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D26")'>Xóa</a></td>
				        			</tr>
						<tr bgcolor="white" onmouseover="this.className='lvtColDataHover'" onmouseout="this.className='lvtColData'" id="row_793" class="lvtColData">
			<td width="2%"><input type="checkbox" name="selected_id" id="793" value="793" onclick="check_object(this)"></td>
							
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">SO8 <span type="vtlib_metainfo" vtrecordid="793" vtfieldname="salesorder_no" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=SalesOrder&amp;parenttab=Inventory&amp;action=DetailView&amp;record=793" title="SalesOrder">Đơn đặt hàng ABC</a> <span type="vtlib_metainfo" vtrecordid="793" vtfieldname="subject" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=Accounts&amp;action=DetailView&amp;record=675" title="Accounts">anh Đạt - Điện máy Tiến đạt</a> <span type="vtlib_metainfo" vtrecordid="793" vtfieldname="account_id" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">-- <span type="vtlib_metainfo" vtrecordid="793" vtfieldname="quote_id" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">₫63000.000 <span type="vtlib_metainfo" vtrecordid="793" vtfieldname="hdnGrandTotal" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))">admin <span type="vtlib_metainfo" vtrecordid="793" vtfieldname="assigned_user_id" vtmodule="SalesOrder" style="display:none;"></span></td>
				        				
			<td onmouseover="vtlib_listview.trigger('cell.onmouseover', $(this))" onmouseout="vtlib_listview.trigger('cell.onmouseout', $(this))"><a href="index.php?module=SalesOrder&amp;action=EditView&amp;record=793&amp;return_module=SalesOrder&amp;return_action=index&amp;parenttab=Inventory&amp;return_viewname=26">Sửa</a>  | <a href='javascript:confirmdelete("index.php%3Fmodule%3DSalesOrder%26action%3DDelete%26record%3D793%26return_module%3DSalesOrder%26return_action%3Dindex%26parenttab%3DInventory%26return_viewname%3D26")'>Xóa</a></td>
				        			</tr>
						 </tbody></table>
			 </div>
			 
			 <table border="0" cellspacing="0" cellpadding="2" width="100%">
			      <tbody><tr>
				 <td style="padding-right:20px" nowrap="">
                                                                                                                     <input class="crmbutton small delete" type="button" value="Xóa" onclick="return massDelete('SalesOrder')">
					                                                                                             					                         <input class="crmbutton small edit" type="button" value="Sửa nhanh" onclick="return mass_edit(this, 'massedit', 'SalesOrder')">
                                                                                                                                                  						
                
		                												
																		                    </td>
				<td class="small" nowrap="">
					Hiển thị Bản ghi 1 - 3 trên 3
				</td>
				<td nowrap="" width="30%" align="center">
				    <table border="0" cellspacing="0" cellpadding="0" class="small">
				         <tbody><tr><td align="right" style="padding: 5px;"><img src="themes/images/start_disabled.gif" border="0" align="absmiddle">&nbsp;<img src="themes/images/previous_disabled.gif" border="0" align="absmiddle">&nbsp;<input class="small" name="pagenum" type="text" value="1" style="width: 3em;margin-right: 0.7em;" onchange="getListViewEntries_js('SalesOrder','parenttab=Inventory&amp;start='+this.value+'');" onkeypress="return VT_disableFormSubmit(event);"><span name="SalesOrder_listViewCountContainerName" class="small" style="white-space: nowrap;">trên 1</span><img src="themes/images/next_disabled.gif" border="0" align="absmiddle">&nbsp;<img src="themes/images/end_disabled.gif" border="0" align="absmiddle">&nbsp;</td></tr>
				     </tbody></table>
				 </td>
				 <td align="right" width="40%">
				   <table border="0" cellspacing="0" cellpadding="0" class="small">
					<tbody><tr>
                                           
					</tr>
				   </tbody></table>
				 </td>
			      </tr>
       		    </tbody></table>
		       </td>
		   </tr>
	    </tbody></table>

   </form>	

<div id="basicsearchcolumns" style="display:none;"><select name="search_field" id="bas_searchfield" class="txtBox" style="width:150px"><option label="Mã Đặt hàng" value="salesorder_no">Mã Đặt hàng</option>
<option label="Tiêu đề" value="subject">Tiêu đề</option>
<option label="Tên Khách hàng" value="account_id">Tên Khách hàng</option>
<option label="Tên Báo giá" value="quote_id">Tên Báo giá</option>
<option label="Tổng cộng" value="hdnGrandTotal">Tổng cộng</option>
<option label="Gán cho" value="assigned_user_id">Gán cho</option>
</select></div>	  	</div>

     </td>
        <td valign="top"><img src="themes/softed/images/showPanelTopRight.gif"></td>
   </tr>
</tbody></table>

<!-- MassEdit Feature -->
<div id="massedit" class="layerPopup" style="display:none;width:80%;">
<table width="100%" border="0" cellpadding="3" cellspacing="0" class="layerHeadingULine">
<tbody><tr>
	<td class="layerPopupHeading" align="left" width="60%">Sửa nhanh - Nhiều dòng</td>
	<td>&nbsp;</td>
	<td align="right" width="40%"><img onclick="fninvsh('massedit');" title="Đóng" alt="Đóng" style="cursor:pointer;" src="themes/images/close.gif" align="absmiddle" border="0"></td>
</tr>
</tbody></table>
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
		    
		        var urlstring ="module=Users&action=updateLeadDBStatus&return_module=SalesOrder"+tplstart+url+"&viewname="+viewid+"&idlist="+idstring+searchurl;
		    
		} else {
			fninvsh('changeowner');
			var url='&owner_id='+document.getElementById('lead_group_owner').options[document.getElementById('lead_group_owner').options.selectedIndex].value;
	      	
		        var urlstring ="module=Users&action=updateLeadDBStatus&return_module=SalesOrder"+tplstart+url+"&viewname="+viewid+"&idlist="+idstring+searchurl;
        	
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
					},5000);</script><!--end body panes-->





</body></html>
