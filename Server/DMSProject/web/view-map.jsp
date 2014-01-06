<%-- 
    Document   : index
    Created on : Jan 5, 2014, 3:28:43 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View map detail</title>
        <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyDY0kkJiTPVd2U7aTOAwhc9ySH6oHxOIYM&sensor=false">
        </script>

        <script>
            var myCenter= new google.maps.LatLng(51.508742,-0.120850);
            function initialize()
            {
                var mapProp = {
                    center: new google.maps.LatLng(51.508742, -0.120850),
                    zoom: 5,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                var map = new google.maps.Map(document.getElementById("googleMap")
                        , mapProp);
                        
                //Add location        
                var marker=new google.maps.Marker({
                    position:myCenter,
                    //icon:'pinkball.png'
                    });
                marker.setMap(map);
            }

            google.maps.event.addDomListener(window, 'load', initialize);
        </script>
    </head>

    <body>
        <div id="googleMap" style="width:1000px;height:580px;"></div>

    </body>
</html>