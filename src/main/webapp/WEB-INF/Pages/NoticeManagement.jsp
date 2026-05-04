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
                !-- NOTICE LIST SECTION -->
            <div class="noticeListHeader">
                <h2 class="noticeListTitle">Notices</h2>
                <span class="noticePillBadge">Total: 3</span>
            </div>

            <div class="noticeListContainer">

                <!-- Notice Row 1 -->
                <div class="noticeRow">
                    <div class="noticeIconWrap">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3b82f6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                            <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                        </svg>
                    </div>
                    <div class="noticeInfo">
                        <h4>Updated Privacy Policy</h4>
                        <p>Posted Oct 12, 2025</p>
                    </div>
                    <span class="noticeCategoryTag tagPolicy">Policy</span>
                    <div class="noticeActions">
                        <button class="buttonNoticeEdit" onclick="openEditModal('1', 'Updated Privacy Policy', 'Policy', 'The privacy policy has been updated to reflect new data handling practices.')">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
                                <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
                            </svg>
                            Edit
                        </button>
                        <button class="buttonNoticeDelete" onclick="openDeleteModal('1', 'Updated Privacy Policy')">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <polyline points="3 6 5 6 21 6"></polyline>
                                <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                            </svg>
                            Delete
                        </button>
                    </div>
                </div>

                <!-- Notice Row 2 -->
                <div class="noticeRow">
                    <div class="noticeIconWrap">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3b82f6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                            <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                        </svg>
                    </div>
                    <div class="noticeInfo">
                        <h4>Community Park Cleanup</h4>
                        <p>Posted Oct 8, 2025</p>
                    </div>
                    <span class="noticeCategoryTag tagEvent">Event</span>
                    <div class="noticeActions">
                        <button class="buttonNoticeEdit" onclick="openEditModal('2', 'Community Park Cleanup', 'Event', 'Join us this Saturday for a neighborhood park cleanup drive.')">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
                                <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
                            </svg>
                            Edit
                        </button>
                        <button class="buttonNoticeDelete" onclick="openDeleteModal('2', 'Community Park Cleanup')">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <polyline points="3 6 5 6 21 6"></polyline>
                                <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                            </svg>
                            Delete
                        </button>
                    </div>
                </div>

                <!-- Notice Row 3 -->
                <div class="noticeRow">
                    <div class="noticeIconWrap">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3b82f6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"></path>
                            <path d="M13.73 21a2 2 0 0 1-3.46 0"></path>
                        </svg>
                    </div>
                    <div class="noticeInfo">
                        <h4>Water Supply Maintenance</h4>
                        <p>Posted Oct 5, 2025</p>
                    </div>
                    <span class="noticeCategoryTag tagMaintenance">Maintenance</span>
                    <div class="noticeActions">
                        <button class="buttonNoticeEdit" onclick="openEditModal('3', 'Water Supply Maintenance', 'Maintenance', 'Water supply will be disrupted on Oct 10 from 9AM to 5PM for pipe repair.')">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
                                <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
                            </svg>
                            Edit
                        </button>
                        <button class="buttonNoticeDelete" onclick="openDeleteModal('3', 'Water Supply Maintenance')">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <polyline points="3 6 5 6 21 6"></polyline>
                                <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                            </svg>
                            Delete
                        </button>
                    </div>
                </div>

            </div>

        </div>
    </div>                
</div>
</body>
</html>
