<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Application Management - Neighborly</title>

    <!-- Link to our unified Admin CSS  -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css?v=<%= System.currentTimeMillis() %>">
    
    <style>
    
.buttonAccept {
            background-color: #37C63F;
            color: #ffffff;
            border: 1px solid #37C63F; 
            font-size: 13px;
        }
.buttonAccept:hover {
            background-color: #059669; 
            opacity: 1; 
        }
.buttonReject {
            background-color: #7f1d1d;
            color: #ffffff;
            border: 1px solid #991b1b;
            font-size: 13px;
        }
.buttonReject:hover {
            background-color: #991b1b;
            opacity: 1;
        }
.subHeader {
            display: flex;
            align-items: center;
            gap: 12px;
            font-size: 18px;
            font-weight: 700;
            color: #ffffff;
            margin-top: 24px;
            margin-bottom: 24px;
        }
.pillBadge {
            font-size: 11px;
            padding: 4px 10px;
            background-color: #323639;
            border-radius: 12px;
            color: #CFD3D6;
            font-weight: 600;
        }
.appIconWrap {
            width: 44px;
            height: 44px;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-shrink: 0;
            border-radius: 8px;
            background-color: #151821; 
            border: 1px solid #323639;
        }

.modalHeaderDanger {
            background-color: #7f1d1d;
            padding: 20px 24px;
            display: flex;
            align-items: center;
            gap: 12px;
            border-radius: 12px 12px 0 0;
        }
.modalHeaderDanger h2 {
            color: white;
            font-size: 18px;
            font-weight: 600;
            margin: 0;
        }
.buttonCancelDark {
            background-color: #323639;
            color: white;
            border: none;
            border-radius: 6px;
            padding: 10px 20px;
            font-weight: 600;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.2s;
        }
.buttonCancelDark:hover {
            background-color: #4a4d51;
        }
.buttonDangerBright {
            background-color: #ff3b3b;
            color: white;
            border: none;
            border-radius: 6px;
            padding: 10px 20px;
            font-weight: 600;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.2s;
            box-shadow: 0 4px 12px rgba(255, 59, 59, 0.3);
        }
.buttonDangerBright:hover {
            background-color: #e63535;
        }

.modalHeaderSuccess {
            background-color: #064e3b; 
            padding: 20px 24px;
            display: flex;
            align-items: center;
            gap: 12px;
            border-radius: 12px 12px 0 0;
        }
.modalHeaderSuccess h2 {
            color: white;
            font-size: 18px;
            font-weight: 600;
            margin: 0;
        }
.buttonSuccessBright {
            background-color: #10b981;
            color: white;
            border: none;
            border-radius: 6px;
            padding: 10px 20px;
            font-weight: 600;
            font-size: 14px;
            cursor: pointer;
            transition: background-color 0.2s;
            box-shadow: 0 4px 12px rgba(16, 185, 129, 0.3);
        }
.buttonSuccessBright:hover {
            background-color: #059669;
        }
    </style>
</head>
<body>

<jsp:include page="/components/admin-sidebar.jsp" />

<div class="mainContent">

    <% request.setAttribute("pageTitle", "Admin Dashboard"); %>
    <jsp:include page="/components/admin-topbar.jsp" />

    <main class="dashboardBody">
        <div class="pollPageWrapper">
            
            <div style="margin-bottom: 24px;">
                <h1 class="pageTitle">Application Management</h1>
            </div>
            
            <hr class="divider">
            <div class="pollsStatContainer">
                <div class="statCardPoll">
                    <div class="statIconWrap">
                        <div class="statBars barsGreen">
                            <div class="bar h50"></div><div class="bar h80"></div><div class="bar h100"></div><div class="bar h60"></div>
                        </div>
                    </div>
                    <div class="statInfo">
                        <span class="statLabel">Total Applications</span>
                        <span class="statValue">3</span>
                    </div>
                </div>

                <!-- Card 2 -->
                <div class="statCardPoll">
                    <div class="statIconWrap">
                        <div class="statBars barsOrange">
                            <div class="bar h60"></div><div class="bar h100"></div><div class="bar h80"></div>
                        </div>
                    </div>
                    <div class="statInfo">
                        <span class="statLabel">Pending Applications</span>
                        <span class="statValue">2</span>
                    </div>
                </div>

                <!-- Card 3 -->
                <div class="statCardPoll">
                    <div class="statIconWrap">
                        <div class="statBars barsBlue">
                            <div class="bar h70"></div><div class="bar h40"></div><div class="bar h100"></div>
                        </div>
                    </div>
                    <div class="statInfo">
                        <span class="statLabel">Verified Applications</span>
                        <span class="statValue">8</span>
                    </div>
                </div>
            </div>

            <hr class="divider">

            <div class="subHeader">
                Manage Listings
                <span class="pillBadge">Total: 3</span>
            </div>

            <!-- LIST OF APPLICATIONS -->
            <div class="pollListContainer">
                
                <!-- Row 1 -->
                <div class="pollRow">
                    <div class="appIconWrap">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3b82f6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
                            <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
                        </svg>
                    </div>
                    <div class="pollInfo">
                        <h4>Rikesh Adikhari: Business License Application</h4>
                        <p>Submitted 2 days ago</p>
                    </div>
                    <div class="pollActions">
                        <button class="button buttonAccept" onclick="openAcceptModal('Rikesh Adhikari', '1')">Accept</button>
                        <button class="button buttonReject" onclick="openRejectModal('Rikesh Adhikari', '1')">Reject</button>
                    </div>
                </div>

                <!-- Row 2 -->
                <div class="pollRow">
                    <div class="appIconWrap">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3b82f6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
                            <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
                        </svg>
                    </div>
                    <div class="pollInfo">
                        <h4>Yogesh Pant: Business Visa Application</h4>
                        <p>Submitted 10 days ago</p>
                    </div>
                    <div class="pollActions">
                        <button class="button buttonAccept" onclick="openAcceptModal('Yogesh Pant', '2')">Accept</button>
                        <button class="button buttonReject" onclick="openRejectModal('Yogesh Pant', '2')">Reject</button>
                    </div>
                </div>

                <!-- Row 3 -->
                <div class="pollRow">
                    <div class="appIconWrap">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="#3b82f6" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
                            <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
                        </svg>
                    </div>
                    <div class="pollInfo">
                        <h4>Prayush Shrestha: Treking Permit</h4>
                        <p>Submitted 10 hours ago</p>
                    </div>
                    <div class="pollActions">
                        <button class="button buttonAccept" onclick="openAcceptModal('Prayush Shrestha', '3')">Accept</button>
                        <button class="button buttonReject" onclick="openRejectModal('Prayush Shrestha', '3')">Reject</button>
                    </div>
                </div>

            </div>
        </div>
    </main>
</div>

<!-- CONFIRM REJECTION MODAL -->
<div class="modalOverlay" id="rejectApplicationModal">
    <!-- Adjusted padding to 0 so the custom modalHeaderDanger sits perfectly flush at the top -->
    <div class="modalBox" style="padding: 0; max-width: 520px; overflow: hidden;">
        
        <!-- Deep Red Header -->
        <div class="modalHeaderDanger">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="color: #ffbba6;">
                <path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"></path>
                <line x1="12" y1="9" x2="12" y2="13"></line>
                <line x1="12" y1="17" x2="12.01" y2="17"></line>
            </svg>
            <h2>Confirm Rejection</h2>
        </div>

        <form action="<%= request.getContextPath() %>/rejectApplication" method="POST">
            <!-- Dynamically populated hidden input for backend tracking -->
            <input type="hidden" name="applicationId" id="rejectAppId">
            
            <div class="modalBody" style="padding: 24px 28px;">
                <!-- Description with dynamically injected name -->
                <p style="color: #CFD3D6; font-size: 14px; margin-top: 0; margin-bottom: 24px; line-height: 1.5;">
                    You are about to reject the application for
                    <strong id="rejectApplicantName" style="color: #ffffff; font-weight: 700;">Applicant Name</strong>. 
                    For transparency, please write your reason for rejection
                </p>

                <!-- Input Group -->
                <div class="formGroup">
                    <label style="font-size: 11px; text-transform: uppercase; letter-spacing: 0.5px; color: #75787D; font-weight: 700; margin-bottom: 2px;">Reason of Rejection</label>
                    <textarea class="formInput" name="rejectionReason" placeholder="Provide a detailed explanation for this rejection." required style="min-height: 110px;"></textarea>
                </div>
            </div>

            <!-- Footer Buttons -->
            <div class="modalFooter" style="padding: 18px 28px; border-top: 1px solid #323639; display: flex; justify-content: flex-end; gap: 14px;">
                <button type="button" class="buttonCancelDark" onclick="closeRejectModal()">Cancel</button>
                <button type="submit" class="buttonDangerBright">Confirm Rejection</button>
            </div>
        </form>
    </div>
</div>

<!-- CONFIRM ACCEPTANCE MODAL-->
<div class="modalOverlay" id="acceptApplicationModal">
    <div class="modalBox" style="padding: 0; max-width: 520px; overflow: hidden;">
        
        <!-- Deep Green Header -->
        <div class="modalHeaderSuccess">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="color: #6ee7b7;">
                <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
                <polyline points="22 4 12 14.01 9 11.01"></polyline>
            </svg>
            <h2>Confirm Approval</h2>
        </div>

        <form action="<%= request.getContextPath() %>/acceptApplication" method="POST">
            <!-- Dynamically populated hidden input for backend tracking -->
            <input type="hidden" name="applicationId" id="acceptAppId">
            
            <div class="modalBody" style="padding: 24px 28px;">
                <!-- Description with dynamically injected name -->
                <p style="color: #CFD3D6; font-size: 14px; margin-top: 0; margin-bottom: 24px; line-height: 1.5;">
                    You are about to approve the application for
                    <strong id="acceptApplicantName" style="color: #ffffff; font-weight: 700;">Applicant Name</strong>. 
                    This will officially verify and finalize their listing.
                </p>

                <!-- Input Group -->
                <div class="formGroup">
                    <label style="font-size: 11px; text-transform: uppercase; letter-spacing: 0.5px; color: #75787D; font-weight: 700; margin-bottom: 2px;">Approval Notes (Optional)</label>
                    <textarea class="formInput" name="approvalNotes" placeholder="Add any details or internal notes about this approval..." style="min-height: 90px;"></textarea>
                </div>
            </div>

            <!-- Footer Buttons -->
            <div class="modalFooter" style="padding: 18px 28px; border-top: 1px solid #323639; display: flex; justify-content: flex-end; gap: 14px;">
                <button type="button" class="buttonCancelDark" onclick="closeAcceptModal()">Cancel</button>
                <button type="submit" class="buttonSuccessBright">Confirm Approval</button>
            </div>
        </form>
    </div>
</div>

<!-- JAVASCRIPT FOR MODALS-->
<script>
    const rejectModal = document.getElementById('rejectApplicationModal');
    const nameSpan = document.getElementById('rejectApplicantName');
    const idInput = document.getElementById('rejectAppId');

    // Opens the modal and injects dynamic content
    function openRejectModal(applicantName, applicationId) {
        nameSpan.textContent = applicantName;
        idInput.value = applicationId;
        rejectModal.style.display = 'flex';
    }

    // Closes the modal
    function closeRejectModal() {
        rejectModal.style.display = 'none';
        
        // Optional: clear the textarea upon closing so it's fresh next time
        rejectModal.querySelector('textarea[name="rejectionReason"]').value = '';
    }

    // ======= ACCEPT MODAL LOGIC =======
    const acceptModal = document.getElementById('acceptApplicationModal');
    const acceptNameSpan = document.getElementById('acceptApplicantName');
    const acceptIdInput = document.getElementById('acceptAppId');

    function openAcceptModal(applicantName, applicationId) {
        acceptNameSpan.textContent = applicantName;
        acceptIdInput.value = applicationId;
        acceptModal.style.display = 'flex';
    }

    function closeAcceptModal() {
        acceptModal.style.display = 'none';
        acceptModal.querySelector('textarea[name="approvalNotes"]').value = '';
    }

    // Close modals if clicking the dark overlay background
    window.addEventListener('click', function(e) {
        if (e.target === rejectModal) {
            closeRejectModal();
        }
        if (e.target === acceptModal) {
            closeAcceptModal();
        }
    });
</script>

</body>
</html>
