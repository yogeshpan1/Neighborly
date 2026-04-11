<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<input type="text" class="form-control" placeholder="e.g. Electrician">

<label>Department</label>
<input type="text" class="form-control" placeholder="e.g. Public ">
</div>

<label>Job Description</label>
<textarea class="form-control" placeholder="Describe the roles and responsibilities..."></textarea>

<div class="side">
<label>Contact Email</label>
<input type="email" class="form-control" placeholder="abc@neighborly.com">

<label>Contact Phone</label>
<input type="tel" class="form-control" placeholder="(+977) 000-0000">
</div>

<button type="button" class="form-button">Post Listing</button>
 </form>
</section>

</div>

</body>
</html>