<%-- 
    Document   : input-page
    Created on : Feb 24, 2014, 12:59:04 AM
    Author     : HP
--%>

<%@page  contentType="text/html" pageEncoding="UTF-8"%>
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
                        <td><button onclick="editCustomer('<s:property value="mStt"/>')">Sửa</button></td>
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
            
                <table id="fix">
                    <col width="30%">
                    <col width="70%">
                    <tr>
                        <td>Mã khách hàng: </td>
                        <td>HOS</td>
                    </tr>
                    <tr>
                        <td>Tên khách hàng: </td>
                        <td>Trần Công Đoài</td>
                    </tr>
                    <tr>
                        <td>Số điện thoại: </td>
                        <td>0123456789</td>
                    </tr>
                    <tr>
                        <td>Địa chỉ: </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Fax: </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Mã nhân viên: </td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>Trạng thái: </td>
                        <td></td>
                    </tr>
                    
                    <tr>
                        <td align="center" colspan="2">
                            <button style="width: 150px; height: 50px;">Update</button>
                        </td>
                    </tr>
                </table>
            
        </div>
        
    </body>
</html>
