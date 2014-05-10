<%-- 
    Document   : report-takeorder
    Created on : May 10, 2014, 11:21:27 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>

<html>
    <head>
        <title>admin - Phân tích - Báo cáo - Phần mềm quản lý HOSCO-MANAGEMENT</title>
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
            <s:param name="page_param" value="'customer'" />
        </s:include>


        <table align="center" border="0" cellpadding="0" cellspacing="0" width="98%">
            <tbody><tr>
                    <td valign="top"><img src="themes//images/showPanelTopLeft.gif"></td>
                    <td class="showPanelBg" style="padding: 10px;" valign="top" width="100%">



                        <table class="small reportGenHdr mailClient mailClientBg" align="center" border="0" cellpadding="0" cellspacing="0" width="100%">
                            <form name="NewReport" action="index.php" method="POST" onsubmit="VtigerJS_DialogBox.block();">
                                <input type="hidden" name="booleanoperator" value="5"/>
                                <input type="hidden" name="record" value="20"/>
                                <input type="hidden" name="reload" value=""/>    
                                <input type="hidden" name="module" value="Reports"/>
                                <input type="hidden" name="action" value="SaveAndRun"/>
                                <input type="hidden" name="dlgType" value="saveAs"/>
                                <input type="hidden" name="reportName"/>
                                <input type="hidden" name="folderid" value="10"/>
                                <input type="hidden" name="reportDesc"/>
                                <input type="hidden" name="folder"/>

                                <tbody>
                                    <tr>
                                        <td style="padding: 10px; text-align: left;" width="70%">
                                            <span class="moduleName">
                                                Báo cáo chi tiết Đặt hàng
                                            </span>&nbsp;&nbsp;
                                            <!--                                            <input type="button" name="custReport" value="Sửa Báo cáo" class="crmButton small edit" onClick="editReport('20');">-->
                                            <br>
                                            <a href="" class="reportMnu" style="border-bottom: 0px solid rgb(0, 0, 0);">&lt; Quay lại Báo cáo</a>
                                        </td>
                                        <!--                                        <td style="border-left: 2px dotted rgb(109, 109, 109); padding: 10px;" width="30%">
                                                                                    <b>Chọn báo cáo khác : </b><br>
                                                                                    <select name="another_report" class="detailedViewTextBox" onChange="selectReport()">
                                        
                                        
                                                                                        <option value=20 selected>Báo cáo chi tiết Nhập hàng</option>
                                                                                    </select>&nbsp;&nbsp;
                                                                                </td>-->
                                    </tr>
                                </tbody>
                        </table>

                        <!-- Generate Report UI Filter -->
                        <table class="small reportGenerateTable" align="center" cellpadding="5" cellspacing="0" width="95%" border=0>
                            <tr>
                                <td align=center class=small>

                                    <table border=0 cellspacing=0 cellpadding=0 width=80%>
                                        <tr>
                                            <td align=left class=small><b>Chọn Nhân viên </b></td><td class=small>&nbsp;</td>
                                            <td align=left class=small><b>Chọn Khách hàng </b></td><td class=small>&nbsp;</td>
                                            <td align=left class=small><b>Ngày bắt đầu </b></td><td class=small>&nbsp;</td>
                                            <td align=left class=small><b>Ngày kết thúc </b>
                                        </tr>
                                        <tr>
                                            <td align="left" width="30%">
                                                <select name="stdDateFilterField" class="small" style="width:98%" onchange="standardFilterDisplay();">
                                                    <option value="">Nhân viên 1</option>

                                                </select>
                                            </td>
                                            <td class=small>&nbsp;</td>
                                            <td align="left" width="30%">
                                                <select name="stdDateFilterField" class="small" style="width:98%" onchange="standardFilterDisplay();">
                                                    <option value="">Khách hàng 1</option>

                                                </select>
                                            </td>
                                            <td class=small>&nbsp;</td>
                                            <td align=left width="20%">
                                                <table border=0 cellspacing=0 cellpadding=2>
                                                    <tr>
                                                        <td align=left><input name="startdate" id="jscal_field_date_start" type="text" size="10" class="importBox" style="width:70px;" value=""></td>
                                                        <td valign=absmiddle align=left><img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_date_start"><font size="1"><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
                                                            <script type="text/javascript">
                                                                Calendar.setup({
                                                                    inputField: "jscal_field_date_start", ifFormat: "%d-%m-%Y", showsTime: false, button: "jscal_trigger_date_start", singleClick: true, step: 1
                                                                });
                                                            </script>

                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                            <td align=left class=small>&nbsp;</td>
                                            <td align=left width=20%>
                                                <table border=0 cellspacing=0 cellpadding=2>
                                                    <tr>
                                                        <td align=left><input name="enddate" id="jscal_field_date_end" type="text" size="10" class="importBox" style="width:70px;" value=""></td>
                                                        <td valign=absmiddle align=left><img src="themes/softed/images/btnL3Calendar.gif" id="jscal_trigger_date_end"><font size="1"><em old="(yyyy-mm-dd)">(dd-mm-yyyy)</em></font>
                                                            <script type="text/javascript">
                                                                Calendar.setup({
                                                                    inputField: "jscal_field_date_end", ifFormat: "%d-%m-%Y", showsTime: false, button: "jscal_trigger_date_end", singleClick: true, step: 1
                                                                });
                                                            </script>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td align="center" colspan="8" style="padding:5px"><input name="generatenw" value=" Tạo báo cáo " class="crmbutton small create" type="button" onClick="generateReport(20);"></td>
                                        </tr>
                                    </table>

                                </td>
                            </tr>
                        </table>


                        <div style="display: block;" id="Generate" align="center">


                            <br>
                            <table align="center" border="0" cellpadding="5" cellspacing="0" width="100%" class="mailSubHeader">
                                <tbody><tr>
                                        <td align="left" nowrap ><input class="crmbutton small create" id="btnExport" name="btnExport" value="Xuất dữ liệu Excel" type="button" onClick="goToURL(CrearEnlace('CreateXL', 20));" title="Xuất dữ liệu Excel" ></td>
                                    </tr>
                                </tbody>
                            </table>

                            <table style="border: 1px solid rgb(0, 0, 0);" align="center" cellpadding="0" cellspacing="0" width="100%">
                                <tbody><tr>
                                        <td style="background-repeat: repeat-y;" background="themes//images/report_btn.gif" width="16"></td>

                                        <td style="padding: 5px;" valign="top">
                                            <table cellpadding="0" cellspacing="0" width="100%">
                                                <tbody><tr>
                                                        <td align="left" width="75%">
                                                            <span class="genHeaderGray">
                                                                Báo cáo chi tiết Nhập hàng
                                                            </span><br>
                                                        </td>
                                                        <td align="right" width="25%">
                                                            <span class="genHeaderGray">Tổng số : <span id='_reportrun_total'></span>  Bản ghi</span>
                                                        </td>
                                                    </tr>
                                                    <tr><td id="report_info" align="left" colspan="2">&nbsp;</td></tr>
                                                    <tr><td colspan="2">&nbsp;</td></tr>
                                                    <tr>
                                                        <td colspan="2">

                                                            <table cellpadding="5" cellspacing="0" align="center" class="rptTable"><tr><td class='rptCellLabel'>Tiêu đề</td><td class='rptCellLabel'>Tên Báo giá</td><td class='rptCellLabel'>Tên Liên hệ</td><td class='rptCellLabel'>Ngày liên quan</td><td class='rptCellLabel'>Công ty vận chuyển</td><td class='rptCellLabel'>Tình trạng</td><td class='rptCellLabel'>Tên Khách hàng</td><td class='rptCellLabel'>Tiền hoa hồng</td><td class='rptCellLabel'>Thuế hàng hóa</td><td class='rptCellLabel'>Gán cho</td><td class='rptCellLabel'>LBL ACTION</td></tr><tr><tr><td class='rptData'>Đặt h&agrave;ng 1</td><td class='rptData'>-</td><td class='rptData'>-</td><td class='rptData'>19-04-2011</td><td class='rptData'>FedEx</td><td class='rptData'>Created</td><td class='rptData'>La Thị Hệ</td><td class='rptData'>0.000</td><td class='rptData'>0.000</td><td class='rptData'>admin</td><td class='rptData'><a href='index.php?module=SalesOrder&action=DetailView&record=201' target='_blank'>LBL_VIEW_DETAILS</a></td></tr><tr><td class='rptData'>Đặt h&agrave;ng phần mềm nh&agrave; h&agrave;ng</td><td class='rptData'>-</td><td class='rptData'>-</td><td class='rptData'>25-05-2011</td><td class='rptData'>FedEx</td><td class='rptData'>Created</td><td class='rptData'>Trần Thị Khanh</td><td class='rptData'>0.000</td><td class='rptData'>0.000</td><td class='rptData'>admin</td><td class='rptData'><a href='index.php?module=SalesOrder&action=DetailView&record=611' target='_blank'>LBL_VIEW_DETAILS</a></td></tr><tr><td class='rptData'>Đơn đặt h&agrave;ng ABC</td><td class='rptData'>-</td><td class='rptData'>-</td><td class='rptData'>27-06-2011</td><td class='rptData'>FedEx</td><td class='rptData'>Approved</td><td class='rptData'>anh Đạt - Điện m&aacute;y Tiến đạt</td><td class='rptData'>0.000</td><td class='rptData'>0.000</td><td class='rptData'>admin</td><td class='rptData'><a href='index.php?module=SalesOrder&action=DetailView&record=793' target='_blank'>LBL_VIEW_DETAILS</a></td></tr></tr></table><script type='text/javascript' id='__reportrun_directoutput_recordcount_script'>
                                                                if ($('_reportrun_total'))
                                                                    $('_reportrun_total').innerHTML = 3;</script>					
                                        </td>
                                    </tr>
                                    <tr><td colspan="2">&nbsp;</td></tr>
                                    <tr><td colspan="2">&nbsp;</td></tr>
                                    <tr><td colspan="2">
                                        </td></tr>
                                    <tr><td colspan="2">nbsp;</td></tr>
                                </tbody>
                            </table>
                    </td>
                    <td style="background-repeat: repeat-y;" background="themes//images/report_btn.gif" width="16"></td>
                </tr>

            </tbody>
        </table>

        <table align="center" border="0" cellpadding="5" cellspacing="0" width="100%" class="mailSubHeader">
            <tbody>
                <tr>
                    <td align="left" nowrap ><input class="crmbutton small create" id="btnExport" name="btnExport" value="Xuất dữ liệu Excel" type="button" onClick="goToURL(CrearEnlace('CreateXL', 20));" title="Xuất dữ liệu Excel" ></td>
                </tr>
            </tbody>
        </table>
    </div>
    <br>

</td>
<td valign="top"><img src="themes//images/showPanelTopRight.gif"></td>
</tr>
</table>




<br><br><br>

<!--    Footer-->
<s:include value="footer.jsp"></s:include>


</body>
</html>

