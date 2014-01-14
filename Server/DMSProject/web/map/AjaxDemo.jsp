<%-- 
    Document   : AjaxDemo
    Created on : Jan 14, 2014, 11:45:46 AM
    Author     : HP
--%>

<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>
<html>
<head>
    <title>Welcome</title>
    <sx:head />
</head>
<body>
    <h2>Struts 2 Autocomplete (Drop down) Example!</h2>
     
    Country:
    <sx:autocompleter size="1" list="countries" name="country"></sx:autocompleter>
    </action>
</body>
</html>
