<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>



<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title><tiles:getAsString name="title"></tiles:getAsString></title>

    <%-- <!-- Favicon -->
    <link rel="icon" href="${pageContext.request.contextPath}/static/lib/img/core-img/favicon.ico">--%>


    <!-- Bootstrap core CSS -->
    <link href="${pageContext.request.contextPath}/static/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/static/lib/css/carousel.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/static/lib/css/dashboard.css" rel="stylesheet">
    
    
    
     <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="${pageContext.request.contextPath}/static/lib/jquery/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/static/lib/bootstrap/js/bootstrap.min.js"></script>
    

</head>



<body>


	<div><tiles:insertAttribute name="header"></tiles:insertAttribute></div>
	<div><tiles:insertAttribute name="content"></tiles:insertAttribute></div>
	<div><tiles:insertAttribute name="footer"></tiles:insertAttribute></div>

	
</body>
</html>