<%-- 
    Document   : customer-detail
    Created on : Apr 10, 2014, 4:33:05 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html><head>
	<title>admin - Bán hàng - Khách hàng - Phần mềm quản lý HOSCO-MANAGEMENT</title>
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
															  <td class="tabSelected" onmouseover="fnDropDown(this,'Sales_sub');" onmouseout="fnHideDrop('Sales_sub');" align="center" nowrap=""><a href="index.php?module=Leads&amp;action=index&amp;parenttab=Sales">Bán hàng</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected" onmouseover="fnDropDown(this,'Support_sub');" onmouseout="fnHideDrop('Support_sub');" align="center" nowrap=""><a href="index.php?module=HelpDesk&amp;action=index&amp;parenttab=Support">Hỗ trợ</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected" onmouseover="fnDropDown(this,'Analytics_sub');" onmouseout="fnHideDrop('Analytics_sub');" align="center" nowrap=""><a href="index.php?module=Reports&amp;action=index&amp;parenttab=Analytics">Phân tích</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
				  <td class="tabSeperator"><img src="themes/images/spacer.gif"></td>
															  <td class="tabUnSelected" onmouseover="fnDropDown(this,'Inventory_sub');" onmouseout="fnHideDrop('Inventory_sub');" align="center" nowrap=""><a href="index.php?module=Products&amp;action=index&amp;parenttab=Inventory">Tồn kho</a><img src="themes/softed/images/menuDnArrow.gif" border="0" style="padding-left:5px"></td>
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
				<input type="hidden" name="parenttab" value="Sales" style="margin:0px">
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
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Leads&action=index&parenttab=Sales">Đầu mối</a> </td>
							
											      					 
      						 
      																		<td class="level2SelTab" nowrap><a href="index.php?module=Accounts&action=index&parenttab=Sales">Khách hàng</a></td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Contacts&action=index&parenttab=Sales">Liên hệ</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Potentials&action=index&parenttab=Sales">Cơ hội</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Quotes&action=index&parenttab=Sales">Báo giá</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=SalesOrder&action=index&parenttab=Sales">Đặt hàng</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Invoice&action=index&parenttab=Sales">Hóa đơn</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=PriceBooks&action=index&parenttab=Sales">Bảng giá</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Documents&action=index&parenttab=Sales">Tài liệu</a> </td>
							
											      					 
      						 
      																		<td class="level2UnSelTab" nowrap> <a href="index.php?module=Calendar&action=index&parenttab=Sales">Lịch</a> </td>
							
																																															-->
			
																																	   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=Leads&amp;action=index&amp;parenttab=Sales">Đầu mối</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2SelTab" nowrap=""><a href="index.php?module=Accounts&amp;action=index&amp;parenttab=Sales">Khách hàng</a></td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=Contacts&amp;action=index&amp;parenttab=Sales">Liên hệ</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=Potentials&amp;action=index&amp;parenttab=Sales">Cơ hội</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=Quotes&amp;action=index&amp;parenttab=Sales">Báo giá</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=SalesOrder&amp;action=index&amp;parenttab=Sales">Đặt hàng</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=Invoice&amp;action=index&amp;parenttab=Sales">Hóa đơn</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=PriceBooks&amp;action=index&amp;parenttab=Sales">Bảng giá</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=Documents&amp;action=index&amp;parenttab=Sales">Tài liệu</a> </td>
							
												   					
	   												   							
	   									
													<td class="level2UnSelTab" nowrap=""> <a href="index.php?module=Calendar&amp;action=index&amp;parenttab=Sales">Lịch</a> </td>
							
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
<script type="text/javascript" src="include/js/clock.js"></script><div id="theDate" class="datestyle" style="color: rgb(0, 0, 0); top: 142px; left: 0px;">April 10, 2014 4:32 PM</div><div id="amOrPm" class="ampmstyle" style="color: rgb(153, 153, 153); top: 87px; left: 52px;">PM</div><div id="theFace0" class="facestyle" style="color: rgb(0, 0, 0); top: 81px; left: 96px;">3</div><div id="theFace1" class="facestyle" style="color: rgb(0, 0, 0); top: 102px; left: 90.37306695894642px;">4</div><div id="theFace2" class="facestyle" style="color: rgb(0, 0, 0); top: 117.37306695894642px; left: 75px;">5</div><div id="theFace3" class="facestyle" style="color: rgb(0, 0, 0); top: 123px; left: 54px;">6</div><div id="theFace4" class="facestyle" style="color: rgb(0, 0, 0); top: 117.37306695894644px; left: 33.000000000000014px;">7</div><div id="theFace5" class="facestyle" style="color: rgb(0, 0, 0); top: 102px; left: 17.62693304105357px;">8</div><div id="theFace6" class="facestyle" style="color: rgb(0, 0, 0); top: 81px; left: 12px;">9</div><div id="theFace7" class="facestyle" style="color: rgb(0, 0, 0); top: 59.999999999999986px; left: 17.626933041053576px;">10</div><div id="theFace8" class="facestyle" style="color: rgb(0, 0, 0); top: 44.62693304105359px; left: 32.99999999999997px;">11</div><div id="theFace9" class="facestyle" style="color: rgb(0, 0, 0); top: 39px; left: 53.99999999999999px;">12</div><div id="theFace10" class="facestyle" style="color: rgb(0, 0, 0); top: 44.626933041053576px; left: 75px;">1</div><div id="theFace11" class="facestyle" style="color: rgb(0, 0, 0); top: 59.99999999999997px; left: 90.37306695894641px;">2</div><div id="H0" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 87px; left: 60px;"></div><div id="H1" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 92.03537860237056px; left: 64.86260859321298px;"></div><div id="H2" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 97.07075720474111px; left: 69.72521718642595px;"></div><div id="H3" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 102.10613580711168px; left: 74.58782577963893px;"></div><div id="M0" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 87px; left: 60px;"></div><div id="M1" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 93.84703320513664px; left: 58.54461816427568px;"></div><div id="M2" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 100.69406641027328px; left: 57.089236328551365px;"></div><div id="M3" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 107.54109961540992px; left: 55.633854492827055px;"></div><div id="M4" class="handsanddotsstyle" style="background-color: rgb(0, 0, 0); top: 114.38813282054656px; left: 54.17847265710274px;"></div><div id="S0" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 87px; left: 60px;"></div><div id="S1" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 84.83688103937537px; left: 53.342604385933925px;"></div><div id="S2" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 82.67376207875074px; left: 46.68520877186785px;"></div><div id="S3" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 80.51064311812611px; left: 40.02781315780177px;"></div><div id="S4" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 78.34752415750148px; left: 33.3704175437357px;"></div><div id="S5" class="handsanddotsstyle" style="background-color: rgb(255, 0, 0); top: 76.18440519687684px; left: 26.71302192966963px;"></div>

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
<div class="drop_mnu" id="Inventory_sub" onmouseout="fnHideDrop('Inventory_sub')" onmouseover="fnShowDrop('Inventory_sub')" style="left: 484px; top: 75px; display: none;">
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
<div class="drop_mnu" id="Tools_sub" onmouseout="fnHideDrop('Tools_sub')" onmouseover="fnShowDrop('Tools_sub')" style="left: 563px; top: 75px; display: none;">
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
		<td class="trackerList small"> <a href="index.php?module=Accounts&amp;action=DetailView&amp;record=137&amp;parenttab=Sales">Trần Thị Khanh</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">2</td>
		<td class="trackerList small"> <a href="index.php?module=Campaigns&amp;action=DetailView&amp;record=10665&amp;parenttab=Sales">Hội thảo phần mềm qu</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">3</td>
		<td class="trackerList small"> <a href="index.php?module=Campaigns&amp;action=DetailView&amp;record=2934&amp;parenttab=Sales">Ở đâu cần phần m</a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">4</td>
		<td class="trackerList small"> <a href="index.php?module=Leads&amp;action=DetailView&amp;record=196&amp;parenttab=Sales">anh Tân </a> </td><td class="trackerList small">&nbsp;</td></tr>
		<tr>
		<td class="trackerListBullet small" align="center" width="12">5</td>
		<td class="trackerList small"> <a href="index.php?module=HelpDesk&amp;action=DetailView&amp;record=9869&amp;parenttab=Sales">Thông báo lịch ...</a> </td><td class="trackerList small">&nbsp;</td></tr>
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
<!-- divs for asterisk integration :: end--><!-- startscrmprint --><link rel="stylesheet" type="text/css" media="all" href="jscalendar/calendar-win2k-cold-1.css">
<script type="text/javascript" src="jscalendar/calendar.js"></script>
<script type="text/javascript" src="jscalendar/lang/calendar-en.js"></script>
<script type="text/javascript" src="jscalendar/calendar-setup.js"></script>

<script type="text/javascript" src="include/js/reflection.js"></script>
<script src="include/scriptaculous/scriptaculous.js" type="text/javascript"></script><script type="text/javascript" src="http://hosgroup.com.vn/hoscomng/include/scriptaculous/builder.js"></script><script type="text/javascript" src="http://hosgroup.com.vn/hoscomng/include/scriptaculous/effects.js"></script><script type="text/javascript" src="http://hosgroup.com.vn/hoscomng/include/scriptaculous/dragdrop.js"></script><script type="text/javascript" src="http://hosgroup.com.vn/hoscomng/include/scriptaculous/controls.js"></script><script type="text/javascript" src="http://hosgroup.com.vn/hoscomng/include/scriptaculous/slider.js"></script>
<script language="JavaScript" type="text/javascript" src="include/js/dtlviewajax.js"></script>
<span id="crmspanid" style="position: absolute; left: 987px; top: 303px; display: none;" onmouseover="show('crmspanid');" onclick="handleEdit();">
   <a class="link" align="right" href="javascript:;">Sửa</a>
</span>

<div id="convertleaddiv" style="display:block;position:absolute;left:225px;top:150px;"></div>
<script>

var gVTModule = '{$smarty.request.module|@vtlib_purify}';
function callConvertLeadDiv(id)
{
        new Ajax.Request(
                'index.php',
                {queue: {position: 'end', scope: 'command'},
                        method: 'post',
                        postBody: 'module=Leads&action=LeadsAjax&file=ConvertLead&record='+id,
                        onComplete: function(response) {
                                $("convertleaddiv").innerHTML=response.responseText;
				eval($("conv_leadcal").innerHTML);
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
		eval(document.getElementById(anchorImgId)).src = 'themes/images/activate.gif';
		eval(document.getElementById(anchorImgId)).alt = 'Hide';
		eval(document.getElementById(anchorImgId)).title = 'Hide';
	}
}
<!-- End Of Code modified by SAKTI on 10th Apr, 2008 -->

<!-- Start of code added by SAKTI on 16th Jun, 2008 -->
function setCoOrdinate(elemId){
	oBtnObj = document.getElementById(elemId);
	var tagName = document.getElementById('lstRecordLayout');
	leftpos  = 0;
	toppos = 0;
	aTag = oBtnObj;
	do{					  
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
				var getVal = parseInt(leftSide) + parseInt(widthM);
				if(getVal  > document.body.clientWidth ){
					leftSide = parseInt(leftSide) - parseInt(widthM);
					tagName.style.left = leftSide + 230 + 'px';
					tagName.style.top = topSide + 20 + 'px';
				}else{
					tagName.style.left = leftSide + 230 + 'px';
				}
				setCoOrdinate(obj.id);
				
				tagName.style.display = 'block';
				tagName.style.visibility = "visible";
			}
		}
	);
}

function tagvalidate()
{
	if(trim(document.getElementById('txtbox_tagfields').value) != '')
		SaveTag('txtbox_tagfields','137','Accounts');	
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
                        postBody: "file=TagCloud&module=Accounts&action=AccountsAjax&ajxaction=DELETETAG&recordid="+recordid+"&tagid=" +id,
                        onComplete: function(response) {
						getTagCloud();
						$("vtbusy_info").style.display="none";
                        }
                }
        );
}

//Added to send a file, in Documents module, as an attachment in an email
function sendfile_email()
{
	filename = $('dldfilename').value;
	document.DetailView.submit();
	OpenCompose(filename,'Documents');
}

</script>

<div id="lstRecordLayout" class="layerPopup" style="display:none;width:325px;height:300px;"></div>

                                                                <div id="locateMap" onmouseout="fninvsh('locateMap')" onmouseover="fnvshNrm('locateMap')" style="left: 913px; top: 615px; display: none; visibility: hidden;">
                <table bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" width="100%">
                        <tbody><tr>
                                <td>
                                                                        <a href="javascript:;" onclick="fninvsh('locateMap'); searchMapLocation( 'Main' );" class="calMnu">Địa chỉ thanh toán</a>
                                        <a href="javascript:;" onclick="fninvsh('locateMap'); searchMapLocation( 'Other' );" class="calMnu">Địa chỉ vận chuyển</a>
                                                              
                                                                       
                                         </td>
                        </tr>
                </tbody></table>
        </div>


<table width="100%" cellpadding="2" cellspacing="0" border="0">
<tbody><tr>
	<td>

		<script type="text/javascript" src="modules/Accounts/Accounts.js"></script><script type="text/javascript" src="include/js/Inventory.js"></script><script type="text/javascript" src="include/js/Mail.js"></script><script type="text/javascript" src="include/js/Merge.js"></script>

<table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
<tbody><tr><td style="height:2px"></td></tr>
<tr>
				<td style="padding-left:10px;padding-right:50px" class="moduleName" nowrap="">Bán hàng &gt; <a class="hdrLink" href="index.php?action=ListView&amp;module=Accounts&amp;parenttab=Sales">Khách hàng</a></td>
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
								        			                        		       	<td style="padding-right:0px;padding-left:10px;"><a href="index.php?module=Accounts&amp;action=EditView&amp;return_action=DetailView&amp;parenttab=Sales"><img src="themes/softed/images/btnL3Add.gif" alt="Tạo Khách hàng..." title="Tạo Khách hàng..." border="0"></a></td>
			                       															
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
					 
 		                                                						 
 		                                                                <td style="padding-right:0px;padding-left:10px;"><a href="javascript:;" onclick="fnvshobj(this,&quot;miniCal&quot;);getMiniCal(&quot;parenttab=Sales&quot;);"><img src="themes/softed/images/btnL3Calendar.gif" alt="Mở lịch công tác..." title="Mở lịch công tác..." border="0"></a></td> 
 		                                                         		                                
										 
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

			
					   			
					<td style="padding-right:0px;padding-left:10px;"><a href="index.php?module=Accounts&amp;action=Import&amp;step=1&amp;return_module=Accounts&amp;return_action=index&amp;parenttab=Sales"><img src="themes/softed/images/tbarImport.gif" alt="Nhập dữ liệu Khách hàng" title="Nhập dữ liệu Khách hàng" border="0"></a></td>	
					
								<td style="padding-right:10px"><a name="export_link" href="javascript:void(0)" onclick="return selectedRecords('Accounts','Sales')"><img src="themes/softed/images/tbarExport.gif" alt="Xuất dữ liệu Khách hàng" title="Xuất dữ liệu Khách hàng" border="0"></a></td>			
			
										 
									<td style="padding-right:10px"><img src="themes/images/FindDuplicates-Faded.gif" border="0"></td>	
										</tr>
			</tbody></table>	
		</td><td style="width:20px;">&nbsp;</td>
		<td class="small">
			<!-- All Menu -->
				<table border="0" cellspacing="0" cellpadding="5">
				<tbody><tr>
					<td style="padding-left:10px;"><a href="javascript:;" onmouseout="fninvsh('allMenu');" onclick="fnvshobj(this,'allMenu')"><img src="themes/softed/images/btnL3AllMenu.gif" alt="Mở tất cả Menu..." title="Mở tất cả Menu..." border="0"></a></td>
					        		<td style="padding-left:10px;"><a href="index.php?module=Settings&amp;action=ModuleManager&amp;module_settings=true&amp;formodule=Accounts&amp;parenttab=Settings"><img src="themes/softed/images/settingsBox.png" alt="Khách hàng Thiết lập" title="Khách hàng Thiết lập" border="0"></a></td>
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
		<div class="small" style="padding:10px">
		
		<table align="center" border="0" cellpadding="0" cellspacing="0" width="95%">
			<tbody><tr><td>		
		  				  				  				 		<span class="dvHeaderText">[ ACC16 ] Trần Thị Khanh -  Khách hàng Thông tin</span>&nbsp;&nbsp;&nbsp;<span class="small">Cập nhật 861 ngày trước (01 Tháng 12 2011)</span>&nbsp;<span id="vtbusy_info" style="display:none;" valign="bottom"><img src="themes/images/vtbusy.gif" border="0"></span><span id="vtbusy_info" style="visibility:hidden;" valign="bottom"><img src="themes/images/vtbusy.gif" border="0"></span>
		 	</td></tr>
		 </tbody></table>			 
		<br>
		
		<!-- Account details tabs -->
		<table border="0" cellspacing="0" cellpadding="0" width="95%" align="center">
		<tbody><tr>
			<td>
				<table border="0" cellspacing="0" cellpadding="3" width="100%" class="small">
				<tbody><tr>
					<td class="dvtTabCache" style="width:10px" nowrap="">&nbsp;</td>
					
					<td class="dvtSelectedCell" align="center" nowrap="">Khách hàng Thông tin</td>	
					<td class="dvtTabCache" style="width:10px">&nbsp;</td>
										<td class="dvtTabCache" align="right" style="width:100%">
												<input title="Sửa [Alt+E]" accesskey="E" class="crmbutton small edit" onclick="DetailView.return_module.value='Accounts'; DetailView.return_action.value='DetailView'; DetailView.return_id.value='137';DetailView.module.value='Accounts';submitFormForAction('DetailView','EditView');" type="button" name="Edit" value="&nbsp;Sửa&nbsp;">&nbsp;
																		<input title="Sao chép [Alt+U]" accesskey="U" class="crmbutton small create" onclick="DetailView.return_module.value='Accounts'; DetailView.return_action.value='DetailView'; DetailView.isDuplicate.value='true';DetailView.module.value='Accounts'; submitFormForAction('DetailView','EditView');" type="button" name="Duplicate" value="Sao chép">&nbsp;
																		<input title="Xóa [Alt+D]" accesskey="D" class="crmbutton small delete" onclick="DetailView.return_module.value='Accounts'; DetailView.return_action.value='index';  var confirmMsg = 'Xóa Khách hàng đồng nghĩa xóa các Cơ hội và Báo giá liên quan. Bạn chắc chắn muốn xóa?' ; submitFormForActionWithConfirmation('DetailView', 'Delete', confirmMsg);" type="button" name="Delete" value="Xóa">&nbsp;
											
												<img align="absmiddle" title="Lùi" src="themes/images/rec_prev_disabled.gif">
													
												<img align="absmiddle" title="JUMP" accesskey="JUMP" onclick="var obj = this;var lhref = getListOfRecords(obj, 'Accounts',137,'Sales');" name="jumpBtnIdTop" id="jumpBtnIdTop" src="themes/images/rec_jump.gif">&nbsp;
																		<img align="absmiddle" title="Tiếp" accesskey="Tiếp" onclick="location.href='index.php?module=Accounts&amp;viewtype=&amp;action=DetailView&amp;record=138&amp;parenttab=Sales&amp;start=1'" name="nextrecord" src="themes/images/rec_next.gif">&nbsp;
											</td>
				</tr>
				</tbody></table>
			</td>
		</tr>
		<tr>
			<td valign="top" align="left">                
				 <table border="0" cellspacing="0" cellpadding="3" width="100%" class="dvtContentSpace" style="border-bottom:0;">
				<tbody><tr valign="top">

					<td align="left">
					<!-- content cache -->
										
					
				<div id="editlistprice" style="position:absolute;width:300px;"></div><table border="0" cellspacing="0" cellpadding="0" width="100%">
                <tbody><tr valign="top">
					<td style="padding:5px">
					<!-- Command Buttons -->
				  	<table border="0" cellspacing="0" cellpadding="0" width="100%">
							 <!-- NOTE: We should avoid form-inside-form condition, which could happen when
								Singlepane view is enabled. -->
							 <form action="index.php" method="post" name="DetailView" id="form"></form>
							<input type="hidden" name="parenttab" value="Sales">
<input type="hidden" name="allselectedboxes" id="allselectedboxes">
	<input type="hidden" name="module" value="Accounts">
	<input type="hidden" name="record" value="137">
	<input type="hidden" name="isDuplicate" value="false">
	<input type="hidden" name="action">
	<input type="hidden" name="return_module">
	<input type="hidden" name="return_action">
	<input type="hidden" name="return_id">
	<input type="hidden" name="contact_id">
	<input type="hidden" name="member_id">
	<input type="hidden" name="opportunity_id">
	<input type="hidden" name="case_id">
	<input type="hidden" name="task_id">
	<input type="hidden" name="meeting_id">
	<input type="hidden" name="call_id">
	<input type="hidden" name="email_id">
	<input type="hidden" name="source_module">
	<input type="hidden" name="entity_id">
	


						
							  <!-- Start of File Include by SAKTI on 10th Apr, 2008 -->
							 
							 <!-- Start of File Include by SAKTI on 10th Apr, 2008 -->

							
							<!-- Detailed View Code starts here-->
							</table><table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
							<tbody><tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                             <td align="right">
							                             </td>
                             </tr>

							<!-- This is added to display the existing comments -->
							

	 
						     <tr><td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblThôngtinKháchhàng','aidThôngtinKháchhàng','themes/softed/images/');"><img id="aidThôngtinKháchhàng" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide"></a></div><b>&nbsp;Thông tin Khách hàng</b></div></td>
					             </tr>
							</tbody></table>
														<div style="width:auto;display:block;" id="tblThôngtinKháchhàng">
														<table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
						   						     <tbody><tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tên Khách hàng</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Tên Khách hàng" onmouseover="hndMouseOver(2,'Tên Khách hàng');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Tên Khách hàng">Trần Thị Khanh</span>
				                <div id="editarea_Tên Khách hàng" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Tên Khách hàng" name="accountname" maxlength="100" value="Trần Thị Khanh">
                    <br><input name="button_Tên Khách hàng" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Tên Khách hàng','Accounts',2,'vtiger_account','accountname','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Tên Khách hàng','editarea_Tên Khách hàng','Tên Khách hàng')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã số Khách hàng</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
											
					<td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;ACC16</td>
																					                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Website</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--WebSite-->
                                                  <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Website" onmouseover="hndMouseOver(17,'Website');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Website"><a href="http://vjl.com.vn" target="_blank">vjl.com.vn</a></span>
                                              		<div id="editarea_Website" style="display:none;">
                                              		  <input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" onkeyup="validateUrl('website');" type="text" id="txtbox_Website" name="website" maxlength="100" value="vjl.com.vn">
                                              		  <br><input name="button_Website" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Website','Accounts',17,'vtiger_account','website','137');fnhide('crmspanid');"> hoặc
                                              		  <a href="javascript:;" onclick="hndCancel('dtlview_Website','editarea_Website','Website')" class="link">Hủy bỏ</a>
                                                       </div>
                                                  </td>
					     																	                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Điện thoại</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Điện thoại" onmouseover="hndMouseOver(11,'Điện thoại');" onmouseout="fnhide('crmspanid');" valign="top">
				
															&nbsp;&nbsp;<span id="dtlview_Điện thoại">0915166889</span>
									                <div id="editarea_Điện thoại" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Điện thoại" name="phone" maxlength="100" value="0915166889">
                    <br><input name="button_Điện thoại" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Điện thoại','Accounts',11,'vtiger_account','phone','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Điện thoại','editarea_Điện thoại','Điện thoại')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã chứng khoán</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mã chứng khoán" onmouseover="hndMouseOver(1,'Mã chứng khoán');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Mã chứng khoán"></span>
				                <div id="editarea_Mã chứng khoán" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Mã chứng khoán" name="tickersymbol" maxlength="100" value="">
                    <br><input name="button_Mã chứng khoán" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Mã chứng khoán','Accounts',1,'vtiger_account','tickersymbol','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Mã chứng khoán','editarea_Mã chứng khoán','Mã chứng khoán')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Fax</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Fax" onmouseover="hndMouseOver(11,'Fax');" onmouseout="fnhide('crmspanid');" valign="top">
				
															&nbsp;&nbsp;<span id="dtlview_Fax">+84-4-3577 2007</span>
									                <div id="editarea_Fax" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Fax" name="fax" maxlength="100" value="+84-4-3577 2007">
                    <br><input name="button_Fax" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Fax','Accounts',11,'vtiger_account','fax','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Fax','editarea_Fax','Fax')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thành viên của</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--AccountPopup-->
                                                  <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thành viên của">&nbsp;<a href="index.php?module=Accounts&amp;action=DetailView&amp;record=0"></a>
                                                  </td>
                                             																	                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Điện thoại khác</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Điện thoại khác" onmouseover="hndMouseOver(11,'Điện thoại khác');" onmouseout="fnhide('crmspanid');" valign="top">
				
															&nbsp;&nbsp;<span id="dtlview_Điện thoại khác"></span>
									                <div id="editarea_Điện thoại khác" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Điện thoại khác" name="otherphone" maxlength="100" value="">
                    <br><input name="button_Điện thoại khác" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Điện thoại khác','Accounts',11,'vtiger_account','otherphone','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Điện thoại khác','editarea_Điện thoại khác','Điện thoại khác')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Số nhân viên</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Số nhân viên" onmouseover="hndMouseOver(7,'Số nhân viên');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Số nhân viên"></span>
				                <div id="editarea_Số nhân viên" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Số nhân viên" name="employees" maxlength="100" value="">
                    <br><input name="button_Số nhân viên" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Số nhân viên','Accounts',7,'vtiger_account','employees','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Số nhân viên','editarea_Số nhân viên','Số nhân viên')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Email</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--Email-->
            <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Email" onmouseover="hndMouseOver(13,'Email');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Email">
									<a href="javascript:InternalMailer(137,9,'email1','Accounts','record_id');">khanhtt@vjl.com.vn</a>
								</span>
                <div id="editarea_Email" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Email" name="email1" maxlength="100" value="khanhtt@vjl.com.vn">
                	<br><input name="button_Email" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Email','Accounts',13,'vtiger_account','email1','137');fnhide('crmspanid');"> hoặc
                	<a href="javascript:;" onclick="hndCancel('dtlview_Email','editarea_Email','Email')" class="link">Hủy bỏ</a>
                </div>
				<div id="internal_mailer_email1" style="display: none;">9####1</div>
                                                  </td>
						                     																	                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Email khác</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--Email-->
            <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Email khác" onmouseover="hndMouseOver(13,'Email khác');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Email khác">
									<a href="javascript:InternalMailer(137,11,'email2','Accounts','record_id');">khanh@s-i-e.jp</a>
								</span>
                <div id="editarea_Email khác" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Email khác" name="email2" maxlength="100" value="khanh@s-i-e.jp">
                	<br><input name="button_Email khác" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Email khác','Accounts',13,'vtiger_account','email2','137');fnhide('crmspanid');"> hoặc
                	<a href="javascript:;" onclick="hndCancel('dtlview_Email khác','editarea_Email khác','Email khác')" class="link">Hủy bỏ</a>
                </div>
				<div id="internal_mailer_email2" style="display: none;">11####1</div>
                                                  </td>
						                     																	                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Người sở hữu</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Người sở hữu" onmouseover="hndMouseOver(1,'Người sở hữu');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Người sở hữu"></span>
				                <div id="editarea_Người sở hữu" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Người sở hữu" name="ownership" maxlength="100" value="">
                    <br><input name="button_Người sở hữu" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Người sở hữu','Accounts',1,'vtiger_account','ownership','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Người sở hữu','editarea_Người sở hữu','Người sở hữu')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Ngành nghề</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--ComboBox-->
													                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																																																	               
							<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Ngành nghề" onmouseover="hndMouseOver(15,'Ngành nghề');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Ngành nghề"><font color="red">Không thể truy cập</font></span>
                                              		<div id="editarea_Ngành nghề" style="display:none;">
                    							   <select id="txtbox_Ngành nghề" name="industry" class="small">
                    																			        							                                <option value="--None--">
							                                                --Chưa chọn--
								                                </option>
							                                
																					        							                                <option value="Apparel">
							                                                Shop quần áo
								                                </option>
							                                
																					        							                                <option value="Banking">
							                                                Shop giầy dép
								                                </option>
							                                
																					        							                                <option value="Biotechnology">
							                                                Siêu thị mini – Bách hóa
								                                </option>
							                                
																					        							                                <option value="Chemicals">
							                                                Hiệu thuốc
								                                </option>
							                                
																					        							                                <option value="Communications">
							                                                Cửa hàng điện thoại
								                                </option>
							                                
																					        							                                <option value="Construction">
							                                                Đồ điện tử, điện dân dụng
								                                </option>
							                                
																					        							                                <option value="Education">
							                                                Trường học – Giáo dục
								                                </option>
							                                
																					        							                                <option value="Finance">
							                                                Ngân hàng - Tài chính
								                                </option>
							                                
																					        							                                <option value="Food &amp; Beverage">
							                                                Food &amp; Beverage
								                                </option>
							                                
																					        							                                <option value="Government">
							                                                Chính phủ
								                                </option>
							                                
																					        							                                <option value="Hieu Vang">
							                                                Hieu Vang
								                                </option>
							                                
																					        							                                <option value="Hospitality">
							                                                Bệnh viện – TT Y tế
								                                </option>
							                                
																					        							                                <option value="Insurance">
							                                                Bảo hiểm
								                                </option>
							                                
																					        							                                <option value="Manufacturing">
							                                                Sản xuất
								                                </option>
							                                
																					        							                                <option value="Other">
							                                                Khác
								                                </option>
							                                
																					        							                                <option value="Transportation">
							                                                Vận tải
								                                </option>
							                                
																					                    									<option value="Không thể truy cập" selected="">Không thể truy cập</option>
											
										                    							   </select>
                    							   <br><input name="button_Ngành nghề" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Ngành nghề','Accounts',15,'vtiger_account','industry','137');fnhide('crmspanid');"> hoặc
                                              		   <a href="javascript:;" onclick="hndCancel('dtlview_Ngành nghề','editarea_Ngành nghề','Ngành nghề')" class="link">Hủy bỏ</a>
                    							</div>
               							</td>
                                          																	                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Đánh giá</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--ComboBox-->
													                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                													               
							<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Đánh giá" onmouseover="hndMouseOver(15,'Đánh giá');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Đánh giá"><font color="">Đạt kết quả</font></span>
                                              		<div id="editarea_Đánh giá" style="display:none;">
                    							   <select id="txtbox_Đánh giá" name="rating" class="small">
                    																			        							                                <option value="--None--">
							                                                --Chưa chọn--
								                                </option>
							                                
																					        							                                <option value="Acquired" selected="">
							                                                Đạt kết quả
								                                </option>
							                                
																					        							                                <option value="Active">
							                                                Hoạt động
								                                </option>
							                                
																					        							                                <option value="Market Failed">
							                                                Thất bại
								                                </option>
							                                
																					        							                                <option value="Project Cancelled">
							                                                Hủy bỏ
								                                </option>
							                                
																					        							                                <option value="Shutdown">
							                                                Ngừng hoạt động
								                                </option>
							                                
										                    							   </select>
                    							   <br><input name="button_Đánh giá" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Đánh giá','Accounts',15,'vtiger_account','rating','137');fnhide('crmspanid');"> hoặc
                                              		   <a href="javascript:;" onclick="hndCancel('dtlview_Đánh giá','editarea_Đánh giá','Đánh giá')" class="link">Hủy bỏ</a>
                    							</div>
               							</td>
                                          																	                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Loại</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--ComboBox-->
													                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                																				                                                                													               
							<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Loại" onmouseover="hndMouseOver(15,'Loại');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Loại"><font color="">Khách hàng</font></span>
                                              		<div id="editarea_Loại" style="display:none;">
                    							   <select id="txtbox_Loại" name="accounttype" class="small">
                    																			        							                                <option value="--None--">
							                                                --Chưa chọn--
								                                </option>
							                                
																					        							                                <option value="Analyst">
							                                                Nhà phân tích
								                                </option>
							                                
																					        							                                <option value="Competitor">
							                                                Đối thủ
								                                </option>
							                                
																					        							                                <option value="Customer" selected="">
							                                                Khách hàng
								                                </option>
							                                
																					        							                                <option value="Integrator">
							                                                Người liên kết
								                                </option>
							                                
																					        							                                <option value="Investor">
							                                                Nhà đầu tư
								                                </option>
							                                
																					        							                                <option value="Kh&amp;aacute;ch h&amp;agrave;ng lẻ">
							                                                Kh&amp;aacute;ch h&amp;agrave;ng lẻ
								                                </option>
							                                
																					        							                                <option value="Kh&amp;aacute;ch lẻ">
							                                                Kh&amp;aacute;ch lẻ
								                                </option>
							                                
																					        							                                <option value="Kh&amp;aacute;ch quen">
							                                                Kh&amp;aacute;ch quen
								                                </option>
							                                
																					        							                                <option value="Ng&amp;agrave;y sinh">
							                                                Ng&amp;agrave;y sinh
								                                </option>
							                                
																					        							                                <option value="Nh&amp;acirc;n vi&amp;ecirc;n">
							                                                Nh&amp;acirc;n vi&amp;ecirc;n
								                                </option>
							                                
																					        							                                <option value="Other">
							                                                Khác
								                                </option>
							                                
																					        							                                <option value="Partner">
							                                                Đối tác
								                                </option>
							                                
																					        							                                <option value="Press">
							                                                Báo chí
								                                </option>
							                                
																					        							                                <option value="Prospect">
							                                                Triển vọng
								                                </option>
							                                
																					        							                                <option value="Reseller">
							                                                Đại lý bán hàng
								                                </option>
							                                
										                    							   </select>
                    							   <br><input name="button_Loại" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Loại','Accounts',15,'vtiger_account','accounttype','137');fnhide('crmspanid');"> hoặc
                                              		   <a href="javascript:;" onclick="hndCancel('dtlview_Loại','editarea_Loại','Loại')" class="link">Hủy bỏ</a>
                    							</div>
               							</td>
                                          																	                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã ngành</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mã ngành" onmouseover="hndMouseOver(1,'Mã ngành');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Mã ngành"></span>
				                <div id="editarea_Mã ngành" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Mã ngành" name="siccode" maxlength="100" value="">
                    <br><input name="button_Mã ngành" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Mã ngành','Accounts',1,'vtiger_account','siccode','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Mã ngành','editarea_Mã ngành','Mã ngành')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Từ chối email</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--CheckBox--> 
                      <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Từ chối email" onmouseover="hndMouseOver(56,'Từ chối email');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Từ chối email">không&nbsp;</span>
                    	<div id="editarea_Từ chối email" style="display:none;">
                    	                        	                          		<input id="txtbox_Từ chối email" type="checkbox" name="emailoptout" style="border:1px solid #bababa;" value="0">
                       		                       	                         <br><input name="button_Từ chối email" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Từ chối email','Accounts',56,'vtiger_account','emailoptout','137');"> hoặc
                          <a href="javascript:;" onclick="hndCancel('dtlview_Từ chối email','editarea_Từ chối email','Từ chối email')" class="link">Hủy bỏ</a>
                        </div>
                        </td>    
																				                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        <!-- Currency symbol -->
					<td class="dvtCellLabel" align="right" width="25%">Doanh thu hàng năm<input type="hidden" id="hdtxt_IsAdmin" value="1"> (₫)</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Doanh thu hàng năm" onmouseover="hndMouseOver(71,'Doanh thu hàng năm');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Doanh thu hàng năm">0</span>
				                <div id="editarea_Doanh thu hàng năm" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Doanh thu hàng năm" name="annual_revenue" maxlength="100" value="0">
                    <br><input name="button_Doanh thu hàng năm" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Doanh thu hàng năm','Accounts',71,'vtiger_account','annual_revenue','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Doanh thu hàng năm','editarea_Doanh thu hàng năm','Doanh thu hàng năm')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Được gán cho</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--Assigned To-->
							<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Được gán cho" onmouseover="hndMouseOver(53,'Được gán cho');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Được gán cho">
															<a href="index.php?module=Users&amp;action=DetailView&amp;record=1">admin</a>         
														&nbsp;</span>
							<div id="editarea_Được gán cho" style="display:none;">
							<input type="hidden" id="hdtxt_Được gán cho" value="admin">
													<input name="assigntype" id="assigntype" checked="checked" value="U" onclick="toggleAssignType(this.value),setSelectValue('Được gán cho');" type="radio">&nbsp;Người dùng
															<input name="assigntype" id="assigntype" value="T" onclick="toggleAssignType(this.value),setSelectValue('Được gán cho');" type="radio">&nbsp;Nhóm
														<span id="assign_user" style="display: block;">
						                   				<select id="txtbox_UĐược gán cho" onchange="setSelectValue('Được gán cho')" name="assigned_user_id" class="small">
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
					                   	<select id="txtbox_GĐược gán cho" onchange="setSelectValue('Được gán cho')" name="assigned_group_id" class="groupname small">
                                        	                       		 <option value="2">Đội sales</option>
                                                                	                       		 <option value="4">Nhóm hỗ trợ</option>
                                                                	                       		 <option value="7">Nhóm kỹ thuật</option>
                                                                	                       		 <option value="3">Nhóm Marketing</option>
                                                                </select>
					</span>

                    <br>
                    <input name="button_Được gán cho" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Được gán cho','Accounts',53,'vtiger_crmentity','assigned_user_id','137');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Được gán cho','editarea_Được gán cho','Được gán cho')" class="link">Hủy bỏ</a>
                    </div>
                    </td>
																							                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thông báo khi dữ liệu này thay đổi</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--CheckBox--> 
                      <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thông báo khi dữ liệu này thay đổi" onmouseover="hndMouseOver(56,'Thông báo khi dữ liệu này thay đổi');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Thông báo khi dữ liệu này thay đổi">có&nbsp;</span>
                    	<div id="editarea_Thông báo khi dữ liệu này thay đổi" style="display:none;">
                    	                        	                            	<input id="txtbox_Thông báo khi dữ liệu này thay đổi" name="notify_owner" type="checkbox" style="border:1px solid #bababa;" checked="" value="1">
                        	                       	                         <br><input name="button_Thông báo khi dữ liệu này thay đổi" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Thông báo khi dữ liệu này thay đổi','Accounts',56,'vtiger_account','notify_owner','137');"> hoặc
                          <a href="javascript:;" onclick="hndCancel('dtlview_Thông báo khi dữ liệu này thay đổi','editarea_Thông báo khi dữ liệu này thay đổi','Thông báo khi dữ liệu này thay đổi')" class="link">Hủy bỏ</a>
                        </div>
                        </td>    
																				                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Cập nhật lúc</td>
													
<!-- This file is used to display the fields based on the ui type in detailview -->
											
			<td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;01-12-2011 07:45:05</td>
									                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Tạo lúc</td>
													
<!-- This file is used to display the fields based on the ui type in detailview -->
											
			<td class="dvtCellInfo" align="left" width="25%&quot;">&nbsp;16-04-2011 05:03:14</td>
									                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Ngày sinh</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
																												<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Ngày sinh" onmouseover="hndMouseOver(5,'Ngày sinh');" onmouseout="fnhide('crmspanid');">
						&nbsp;&nbsp;<span id="dtlview_Ngày sinh">
							12-10-1979
						</span>
						<div id="editarea_Ngày sinh" style="display:none;">
							<input style="border:1px solid #bababa;" size="11" maxlength="10" type="text" id="txtbox_Ngày sinh" name="cf_607" value="12-10-1979">
							<img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_cf_607">
							<br><input name="button_Ngày sinh" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Ngày sinh','Accounts',5,'vtiger_accountscf','cf_607','137');fnhide('crmspanid');"> hoặc
							<a href="javascript:;" onclick="hndCancel('dtlview_Ngày sinh','editarea_Ngày sinh','Ngày sinh')" class="link">Hủy bỏ</a>
							<script type="text/javascript">
								Calendar.setup ({
									inputField : "txtbox_Ngày sinh", ifFormat : '%d-%m-%Y', showsTime : false, button : "jscal_trigger_cf_607", singleClick : true, step : 1
								})
							</script>
						</div>
					</td>

																					                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Loại Sản Phẩm</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--ComboBox-->
													                                                                																				                                                                																				                                                                																				                                                                																				                                                                													               
							<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Loại Sản Phẩm" onmouseover="hndMouseOver(15,'Loại Sản Phẩm');" onmouseout="fnhide('crmspanid');"><span id="dtlview_Loại Sản Phẩm"><font color=""></font></span>
                                              		<div id="editarea_Loại Sản Phẩm" style="display:none;">
                    							   <select id="txtbox_Loại Sản Phẩm" name="cf_638" class="small">
                    																			        							                                <option value="CRM">
							                                                CRM
								                                </option>
							                                
																					        							                                <option value="BMS">
							                                                BMS
								                                </option>
							                                
																					        							                                <option value="eDOC">
							                                                eDOC
								                                </option>
							                                
																					        							                                <option value="HRM">
							                                                HRM
								                                </option>
							                                
																					        							                                <option value="SLL">
							                                                SLL
								                                </option>
							                                
										                    							   </select>
                    							   <br><input name="button_Loại Sản Phẩm" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Loại Sản Phẩm','Accounts',15,'vtiger_accountscf','cf_638','137');fnhide('crmspanid');"> hoặc
                                              		   <a href="javascript:;" onclick="hndCancel('dtlview_Loại Sản Phẩm','editarea_Loại Sản Phẩm','Loại Sản Phẩm')" class="link">Hủy bỏ</a>
                    							</div>
               							</td>
                                          																	                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Nhu cầu gửi đĩa</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--CheckBox--> 
                      <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Nhu cầu gửi đĩa" onmouseover="hndMouseOver(56,'Nhu cầu gửi đĩa');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Nhu cầu gửi đĩa">không&nbsp;</span>
                    	<div id="editarea_Nhu cầu gửi đĩa" style="display:none;">
                    	                        	                          		<input id="txtbox_Nhu cầu gửi đĩa" type="checkbox" name="cf_639" style="border:1px solid #bababa;" value="0">
                       		                       	                         <br><input name="button_Nhu cầu gửi đĩa" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Nhu cầu gửi đĩa','Accounts',56,'vtiger_accountscf','cf_639','137');"> hoặc
                          <a href="javascript:;" onclick="hndCancel('dtlview_Nhu cầu gửi đĩa','editarea_Nhu cầu gửi đĩa','Nhu cầu gửi đĩa')" class="link">Hủy bỏ</a>
                        </div>
                        </td>    
																				                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Nhu cầu đại lý</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--CheckBox--> 
                      <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Nhu cầu đại lý" onmouseover="hndMouseOver(56,'Nhu cầu đại lý');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Nhu cầu đại lý">không&nbsp;</span>
                    	<div id="editarea_Nhu cầu đại lý" style="display:none;">
                    	                        	                          		<input id="txtbox_Nhu cầu đại lý" type="checkbox" name="cf_640" style="border:1px solid #bababa;" value="0">
                       		                       	                         <br><input name="button_Nhu cầu đại lý" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Nhu cầu đại lý','Accounts',56,'vtiger_accountscf','cf_640','137');"> hoặc
                          <a href="javascript:;" onclick="hndCancel('dtlview_Nhu cầu đại lý','editarea_Nhu cầu đại lý','Nhu cầu đại lý')" class="link">Hủy bỏ</a>
                        </div>
                        </td>    
																				                                      						      </tr>	
						   	
						     </tbody></table>
							 </div>
                     	                      </td>
					   </tr>
		<tr><td style="padding:5px">
			
							<!-- Detailed View Code starts here-->
							<table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
							<tbody><tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                             <td align="right">
							                                                          <input name="mapbutton" value="Bản đồ định vị" class="crmbutton small create" type="button" onclick="fnvshobj(this,'locateMap');" onmouseout="fninvsh('locateMap');" title="Bản đồ định vị">
							                                                          </td>
                             </tr>

							<!-- This is added to display the existing comments -->
							

	 
						     <tr><td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblThôngtinđịachỉ','aidThôngtinđịachỉ','themes/softed/images/');"><img id="aidThôngtinđịachỉ" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display"></a></div><b>&nbsp;Thông tin địa chỉ</b></div></td>
					             </tr>
							</tbody></table>
														<div style="width:auto;display:none;" id="tblThôngtinđịachỉ">
														<table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
						   						     <tbody><tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Địa chỉ thanh toán</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextArea/Street-->
                                                  <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Địa chỉ thanh toán" onmouseover="hndMouseOver(21,'Địa chỉ thanh toán');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Địa chỉ thanh toán"></span>
                                              		<div id="editarea_Địa chỉ thanh toán" style="display:none;">
                                              		  <textarea id="txtbox_Địa chỉ thanh toán" name="bill_street" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" rows="2"></textarea>                                            		  
                                              		  <br><input name="button_Địa chỉ thanh toán" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Địa chỉ thanh toán','Accounts',21,'vtiger_accountbillads','bill_street','137');fnhide('crmspanid');"> hoặc
                                              		  <a href="javascript:;" onclick="hndCancel('dtlview_Địa chỉ thanh toán','editarea_Địa chỉ thanh toán','Địa chỉ thanh toán')" class="link">Hủy bỏ</a>
                                                       </div>
                                                  </td>
                                             																	                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Địa chỉ vận chuyển</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextArea/Street-->
                                                  <td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Địa chỉ vận chuyển" onmouseover="hndMouseOver(21,'Địa chỉ vận chuyển');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Địa chỉ vận chuyển"></span>
                                              		<div id="editarea_Địa chỉ vận chuyển" style="display:none;">
                                              		  <textarea id="txtbox_Địa chỉ vận chuyển" name="ship_street" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" rows="2"></textarea>                                            		  
                                              		  <br><input name="button_Địa chỉ vận chuyển" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Địa chỉ vận chuyển','Accounts',21,'vtiger_accountshipads','ship_street','137');fnhide('crmspanid');"> hoặc
                                              		  <a href="javascript:;" onclick="hndCancel('dtlview_Địa chỉ vận chuyển','editarea_Địa chỉ vận chuyển','Địa chỉ vận chuyển')" class="link">Hủy bỏ</a>
                                                       </div>
                                                  </td>
                                             																	                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Hộp thư thanh toán</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Hộp thư thanh toán" onmouseover="hndMouseOver(1,'Hộp thư thanh toán');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Hộp thư thanh toán"></span>
				                <div id="editarea_Hộp thư thanh toán" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Hộp thư thanh toán" name="bill_pobox" maxlength="100" value="">
                    <br><input name="button_Hộp thư thanh toán" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Hộp thư thanh toán','Accounts',1,'vtiger_accountbillads','bill_pobox','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Hộp thư thanh toán','editarea_Hộp thư thanh toán','Hộp thư thanh toán')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Hộp thư vận chuyển</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Hộp thư vận chuyển" onmouseover="hndMouseOver(1,'Hộp thư vận chuyển');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Hộp thư vận chuyển"></span>
				                <div id="editarea_Hộp thư vận chuyển" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Hộp thư vận chuyển" name="ship_pobox" maxlength="100" value="">
                    <br><input name="button_Hộp thư vận chuyển" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Hộp thư vận chuyển','Accounts',1,'vtiger_accountshipads','ship_pobox','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Hộp thư vận chuyển','editarea_Hộp thư vận chuyển','Hộp thư vận chuyển')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thanh toán tại thành phố</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thanh toán tại thành phố" onmouseover="hndMouseOver(1,'Thanh toán tại thành phố');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Thanh toán tại thành phố"></span>
				                <div id="editarea_Thanh toán tại thành phố" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Thanh toán tại thành phố" name="bill_city" maxlength="100" value="">
                    <br><input name="button_Thanh toán tại thành phố" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Thanh toán tại thành phố','Accounts',1,'vtiger_accountbillads','bill_city','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Thanh toán tại thành phố','editarea_Thanh toán tại thành phố','Thanh toán tại thành phố')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Vận chuyển tới thành phố</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Vận chuyển tới thành phố" onmouseover="hndMouseOver(1,'Vận chuyển tới thành phố');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Vận chuyển tới thành phố"></span>
				                <div id="editarea_Vận chuyển tới thành phố" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Vận chuyển tới thành phố" name="ship_city" maxlength="100" value="">
                    <br><input name="button_Vận chuyển tới thành phố" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Vận chuyển tới thành phố','Accounts',1,'vtiger_accountshipads','ship_city','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Vận chuyển tới thành phố','editarea_Vận chuyển tới thành phố','Vận chuyển tới thành phố')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thanh toán tại Tỉnh/Bang</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thanh toán tại Tỉnh/Bang" onmouseover="hndMouseOver(1,'Thanh toán tại Tỉnh/Bang');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Thanh toán tại Tỉnh/Bang"></span>
				                <div id="editarea_Thanh toán tại Tỉnh/Bang" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Thanh toán tại Tỉnh/Bang" name="bill_state" maxlength="100" value="">
                    <br><input name="button_Thanh toán tại Tỉnh/Bang" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Thanh toán tại Tỉnh/Bang','Accounts',1,'vtiger_accountbillads','bill_state','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Thanh toán tại Tỉnh/Bang','editarea_Thanh toán tại Tỉnh/Bang','Thanh toán tại Tỉnh/Bang')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Vận chuyển tới Tỉnh/Bang</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Vận chuyển tới Tỉnh/Bang" onmouseover="hndMouseOver(1,'Vận chuyển tới Tỉnh/Bang');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Vận chuyển tới Tỉnh/Bang"></span>
				                <div id="editarea_Vận chuyển tới Tỉnh/Bang" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Vận chuyển tới Tỉnh/Bang" name="ship_state" maxlength="100" value="">
                    <br><input name="button_Vận chuyển tới Tỉnh/Bang" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Vận chuyển tới Tỉnh/Bang','Accounts',1,'vtiger_accountshipads','ship_state','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Vận chuyển tới Tỉnh/Bang','editarea_Vận chuyển tới Tỉnh/Bang','Vận chuyển tới Tỉnh/Bang')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã vùng thanh toán</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mã vùng thanh toán" onmouseover="hndMouseOver(1,'Mã vùng thanh toán');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Mã vùng thanh toán"></span>
				                <div id="editarea_Mã vùng thanh toán" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Mã vùng thanh toán" name="bill_code" maxlength="100" value="">
                    <br><input name="button_Mã vùng thanh toán" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Mã vùng thanh toán','Accounts',1,'vtiger_accountbillads','bill_code','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Mã vùng thanh toán','editarea_Mã vùng thanh toán','Mã vùng thanh toán')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mã vùng vận chuyển</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Mã vùng vận chuyển" onmouseover="hndMouseOver(1,'Mã vùng vận chuyển');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Mã vùng vận chuyển"></span>
				                <div id="editarea_Mã vùng vận chuyển" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Mã vùng vận chuyển" name="ship_code" maxlength="100" value="">
                    <br><input name="button_Mã vùng vận chuyển" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Mã vùng vận chuyển','Accounts',1,'vtiger_accountshipads','ship_code','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Mã vùng vận chuyển','editarea_Mã vùng vận chuyển','Mã vùng vận chuyển')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      						      </tr>	
						   						     <tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Thanh toán tại quốc gia</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Thanh toán tại quốc gia" onmouseover="hndMouseOver(1,'Thanh toán tại quốc gia');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Thanh toán tại quốc gia"></span>
				                <div id="editarea_Thanh toán tại quốc gia" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Thanh toán tại quốc gia" name="bill_country" maxlength="100" value="">
                    <br><input name="button_Thanh toán tại quốc gia" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Thanh toán tại quốc gia','Accounts',1,'vtiger_accountbillads','bill_country','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Thanh toán tại quốc gia','editarea_Thanh toán tại quốc gia','Thanh toán tại quốc gia')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      							   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Vận chuyển tới quốc gia</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextBox-->
			<td width="25%" class="dvtCellInfo" align="left" id="mouseArea_Vận chuyển tới quốc gia" onmouseover="hndMouseOver(1,'Vận chuyển tới quốc gia');" onmouseout="fnhide('crmspanid');" valign="top">
				
									&nbsp;&nbsp;<span id="dtlview_Vận chuyển tới quốc gia"></span>
				                <div id="editarea_Vận chuyển tới quốc gia" style="display:none;">
                	<input class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" type="text" id="txtbox_Vận chuyển tới quốc gia" name="ship_country" maxlength="100" value="">
                    <br><input name="button_Vận chuyển tới quốc gia" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Vận chuyển tới quốc gia','Accounts',1,'vtiger_accountshipads','ship_country','137');fnhide('crmspanid');"> hoặc
                    <a href="javascript:;" onclick="hndCancel('dtlview_Vận chuyển tới quốc gia','editarea_Vận chuyển tới quốc gia','Vận chuyển tới quốc gia')" class="link">Hủy bỏ</a>
                </div>
                            </td>
        																	                                      						      </tr>	
						   	
						     </tbody></table>
							 </div>
                     	                      </td>
					   </tr>
		<tr><td style="padding:5px">
			
							<!-- Detailed View Code starts here-->
							<table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
							<tbody><tr>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                            <td>&nbsp;</td>
                             <td align="right">
							                             </td>
                             </tr>

							<!-- This is added to display the existing comments -->
							

	 
						     <tr><td colspan="4" class="dvInnerHeader"><div style="float:left;font-weight:bold;"><div style="float:left;"><a href="javascript:showHideStatus('tblThôngtinmôtả','aidThôngtinmôtả','themes/softed/images/');"><img id="aidThôngtinmôtả" src="themes/images/activate.gif" style="border: 0px solid #000000;" alt="Hide" title="Hide"></a></div><b>&nbsp;Thông tin mô tả</b></div></td>
					             </tr>
							</tbody></table>
														<div style="width:auto;display:block;" id="tblThôngtinmôtả">
														<table border="0" cellspacing="0" cellpadding="0" width="100%" class="small">
						   						     <tbody><tr style="height:25px">
														   							   							   							   							   							   							   							   							   							   							   							   							   							   							   
							   
                           	                        					<td class="dvtCellLabel" align="right" width="25%"><input type="hidden" id="hdtxt_IsAdmin" value="1">Mô tả</td>
																								
<!-- This file is used to display the fields based on the ui type in detailview -->
		 <!--TextArea/Description-->
						<!-- we will empty the value of ticket and faq comment -->
													<!--  -->
							<!-- -->
							                                                        <td width="100%" colspan="3" class="dvtCellInfo" align="left" id="mouseArea_Mô tả" onmouseover="hndMouseOver(19,'Mô tả');" onmouseout="fnhide('crmspanid');">&nbsp;<span id="dtlview_Mô tả">
								Khách hàng thiết kế website <a href="http://vjl.com.vn" target="_blank">http://vjl.com.vn</a>
                                                                </span>
                                                                <div id="editarea_Mô tả" style="display:none;">
                                                                <textarea id="txtbox_Mô tả" name="description" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" cols="90" rows="8">Khách hàng thiết kế website http://vjl.com.vn</textarea>
                                                                <br><input name="button_Mô tả" type="button" class="crmbutton small save" value="Lưu" onclick="dtlViewAjaxSave('Mô tả','Accounts',19,'vtiger_crmentity','description','137');fnhide('crmspanid');"> hoặc
                                                                <a href="javascript:;" onclick="hndCancel('dtlview_Mô tả','editarea_Mô tả','Mô tả')" class="link">Hủy bỏ</a>
                                                                </div>
                                                        </td>
                                                                                                																	                                      						      </tr>	
						   	
						     </tbody></table>
							 </div>
                     	                      </td>
					   </tr>
		<tr><td style="padding:5px">
			                                        
																	</td></tr><tr>
					<td style="padding:5px;">
					 
<table class="small" border="0" cellpadding="0" cellspacing="0" width="100%">
<tbody><tr>
<td colspan="4" class="dvInnerHeader">
	<div style="float: left; font-weight: bold;">
	<div style="float: left;">
	<a href="javascript:showHideStatus('tblModCommentsDetailViewBlockCommentWidget','aidModCommentsDetailViewBlockCommentWidget','$IMAGE_PATH');"><img id="aidModCommentsDetailViewBlockCommentWidget" src="themes/images/activate.gif" style="border: 0px solid rgb(0, 0, 0);" alt="Hide" title="Hide"></a>
	</div><b>&nbsp;LBL_MODCOMMENTS_INFORMATION</b></div>
	<span style="float: right;">
		<img src="themes/images/vtbusy.gif" border="0" id="indicatorModCommentsDetailViewBlockCommentWidget" style="display:none;">
		Xem  <select class="small" onchange="ModCommentsCommon.reloadContentWithFiltering('DetailViewBlockCommentWidget', '137', this.value, 'tblModCommentsDetailViewBlockCommentWidget', 'indicatorModCommentsDetailViewBlockCommentWidget');">
			<option value="All" selected="">Tất cả</option>
			<option value="Last5"></option>
			<option value="Mine"></option>
		</select>
	</span>
	</td>
</tr>
</tbody></table>

<div id="tblModCommentsDetailViewBlockCommentWidget">
	
	<table class="small" border="0" cellpadding="0" cellspacing="0" width="100%">
	
	<tbody><tr style="height: 25px;">
		<td colspan="4" align="left" class="dvtCellInfo">
		<div id="contentwrap_ModCommentsDetailViewBlockCommentWidget" style="overflow: auto; height: 250px; width: 100%;">
					</div>
		</td>
	</tr>
	
	<tr style="height: 25px;">
	<td class="dvtCellLabel" align="right">
		
	</td>
	<td width="100%" colspan="3" class="dvtCellInfo" align="left" id="mouseArea_ModCommentsDetailViewBlockCommentWidget" onmouseover="hndMouseOver(19,'ModCommentsDetailViewBlockCommentWidget');" onmouseout="fnhide('crmspanid');">
		<span id="dtlview_ModCommentsDetailViewBlockCommentWidget"></span>
		<div id="editarea_ModCommentsDetailViewBlockCommentWidget" style="display:none;">
			<textarea id="txtbox_ModCommentsDetailViewBlockCommentWidget" class="detailedViewTextBox" onfocus="this.className='detailedViewTextBoxOn'" onblur="this.className='detailedViewTextBox'" cols="90" rows="8"></textarea>
			<br><input type="button" class="crmbutton small save" value="Lưu" onclick="ModCommentsCommon.addComment('ModCommentsDetailViewBlockCommentWidget', '137');fnhide('crmspanid');"> hoặc
			<a href="javascript:;" onclick="hndCancel('dtlview_ModCommentsDetailViewBlockCommentWidget','editarea_ModCommentsDetailViewBlockCommentWidget','ModCommentsDetailViewBlockCommentWidget')" class="link">Hủy bỏ</a>
		</div>
	</td>							
	</tr>
	
	</tbody></table>
</div>					</td>
				</tr>
													                    
                  			   
			
                
		<!-- Inventory - Product Details informations -->
		   <tr>
			
		   </tr>
			
				
			<!-- End the form related to detail view -->			

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

		<!-- PUBLIC CONTENTS STARTS-->
		
			<!-- Account details tabs -->
			<tr>
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
<input type="hidden" name="return_module" id="return_module" value="Accounts">
<input type="hidden" name="RLreturn_module" id="RLreturn_module" value="Accounts">
<input type="hidden" name="allselectedboxes" id="allselectedboxes">
	<input type="hidden" name="return_action" value="DetailView">
<input type="hidden" name="return_id" value="137">
<input type="hidden" name="parent_id" id="parent_id" value="137">
<input type="hidden" name="RLparent_id" id="RLparent_id" value="137">
<input type="hidden" name="parenttab" id="parenttab" value="Sales">
<input type="hidden" name="action">
        <input type="hidden" name="account_id" value="137">
	
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=Contacts&relation_id=1&actions=add&parenttab=Sales',
						'tbl_Accounts_Contacts','Accounts_Contacts');">
						<img id="show_Accounts_Contacts" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_Contacts','Accounts_Contacts');">
						<img id="hide_Accounts_Contacts" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Liên hệ&nbsp;
				<img id="indicator_Accounts_Contacts" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=1&header=Contacts',
						'tbl_Accounts_Contacts','Accounts_Contacts');">
						<img id="delete_Accounts_Contacts" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_Contacts"></div>
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=Potentials&relation_id=2&actions=add&parenttab=Sales',
						'tbl_Accounts_Potentials','Accounts_Potentials');">
						<img id="show_Accounts_Potentials" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_Potentials','Accounts_Potentials');">
						<img id="hide_Accounts_Potentials" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Cơ hội&nbsp;
				<img id="indicator_Accounts_Potentials" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=2&header=Potentials',
						'tbl_Accounts_Potentials','Accounts_Potentials');">
						<img id="delete_Accounts_Potentials" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_Potentials"></div>
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=Quotes&relation_id=3&actions=add&parenttab=Sales',
						'tbl_Accounts_Quotes','Accounts_Quotes');">
						<img id="show_Accounts_Quotes" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_Quotes','Accounts_Quotes');">
						<img id="hide_Accounts_Quotes" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Báo giá&nbsp;
				<img id="indicator_Accounts_Quotes" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=3&header=Quotes',
						'tbl_Accounts_Quotes','Accounts_Quotes');">
						<img id="delete_Accounts_Quotes" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_Quotes"></div>
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=Sales Order&relation_id=4&actions=add&parenttab=Sales',
						'tbl_Accounts_SalesOrder','Accounts_SalesOrder');">
						<img id="show_Accounts_SalesOrder" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_SalesOrder','Accounts_SalesOrder');">
						<img id="hide_Accounts_SalesOrder" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Đặt hàng&nbsp;
				<img id="indicator_Accounts_SalesOrder" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=4&header=Sales Order',
						'tbl_Accounts_SalesOrder','Accounts_SalesOrder');">
						<img id="delete_Accounts_SalesOrder" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_SalesOrder"></div>
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=Invoice&relation_id=5&actions=add&parenttab=Sales',
						'tbl_Accounts_Invoice','Accounts_Invoice');">
						<img id="show_Accounts_Invoice" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_Invoice','Accounts_Invoice');">
						<img id="hide_Accounts_Invoice" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Hóa đơn&nbsp;
				<img id="indicator_Accounts_Invoice" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=5&header=Invoice',
						'tbl_Accounts_Invoice','Accounts_Invoice');">
						<img id="delete_Accounts_Invoice" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_Invoice"></div>
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=Activities&relation_id=6&actions=add&parenttab=Sales',
						'tbl_Accounts_Activities','Accounts_Activities');">
						<img id="show_Accounts_Activities" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_Activities','Accounts_Activities');">
						<img id="hide_Accounts_Activities" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Hoạt động&nbsp;
				<img id="indicator_Accounts_Activities" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=6&header=Activities',
						'tbl_Accounts_Activities','Accounts_Activities');">
						<img id="delete_Accounts_Activities" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_Activities"></div>
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=Emails&relation_id=7&actions=add&parenttab=Sales',
						'tbl_Accounts_Emails','Accounts_Emails');">
						<img id="show_Accounts_Emails" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_Emails','Accounts_Emails');">
						<img id="hide_Accounts_Emails" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Thư điện tử&nbsp;
				<img id="indicator_Accounts_Emails" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=7&header=Emails',
						'tbl_Accounts_Emails','Accounts_Emails');">
						<img id="delete_Accounts_Emails" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_Emails"></div>
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=Activity History&relation_id=8&actions=add&parenttab=Sales',
						'tbl_Accounts_ActivityHistory','Accounts_ActivityHistory');">
						<img id="show_Accounts_ActivityHistory" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_ActivityHistory','Accounts_ActivityHistory');">
						<img id="hide_Accounts_ActivityHistory" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Theo dõi hoạt động&nbsp;
				<img id="indicator_Accounts_ActivityHistory" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=8&header=Activity History',
						'tbl_Accounts_ActivityHistory','Accounts_ActivityHistory');">
						<img id="delete_Accounts_ActivityHistory" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_ActivityHistory"></div>
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=Documents&relation_id=9&actions=add,select&parenttab=Sales',
						'tbl_Accounts_Documents','Accounts_Documents');">
						<img id="show_Accounts_Documents" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_Documents','Accounts_Documents');">
						<img id="hide_Accounts_Documents" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Tài liệu&nbsp;
				<img id="indicator_Accounts_Documents" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=9&header=Documents',
						'tbl_Accounts_Documents','Accounts_Documents');">
						<img id="delete_Accounts_Documents" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_Documents"></div>
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=HelpDesk&relation_id=10&actions=add&parenttab=Sales',
						'tbl_Accounts_HelpDesk','Accounts_HelpDesk');">
						<img id="show_Accounts_HelpDesk" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_HelpDesk','Accounts_HelpDesk');">
						<img id="hide_Accounts_HelpDesk" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Trợ giúp&nbsp;
				<img id="indicator_Accounts_HelpDesk" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=10&header=HelpDesk',
						'tbl_Accounts_HelpDesk','Accounts_HelpDesk');">
						<img id="delete_Accounts_HelpDesk" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_HelpDesk"></div>
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=Products&relation_id=11&actions=select&parenttab=Sales',
						'tbl_Accounts_Products','Accounts_Products');">
						<img id="show_Accounts_Products" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_Products','Accounts_Products');">
						<img id="hide_Accounts_Products" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Sản phẩm&nbsp;
				<img id="indicator_Accounts_Products" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=11&header=Products',
						'tbl_Accounts_Products','Accounts_Products');">
						<img id="delete_Accounts_Products" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_Products"></div>
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=Campaigns&relation_id=87&actions=select&parenttab=Sales',
						'tbl_Accounts_Campaigns','Accounts_Campaigns');">
						<img id="show_Accounts_Campaigns" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_Campaigns','Accounts_Campaigns');">
						<img id="hide_Accounts_Campaigns" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Chiến dịch&nbsp;
				<img id="indicator_Accounts_Campaigns" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=87&header=Campaigns',
						'tbl_Accounts_Campaigns','Accounts_Campaigns');">
						<img id="delete_Accounts_Campaigns" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_Campaigns"></div>
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=Service Contracts&relation_id=92&actions=ADD&parenttab=Sales',
						'tbl_Accounts_ServiceContracts','Accounts_ServiceContracts');">
						<img id="show_Accounts_ServiceContracts" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_ServiceContracts','Accounts_ServiceContracts');">
						<img id="hide_Accounts_ServiceContracts" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Hợp đồng dịch vụ&nbsp;
				<img id="indicator_Accounts_ServiceContracts" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=92&header=Service Contracts',
						'tbl_Accounts_ServiceContracts','Accounts_ServiceContracts');">
						<img id="delete_Accounts_ServiceContracts" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_ServiceContracts"></div>
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=Services&relation_id=107&actions=SELECT&parenttab=Sales',
						'tbl_Accounts_Services','Accounts_Services');">
						<img id="show_Accounts_Services" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_Services','Accounts_Services');">
						<img id="hide_Accounts_Services" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Dịch vụ&nbsp;
				<img id="indicator_Accounts_Services" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=107&header=Services',
						'tbl_Accounts_Services','Accounts_Services');">
						<img id="delete_Accounts_Services" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_Services"></div>
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
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&record=137&ajxaction=LOADRELATEDLIST&header=Assets&relation_id=113&actions=ADD&parenttab=Sales',
						'tbl_Accounts_Assets','Accounts_Assets');">
						<img id="show_Accounts_Assets" src="themes/images/inactivate.gif" style="border: 0px solid #000000;" alt="Display" title="Display">
					</a>
					<a href="javascript:hideRelatedListBlock('tbl_Accounts_Assets','Accounts_Assets');">
						<img id="hide_Accounts_Assets" src="themes/images/activate.gif" style="border: 0px solid #000000;display:none;" alt="Display" title="Display">
					</a>					
				</span>
				&nbsp;Assets&nbsp;
				<img id="indicator_Accounts_Assets" style="display:none;" src="themes/images/vtbusy.gif" border="0" align="absmiddle">
				<div style="float: right;width: 2em;">
					<a href="javascript:disableRelatedListBlock(
						'module=Accounts&action=AccountsAjax&file=DetailViewAjax&ajxaction=DISABLEMODULE&relation_id=113&header=Assets',
						'tbl_Accounts_Assets','Accounts_Assets');">
						<img id="delete_Accounts_Assets" style="display:none;" src="themes/images/windowMinMax.gif" border="0" align="absmiddle">
					</a>
				</div>
			</div>
		</td>
	</tr>
	<tr>
		<td>
			<div id="tbl_Accounts_Assets"></div>
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
		
		</td>
		<td width="22%" valign="top" style="border-left:1px dashed #cccccc;padding:13px">
				  
			<!-- right side relevant info -->
			<!-- Action links for Event & Todo START-by Minnie -->
			  			<table width="100%" border="0" cellpadding="5" cellspacing="0">
				<tbody><tr><td>&nbsp;</td></tr>				
								
				                              
				<tr><td align="left" class="genHeaderSmall">Hoạt động</td></tr>
						
																									
				
																	
					<tr>
						<td align="left" style="padding-left:10px;"> 
							<input type="hidden" name="pri_email" value="khanhtt@vjl.com.vn">
							<input type="hidden" name="sec_email" value="khanh@s-i-e.jp">
							<a href="javascript:void(0);" class="webMnu" onclick="if(LTrim('khanhtt@vjl.com.vn') !='' || LTrim('khanh@s-i-e.jp') !=''){fnvshobj(this,'sendmail_cont');sendmail('Accounts',137)}else{OpenCompose('','create')}"><img src="themes/images/sendmail.png" hspace="5" align="absmiddle" border="0"></a>&nbsp;
							<a href="javascript:void(0);" class="webMnu" onclick="if(LTrim('khanhtt@vjl.com.vn') !='' || LTrim('khanh@s-i-e.jp') !=''){fnvshobj(this,'sendmail_cont');sendmail('Accounts',137)}else{OpenCompose('','create')}">Gửi Mail</a>
						</td>
					</tr>
																
						
					<tr>
						<td align="left" style="padding-left:10px;"> 
				        	<a href="index.php?module=Calendar&amp;action=EditView&amp;return_module=Accounts&amp;return_action=DetailView&amp;activity_mode=Events&amp;return_id=137&amp;parent_id=137&amp;parenttab=Sales" class="webMnu"><img src="themes/images/AddEvent.gif" hspace="5" align="absmiddle" border="0"></a>
							<a href="index.php?module=Calendar&amp;action=EditView&amp;return_module=Accounts&amp;return_action=DetailView&amp;activity_mode=Events&amp;return_id=137&amp;parent_id=137&amp;parenttab=Sales" class="webMnu">Thêm Sự kiện</a>
						</td>
					</tr>
							
										<tr>
						<td align="left" style="padding-left:10px;">
					        <a href="index.php?module=Calendar&amp;action=EditView&amp;return_module=Accounts&amp;return_action=DetailView&amp;activity_mode=Task&amp;return_id=137&amp;parent_id=137&amp;parenttab=Sales" class="webMnu"><img src="themes/images/AddToDo.gif" hspace="5" align="absmiddle" border="0"></a>
							<a href="index.php?module=Calendar&amp;action=EditView&amp;return_module=Accounts&amp;return_action=DetailView&amp;activity_mode=Task&amp;return_id=137&amp;parent_id=137&amp;parenttab=Sales" class="webMnu">Thêm Tác vụ</a>
						</td>
					</tr>
							
												
					
										
					<!-- Start: Actions for Documents Module -->
															
				<!-- End: Actions for Documents Module -->	
                  </tbody></table>
                                						
										<table width="100%" border="0" cellpadding="5" cellspacing="0">
								<tbody><tr>
					<td align="left" style="padding-left:10px;">
																																																		<a class="webMnu" href="index.php?module=Documents&amp;action=EditView&amp;return_module=Accounts&amp;return_action=DetailView&amp;return_id=137&amp;parent_id=137"><img hspace="5" align="absmiddle" border="0" src="themes/images/bookMark.gif"></a>
												<a class="webMnu" href="index.php?module=Documents&amp;action=EditView&amp;return_module=Accounts&amp;return_action=DetailView&amp;return_id=137&amp;parent_id=137">Thêm ghi chú</a>
					</td>
				</tr>
								<tr>
					<td align="left" style="padding-left:10px;">
																																																		<a class="webMnu" href="index.php?module=Accounts&amp;action=AccountHierarchy&amp;accountid=137">Hiển thị cấp bậc khách hàng</a>
					</td>
				</tr>
								<tr>
					<td align="left" style="padding-left:10px;">
																																																		<a class="webMnu" href="javascript:SMSNotifierCommon.displaySelectWizard_DetailView('Accounts', '137');">Send SMS</a>
					</td>
				</tr>
								</tbody></table>
						
								                <!-- Action links END -->

					<!-- Mail Merge-->
				<br>
								<form action="index.php" method="post" name="TemplateMerge" id="form">
				<input type="hidden" name="module" value="Accounts">
				<input type="hidden" name="parenttab" value="Sales">
				<input type="hidden" name="record" value="137">
				<input type="hidden" name="action">
  				<table border="0" cellspacing="0" cellpadding="0" width="100%" class="rightMailMerge">
      				<tbody><tr>
      					   <td class="rightMailMergeHeader"><b>Chọn mẫu để ghép nối Mail	</b></td>
      				</tr>
      				<tr style="height:25px">
					<td class="rightMailMergeContent">
												<a href="index.php?module=Settings&amp;action=upload&amp;tempModule=Accounts&amp;parenttab=Settings">Tạo mẫu trộn thư </a>
											</td>
      				</tr>
  				</tbody></table>
				</form>
								
																																							</td>
		</tr>
		</tbody></table>
		
		
		<!-- PUBLIC CONTENTS STOPS-->
	</td>
</tr>
	<tr>
		<td>			
			<table border="0" cellspacing="0" cellpadding="3" width="100%" class="small">
				<tbody><tr>
					<td class="dvtTabCacheBottom" style="width:10px" nowrap="">&nbsp;</td>
					
					<td class="dvtSelectedCellBottom" align="center" nowrap="">Khách hàng Thông tin</td>	
					<td class="dvtTabCacheBottom" style="width:10px">&nbsp;</td>
										<td class="dvtTabCacheBottom" align="right" style="width:100%">
						&nbsp;
												<input title="Sửa [Alt+E]" accesskey="E" class="crmbutton small edit" onclick="DetailView.return_module.value='Accounts'; DetailView.return_action.value='DetailView'; DetailView.return_id.value='137';DetailView.module.value='Accounts';submitFormForAction('DetailView','EditView');" type="submit" name="Edit" value="&nbsp;Sửa&nbsp;">&nbsp;
																				<input title="Sao chép [Alt+U]" accesskey="U" class="crmbutton small create" onclick="DetailView.return_module.value='Accounts'; DetailView.return_action.value='DetailView'; DetailView.isDuplicate.value='true';DetailView.module.value='Accounts'; submitFormForAction('DetailView','EditView');" type="submit" name="Duplicate" value="Sao chép">&nbsp;
																				<input title="Xóa [Alt+D]" accesskey="D" class="crmbutton small delete" onclick="DetailView.return_module.value='Accounts'; DetailView.return_action.value='index';  var confirmMsg = 'Xóa Khách hàng đồng nghĩa xóa các Cơ hội và Báo giá liên quan. Bạn chắc chắn muốn xóa?' ; submitFormForActionWithConfirmation('DetailView', 'Delete', confirmMsg);" type="button" name="Delete" value="Xóa">&nbsp;
											
												<img align="absmiddle" title="Lùi" src="themes/images/rec_prev_disabled.gif">
													
												<img align="absmiddle" title="JUMP" accesskey="JUMP" onclick="var obj = this;var lhref = getListOfRecords(obj, 'Accounts',137,'Sales');" name="jumpBtnIdBottom" id="jumpBtnIdBottom" src="themes/images/rec_jump.gif">&nbsp;
																		<img align="absmiddle" title="Tiếp" accesskey="Tiếp" onclick="location.href='index.php?module=Accounts&amp;viewtype=&amp;action=DetailView&amp;record=138&amp;parenttab=Sales'" name="nextrecord" src="themes/images/rec_next.gif">&nbsp;
											</td>
				</tr>
			</tbody></table>
		</td>
	</tr>
</tbody></table>


<script>

function getTagCloud()
{
new Ajax.Request(
        'index.php',
        {queue: {position: 'end', scope: 'command'},
        method: 'post',
        postBody: 'module=Accounts&action=AccountsAjax&file=TagCloud&ajxaction=GETTAGCLOUD&recordid=137',
        onComplete: function(response) {
                                $("tagfields").innerHTML=response.responseText;
                                $("txtbox_tagfields").value ='';
                        }
        }
);
}
getTagCloud();
</script>
<!-- added for validation -->
<script language="javascript">
  var fieldname = new Array('accountname','account_no','phone','website','fax','tickersymbol','otherphone','account_id','email1','employees','email2','ownership','rating','industry','siccode','accounttype','annual_revenue','emailoptout','notify_owner','assigned_user_id','bill_street','ship_street','bill_city','ship_city','bill_state','ship_state','bill_code','ship_code','bill_country','ship_country','bill_pobox','ship_pobox','description','campaignrelstatus','cf_607','cf_638','cf_639','cf_640');
  var fieldlabel = new Array('Tên Khách hàng','Mã số Khách hàng','Điện thoại','Website','Fax','Mã chứng khoán','Điện thoại khác','Thành viên của','Email','Số nhân viên','Email khác','Người sở hữu','Đánh giá','Ngành nghề','Mã ngành','Loại','Doanh thu hàng năm','Từ chối email','Thông báo khi dữ liệu này thay đổi','Được gán cho','Địa chỉ thanh toán','Địa chỉ vận chuyển','Thanh toán tại thành phố','Vận chuyển tới thành phố','Thanh toán tại Tỉnh/Bang','Vận chuyển tới Tỉnh/Bang','Mã vùng thanh toán','Mã vùng vận chuyển','Thanh toán tại quốc gia','Vận chuyển tới quốc gia','Hộp thư thanh toán','Hộp thư vận chuyển','Mô tả','Trạng thái','Ng&agrave;y sinh','Loại Sản Phẩm','Nhu cầu gửi đĩa','Nhu cầu đại l&yacute;');
  var fielddatatype = new Array('V~M','V~O','V~O','V~O','V~O','V~O','V~O','I~O','E~O','I~O','E~O','V~O','V~O','V~O','V~O','V~O','I~O','C~O','C~O','V~M','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','V~O','D~O','V~O','C~O','C~O');
</script>
</div></td>

	<td align="right" valign="top"><img src="themes/softed/images/showPanelTopRight.gif"></td>
</tr></tbody></table>

	<form name="SendMail"><div id="sendmail_cont" style="z-index:100001;position:absolute;"></div></form>
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
					},33000);</script><!--end body panes-->
</td></tr>
<tr><td colspan="2" align="center">
</td></tr></tbody></table>


</body></html>
