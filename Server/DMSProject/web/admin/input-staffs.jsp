<%-- 
    Document   : input-page
    Created on : Feb 24, 2014, 12:59:04 AM
    Author     : HP
--%>

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page language="java" contentType="text/html; charset=UTF-8" %>
<%@taglib prefix="s" uri="/struts-tags" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Quản lý thông tin nhân viên</title>
        
        <link type="text/css" rel="stylesheet" href="../css/admin/input-page.css"/>
        
<!--        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.0/jquery.min.js" ></script>-->
        <script type="text/javascript" src="../js/jquery.min.js"></script>
        <script type="text/javascript" src="../js/admin/input-page.js"></script>
        
        <script>
            
        </script>
        
        <%
            request.setCharacterEncoding("UTF-8");
            response.setCharacterEncoding("UTF-8");

        %>
    </head>
    <body>
        <h1>Quản lý thông tin nhân viên</h1>
        <div id="head_data">
            <div id="slect_item">
                Chọn mục dữ liệu
                <s:select name="giamDocId" list="#{'0':'Khách hàng', '1':'Nhân viên', '2':'Sản phẩm'}" id="sele"  
                          onchange="selectObject(selectedIndex)"  headerKey="0"  value="1"/>
            </div>
            <div id="load">
                <div>Thêm dữ liệu</div> 
                <div>
                    <s:actionerror />
                    <s:form action="upload-staffs" onsubmit="uploadData()" id="login_form" enctype="multipart/form-data" validate="true"
                            cssStyle="position: absolute;
                                   margin-top: -50px;
                                   margin-left: 60px;"
                            >  

                        <s:file type="file" name="document.file" id="upfile"/>
                        <br/>
                        <br/>
                        <s:submit                           
                               />

                    </s:form>       
                </div>
                    <div id="import">
                        <input type="button" id="imp" onClick="importStaffs()" value="Import" > 
                        <div id="info">STATUS: 
                            <span></span>
                        </div>    
                    </div>
<!--                <button>load</button>-->
            </div>
            <div id="txt">
                Sửa thông tin
            </div>
            
        </div>
        <div id="main_data">
            
            <table id="tb_show">
                <thead>
                    <tr>
                        <td>Sửa</td>
<!--                        <td>Xóa</td>-->
                        <td>STT</td>
                        <td>Mã nhân viên</td>
                        <td>Mật khẩu</td>
                        <td>Họ tên</td>
                        <td>Địa chỉ</td>
                        <td>Chức vụ</td>
                        <td>Điện thoại</td>
                        <td>Ngày gia nhập</td>
                        <td>Quản lý</td>
                        <td>Trạng thái</td>
                    </tr>
                </thead>
                <tbody>
                    </tr>
                    <s:iterator status="status" value="staffsList" >
                    <tr>
                        <td>
                            <input type="button" value="Sửa" 
                                   onClick="location.href='edit-staff?id_staff=<s:property value="mSTT"/>'"/></td>
<!--                        <td><a href="">Xóa</a></td>-->
                        <td><s:property value="#status.index"/></td>
                        <td><s:property value="mID"/></td>
                        <td><s:property value="mPW"/></td>
                        <td><s:property value="mName"/></td>
                        <td><s:property value="mAdress"/></td>
                        <td><s:property value="mJob"/></td>
                        <td><s:property value="mPhone"/></td>
                        <td><s:property value="mDate"/></td>
                        <td><s:property value="mManager"/></td>
                        <td><s:property value="mStatus"/></td>

                    </tr>
                    </s:iterator>
                </tbody>
                
                </table>
                
                <%
                            if(request.getParameter("id_staff") != null){
                                int id = Integer.parseInt(request.getParameter("id_staff"));

                                pageContext.setAttribute("idstaff", id);
                            }
                %>
                <s:set id="id" value="%{#attr.idstaff}"/>
                
                <div id="editForm">
                    <s:textfield type="text" name="staff.getmID()" label="Nhân viên: " placeholder=""/>
                    <s:actionerror/>
                    <s:form action="update-staff" method="get" accept-charset="UTF-8"> 
                             <s:push value="staff"> 
                                 <s:hidden name="staff.mSTT"/> 
                                 <s:hidden name="staff_serial" value="%{#id}"/> 
                                 <s:textfield type="text" required="true" name="staff.mID" label="Mã nhân viên: " placeholder="Mã nhân viên"/>
                                 <s:textfield type="text" required="true" name="staff.mPW" label="Mật khẩu: " placeholder="Mật khẩu"/>
                                 <s:textfield type="text" name="staff.mName" label="Họ tên: " placeholder="Họ tên"/>
                                 <s:textfield type="text" name="staff.mAdress" label="Địa chỉ: " placeholder="Địa chỉ"/>
                                 <s:textfield type="text" name="staff.mJob" label="Chức vụ: " placeholder="Chức vụ"/>
                                 <s:textfield type="text" name="staff.mPhone" label="Điện thoại: " placeholder="Điện thoại"/>
                                 <s:textfield type="text" name="staff.mDate" label="Gia nhập: " placeholder="Gia nhập"/>
                                 
                                 <s:select name="staff.mManager" list="usersList" label="Người quản lý: "/>
                                 <s:textfield type="text" name="staff.mStatus" label="Trạng thái: " placeholder="Trạng thái"/>
                                 
                                 <s:submit/>
                             </s:push>
                       </s:form>  
                    
                 </div>   
        </div>
        
    </body>
</html>
