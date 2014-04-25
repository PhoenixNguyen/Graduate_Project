<%-- 
    Document   : date-pick-demo
    Created on : Apr 25, 2014, 3:58:47 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="sx" uri="/struts-dojo-tags"%>

<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <sx:head />
    </head>
    <body>
        <h1>Hello World!</h1>
 
            <sx:datetimepicker name="date1" label="Format (dd-MMM-yyyy)" 
            displayFormat="dd-MMM-yyyy" value="todayDate" />

            <sx:datetimepicker name="date2" label="Format (dd-MMM-yyyy)" 
            displayFormat="dd-MMM-yyyy" value="%{'2010-01-01'}"/>

            <sx:datetimepicker label="Format (dd-MMM-yyyy)" 
            displayFormat="dd-MMM-yyyy" value="%{'2010-01-01'}"/>

            <s:submit value="submit" name="submit" />

        <sx:datetimepicker  label="Format (dd-MMM-yyyy)" 
                        displayFormat="dd-MMM-yyyy" value="%{'2010-01-01'}"/>
    </body>
</html>
