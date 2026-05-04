<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Notices - Neighborly</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css">
</head>
<body>

    <!-- SIDEBAR component -->
    <jsp:include page="/components/admin-sidebar.jsp" />

    <div class="mainContent">
        <!-- TOPBAR component -->
        <% request.setAttribute("pageTitle", "Admin Dashboard"); %>
        <jsp:include page="/components/admin-topbar.jsp" />

        <div class="dashboardBody">

            <!-- PAGE HEADER -->
            <div class="noticePageHeader">
                <h1 class="noticePageTitle">Post A Notice</h1>
                <p class="noticePageSubtitle">Manage and Upload Important Notice</p>
            </div>

            <hr class="noticeDivider">

            <!-- POST A NEW NOTICE FORM -->
            <div class="noticeFormCard">
                <div class="noticeFormHeader">
                    <h2 class="noticeFormHeading">Post a New Notice</h2>
                </div>

                <form action="<%= request.getContextPath() %>/noticelist" method="POST" class="noticeForm">
                    <div class="noticeFormRow">
                        <div class="noticeFormGroup">
                            <label class="noticeFormLabel" for="noticeTitle">Notice Title</label>
                            <input type="text" class="noticeFormInput" id="noticeTitle" name="noticeTitle" placeholder="e.g. Meeting" required>
                        </div>
                        <div class="noticeFormGroup">
                            <label class="noticeFormLabel" for="noticeCategory">Category</label>
                            <select class="noticeFormSelect" id="noticeCategory" name="noticeCategory" required>
                                <option value="Policy">Policy</option>
                                <option value="Event">Event</option>
                                <option value="Maintenance">Maintenance</option>
                                <option value="Safety">Safety</option>
                                <option value="General">General</option>
                            </select>
                        </div>
                    </div>

                    <div class="noticeFormGroup noticeFormGroupFull">
                        <label class="noticeFormLabel" for="noticeDescription">Notice Description</label>
                        <textarea class="noticeFormTextarea" id="noticeDescription" name="noticeDescription" placeholder="Describe the Notice" required></textarea>
                    </div>

                    <div class="noticeFormActions">
                        <button type="submit" class="buttonPostNotice">Post Notice</button>
                    </div>
                </form>
            </div>
            </div>
        </div>
</body>
</html>
