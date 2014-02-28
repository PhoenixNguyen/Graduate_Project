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
        <title>Input page</title>
        
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
        <h1>Show and import resources</h1>
        <div id="head_data">
            <div id="slect_item">
                Chọn mục dữ liệu
                <select>
                    <option selected="1">Khách hàng</option>
                    <option>Nhân viên</option>
                    <option>Sản phẩm</option>
                </select>
            </div>
            <div id="load">
                <div>Thêm dữ liệu</div> 
                <div>
                    <s:actionerror />
                    <s:form action="upload" onsubmit="uploadData()" id="login_form" enctype="multipart/form-data" validate="true"
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
                        <input type="button" id="imp" onClick="importData()" value="Import" > 
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
                        <td>Xóa</td>
                        <td>STT</td>
                        <td>Mã khách hàng</td>
                        <td>Tên khách hàng</td>
                        <td>Điện thoại</td>
                        <td>Quận</td>
                        <td>Nhân viên chăm sóc</td>
                    </tr>
                </thead>
                <tbody>
                    </tr>
                    <s:iterator status="status" value="customersList" >
                    <tr>
                        <td>
                            <input type="button" value="Sửa" 
                                   onClick="location.href='editCustomer?id_cus=<s:property value="mStt"/>'"/></td>
                        <td><a href="">Xóa</a></td>
                        <td><s:property value="#status.index"/></td>
                        <td><s:property value="mMaDoiTuong"/></td>
                        <td><s:property value="mDoiTuong"/></td>
                        <td><s:property value="mDienThoai"/></td>
                        <td><s:property value="mX"/></td>
                        <td><s:property value="mMaNhanVien"/></td>

                    </tr>
                    </s:iterator>
                </tbody>
                
                </table>
                
                <div id="editForm">
                    <s:textfield type="text" name="customer.getmMaDoiTuong()" label="Khách hàng: " placeholder=""/>
                    <s:form action="update-customer" method="get" accept-charset="UTF-8"> 
                             <s:push value="customer"> 
                                 <s:hidden name="mStt"/> 
                                 <s:textfield type="text" name="mTinhThanh" label="Tỉnh thành: " placeholder=""/>
                                 <s:hidden name="mTuyenBanHangThu"/>
                                 <s:hidden name="mMaNhanVien"/> 
                                 <s:hidden name="mX"/> 
                                 <s:hidden name="mMaDoiTuong"/> 
                                 <s:textfield type="text" name="mDoiTuong" label="Tên khách hàng: " placeholder=""/>
                                 <s:hidden name="mNoDKy"/> 
                                 <s:hidden name="mCoDKy"/> 
                                 <s:hidden name="mNoTKy"/> 
                                 <s:hidden name="mTienBan"/> 
                                 <s:hidden name="mCoTKy"/> 
                                 <s:hidden name="mCKGG"/> 
                                 <s:hidden name="mNhapLai"/> 
                                 <s:hidden name="mNoCKy"/> 
                                 <s:hidden name="mCoCKy"/> 
                                 <s:hidden name="mDoanhThu"/> 
                                 <s:hidden name="mPhanTramNoChiaThu"/> 
                                 <s:hidden name="mNoToiDa"/> 
                                 <s:hidden name="mDaiDien"/> 
                                 <s:textfield type="text" name="mDiaChi" label="Địa chỉ:" placeholder="pass"/>
                                 <s:textfield type="text" name="mDienThoai" label="Điện thoại:" placeholder="pass"/>
                                 <s:hidden name="mFax"/> 
                                 <s:hidden name="mGhiChu"/> 
                                 <s:hidden name="mXCoordinates"/> 
                                 <s:hidden name="mYCoordinates"/>
                                 <s:submit/>
                             </s:push>
                       </s:form>  
                    
                 </div>   
        </div>
        
    </body>
</html>
