<%-- 
    Document   : index
    Created on : Jan 5, 2014, 3:28:43 PM
    Author     : HP
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>

<script>
<%@include file="../js/jquery.min.js"%>
</script>

<%

    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View map detail</title>
        <sx:head />
        
        <link type="text/css" rel="stylesheet" href="../css/map/view-map.css"/>

<!--        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
        <script type="text/javascript" src="../js/jquery.min.js"></script>-->
        <script type="text/javascript" src="../js/view-data-script.js"></script>
        <script type="text/javascript" src="../js/view-map.js"></script>
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
        </script>

        <script type="text/javascript">
            var arr = new Array();
            function initialize() {
                var i;
                var Customers = [
            <s:iterator value="listCustomer" status="status">
                    {
                        mXCoordinates: <s:property value="mXCoordinates"/>,
                                mYCoordinates: <s:property value="mYCoordinates"/>,
                        mMaDoiTuong: '<s:property value="mMaDoiTuong:"/>'

                    },
            </s:iterator>
                ];

                var myOptions = {
                    zoom: 14,
                    center: new google.maps.LatLng(21.0286380, 105.7806179),
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                var map = new google.maps.Map(document.getElementById("googleMap"), myOptions);

                var infowindow = new google.maps.InfoWindow({
                    content: ''
                });

                var contentString = [
            <s:iterator value="listCustomer" status="status">
                    '<div id="boxShow"><img class= "ImageWrap" border="0" src="../customer/<s:property value="mMaDoiTuong"/>/1.jpg" alt="Pulpit rock" >' +
                            '<p class= "TextWrap"><b>Khách hàng: <s:property value="mDoiTuong"/></b>' + '<br/><br/>' +
                            'Mã khách hàng: <s:property value="mMaDoiTuong"/>' + '<br/>' +
                            'Tỉnh thành: <s:property value="mTinhThanh"/>' + '<br/>' +
                            'Địa chỉ: <s:property value="mDiaChi"/>' + '<br/>' +
                            'Điện thoại: <s:property value="mDienThoai"/>' + '<br/>' +
                            'Fax: <s:property value="mFax"/>' + '<br/></p></div>',
            </s:iterator>
                ];

                for (i = 0; i < Customers.length; i++) {
                    size = 15;
                    var img = new google.maps.MarkerImage('../images/marker.jpg',
                            new google.maps.Size(size, 2 * size),
                            new google.maps.Point(0, 0),
                            new google.maps.Point(size / 2, size / 2)
                            );

                    var marker = new google.maps.Marker({
                        map: map,
                        title: Customers[i].title,
                        position: new google.maps.LatLng(Customers[i].mXCoordinates, Customers[i].mYCoordinates),
                        icon: img
                    });

                    bindInfoWindow(marker, map, infowindow, contentString[i], Customers[i].mMaDoiTuong);

                }

            }

            function bindInfoWindow(marker, map, infowindow, html, Ltitle) {
                google.maps.event.addListener(marker, 'click', function() {
                    infowindow.setContent(html);
                    infowindow.open(map, marker);

                });
                google.maps.event.addListener(marker, 'mouseout', function() {
                    //infowindow.close();

                });
            }
            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
        
        <script>

             $(document).ready(function(){
                $('.category-wrapper').click(function () {
                   var currentId = '#' + $('.hide:visible').prop('id');
                   var newId = $(this).data('rel');
                   $('.hide').fadeOut();
                   if (currentId != newId) {
                       $(newId).fadeIn();
                   }
               });
             });
        </script>
        <script type="text/javascript">
        // load ajax
        var gdID;
        //load sales man list
        function getLoadStaff(x){
//            _url = location.href;
//            _url += (_url.split('?')[1] ? '&':'?') + param;
//            return _url;
//            
//            window.location.search = jQuery.query.set("rows", 10);
            
            var giamdocId = x !== "--select--" ? x:"nullid";//$('#giamDoc').val();
            gdID = giamdocId;
            console.log("Ma giam doc: " + giamdocId);
             $.getJSON('filterGiamDoc.action', {'giamdocId': giamdocId},
                 function(data) {

                        var divisionList = (data.userListStaff);
                             console.log("log: " + divisionList);
                             var options = $("#staff");
                             options.find('option')
                 .remove()
                 .end();
                  options.append($("<option />").val("-1").text("--select--"));
             $.each(divisionList, function(k , v) {

                 options.append($("<option />").val(k).text(v));
             });
                 }
             );
         }
         
         //load customer list
         function getLoadCustomer(x){
            var staffId = x !== "--select--" ? x:"nullid";//$('#giamDoc').val();
            //gdID = giamdocId;
            console.log("Ma nhan vien: " + staffId);
             $.getJSON('filterStaff.action', {'nhanvienId': staffId},
                 function(data) {

                        var divisionList = (data.userListStaff);
                             //console.log("log: " + divisionList);
//                             var options = $("#staff");
//                             options.find('option')
//                 .remove()
//                 .end();
//                  options.append($("<option />").val("-1").text("--select--"));
//             $.each(divisionList, function(k , v) {
//
//                 options.append($("<option />").val(k).text(v));
//             });
                 }
             );
         }

   </script>
    </head>

    <body>
        
        <div id="head" style="height:60px;">
            
            <div id="topbar-placeholder">

                <div id="topbar-widget" class="">
                    <span class="topbar-title">Quản lý khách hàng</span>
                    <button onclick="this.className = this.className === 'expanded' ? '' : 'expanded';" class=""></button>
                    <ul>
                        <li class="topbar-link"><a href="http://localhost:8080/DMSProject" title="Trang chủ" index="0">Trang chủ</a></li>
                        <li class="topbar-active" title=""><span class="topbar-arrow"></span></li>
                        <li class="topbar-link"><a href="" title="" index="2"></a></li>
                        <li class="topbar-link"><a href="" title="" index="3"></a></li>
                        <li class="topbar-link"><a href="" title="" index="4"></a></li>
                    </ul>
                </div>
            </div>

            <!--SEARCH-->

            <div id="header" class="clearfix">
                <h1 class="logo"><a href="" class="hide-text" target="">DMS</a> 
                    <span>
                        Quản lý khách hàng			
                    </span>
                    
                </h1>

                <div class="right-app">
                    <a href="" class="android-app" target="_blank"></a>
                </div>


                <div class="searchs">
                    <form action="showMap.action?page=0" method="post" name="search-poi">
                        <ul>
                            <li>
                                <div id="keys">
                                    <a title="Tiếng Việt" id="btn-language" href="#">v</a>
                                    <input type="text" name="keys" class="keyboardInput" value="" autocomplete="off">
                                    <a href="#" class="clear-text hide">×</a>
                                </div>
                            </li>
                            <li>
                                <div><input type="submit" name="finds" value="Tìm kiếm"></div>
                            </li>

                            <li class="advance-text clear">Tìm kiếm nâng cao</li>
                            <li class="category-wrapper" data-rel="#callback-form"><a href="#">Giám đốc</a>
                                <s:set id="giamdid" value="giamdocId"/>
                                <s:select name="giamDocId" list="userListGiamDoc" id="giamDoc"  listKey="giamDocId" 
                                          onchange="getLoadStaff(options[selectedIndex].text)"  headerKey="0" headerValue="--select--" />
                                <!--sx:autocompleter size="1"  list="userListGiamDoc" keyValue="mID"name="mID"-->
                                </action>
                            </li>
                            
                            <li class="category-wrapper" data-rel="#enquiry-form"><a href="#">Nhân viên</a>
                                
                                
                                <s:select name="staffId"  list="userListStaff" listKey="staffId" id="staff" 
                                          onchange="getLoadCustomer(options[selectedIndex].text)" headerKey="0" headerValue="--select--" />
                                <!--sx:autocompleter size="1"  list="userListStaff" keyValue="mID"name="mID">-->
                            </li>
                            <li class="category-wrapper" data-rel="#enquiry-form"><a href=""></a>
                                
                                
                                <input type="submit" name="finds"  value="Lọc" style="width: 100px;
                                        height: 30px;margin-top: -28px;margin-left: 20px;position: absolute;">
                                
                                <!--sx:autocompleter size="1"  list="userListStaff" keyValue="mID"name="mID">-->
                            </li>
                        </ul>
                    </form>
                </div>
            </div>

            <!--FINISH SEARCH-->
        </div>
        <div id="googleMap" style="width:1000px;height:510px;"></div>

        <div id="info" >

            <div id="left-panel">
                <div id="show-left-panel"></div>
                <div class="scroll-left-panel">
                    <div id="left-panel-content">
                        <ul class="left-poi-list">
                    
                            <%
                                int page2 = Integer.parseInt(request.getParameter("page")) * 10;
                                pageContext.setAttribute("first", page2);
                            %>
                            <s:subset source="listCustomer" start="%{#attr.first}"  count="10">
                            <s:iterator  status="status" >
                            <li data-poi-id="18299">
                                <div class="poi-content">
                                    <div class="poi-photo">

                                        <a href="customer-detail?customer=<s:property value="mMaDoiTuong"/>">
                                            <img src="../customer/<s:property value="mMaDoiTuong"/>/1.jpg" data-original="../customer/<s:property value="mMaDoiTuong"/>/1.jpg" width="64" height="64">
                                        </a>

                                    </div>
                                    <h2 class="poi-title">
                                        <a href="customer-detail?customer=<s:property value="mMaDoiTuong"/>"><s:property value="mDoiTuong"/></a></h2>
                                    <div class="poi-infos">

                                        <strong>Địa chỉ:</strong> <s:property value="mDiaChi"/>

                                        <br><strong>Điện thoại:</strong> <s:property value="mDienThoai"/>

                                    </div>
                                </div>
                            </li>
                            </s:iterator>
                            </s:subset>

                        </ul>
                        <div id="left-content-pagination">

                            <ul class="pagination-block">
                                <li data-page="1" class="goto-page"><a href="?page=<%=Integer.parseInt(request.getParameter("page")) -1 %>">&lt;</a></li>
                                <s:iterator  value="listCustomer" status="status" >
                                <s:if test="#status.index < (listCustomer.size() -1)/10+1">
                                <li data-page="0" class="goto-page active"><a href="?page=<s:property value="#status.index"/>"><s:property value="#status.index"/></a></li>
                                </s:if>
                                </s:iterator>
                                <li data-page="1" class="goto-page"><a href="?page=<%=Integer.parseInt(request.getParameter("page")) +1 %>">&gt;</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="article-share">
                        <span>Chia sẻ:</span>
                        <a target="_blank" class="facebook hide-text" rel="facebook" href="">Facebook</a>
                        <a target="_blank" class="twitter hide-text" rel="twitter" href="">Twitter</a>
                        <a target="_blank" class="zingme hide-text" rel="zingme" href="">Zing me</a>
                        
                        
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>