<%@ page language="java" contentType="text/html; charset=UTF-8" 
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard - Neighborly</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css">
</head>
<body>

<!-- SIDEBAR component -->
<jsp:include page="/components/admin-sidebar.jsp" />

<div class = "mainContent">

<!-- Topbar Component -->

<% request.setAttribute("pageTitle", "Admin Dashboard"); %>
<jsp: include page = "/components/admin-topbar.jsp" />

<!--Dashboard Body -->

<main class = "dashboardBody">

<!-- Start Cards -->

<div class = "statsFlex">
<div class = "statCard">
<div class = "statIconWrap">
<div class = "statbars barsGreen">
<div class = "bar h40">
<div class = " bar h50">
<div class = " bar h50"> 

<div class = " bar h60"> 

<div class = " bar h80"> 

<div class = " bar h100"> 


</div>

</div>

</div>

</div>

</div>

</div>


</div>

</div>

</div>

</div>

</main>

</div>

</body>
</html>
