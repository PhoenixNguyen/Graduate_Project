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
                <s:select name="giamDocId" list="{'Khách hàng', 'Nhân viên', 'Sản phẩm'}" id="sele"  listKey="giamDocId" 
                          onchange="selectObject(selectedIndex)"  headerKey="0"  value="Khách hàng"/>
<!--                <select>
                    <option selected="1">Khách hàng</option>
                    <option>Nhân viên</option>
                    <option>Sản phẩm</option>
                </select>-->
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
                        <td>Tỉnh thành</td>
                        <td>Tuyến bán hàng</td>
                        <td>Mã nhân viên</td>
                        <td>X</td>
                        <td>Mã khách hàng</td>
                        <td>mNoDKy</td>
                        <td>mCoDKy</td>
                        <td>mNoTKy</td>
                        <td>mTienBan</td>
                        <td>mCoTKy</td>
                        <td>mCKGG</td>
                        <td>mNhapLai</td>
                        <td>mNoCKy</td>
                        <td>mCoCKy</td>
                        <td>mDoanhThu</td>
                        <td>mPhanTramNoChiaThu</td>
                        <td>mNoToiDa</td>
                        <td>mDaiDien</td>
                        <td>Địa chỉ</td>
                        <td>Điện thoại</td>
                        <td>Fax</td>
                        <td>Ghi chú</td>
                        <td>Vĩ độ</td>
                        <td>Kinh độ</td>
                    </tr>
                </thead>
                <tbody>
                    </tr>
                    <s:iterator status="status" value="customersList" >
                    <tr>
                        <td>
                            <input type="button" value="Sửa" 
                                   onClick="location.href='editCustomer?id_cus=<s:property value="mStt"/>'"/></td>
                        <td><input type="button" value="Xóa" /></td>
                        <td><s:property value="#status.index"/></td>
                        <td><s:property value="mTinhThanh"/></td>
                        <td><s:property value="mTuyenBanHangThu"/></td>
                        <td><s:property value="mMaNhanVien"/></td>
                        <td><s:property value="mX"/></td>
                        <td><s:property value="mMaDoiTuong"/></td>
                        <td><s:property value="mNoDKy"/></td>
                        <td><s:property value="mCoDKy"/></td>
                        <td><s:property value="mNoTKy"/></td>
                        <td><s:property value="mTienBan"/></td>
                        <td><s:property value="mCoTKy"/></td>
                        <td><s:property value="mCKGG"/></td>
                        <td><s:property value="mNhapLai"/></td>
                        <td><s:property value="mNoCKy"/></td>
                        <td><s:property value="mCoCKy"/></td>
                        <td><s:property value="mDoanhThu"/></td>
                        <td><s:property value="mPhanTramNoChiaThu"/></td>
                        <td><s:property value="mNoToiDa"/></td>
                        <td><s:property value="mDaiDien"/></td>
                        <td><s:property value="mDiaChi"/></td>
                        <td><s:property value="mDienThoai"/></td>
                        <td><s:property value="mFax"/></td>
                        <td><s:property value="mGhiChu"/></td>
                        <td><s:property value="mXCoordinates"/></td>
                        <td><s:property value="mYCoordinates"/></td>

                    </tr>
                    </s:iterator>
                </tbody>
                
                </table>
                
                 <%
                            if(request.getParameter("id_customer") != null){
                                int id = Integer.parseInt(request.getParameter("id_customer"));

                                pageContext.setAttribute("idcustomer", id);
                            }
                %>
                <s:set id="id" value="%{#attr.idcustomer}"/>

                <div id="editForm">
                    <s:textfield type="text" name="customer.getmMaDoiTuong()" label="Khách hàng: " placeholder=""/>
                    <s:form action="update-customer" method="get" accept-charset="UTF-8"> 
                             <s:push value="customer"> 
                                 <s:hidden name="customerSTT" value="%{#id}"/>
                                 <s:hidden name="mStt"/> 
                                 <s:textfield type="text" name="mTinhThanh" label="Tỉnh thành: " placeholder=""/>
                                 <s:textfield id="dt" type="text" name="mTuyenBanHangThu" label="Tuyến bán hàng:" placeholder="Tuyến bán hàng"/>
                                 <s:textfield id="dt" type="text" name="mMaNhanVien" label="Mã nhân viên:" placeholder="Mã nhân viên"/>
                                 <s:textfield id="dt" type="text" name="mX" label="X:" placeholder="X"/>
                                 <s:textfield type="text" name="mMaDoiTuong" label="Mã khách hàng: " placeholder="Mã khách hàng"/>
                                 <s:textfield id="dt" type="text" name="mNoDKy" label="mNoDKy:" placeholder="mNoDKy"/>
                                 <s:textfield id="dt" type="text" name="mCoDKy" label="mCoDKy:" placeholder="mCoDKy"/>
                                 <s:textfield id="dt" type="text" name="mNoTKy" label="mNoTKy:" placeholder="mNoTKy"/>
                                 <s:textfield id="dt" type="text" name="mTienBan" label="mTienBan:" placeholder="mTienBan"/>
                                 <s:textfield id="dt" type="text" name="mCoTKy" label="mCoTKy:" placeholder="mCoTKy"/>
                                 <s:textfield id="dt" type="text" name="mCKGG" label="mCKGG:" placeholder="mCKGG"/>
                                 <s:textfield id="dt" type="text" name="mNhapLai" label="mNhapLai:" placeholder="mNhapLai"/>
                                 <s:textfield id="dt" type="text" name="mNoCKy" label="mNoCKy:" placeholder="mNoCKy"/>
                                 <s:textfield id="dt" type="text" name="mCoCKy" label="mCoCKy:" placeholder="mCoCKy"/>
                                 <s:textfield id="dt" type="text" name="mDoanhThu" label="mDoanhThu:" placeholder="mDoanhThu"/>
                                 <s:textfield id="dt" type="text" name="mPhanTramNoChiaThu" label="mPhanTramNoChiaThu:" placeholder="mPhanTramNoChiaThu"/>
                                 <s:textfield id="dt" type="text" name="mNoToiDa" label="mNoToiDa:" placeholder="mNoToiDa"/>
                                 <s:textfield id="dt" type="text" name="mDaiDien" label="mDaiDien:" placeholder="mDaiDien"/>
                                 <s:textfield type="text" name="mDiaChi" label="Địa chỉ:" placeholder="pass"/>
                                 <s:textfield id="dt" type="text" name="mDienThoai" label="Điện thoại:" placeholder="pass"/>
                                 <s:textfield id="dt" type="text" name="mFax" label="Fax:" placeholder="Fax"/>
                                 <s:textfield id="dt" type="text" name="mGhiChu" label="Ghi chú:" placeholder="Ghi chú"/>
                                 <s:textfield id="dt" type="text" name="mXCoordinates" label="Vĩ độ:" placeholder="Vĩ độ"/>
                                 <s:textfield id="dt" type="text" name="mYCoordinates" label="Kinh độ:" placeholder="Kinh độ"/>
                                 <s:submit/>
                             </s:push>
                       </s:form>  
                    
                 </div>   
        </div>
        
    </body>
</html>
