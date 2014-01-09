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

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>

        <link rel="icon" href=""/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>View map detail</title>

            <link type="text/css" rel="stylesheet" href="../css/map/view-map.css"/>

            <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js">
            <script type = "text/javascript" src = "../js/jquery.min.js" ></script>
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
                $(".category-wrapper").click(function(){
                  $(".hide").fadeToggle();

                });
              });
        </script>
    </head>
    <body>


        <noscript>
            &lt;img src="https://d5nxst8fruw4z.cloudfront.net/atrk.gif?account=/MRDh1aAod00OU" style="display:none"
            height="1" width="1" alt="" /&gt;
        </noscript>
        <!-- End Alexa Certify Javascript -->
        <div id="topbar-placeholder">
            <style type="text/css">#topbar-widget,#topbar-widget li,#topbar-widget a{line-height:28px;height:28px}#topbar-widget[hidden]{display:none}#topbar-widget{font:12px Arial,Helvetica,sans-serif;position:relative;background:#4C4C4C;color:#fff}#topbar-widget .topbar-title,#topbar-widget button{display:none}#topbar-widget ul{background:#4C4C4C;list-style:none;white-space:nowrap;margin:0;padding:0}#topbar-widget .topbar-active,#topbar-widget a{padding:0 20px}#topbar-widget li,#topbar-widget a{display:inline-block;*display:inline;*zoom:1;color:#FFF;text-decoration:none;vertical-align:top;-webkit-transition:background-color 50ms;-moz-transition:background-color 50ms;-ms-transition:background-color 50ms;transition:background-color 50ms}#topbar-widget a:hover,#topbar-widget .topbar-active{background-color:#3F3F3F;filter:progid:DXImageTransform.Microsoft.gradient(startColorstr='#3f3f3f',endColorstr='#3f3f3f',GradientType=0);position:relative}#topbar-widget .topbar-active{cursor:default}#topbar-widget .topbar-arrow{display:block;position:absolute;overflow:hidden;top:100%;left:50%;width:0;height:0;content:' ';border-left:4px solid transparent;border-right:4px solid transparent;border-bottom:3px solid #fff;margin-top:-3px;margin-left:-3px;font-size:0}#topbar-widget.topbar-widget-mobile .topbar-title{font-size:18px;padding:0 50px 0 15px;line-height:50px;overflow:hidden;white-space:nowrap;text-overflow:ellipsis}#topbar-widget.topbar-widget-mobile,#topbar-widget.topbar-widget-mobile li{line-height:50px;height:50px}#topbar-widget.topbar-widget-mobile .topbar-title{display:block}#topbar-widget.topbar-widget-mobile button{display:block;width:32px;height:30px;background:#454545 url('data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAMCAYAAABr5z2BAAAAGUlEQVQokWP4TyFgoNiAYQBGA5EKYMADEQDcJn6QVVN+LQAAAABJRU5ErkJggg==') no-repeat 50% 50%;border:1px solid #3E3E3E;border-radius:2px;right:9px;top:9px;position:absolute}#topbar-widget.topbar-widget-mobile .topbar-active{display:none}#topbar-widget.topbar-widget-mobile a:hover{background-color:transparent}#topbar-widget.topbar-widget-mobile .topbar-link,#topbar-widget.topbar-widget-mobile .topbar-link a{font-size:15px;line-height:32px;height:32px;display:block}#topbar-widget.topbar-widget-mobile .topbar-link{border-top:1px solid #3B3B3B;background:#4C4C4C}#topbar-widget.topbar-widget-mobile .topbar-link a{border-top:1px solid #535353}#topbar-widget.topbar-widget-mobile .topbar-link a:hover{background:#3F3F3F;border-color:#3F3F3F}#topbar-widget.topbar-widget-mobile ul{overflow:hidden;position:absolute;-webkit-transition:height 150ms;top:100%;left:0;right:0;z-index:2147483647;height:0}#topbar-widget.topbar-widget-mobile button.expanded+ul{height:135px}</style>
            <div id="topbar-widget" class="">
                <span class="topbar-title">Trang chủ</span>
                <button onclick="this.className = this.className === 'expanded' ? '' : 'expanded';"></button>
                <ul>
                    <li class="topbar-link"><a href="" title="Trang chủ" index="0">Trang chủ</a></li>
                    <li class="topbar-active" title=""><span class="topbar-arrow"></span></li>
                    <li class="topbar-link"><a href="" title="" index="2"></a></li>
                    <li class="topbar-link"><a href="" title="" index="3"></a></li>
                    <li class="topbar-link"><a href="" title="" index="4"></a></li>
                </ul>
            </div>
        </div>

        <div id="wrapper" class="has-topbar">
            <div id="header" class="clearfix">
                <h1 class="logo"><a href="" class="hide-text" target="">Trang chủ</a> <span>
                        <a href="/">Thông tin khách hàng</a>			</span></h1>

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
                                            <option value="">Tỉnh thành</option>
                                            <option value="1">Hà Nội</option>
                                            <option value="2">Hải Phòng</option>

                                        </select>-->
                                        <a href="#" class="combo-show"><span>show</span></a>
                                        <input type="text" placeholder="Tất cả địa điểm">
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
            <!-- Templates -->
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
            </script>	<!-- Templates -->
            <script type="text/template" id="template-related-poi">
                [% 
                for (var i = 0, poi; poi = pois[i]; i++) {
                if (+poi.id !== +poi_id) {
                %]
                <li data-poi-id="[%= poi.id %]">
                <div class="poi-content">
                <div class="poi-photo">
                <img src="/themes/bootstrap/img/transparent.png" data-original="[%= poi.img %]" width="64" height="64" alt="[%= poi.title %]" />
                </div>
                <h2 class="poi-title"><a href="/poi/details/[%= poi.hash %]">[%= poi.title %]</a></h2>
                <div class="poi-infos">
                <strong>Địa chỉ:</strong> [%= poi.address %]

                [% if (poi.email) { %]
                <br /><strong>Email:</strong> [%= poi.email %]
                [% } %]

                [% if (poi.phone) { %]
                <br /><strong>Điện thoại:</strong> [%= poi.phone %]
                [% } %]

                [% if (poi.url) { %]
                <br /><strong>Website:</strong> <a href="http://[%= poi.url %]" target="_blank">[%= poi.url %]</a>
                [% } %]
                [% if (poi.rating) {
                rate = (poi.rating/5)*100;
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
                [% 
                }
                } 
                %]
            </script>
            <div id="container" class="poi-detail-page clearfix" data-id="542591" data-hash="6896202108404922949" data-fe-category="1" data-coordinates="21.03063357,105.85507392996" data-icon="/themes/bootstrap/img/icon_poi_color/icon_poi_new_46x66/1.png">
                <div class="left-content">
                    <div class="article-top">
                        <div id="googleMap" style="width:640px;height:340px;"></div>
                    </div>
                    <div class="article-content">
                        <div class="article-title">
                            <h2>
                                Khazaana Indian restaurant                
                            </h2>
                        </div>
                        <div class="content">
                            <div class="poi-infos">
                                <p><strong>Địa chỉ:</strong>
                                    11, Lý Thái Tổ, Q. Hoàn Kiếm, Hà Nội                    </p>
                                <p><strong>Điện thoại:</strong>
                                    (84-4) 39 345 657; (84-4) 39 343 513; (84-98) 9 129 440                        </p>
                                <p><strong>Email:</strong>
                                    khazana@fpt.vn                        </p>
                                <p class="poi-website"><strong>Website:</strong> <a target="_blank" href="http://www.khazaana.vn">
                                        www.khazaana.vn                            </a></p>
                            </div>
                        </div>
                        <div class="content">
                            <div class="poi-infos">
                                <div class="poi-rating"><strong>Rating:</strong>
                                    <div class="rate-wrapper">
                                        <div class="rate-value" style="width: 93.4%"></div>
                                    </div>
                                </div>
                                <div>
                                    <a href="" class="google-link" target="_blank"></a></div>
                            </div>
                        </div>
                        <div class="content clearfix">
                            <div class="article-share">Chia sẻ:<br>
                                    <a target="_blank" class="facebook hide-text" rel="facebook" href="">Facebook</a>
                                    <a target="_blank" class="twitter hide-text" rel="twitter" href="">Twitter</a>
                                    <a target="_blank" class="zingme hide-text" rel="zingme" href="">Zing
                                        me</a></div>
                        </div>

<!--                        <div class="content-bottom clearfix">
                            <div class="poi-infos">
                                <a href="" class="back-link">Quay lại</a>
                            </div>
                        </div>-->

                    </div>
                    <div class="article-photo"><img src="http://poipic.coccoc.vn/poi/previews/20130306/p1_1362545341779474ca170d4b61bd11738cba5ed17a03d4.jpg" style="margin-top: -44.5px;">
                    </div>
<!--                    <div class="article-bottom">
                        <ul class="tab-panel clearfix">
                            <li class="active"><a href="#menu">Menu</a></li>
                            <li><a href="#description">Mô tả</a></li>
                        </ul>
                        <div class="tabs-content">
                            <div id="menu" class="tab-content jspScrollable" tabindex="0" style="overflow: hidden; padding: 0px; width: 655px;">

                                <div class="jspContainer" style="width: 655px; height: 220px;"><div class="jspPane" style="padding: 0px 15px 0px 0px; width: 630px; top: 0px;"><ul class="food-menu">
                                            <li>
                                                <span><strong>56000 vnđ</strong></span>

                                                <div>Súp nấm</div>
                                            </li>
                                            <li>
                                                <span><strong>56000 vnđ</strong></span>

                                                <div>Súp ngô</div>
                                            </li>

                                        </ul></div><div class="jspVerticalBar"><div class="jspCap jspCapTop"></div><div class="jspTrack" style="height: 220px;"><div class="jspDrag" style="height: 14px;"><div class="jspDragTop"></div><div class="jspDragBottom"></div></div></div><div class="jspCap jspCapBottom"></div></div></div></div>
                            <div id="description" class="tab-content">
                                <div class="poi-description">
                                    Being the first Indian restaurant to be established in Hanoi during 1993, 
                                </div>
                            </div>
                        </div>
                    </div>-->
                </div>

                <div class="right-content">
                    <div class="article-title">
                        <h3>Danh sách ảnh tại nơi khách hàng:</h3>
                    </div>
                    <ul class="pois-list show-all">

                        <li data-poi-id="2275">
                            <div class="poi-content">
                                <div class="poi-photo">
                                    <img src="../images/pulpit.jpg" data-original="../images/pulpit.jpg" width="64" height="64" alt="Pane e Vino">
                                </div>
                                <h2 class="poi-title"><a href="/poi/details/17924613257549151258">Pane e Vino</a></h2>
                                <div class="poi-infos">
                                    <strong>Địa chỉ:</strong> 3, Nguyễn Khắc Cần, Q. Hoàn Kiếm, Hà Nội
                                    <div class="poi-rating"><strong>Rating:</strong><div class="rate-wrapper">
                                            <div class="rate-value" style="width: 77.8%">
                                        
                                            </div>
                                                
                                        </div>
                                            
                                    </div>
                                </div>
                            </div>
                        </li>



                    </ul>
                    <div class="more-places"><!--<a href="#">Xem thêm...</a>--></div>
                </div>
            </div>

            <div id="overlay" class="hide">
                <div class="overlay-content">
                    <a href="#" class="close-popup"><span>Close popup</span></a>

                    <h4>Xin vui lòng chọn thành phố:</h4>
                    <div class="combo-wrapper wrapper-citys">
                        <select name="citys" class="select-box min-width-140 hide">
                            <option value="20.925111944444000%2C105.727879722220000%2C21.092853888889000%2C105.916919722220000" selected="selected">
                                Hà Nội						</option>
                            <option value="10.673571111111000%2C106.491694166670000%2C10.897621%2C106.831741">
                                Hồ Chí Minh						</option>

                        </select><a href="#" class="combo-show"><span>show</span></a>
                        <input type="text" placeholder="Hà Nội">
                            <div class="combo-values citys">
                                <ul>
                                    <li data-index="0" class="selected">
                                        Hà Nội						</li>
                                    <li data-index="1">
                                        Hồ Chí Minh						</li>
                                </ul>
                            </div>
                    </div>
                    <div class="btn-select"><a href="#">Chọn thành phố</a></div>
                </div>
            </div>
        </div>


    </body>
</html>