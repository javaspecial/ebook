<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<title>Exception</title>
<%@ page isELIgnored="false"%>
<link rel="shortcut icon"
	href="<spring:url value="/resources/icon/title.png"/>" />
</head>
<body>
	<center>
		<h1>An unexpected exception occur</h1>
		<h2>...Please try again later...</h2>
		<h5>${exception}</h5>
	</center>
</body>
</html>