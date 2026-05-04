<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>News Management - Neighborly</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/NewsManagement.css">
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
            <div class="newsPageHeader">
                <div>
                    <h1 class="newsPageTitle">News Management</h1>
                </div>
            </div>

            <hr class="newsDivider">

            <!-- NEWS PREVIEW CARDS -->
            <div class="newsPreviewGrid">

                <!-- Preview Card 1 -->
                <div class="newsPreviewCard">
                    <div class="newsPreviewImage previewBlue"></div>
                    <div class="newsPreviewBody">
                        <h3 class="newsPreviewTitle">Ward Committee Approves</h3>
                        <p class="newsPreviewSnippet">Ward Committee Approves the Budget of NPR 5 Lakhs for Government School Renovation.</p>
                        <span class="newsPreviewTime">6h ago</span>
                    </div>
                </div>

                <!-- Preview Card 2 -->
                <div class="newsPreviewCard">
                    <div class="newsPreviewImage previewYellow"></div>
                    <div class="newsPreviewBody">
                        <h3 class="newsPreviewTitle">New Traffic Marshals Deployed</h3>
                        <p class="newsPreviewSnippet">New Marshals Deployed and the Public are not happy</p>
                        <span class="newsPreviewTime">4h ago</span>
                    </div>
                </div>

                <!-- Preview Card 3 -->
                <div class="newsPreviewCard">
                    <div class="newsPreviewImage previewPink"></div>
                    <div class="newsPreviewBody">
                        <h3 class="newsPreviewTitle">Water Supply Restoration</h3>
                        <p class="newsPreviewSnippet">Ministry of Water Resources and Irrigation orders immediate restoration of Melamchi water supply.</p>
                        <span class="newsPreviewTime">1h ago</span>
                    </div>
                </div>
            <!-- NEWS LIST SECTION -->
            <div class="newsListHeader">
                <h2 class="newsListTitle">News Application</h2>
                <span class="newsPillBadge">Total: 3</span>
            </div>

            <div class="newsListContainer">

                <!-- News Row 1 -->
                <div class="newsRow">
                    <div class="newsIconWrap">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3b82f6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                            <polyline points="14 2 14 8 20 8"></polyline>
                            <line x1="16" y1="13" x2="8" y2="13"></line>
                            <line x1="16" y1="17" x2="8" y2="17"></line>
                            <polyline points="10 9 9 9 8 9"></polyline>
                        </svg>
                    </div>
                    <div class="newsInfo">
                        <h4>Ward Committee Approves</h4>
                        <p>Arjan Regmi</p>
                    </div>
                    <div class="newsActions">
                        <button class="buttonNewsEdit" >Edit</button>
                        <button class="buttonNewsDelete" >Delete</button>
                    </div>
                </div>

                <!-- News Row 2 -->
                <div class="newsRow">
                    <div class="newsIconWrap">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3b82f6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                            <polyline points="14 2 14 8 20 8"></polyline>
                            <line x1="16" y1="13" x2="8" y2="13"></line>
                            <line x1="16" y1="17" x2="8" y2="17"></line>
                            <polyline points="10 9 9 9 8 9"></polyline>
                        </svg>
                    </div>
                    <div class="newsInfo">
                        <h4>New Traffic Marshals Deployed</h4>
                        <p>Yogesh Pant</p>
                    </div>
                    <div class="newsActions">
                        <button class="buttonNewsEdit">Edit</button>
                        <button class="buttonNewsDelete">Delete</button>
                    </div>
                </div>

                <!-- News Row 3 -->
                <div class="newsRow">
                    <div class="newsIconWrap">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3b82f6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                            <polyline points="14 2 14 8 20 8"></polyline>
                            <line x1="16" y1="13" x2="8" y2="13"></line>
                            <line x1="16" y1="17" x2="8" y2="17"></line>
                            <polyline points="10 9 9 9 8 9"></polyline>
                        </svg>
                    </div>
                    <div class="newsInfo">
                        <h4>Water Supply Restoration</h4>
                        <p>Rikesh Adhikari</p>
                    </div>
                    <div class="newsActions">
                        <button class="buttonNewsEdit">Edit</button>
                        <button class="buttonNewsDelete" >Delete</button>
                    </div>
                </div>

            </div>
               <!-- CREATE NEWS MODAL -->
    <div class="modalOverlay" id="createNewsModal">
        <div class="modalBox" style="padding: 0; max-width: 560px; overflow: hidden;">
            <div class="modalHeaderCreate">
                <h2>News</h2>
            </div>
            <form action="<%= request.getContextPath() %>/newslist" method="POST">
                <div class="modalBodyContent">
                    <div class="newsFormGroup">
                        <label class="newsFormLabel">Title</label>
                        <input type="text" class="newsFormInput" name="newsTitle" placeholder="e.g Ward Committee Approves" required>
                    </div>
                    <div class="newsFormGroup">
                        <label class="newsFormLabel">Notice Description</label>
                        <textarea class="newsFormTextarea" name="newsDescription" placeholder="Write your News Article" required></textarea>
                    </div>
                </div>
                <div class="modalFooterActions">
                    <button type="submit" class="buttonPostNews">Post News</button>
                </div>
            </form>
        </div>
    </div>

    <!-- EDIT NEWS MODAL -->
    <div class="modalOverlay" id="editNewsModal">
        <div class="modalBox" style="padding: 0; max-width: 560px; overflow: hidden;">
            <div class="modalHeaderEdit">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="color: #93c5fd;">
                    <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
                    <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
                </svg>
                <h2>Edit News</h2>
            </div>
            <form action="<%= request.getContextPath() %>/editNews" method="POST">
                <input type="hidden" name="newsId" id="editNewsId">
                <div class="modalBodyContent">
                    <div class="newsFormGroup">
                        <label class="newsFormLabel">Title</label>
                        <input type="text" class="newsFormInput" id="editNewsTitleInput" name="newsTitle" required>
                    </div>
                    <div class="newsFormGroup">
                        <label class="newsFormLabel">Description</label>
                        <textarea class="newsFormTextarea" id="editNewsDescriptionInput" name="newsDescription" required></textarea>
                    </div>
                </div>
                <div class="modalFooterActions">
                    <button type="button" class="buttonModalCancel" onclick="closeEditModal()">Cancel</button>
                    <button type="submit" class="buttonModalSuccess">Save Changes</button>
                </div>
            </form>
        </div>
    </div>

    <!-- DELETE NEWS MODAL -->
    <div class="modalOverlay" id="deleteNewsModal">
        <div class="modalBox" style="padding: 0; max-width: 520px; overflow: hidden;">
            <div class="modalHeaderDanger">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="color: #ffbba6;">
                    <path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"></path>
                    <line x1="12" y1="9" x2="12" y2="13"></line>
                    <line x1="12" y1="17" x2="12.01" y2="17"></line>
                </svg>
                <h2>Confirm Deletion</h2>
            </div>
            <form action="<%= request.getContextPath() %>/deleteNews" method="POST">
                <input type="hidden" name="newsId" id="deleteNewsId">
                <div class="modalBodyContent">
                    <p class="modalDescriptionText">
                        You are about to permanently delete
                        <strong id="deleteNewsName" style="color: #ffffff; font-weight: 700;">News Title</strong>.
                        This action cannot be undone.
                    </p>
                    <div class="newsFormGroup">
                        <label class="newsFormLabel">Reason for Deletion</label>
                        <textarea class="newsFormTextarea" name="deleteReason" placeholder="Provide a reason for deleting this news..." style="min-height: 90px;" required></textarea>
                    </div>
                </div>
                <div class="modalFooterActions">
                    <button type="button" class="buttonModalCancel" onclick="closeDeleteModal()">Cancel</button>
                    <button type="submit" class="buttonModalDanger">Confirm Delete</button>
                </div>
            </form>
        </div>
    </div>
            

        </div>
    </div>
    </div>
</body>
</html>
