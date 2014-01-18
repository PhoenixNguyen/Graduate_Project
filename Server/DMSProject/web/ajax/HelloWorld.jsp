<%-- 
    Document   : HelloWorld
    Created on : Jan 15, 2014, 12:26:05 PM
    Author     : HP
--%>

<%@ page contentType="text/html; charset=UTF-8" %>

<%@ taglib prefix="s" uri="/struts-tags" %>
<script>
<%@include file="../js/jquery.min.js"%>
</script>
    <html>

<!-- JavaScript Plugins -->
  <script>
       function getLoad(){


       var stateId = "kachiusa";//$('#state').val();

$.getJSON('HelloWorld.action', {'stateId': stateId},
    function(data) {

           var divisionList = (data.regnList);

//                var options = $("#regn");
//                options.find('option')
//    .remove()
//    .end();
//     options.append($("<option />").val("-1").text("--Select--"));
//$.each(divisionList, function() {
//
//    options.append($("<option />").val(this.regnId).text(this.regnName));
//});
    }
);}
   </script>

<!-- jQuery-UI Dependent Scripts -->

    <body>
        State List <s:select name="stateId" list="stateList" id="state" listKey="stateId" onchange="getLoad()"  headerKey="0" headerValue="--select--" />
        Regn List <s:select name="regnId"  list="regnList" listKey="regnId" id="regn"  headerKey="0" headerValue="--select--" />
        <br/>
    </body>
</html>
