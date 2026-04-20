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
<div class = "bar h50">
<div class = "bar h50"> 

<div class = "bar h60"> 

<div class = "bar h80"> 

<div class = "bar h100"> 

<div class = "statInfo">
<span class = "statLabel">Total citizens</span>
<span class = "statValue">1, 342</span>
<span class = "statTrend green"> +22 this week</span>

<div class="statCard">
<div class="statIconWrap">
     <div class="statBars barsOrange">
<div class="bar h50"></div><div class="bar h80"></div><div class="bar h100"></div><div class="bar h60"></div>
</div>
    </div>
    <div class="statInfo">
        <span class="statLabel">Open civic issues</span>
        <span class="statValue">8</span>
        <span class="statTrend orange">Needs attention</span>
    </div>
</div>
<div class="statCard">
    <div class="statIconWrap">
         <div class="statBars barsBlue">
            <div class="bar h70"></div><div class="bar h50"></div><div class="bar h100"></div>
        </div>
    </div>
    <div class="statInfo">
        <span class="statLabel">Documents pending</span>
        <span class="statValue">14</span>
        <span class="statTrend orange">Awaiting review</span>
    </div>
    </div>
    <div class="statCard">
        <div class="statIconWrap">
             <div class="statBars barsYellow">
                <div class="bar h100"></div><div class="bar h80"></div>
            </div>
        </div>
        <div class="statInfo">
            <span class="statLabel">Active polls</span>
            <span class="statValue">3</span>
            <span class="statTrend orange">On track</span>
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


</div>

</div>

</div>

</div>

</main>

</body>
</html>
