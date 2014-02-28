<%-- 
    Document   : input-page
    Created on : Feb 24, 2014, 12:59:04 AM
    Author     : HP
--%>

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<%
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("UTF-8");

%>
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
                Thêm dữ liệu
                <button>load</button>
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
                    <s:form action="update-customer" method="get"> 
                             <s:push value="customer"> 
                                 <s:hidden name="mFax"/> 
                                 <s:hidden name="mGhiChu"/> 
                                 <s:hidden name="mYCoordinates"/> 
                                 
                                 <s:hidden name="mStt"/> 
                                 <s:textfield type="text" name="mDoiTuong" label="Tên khách hàng: " placeholder="tên khách hàng"/>
                                 <s:textfield type="text" name="mTinhThanh" label="Tỉnh thành: " placeholder="tỉnh thành"/>
                                 <s:hidden name="mTuyenBanHangThu"/>
                                 <s:hidden name="mMaNhanVien"/> 
                                 <s:hidden name="mX"/> 
                                 
                                 
                                 <s:hidden name="mMaDoiTuong"/> 
                                 
                                 
                                 
                                 <s:textfield type="text" name="mDiaChi" label="Địa chỉ:" placeholder="địa chỉ"/>
                                 <s:textfield type="text" name="mDienThoai" label="Điện thoại:" placeholder="điện thoại"/>
                                 <s:submit/>
                             </s:push>
                       </s:form>  
                    
                 </div>   
        </div>
        
    </body>
</html>
