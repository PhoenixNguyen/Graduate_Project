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
                    zoom: 16,
                    center: new google.maps.LatLng(21.0286380, 105.7806179),
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };

                var map = new google.maps.Map(document.getElementById("googleMap"), myOptions);

                var infowindow = new google.maps.InfoWindow({
                    content: ''
                });
                
                var contentString = [
                        <s:iterator value="listCustomer" status="status">
                                'Khách hàng: <s:property value="mDoiTuong"/>' +'<br/>'+ 
                                'Mã khách hàng: <s:property value="mMaDoiTuong"/>' +'<br/>'+
                                'Tỉnh thành: <s:property value="mTinhThanh"/>'+'<br/>'+
                                'Địa chỉ: <s:property value="mDiaChi"/>' +'<br/>'+
                                'Điện thoại: <s:property value="mDienThoai"/>' +'<br/>'+
                                'Fax: <s:property value="mFax"/>' +'<br/>',

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
                google.maps.event.addListener(marker, 'mouseover', function() {
                    infowindow.setContent(html);
                    infowindow.open(map, marker);

                });
                google.maps.event.addListener(marker, 'mouseout', function() {
                    infowindow.close();

                });
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