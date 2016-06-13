<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Welcome page</title>
        <link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
        <link href="<c:url value='/static/css/style.css' />" rel="stylesheet"></link>
	<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />

</head>
<body>
	Greeting : ${greeting}
	This is a welcome page.
        <p>css check</p>
</body>
</html>