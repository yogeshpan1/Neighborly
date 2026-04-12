<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/JobListing.css">
</head>
<body>
<div class="main"> 

<div class ="header">
	<h1>Job Cateogry</h1>
	<p> Manage Community Employment Oppertunities. </p>
	<hr>
</div>

<section class="card">
<div class="card-header">
<h3 style="color: white; font-weight: 500;">Post a New Job</h3>
</div>
<form>
<div class="side">
<label>Job Title</label>
<input type="text" class="form-design" placeholder="e.g. Electrician">

<label>Department</label>
<input type="text" class="form-design" placeholder="e.g. Public ">
</div>

<label>Job Description</label>
<textarea class="form-design" placeholder="Describe the roles and responsibilities..."></textarea>

<div class="side">
<label>Contact Email</label>
<input type="email" class="form-design" placeholder="abc@neighborly.com">

<label>Contact Phone</label>
<input type="tel" class="form-design" placeholder="(+977) 000-0000">
</div>

<button type="button" class="form-button">Post Listing</button>
 </form>
</section>

<section class="manage-listings">

<div class="list-head">
<h3 style="color: black; font-weight: 500;">Manage Listing</h3>
</div>
<div style="border-bottom: 1px solid #323639; margin-top:20px; margin-bottom: 24px;"></div>

<div class="list-card">
<div class="list-info">
    <h4>Electrician <span class="status">Active</span></h4>
    <div class="listing-meta">
        <span>TECHNICAL SERVICES</span>
        <span>Posted Oct 12, 2025</span>
    </div>
</div>
<div class="list-actions">
    <button class="edit">Edit</button>
    <button class="delete">Delete</button>
</div>
</div>

<!-- Listing 2 -->
<div class="list-card">
    <div class="listS-info">
<h4>Junior Data Analyst <span class="status">Active</span></h4>
<div class="listing-meta">
<span>IT SERVICES</span>
<span>Posted Sep 28, 2025</span>
        </div>
    </div>
    <div class="list-actions">
        <button class="edit">Edit</button>
        <button class="delete">Delete</button>
    </div>
</div>

<!-- Listing 3 -->
<div class="list-card">
    <div class="list-info">
        <h4>Health Nurse <span class="status">Active</span></h4>
        <div class="listing-meta">
            <span>HEALTH SERVICES</span>
            <span>Posted Oct 05, 2025</span>
        </div>
    </div>
    <div class="list-actions">
        <button class="edit">Edit</button>
        <button class="delete">Delete</button>
    </div>
</div>

</section>


</div>

</body>
</html>