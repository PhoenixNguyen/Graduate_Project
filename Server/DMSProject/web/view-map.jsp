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
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
        </script>

        <script type="text/javascript">
            // The following example creates complex markers to indicate beaches near
            // Sydney, NSW, Australia. Note that the anchor is set to
            // (0,32) to correspond to the base of the flagpole.

            function initialize() {
                var mapOptions = {
                    zoom: 10,
                    center: new google.maps.LatLng(-33.9, 151.2)
                }
                var map = new google.maps.Map(document.getElementById('googleMap'),
                        mapOptions);

                setMarkers(map, beaches);
            }

            /**
             * Data for the markers consisting of a name, a LatLng and a zIndex for
             * the order in which these markers should display on top of each
             * other.
             */
                   
            var beaches = [
                    <s:iterator value="listCustomer" status="stat">
                    ['<s:property value="mDoiTuong"/>', <s:property value="mXCoordinates"/>, <s:property value="mYCoordinates"/>, 1],

                </s:iterator>
            ];

            function setMarkers(map, locations) {
                // Add markers to the map

                // Marker sizes are expressed as a Size of X,Y
                // where the origin of the image (0,0) is located
                // in the top left of the image.

                // Origins, anchor positions and coordinates of the marker
                // increase in the X direction to the right and in
                // the Y direction down.
                var image = {
                    url: 'images/marker.jpg',
                    // This marker is 20 pixels wide by 32 pixels tall.
                    size: new google.maps.Size(20, 32),
                    // The origin for this image is 0,0.
                    origin: new google.maps.Point(0, 0),
                    // The anchor for this image is the base of the flagpole at 0,32.
                    anchor: new google.maps.Point(0, 32)
                };
                // Shapes define the clickable region of the icon.
                // The type defines an HTML &lt;area&gt; element 'poly' which
                // traces out a polygon as a series of X,Y points. The final
                // coordinate closes the poly by connecting to the first
                // coordinate.
                var shape = {
                    coord: [1, 1, 1, 20, 18, 20, 18, 1],
                    type: 'poly'
                };
                <%
                    int tmp = -1;
                %>
                <s:set name="tmp" value="0"/>
                for (var i = 0; i < locations.length; i++) {
                    
                    var beach = locations[i];
                    var myLatLng = new google.maps.LatLng(beach[1], beach[2]);
                    var marker = new google.maps.Marker({
                        position: myLatLng,
                        map: map,
                        icon: image,
                        shape: shape,
                        title: beach[0]
//                        ,
//                        zIndex: beach[3]
                    });
                    var tmp = 1;
                    
                    <%
                        int user_data = 1;
                        tmp++;
                        pageContext.setAttribute("id_customer", tmp);
                    %>
                    <s:set name="id" value="%{#tmp ++}"/>
                    //Show info window -------------------------------------------------
                    //listCustomer.get(#id).getmDoiTuong()
                    var contentString = 
                        '<div id="content">'+
                        '<p><b>Khách hàng: <s:property value="<%= tmp %>"/></b><br/>\n\
                        Mã khách hàng: <s:property value="mMaDoiTuong"/><br/>\n\
                        Tỉnh thành: <s:property value="mTinhThanh"/><br/>\n\
                        Địa chỉ: <s:property value="mDiaChi"/><br/>\n\
                        Điện thoại: <s:property value="mDienThoai"/><br/>\n\
                        Fax: <s:property value="mFax"/><br/>'
                        '</p>'
                        '</div>';
                    var infowindow = new google.maps.InfoWindow({
                        content: contentString
                    });

                    google.maps.event.addListener(marker, 'click', function() {
                        
                        infowindow.open(map,marker);
                        
                    });
                    //------------------------------------------------------------------
                    
                }
            }
            
            
            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
    </head>

    <body>
        <div id="googleMap" style="width:1000px;height:580px;"></div>
        
        <p>
            <s:iterator value="listCustomer">
                [<s:property value="mDoiTuong"/>, <s:property value="mXCoordinates"/>, <s:property value="mYCoordinates"/>, 4], <br/>
                
            </s:iterator>
                
             <br/>
                
            <s:property value="%{#attr.id_customer}"/>
        </p>
    </body>
</html>