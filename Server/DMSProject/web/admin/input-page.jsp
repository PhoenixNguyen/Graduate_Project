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
<!--                        <td>Xóa</td>-->
                        <td>STT</td>
                        <td>Mã khách hàng</td>
                        <td>Tên khách hàng</td>
                        <td>Mã nhân viên</td>
                        
                        <td>Tỉnh thành</td>
                        <td>Tuyến bán hàng</td>
                        
                        <td>Khu vực</td>
                        
<!--                        <td>mNoDKy</td>
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
                        <td>mDaiDien</td>-->
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
<!--                        <td><input type="button" value="Xóa" /></td>-->
                        <td><s:property value="#status.index"/></td>
                        <td><s:property value="mMaDoiTuong"/></td>
                        <td><s:property value="mDoiTuong"/></td>
                        <td><s:property value="mMaNhanVien"/></td>
                        
                        <td><s:property value="mTinhThanh"/></td>
                        <td><s:property value="mTuyenBanHangThu"/></td>
                        
                        <td><s:property value="mX"/></td>
                        
 
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
                    <s:actionerror />
                    <s:form action="update-customer" method="get" accept-charset="UTF-8"> 
                             <s:push value="customer"> 
                                 <s:hidden name="customerSTT" value="%{#id}"/>
                                 <s:hidden name="customer.mStt"/> 
                                 
                                 <s:textfield type="text" required="true" name="customer.mMaDoiTuong" label="Mã khách hàng" placeholder="Mã khách hàng"/>
                                 <s:textfield id="dt" type="text" name="customer.mDoiTuong" label="Tên khách hàng" placeholder="Tên khách hàng"/>
                                 
                                 <s:select name="customer.mMaNhanVien" list="staffsList" label="Mã nhân viên: "/>
                                 
                                 <s:textfield type="text" name="customer.mTinhThanh" label="Tỉnh thành" placeholder="Tỉnh thành"/>
                                 <s:textfield id="dt" type="text" name="customer.mTuyenBanHangThu" label="Tuyến bán hàng" placeholder="Tuyến bán hàng"/>
                                 
                                 <s:textfield id="dt" type="text" name="customer.mX" label="Khu vực" placeholder="Khu vực"/>
                                 
                                 
                                 <s:textfield type="text" name="customer.mDiaChi" label="Địa chỉ" placeholder="pass"/>
                                 <s:textfield id="dt" type="text" name="customer.mDienThoai" label="Điện thoại" placeholder="pass"/>
                                 <s:textfield id="dt" type="text" name="customer.mFax" label="Fax" placeholder="Fax"/>
                                 <s:textfield id="dt" type="text" name="customer.mGhiChu" label="Ghi chú" placeholder="Ghi chú"/>
                                 <s:textfield id="dt" type="text" name="customer.mXCoordinates" label="Vĩ độ" placeholder="Vĩ độ"/>
                                 <s:textfield id="dt" type="text" name="customer.mYCoordinates" label="Kinh độ" placeholder="Kinh độ"/>
                                 <s:submit/>
                             </s:push>
                       </s:form>  
                    
                 </div>   
        </div>
        
    </body>
</html>
