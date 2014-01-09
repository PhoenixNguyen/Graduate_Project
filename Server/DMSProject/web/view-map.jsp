<%-- 
    Document   : index
    Created on : Jan 5, 2014, 3:28:43 PM
    Author     : HP
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<%

    request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View map detail</title>

        <link type="text/css" rel="stylesheet" href="css/map/view-map.css"/>

        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
        <script type="text/javascript" src="js/jquery.min.js"></script>
        <script type="text/javascript" src="js/view-data-script.js"></script>
        <script type="text/javascript" src="js/view-map.js"></script>
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
                    '<div id="boxShow"><img class= "ImageWrap" border="0" src="images/pulpit.jpg" alt="Pulpit rock" >' +
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
                    var img = new google.maps.MarkerImage('images/marker.jpg',
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
                $(".category-wrapper").click(function(){
                  $(".hide").fadeToggle();

                });
              });
        </script>
        <script type="text/template" id="template-pois">
            <ul class="left-poi-list">
            [% for (var i = start_index; i < end_index; ++i) {
            var poi = pois[i]
            %]
            <li data-poi-id="[%= poi.id %]">
            <div class="poi-content">
            <div class="poi-photo">
            [% if (poi.img) { %]
            <a href="/poi/details/[%= poi.hash %]">
            <img src="[%= poi.img %]" data-original="[%= poi.img %]" width="64" height="64" />
            </a>
            [% } %]
            </div>
            <h2 class="poi-title">
            <a href="/poi/details/[%= poi.hash %]">[%= poi.title %]</a></h2>
            <div class="poi-infos">
            [% if (poi.address) { %]
            <strong>Địa chỉ:</strong> [%= poi.address %]
            [% } %]

            [% if (poi.email) { %]
            <br /><strong>Email:</strong> [%= poi.email %]
            [% } %]

            [% if (poi.phone) { %]
            <br /><strong>Điện thoại:</strong> [%= poi.phone %]
            [% } %]

            [% if (poi.url) { %]
            <br /><strong>Web site:</strong> <a href="http://[%= poi.url %]" target="_blank">[%= poi.url %]</a>
            [% } %]
            [% if (poi.rating) {
            rate = (poi.rating / 5) * 100;
            %]
            <div class="poi-rating"><strong>Rating:</strong><div class="rate-wrapper"><div class="rate-value" style="width: [%=rate%]%"></div></div></div>
            [% } %]

            [% if (poi.fe_category==18 ||  poi.fe_category ==19) {							
            %]
            <div class="poi-src">* Dữ liệu do Thành Đoàn Hà Nội cung cấp</div>
            [% } %]
            </div>
            </div>
            </li>
            [% } %]
            </ul>
            <div id="left-content-pagination">
            [% 
            var halfPPB = Math.floor(PAGES_PER_BLOCK / 2);
            var midPPB = halfPPB + PAGES_PER_BLOCK % 2;
            var pageBlockStart = Math.max(Math.min(pageNumber - halfPPB, numberOfPages - PAGES_PER_BLOCK), 1);
            var pageBlockEnd = Math.min(Math.max(pageNumber + midPPB, PAGES_PER_BLOCK + 1), numberOfPages);
            %]
            <ul class="pagination-block">
            [% if (numberOfPages > 1) { %]
            [% if (pageNumber > 0) { %]
            <li data-page="[%= pageNumber - 1 %]" class="goto-page"><a href="#">&lt;</a></li>
            [% } %]

            <li data-page="0" class="goto-page [%= pageNumber === 0 ? 'active' : '' %]"><a href="#">1</a></li>

            [% if (pageNumber > midPPB) { %]
            <li class="more-page"><span>...</span></li>
            [% } %]

            [% for (var page = pageBlockStart; page < pageBlockEnd; ++page) { %]
            <li data-page="[%= page %]" class="goto-page [%= pageNumber === page ? 'active' : '' %]"><a href="#">[%= page + 1 %]</a></li>
            [% } %]

            [% if (numberOfPages > pageBlockEnd) { %]
            <li class="more-page"><span>...</span></li>
            [% } %]

            [% if (pageNumber < numberOfPages - 1) { %]
            <li data-page="[%= pageNumber + 1 %]" class="goto-page"><a href="#">&gt;</a></li>
            [% } %]
            [% } %]
            </ul>
            </div>
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
                <h1 class="logo"><a href="http://localhost:8080/DMSProject" class="hide-text" target="">DMS</a> 
                    <span>
                        Quản lý khách hàng			
                    </span>
                </h1>

                <div class="right-app">
                    <a href="" class="android-app" target="_blank"></a>
                </div>


                <div class="searchs">
                    <form action="/" method="post" name="search-poi">
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
                            <li class="category-wrapper"><a href="#">Tỉnh thành</a>

                                <div class="hide"><span class="arrow-up"></span>
                                    <div class="combo-wrapper wrapper-poitype">
<!--                                        <select name="poitype" class="select-box hide">
                                            <option value="" selected="selected">Tỉnh thành</option>
                                            <option value="1">Hà Nội</option>
                                            <option value="1">Hải Phòng</option>

                                        </select>-->
                                        <a href="#" class="combo-show"><span>show</span></a>
                                        <input type="text" placeholder="Tất cả khách hàng">
                                        <div class="combo-values poitype">
                                            <ul>
                                                <li data-index="0" class="selected">Tỉnh thành</li>
                                                <li data-index="1">Hà Nội</li>
                                                <li data-index="2">Hải Phòng</li>

                                            </ul>
                                        </div>
                                    </div>
                                </div>
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

                                        <a href="/poi/details/9364987525237228693">
                                            <img src="images/pulpit.jpg" data-original="images/pulpit.jpg" width="64" height="64">
                                        </a>

                                    </div>
                                    <h2 class="poi-title">
                                        <a href=""><s:property value="mDoiTuong"/></a></h2>
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