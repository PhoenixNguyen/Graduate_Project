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
        <title>Quản lý thông tin sản phẩm</title>
        
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
        <h1>Quản lý thông tin sản phẩm</h1>
        <div id="head_data">
            <div id="slect_item">
                Chọn mục dữ liệu
                <s:select name="giamDocId" list="#{'0':'Khách hàng', '1':'Nhân viên', '2':'Sản phẩm'}" id="sele"  
                          onchange="selectObject(selectedIndex)"  headerKey="0"  value="2"/>
                
                
            </div>
            <div id="load">
                <div>Thêm dữ liệu</div> 
                <div>
                    <s:actionerror />
                    <s:form action="upload-products" onsubmit="uploadData()" id="login_form" enctype="multipart/form-data" validate="true"
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
                        <input type="button" id="imp" onClick="importProducts()" value="Import" > 
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
                        <td>STT</td>
                        <td>Mã vạch</td>
                        <td>Mã sản phẩm</td>
                        <td>Tên</td>
                        <td>Thương hiệu</td>
                        <td>Xuất xứ</td>
                        <td>Packing</td>
                        <td>Định lượng</td>
                        <td>Thuế</td>
                        <td>Giá nhập</td>
                        <td>Giá bán</td>
                        <td>Nhà cung cấp</td>
                        <td>Mô tả</td>
                        <td>Hỉnh ảnh</td>
                    </tr>
                </thead>
                <tbody>
                    </tr>
                    <s:iterator status="status" value="productsList" >
                    <tr>
                        <td>
                            <input type="button" value="Sửa" 
                                   onClick="location.href='edit-product?id_product=<s:property value="mSerial"/>'"/>
                        </td>
                        </td>
                        <td><s:property value="#status.index"/></td>
                        <td><s:property value="mBarcode"/></td>
                        <td><s:property value="mProductID"/></td>
                        <td><s:property value="mProductName"/></td>
                        <td><s:property value="mBrand"/></td>
                        <td><s:property value="mOrigin"/></td>
                        <td><s:property value="mPackingSpecifications"/></td>
                        <td><s:property value="mQuantification"/></td>
                        <td><s:property value="mVATTax"/></td>
                        <td><s:property value="mImportPrices"/></td>
                        <td><s:property value="mExportPrices"/></td>
                        <td><s:property value="mProvider"/></td>
                        <td><s:property value="mDescription"/></td>
                        <td> <img src="../product/<s:property value="mSerial"/>/<s:property value="mProductImage"/>" 
                                  width="100px" height="100px"/></td>

                    </tr>
                    </s:iterator>
                </tbody>
                
                </table>
                
                    <%
                            if(request.getParameter("id_product") != null && request.getParameter("id_product") != ""){
                                int id = Integer.parseInt(request.getParameter("id_product"));

                                pageContext.setAttribute("idproduct", id);
                            }
                    %>
                    <s:set id="id" value="%{#attr.idproduct}"/>
                    
                <div id="editForm">
                    <s:textfield type="text" name="product.getmProductID()" label="Sản phẩm: " placeholder=""/>
                    <s:actionerror/>
                    <s:form action="update-product" method="get" accept-charset="UTF-8" cssStyle="margin-bottom: 10px;"> 
                             <s:push value="product"> 
                                 <s:hidden name="id_product" value="%{#id}"/> 
                                 
                                 <s:hidden name="product.mSerial"/> 
                                 
                                 <s:textfield type="text" name="product.mBarcode" label="Mã vạch: " placeholder="Mã vạch"/>
                                 <s:textfield type="text" required="true" name="product.mProductID" label="Mã sản phẩm: " placeholder="Mã sản phẩm"/>
                                 <s:textfield type="text" name="product.mProductName" label="Tên sản phẩm: " placeholder="Tên sản phẩm"/>
                                 <s:textfield type="text" name="product.mBrand" label="Thương hiệu: " placeholder="Thương hiệu"/>
                                 <s:textfield type="text" name="product.mOrigin" label="Xuất xứ: " placeholder="Xuất xứ"/>
                                 <s:textfield type="text" name="product.mPackingSpecifications" label="Quy cách: " placeholder="Quy cách"/>
                                 <s:textfield type="text" name="product.mQuantification" label="Định lượng: " placeholder="Định lượng"/>
                                 <s:textfield type="text" name="product.mVATTax" label="Thuế: " placeholder="Thuế"/>
                                 <s:textfield type="text" name="product.mImportPrices" label="Giá nhập: " placeholder="Giá nhập"/>
                                 <s:textfield type="text" name="product.mExportPrices" label="Giá bán: " placeholder="Giá bán"/>
                                 
                                 <s:select name="product.mProvider" list="providerIDList" label="Nhà cung cấp: "/>
                                 <s:textfield type="text" name="product.mDescription" label="Mô tả: " placeholder="Mô tả"/>
                                 <s:textfield type="text" name="product.mProductImage" label="Đường dẫn ảnh: " placeholder="Hình ảnh"/>
                                 
                                    
                                 <s:submit  cssStyle="width: 200px;
                                                    height: 50px;
                                                    margin-top: 100px;
                                                    "     />
                             </s:push>
                       </s:form>  
                    
                    
                    <s:actionerror />
                    <s:form action="upload-product-image?id_product=%{#id}" title="dfdf" label="Thay đổi ảnh" onsubmit="uploadData()" id="login_form32" enctype="multipart/form-data" validate="true"
                           cssStyle="margin-top: -100px;
                                        margin-bottom: 10px;
                                        
                                       "
                           >  

                       <s:file type="file" name="document2.file" />
                       <br/>
                       <br/>
                       <s:submit                      
                              />

                   </s:form> 
                 </div>   
        </div>
        
    </body>
</html>
