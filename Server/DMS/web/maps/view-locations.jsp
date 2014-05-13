<%-- 
    Document   : view-locations
    Created on : May 14, 2014, 12:07:11 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
            var flightPath;
            var map;
            var x0 = 20.978401;
            var y0 = 105.842896;
            
            var x1 = 20.988401;
            var y1 = 105.848896;
            
            var x2 = 20.988401;
            var y2 = 105.853896;
            
            var x3 = 20.989401;
            var y3 = 105.842896;
            
            var x4 = 20.978401;
            var y4 = 105.844896;
            
            
            var flightPlanCoordinates;
            var marker;
            var parliament = new google.maps.LatLng(x0, y0);

            var image = document.getElementById("cl1");

            var start = new google.maps.LatLng(20.976401, 105.842896);

            var jg = new jsGraphics("canvas");
            var img1 = document.getElementById("cl1");

            function initialize() {
                var mapOptions = {
                    center: new google.maps.LatLng(x0, y0),
                    zoom: 15
                };
                map = new google.maps.Map(document.getElementById("map-canvas"),
                        mapOptions);

                //mouse
                google.maps.event.addListener(map, 'mousemove', function(event) {

                    x0 = event.latLng.lat();
                    y0 = event.latLng.lng();

                });
                //
                flightPlanCoordinates = [
                    new google.maps.LatLng(x0, y0),
                    new google.maps.LatLng(20.978401, 105.942896)

                ];

                flightPath = new google.maps.Polyline({
                    path: flightPlanCoordinates,
                    strokeColor: '#FF0000',
                    strokeOpacity: 1.0,
                    strokeWeight: 2
                });

                //Marker
                marker = new google.maps.Marker({
                    map: map,
                    draggable: true,
                    animation: google.maps.Animation.DROP,
                    position: parliament
                });

            }

            
            function toPixel(x , y){
                var end = new google.maps.LatLng(x, y);
                overlay = new google.maps.OverlayView();
                overlay.draw = function() {};
                overlay.setMap(map);
                var point = overlay.getProjection().fromLatLngToContainerPixel(end); 
                return point;
            }
            
            google.maps.event.addDomListener(window, 'load', initialize);
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
                
                drawLine(x.clientX, x.clientY, toPixel(l1, l2));
            }
            
            function out(){
                clearLine();
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

                        <!--          <li><a href="">14</a></li>
                                  <li><a href="">15</a></li>
                                  <li><a href="">16</a></li>
                                  <li><a href="">17</a></li>
                                  <li><a href="">18</a></li>
                                  <li><a href="">19</a></li>
                                  <li><a href="">20</a></li>
                                  <li><a href="">21</a></li>
                                  <li><a href="">22</a></li>
                                  <li><a href="">23</a></li>
                                  <li><a href="">24</a></li>
                                  <li><a href="">25</a></li>
                                  <li><a href="">26</a></li>-->
                    </ul>
                </div>

                <div id="detail">
                    <ul class="gallery">

                
                        <li onmouseover="onGetLocation(event, 20.978401 , 105.842896);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event, 20.958401 , 105.848896);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event, 20.998401 , 105.873896);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event, 20.989401 , 105.862896);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event, 20.978401 , 105.854896);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        <li onmouseover="onGetLocation(event);" onmouseout="out();"><img  src="/DMS/js/maps/map.jpg"></li>
                        
                        
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
                jg.setColor("#0000FF");
                jg.setStroke(2);
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
