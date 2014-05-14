<%-- 
    Document   : view-locations
    Created on : May 14, 2014, 12:07:11 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
        <style type="text/css">

        </style>
        <!--    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js">
            </script>-->
        <script language="JavaScript" type="text/javascript" src="/DMS/js/jquery.min.js"></script>
        <script language="JavaScript" type="text/javascript" src="/DMS/js/wz_jsgraphics.js"></script>

<!--        <script type='text/javascript' src="http://www.walterzorn.de/en/scripts/wz_jsgraphics.js"></script>-->
        
        <link rel="stylesheet" type="text/css" href="/DMS/js/maps/map.css">
        <script type="text/javascript"
                src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCGEhKh7kMB8aYZpl2nY6jAFo9td-iVA7k&sensor=true">
        </script>
        
        <script type="text/javascript">
            var arr = new Array();
            var map;
            function initialize() {
                var i;
                var Customers = [
            <s:iterator value="listCustomer" status="status">
                    {
                        mXCoordinates: <s:property value="coordinateX"/>,
                                mYCoordinates: <s:property value="coordinateY"/>,
                        mMaDoiTuong: '<s:property value="maDoiTuong:"/>'

                    },
            </s:iterator>
                ];
                console.log("__ "+Customers[0].mXCoordinates + Customers[0].mYCoordinates);
                var x = 21.030336;
                var y = 105.85814 ;
                if(Customers[0].mXCoordinates > 0){
                    x = Customers[0].mXCoordinates;
                    y = Customers[0].mYCoordinates;
                }
                var myOptions = {
                    zoom: 14,
                    center: new google.maps.LatLng(x, y),
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                map = new google.maps.Map(document.getElementById("map-canvas"), myOptions);

                var infowindow = new google.maps.InfoWindow({
                    content: ''
                });

                var contentString = [
            <s:iterator value="listCustomer" status="status">
                    '<div id="boxShow"> <a href="customerDetail.action?page=0&customer_id=<s:property value="maDoiTuong"/>">\n\
                                        <img class= "ImageWrap" border="0" src="../customer/<s:property value="maDoiTuong"/>/1.jpg"  ></a>' +
                            '<p class= "TextWrap">\n\
                                <b><a href="customerDetail.action?page=0&customer_id=<s:property value="maDoiTuong"/>">Khách hàng: <s:property value="doiTuong"/></a></b>' + '<br/><br/>' +
                            'Mã khách hàng: <s:property value="maDoiTuong"/>' + '<br/>' +
                            'Tỉnh thành: <s:property value="tinhThanh"/>' + '<br/>' +
                            'Địa chỉ: <s:property value="diaChi"/>' + '<br/>' +
                            'Điện thoại: <s:property value="dienThoai"/>' + '<br/>' +
                            'Fax: <s:property value="fax"/>' + '<br/>\n\
                             Tọa độ X: <s:property value="coordinateX"/> <br/> \n\
                             Tọa độ Y: <s:property value="coordinateY"/> <br/>   </p></div>',
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
                        position: new google.maps.LatLng(Customers[i].mXCoordinates, Customers[i].mYCoordinates)
                        //icon: img
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
            
            function toPixel(x , y){
                var end = new google.maps.LatLng(x, y);
                overlay = new google.maps.OverlayView();
                overlay.draw = function() {};
                overlay.setMap(map);
                var point = overlay.getProjection().fromLatLngToContainerPixel(end); 
                return point;
            }
            
        </script>
        
        <script>
            //Draw line
//            $(document).ready(function() {
//                $(".gallery > li").hover(function(x) {
//                    drawLine(x.clientX, x.clientY);
//                    //bounce();
//                }, function() {
//                    //toggleBounce();
//                    clearLine();
//                });
//            });

            function onGetLocation(x , l1, l2){
                console.log("l1: " + l1);
                //drawLine(x.clientX, x.clientY, toPixel(l1, l2));
                //drawLine(x.offsetLeft + 100, x.offsetTop, toPixel(l1, l2));
                drawLine(f (x).x + 100, f (x).y, toPixel(l1, l2));
            }
            
            function out(){
                clearLine();
            }
            
            function f (el) {
                var offset = (function(el) {
                  if(el && el.parentNode) {
                    var x = 0;
                    var y = 0;

                    while(el) {
                      x += el.offsetLeft;
                      y += el.offsetTop;
                      el = el.offsetParent;
                    }

                    return {x: x, y: y};
                  }

                  return null;
                })(el);

                var scroll = (function(el) {
                  if(el && el.parentNode) {
                    var x = 0;
                    var y = 0;

                    while(el) {
                      if(el && el.parentNode) {
                        x -= el.scrollLeft;
                        y -= el.scrollTop;
                        el = el.parentNode;
                      } else {
                        el = null;
                      }
                    }

                    return {x: x, y: y};
                  }

                  return null;
                })(el);

                return { x: offset.x + scroll.x, y: offset.y + scroll.y }
              }
        </script>


    </head>
    <body >
        
        
        <div id="canvas">

            <div id="map-canvas">

            </div>

            <div id="info">
                <div id="page">
                    <ul class="frag">
                        <li><a href="">1</a></li>
                        <li><a href="">2</a></li>
                        <li><a href="">3</a></li>
                        <li><a href="">4</a></li>
                        <li><a href="">5</a></li>
                        <li><a href="">6</a></li>
                        <li><a href="">7</a></li>
                        <li><a href="">8</a></li>
                        <li><a href="">9</a></li>
                        <li><a href="">10</a></li>
                        <li><a href="">11</a></li>
                        <li><a href="">12</a></li>
                        <li><a href="">13</a></li>

                       
                    </ul>
                </div>

                <div id="detail">
                    <ul class="gallery">
                            <%
                                int page2 = Integer.parseInt(request.getParameter("page")) * 20;
                                pageContext.setAttribute("first", page2);
                            %>
                            <s:subset source="listCustomer" start="%{#attr.first}"  count="20">
                                
                                <s:iterator  status="status" >
                
                                    <li onmouseover="onGetLocation(this, <s:property value="coordinateX"/> , <s:property value="coordinateY"/>);" onmouseout="out();">
                                    <img class="bgr" src="/DMS/js/maps/map.jpg" >
                                    <!--                                    <h2><span></span></h2>--><br>
<!--                                    <span class="name"></span>-->
                                    <p id="name"><s:property value="doiTuong"/></p>
                                </li>
                                
                                </s:iterator>
                                    
                            </s:subset>
                        
                        
                    </ul>
                </div>
            </div>

        </div>

        <script>
            var jg ;//= new jsGraphics("canvas");
            
            //var img1 = document.getElementById("cl1");
            function drawLine(x , y , p) {
                console.log(x);
                jg = new jsGraphics("canvas");
                
                var point = p;//toPixel();
                jg.setColor("#000000");
                jg.setStroke(2);
                jg.setPrintable(true);
                jg.drawLine(x, y, point.x, point.y);
                //point.x, point.y
                //img1.offsetLeft + 20 , img1.offsetTop + 20
                //jg.drawLine(0, 0, 500, 600);
                jg.paint();
            }

            function clearLine() {
                jg.clear();
            }
        </script>
    </body>
</html>
