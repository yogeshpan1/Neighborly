<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Issue Management - Neighborly</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css?v=<%= System.currentTimeMillis() %>">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/ReportIssue.css?v=<%= System.currentTimeMillis() %>">
</head>
<body>

    <!-- Sidebar Component -->
    <jsp:include page="/components/admin-sidebar.jsp" />

    <div class="mainContent">
        
        <!-- Topbar Component -->
        <% request.setAttribute("pageTitle", "Admin Dashboard"); %>
        <jsp:include page="/components/admin-topbar.jsp" />

        <div class="dashboardBody">
            <div class="issuePageWrapper">
                
                <!-- Header -->
                <div class="issuePageHeader">
                    <h1 class="issuePageTitle">Issue Management</h1>
                    <p class="issuePageSubtitle">Manage community raised Issues</p>
                </div>

                <hr class="issueDivider">

                <!-- Stats Row -->
                <div class="issueStatsContainer">
                    <div class="issueStatCard">
                        <div class="statIconWrap">
                            <div class="statBars barsGreen">
                                <div class="bar h50"></div>
                                <div class="bar h80"></div>
                                <div class="bar h100"></div>
                                <div class="bar h60"></div>
                            </div>
                        </div>
                        <div class="statInfo" style="align-items: flex-start; text-align: left;">
                            <span class="statLabel">Total Posts</span>
                            <span class="statValue">3</span>
                        </div>
                    </div>

                    <div class="issueStatCard">
                        <div class="statIconWrap">
                            <div class="statBars barsOrange">
                                <div class="bar h60"></div><div class="bar h100"></div><div class="bar h80"></div>
                            </div>
                        </div>
                        <div class="statInfo" style="align-items: flex-start; text-align: left;">
                            <span class="statLabel">Resolved Posts</span>
                            <span class="statValue" style="color: #D35400;">8</span>
                            <span class="statTrend green" style="margin-top: 4px;">Excellent</span>
                        </div>
                    </div>

                    <div class="issueStatCard">
                        <div class="statIconWrap">
                            <div class="statBars barsBlue">
                                <div class="bar h70"></div>
                                <div class="bar h100"></div>
                                <div class="bar h50"></div>
                            </div>
                        </div>
                        <div class="statInfo" style="align-items: flex-start; text-align: left;">
                            <span class="statLabel">On Progress Posts</span>
                            <span class="statValue" style="color: #3b82f6;">14</span>
                            <span class="statTrend orange" style="margin-top: 4px;">In Progress</span>
                        </div>
                    </div>

                    <div class="issueStatCard">
                        <div class="statIconWrap">
                            <div class="statBars barsYellow">
                                <div class="bar h100"></div><div class="bar h60"></div>
                            </div>
                        </div>
                        <div class="statInfo" style="align-items: flex-start; text-align: left;">
                            <span class="statLabel">Pending Posts</span>
                            <span class="statValue" style="color: #D32F2F;">3</span>
                            <span class="statTrend orange" style="margin-top: 4px;">On track</span>
                        </div>
                    </div>
                </div>

                <!-- Manage Section -->
                <h2 class="sectionTitle">Manage Issues</h2>

                <div class="issueList">
                    
                    <!-- Row 1 -->
                    <div class="issueRow">
                        <div class="issueAvatar">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="12"></line><line x1="12" y1="16" x2="12.01" y2="16"></line></svg>
                        </div>
                        <div class="issueDetails">
                            <div class="issueMeta">
                                <span class="reporterName">Prayush Shrestha</span>
                                <span class="issueTitle">Asan Traffic Problem</span>
                            </div>
                            <p class="submittedTime">Submitted 2 days ago</p>
                        </div>
                        <span class="statusBadge completed">Completed</span>
                        <button class="buttonReview" onclick="openModerateModal()">Review</button>
                    </div>

                    <!-- Row 2 -->
                    <div class="issueRow">
                        <div class="issueAvatar">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="12"></line><line x1="12" y1="16" x2="12.01" y2="16"></line></svg>
                        </div>
                        <div class="issueDetails">
                            <div class="issueMeta">
                                <span class="reporterName">Rikesh Adhikari</span>
                                <span class="issueTitle">Pot Hole detected at Patan</span>
                            </div>
                            <p class="submittedTime">Submitted 2 days ago</p>
                        </div>
                        <span class="statusBadge inProgress">In Progress</span>
                        <button class="buttonReview" onclick="openModerateModal()">Review</button>
                    </div>

                    <!-- Row 3 -->
                    <div class="issueRow">
                        <div class="issueAvatar">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="12"></line><line x1="12" y1="16" x2="12.01" y2="16"></line></svg>
                        </div>
                        <div class="issueDetails">
                            <div class="issueMeta">
                                <span class="reporterName">Yogesh Pant</span>
                            	<span class="issueTitle">Toka Energy Crisis</span>
                            </div>
                            <p class="submittedTime">Submitted 2 days ago</p>
                        </div>
                        <span class="statusBadge pending">Pending</span>
                        <button class="buttonReview" onclick="openModerateModal()">Review</button>
                    </div>

                    <!-- Row 4 -->
                    <div class="issueRow">
                        <div class="issueAvatar">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="12"></line><line x1="12" y1="16" x2="12.01" y2="16"></line></svg>
                        </div>
                        <div class="issueDetails">
                            <div class="issueMeta">
                                <span class="reporterName">Arjan Regmi</span>
                                <span class="issueTitle">Shankamul Thieft Status</span>
                            </div>
                            <p class="submittedTime">Submitted 2 days ago</p>
                        </div>
                        <span class="statusBadge completed">Completed</span>
                        <button class="buttonReview" onclick="openModerateModal()">Review</button>
                    </div>

                </div>

            </div>
        </div>
    </div>

    <!-- Moderate Modal Overlay -->
    <div class="moderateModalOverlay" id="moderateModalOverlay">
        <div class="moderateModal">
            <button class="modalClose" onclick="closeModerateModal()">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="18" y1="6" x2="6" y2="18"></line><line x1="6" y1="6" x2="18" y2="18"></line></svg>
            </button>
            <div class="modalHeader">
                <h2>Moderate Issue</h2>
                <p>Apply administrative Actions</p>
            </div>

            <form action="<%= request.getContextPath() %>/moderateissue" method="POST">
                <div class="modalBody">
                    <div class="formGroup">
                        <label class="formLabel">Category</label>
                        <div class="categoryReadonly" id="modalCategory">Sanitation & Dumping</div>
                        <input type="hidden" name="category" id="hiddenCategory" value="sanitation">
                    </div>

                    <div class="formGroup">
                        <label class="formLabel">Attachments</label>
                        <div id="attachmentArea">
                            <div class="attachmentStatus none">
                                No attachment found
                            </div>
                        </div>
                    </div>

                    <!-- Issue Description -->
                    <div class="formGroup" id="userDescriptionGroup">
                        <label class="formLabel">User Description</label>
                        <div class="userDescriptionBox">
                            The street light at the corner has been flickering for a week and now is completely out. It's very dark and unsafe at night.
                        </div>
                    </div>

                    <div class="formGroup">
                        <label class="formLabel">Current Status</label>
                        <div class="statusSelector">
                            <button type="button" class="statusButton" onclick="setStatus(this, 'pending')">
                                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><circle cx="12" cy="12" r="10"></circle><line x1="12" y1="8" x2="12" y2="12"></line><line x1="12" y1="16" x2="12.01" y2="16"></line></svg>
                                Pending
                            </button>
                            <button type="button" class="statusButton active" onclick="setStatus(this, 'inProgress')">
                                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"></polyline></svg>
                                In Progress
                            </button>
                            <button type="button" class="statusButton" onclick="setStatus(this, 'resolved')">
                                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="20 6 9 17 4 12"></polyline></svg>
                                Resolved
                            </button>
                        </div>
                        <input type="hidden" name="status" id="issueStatus" value="inProgress">
                    </div>

                    <div class="formGroup">
                        <label class="formLabel">Internal Staff Notes</label>
                        <textarea class="staffNotes" name="notes" id="staffNotes" placeholder="Add private notes for the team..." oninput="validateNotes()"></textarea>
                        <span class="errorText" id="notesError">Notes cannot be empty for any administrative action.</span>
                    </div>
                </div>

                <div class="modalFooter">
                    <button type="button" class="buttonDeletePost" onclick="openDeleteModal()">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                        Delete Post
                    </button>
                    <div style="display: flex; gap: 24px; align-items: center;">
                        <button type="button" class="buttonCancel" onclick="closeModerateModal()">Cancel</button>
                        <button type="submit" class="buttonSaveChanges" onclick="return finalValidation()">Save Changes</button>
                    </div>
                </div>
            </form>
        </div>
    </div>

    <!-- Confirm Delete Modal Overlay-->
    <div class="moderateModalOverlay" id="deleteModalOverlay">
        <div class="dangerModal">
            <div class="dangerModalHeader">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"></path><line x1="12" y1="9" x2="12" y2="13"></line><line x1="12" y1="17" x2="12.01" y2="17"></line></svg>
                <h2>Confirm Deletion</h2>
            </div>
            
            <form action="<%= request.getContextPath() %>/deleteissue" method="POST">
                <div class="dangerModalBody">
                    <p>You are about to delete this issue report. For transparency, please write your reason for deletion.</p>
                    
                    <div class="formGroup" style="margin-bottom: 0;">
                        <label class="formLabel">Reason for Deletion</label>
                        <textarea class="staffNotes" name="deleteReason" placeholder="Provide a detailed explanation for this deletion..." required style="height: 100px;"></textarea>
                    </div>
                </div>

                <div class="dangerModalFooter">
                    <button type="button" class="buttonCancel" onclick="closeDeleteModal()">Cancel</button>
                    <button type="submit" class="buttonConfirmDanger">Confirm Deletion</button>
                </div>
            </form>
        </div>
    </div>

    <script>
        function openModerateModal() {
            document.getElementById('moderateModalOverlay').style.display = 'flex';
        }

        function closeModerateModal() {
            document.getElementById('moderateModalOverlay').style.display = 'none';
        }

        function openDeleteModal() {
            closeModerateModal(); // Close the first modal
            document.getElementById('deleteModalOverlay').style.display = 'flex';
        }

        function closeDeleteModal() {
            document.getElementById('deleteModalOverlay').style.display = 'none';
        }

        function setStatus(button, value) {
            // Remove active class from all buttons
            document.querySelectorAll('.statusButton').forEach(b => b.classList.remove('active'));
            // Add active class to clicked button
            button.classList.add('active');
            // Update hidden input
            document.getElementById('issueStatus').value = value;
            validateNotes();
        }

        function validateNotes() {
            let notes = document.getElementById('staffNotes');
            let error = document.getElementById('notesError');
            
            if (notes.value.trim() === '') {
                notes.classList.add('error');
                error.style.display = 'block';
                return false;
            } else {
                notes.classList.remove('error');
                error.style.display = 'none';
                return true;
            }
        }

        function finalValidation() {
            return validateNotes();
        }

        function viewAttachment() {
            alert("Opening attachment: issue_photo_01.jpg");
        }

        // Close modal on background click
        window.onclick = function(event) {
            let modOverlay = document.getElementById('moderateModalOverlay');
            let delOverlay = document.getElementById('deleteModalOverlay');
            
            if (event.target == modOverlay) {
                closeModerateModal();
            }
            if (event.target == delOverlay) {
                closeDeleteModal();
            }
        }
    </script>

</body>
</html>
