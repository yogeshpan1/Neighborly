<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Listing - Neighborly</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/JobListing.css">
    <style>
        .main { margin-left: 0 !important; }
        .header hr { max-width: 100%; }
    </style>
</head>
<body>

<jsp:include page="/components/admin-sidebar.jsp" />

<div class="main-content">

    <% request.setAttribute("pageTitle", "Job Listing"); %>
    <jsp:include page="/components/admin-topbar.jsp" />

    <div class="main">

        <div class="header">
            <h1>Job Category</h1>
            <p>Manage Community Employment Opportunities.</p>
            <hr>
        </div>

        <section class="card">
            <div class="card-header">
                <h3 style="color: white; font-weight: 500;">Post a New Job</h3>
            </div>
            <form action="<%= request.getContextPath() %>/postjob" method="POST">
                <div class="side">
                    <label>Job Title</label>
                    <input type="text" class="form-design" name="jobTitle" placeholder="e.g. Electrician">

                    <label>Department</label>
                    <input type="text" class="form-design" name="department" placeholder="e.g. Public Works">
                </div>

                <label>Job Description</label>
                <textarea class="form-design" name="description" placeholder="Describe the roles and responsibilities..."></textarea>

                <div class="side">
                    <label>Contact Email</label>
                    <input type="email" class="form-design" name="contactEmail" placeholder="abc@neighborly.com">

                    <label>Contact Phone</label>
                    <input type="tel" class="form-design" name="contactPhone" placeholder="(+977) 000-0000">
                </div>

                <button type="submit" class="form-button">Post Listing</button>
            </form>
        </section>

        <section class="manage-listings">

            <div class="list-head">
                <h3>Manage Listing</h3>
            </div>
            <div style="border-bottom: 1px solid #323639; margin-top: 20px; margin-bottom: 24px;"></div>

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

            <div class="list-card">
                <div class="list-info">
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
</div>

</body>
</html>
