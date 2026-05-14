<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/JobListing.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/Admin-Side.css">
</head>
<body>
<body>

	<%
	request.setAttribute("pageTitle", "Admin Joblisting");
	%>
	<jsp:include page="/components/admin-sidebar.jsp" />
	<jsp:include page="/components/admin-topbar.jsp" />

	<div class="main">
		<div class="header">
			<h1>Job Cateogry</h1>
			<p>Manage Community Employment Oppertunities.</p>
			<hr>
		</div>

		<section class="card">
			<div class="card-header">
				<h3 style="color: white; font-weight: 500;">Post a New Job</h3>
			</div>
			<form action="<%=request.getContextPath()%>/createjob" method="POST">
				<div class="side">
					<label>Job Title</label> <input type="text" name="job_title"
						class="form-design" placeholder="e.g. Electrician"> <label>Department</label>
					<input type="text" name="department" class="form-design"
						placeholder="e.g. Public ">
				</div>

				<label>Job Description</label>
				<textarea name="job_description" class="form-design"
					placeholder="Describe the roles and responsibilities..."></textarea>

				<div class="side">
					<label>Contact Email</label> <input type="email"
						name="contact_email" class="form-design"
						placeholder="abc@neighborly.com"> <label>Contact
						Phone</label> <input type="tel" name="contact_phone" class="form-design"
						placeholder="(+977) 000-0000">
				</div>

				<button type="submit" class="form-button">Post Listing</button>
			</form>
		</section>
		<section class="manage-listings">

			<c:forEach var="j" items="${jobs}">
				<div class="list-card">
					<div class="list-info">
						<h4>
							<c:out value="${j.jobTitle}" />
							<span class="status">Active</span>
						</h4>
						<div class="listing-meta">
							<span><c:out value="${j.department}" /></span> <span>Posted
								${j.postedAt}</span>
						</div>
					</div>
					<div class="list-actions">
						<form action="<%=request.getContextPath()%>/joblisting"
							method="POST">
							<input type="hidden" name="editJobId" value="${j.jobId}">
							<button type="submit" class="edit">Edit</button>
						</form>
						<form action="<%=request.getContextPath()%>/joblisting"
							method="POST">
							<input type="hidden" name="openDeleteJobId" value="${j.jobId}">
							<input type="hidden" name="deleteJobTitle"
								value="<c:out value='${j.jobTitle}'/>">
							<button type="submit" class="delete">Delete</button>
						</form>
					</div>
				</div>
			</c:forEach>

		</section>


	</div>

</body>
</html>