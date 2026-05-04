<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document Management - Neighborly</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css">
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/DocumentManagement.css">
</head>
<body>

    <!-- SIDEBAR component -->
    <jsp:include page="/components/admin-sidebar.jsp" />
    
    <div class="mainContent">
        <!-- TOPBAR component -->
        <% request.setAttribute("pageTitle", "Admin Dashboard"); %>
        <jsp:include page="/components/admin-topbar.jsp" />

        <div class="dashboardBody">
            <div class="docPageHeader">
                <h1 class="docPageTitle">Document Management</h1>
            </div>
            <div class="statsFlex" style="margin-bottom: 24px;">
                <div class="statCard">
                    <div class="statIconWrap">
                        <div class="statBars barsGreen">
                            <div class="bar h40"></div><div class="bar h60"></div><div class="bar h80"></div><div class="bar h100"></div><div class="bar h60"></div>
                        </div>
                    </div>
                    <div class="statInfo">
                        <span class="statLabel">Total Documents</span>
                        <span class="statValue">10</span>
                    </div>
                </div>
                <div class="statCard">
                    <div class="statIconWrap">
                        <div class="statBars barsOrange">
                            <div class="bar h50"></div><div class="bar h80"></div><div class="bar h100"></div><div class="bar h60"></div>
                        </div>
                    </div>
                    <div class="statInfo">
                        <span class="statLabel">Verified Documents</span>
                        <span class="statValue">8</span>
                    </div>
                </div>
                <div class="statCard">
                    <div class="statIconWrap">
                        <div class="statBars barsBlue">
                            <div class="bar h70"></div><div class="bar h50"></div><div class="bar h100"></div>
                        </div>
                    </div>
                    <div class="statInfo">
                        <span class="statLabel">Pending Documents</span>
                        <span class="statValue">14</span>
                    </div>
                </div>
            </div>

            <hr class="docDivider">
            <div class="docTwoColumn">
                <div class="docLeftColumn">
                    <div class="docTableCard">
                        <h2 class="docTableTitle">Pending Documents</h2>
                        <table class="docTable">
                            <thead>
                                <tr>
                                    <th>Citizen</th>
                                    <th>Type</th>
                                    <th>Submitted</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Arjun Sharma</td>
                                    <td>Passports</td>
                                    <td>Apr 8</td>
                                    <td class="docActionCell">
                                        <button class="buttonDocAccept" onclick="openAcceptModal('1', 'Arjun Sharma', 'Passports')">Accept</button>
                                        <button class="buttonDocReject" onclick="openRejectModal('1', 'Arjun Sharma', 'Passports')">Reject</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Priya Thapa</td>
                                    <td>License</td>
                                    <td>Apr 8</td>
                                    <td class="docActionCell">
                                        <button class="buttonDocAccept" onclick="openAcceptModal('2', 'Priya Thapa', 'License')">Accept</button>
                                        <button class="buttonDocReject" onclick="openRejectModal('2', 'Priya Thapa', 'License')">Reject</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Rohan KC</td>
                                    <td>Passports</td>
                                    <td>Apr 7</td>
                                    <td class="docActionCell">
                                        <button class="buttonDocAccept" onclick="openAcceptModal('3', 'Rohan KC', 'Passports')">Accept</button>
                                        <button class="buttonDocReject" onclick="openRejectModal('3', 'Rohan KC', 'Passports')">Reject</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <!-- VERIFIED DOCUMENTS TABLE -->
                    <div class="docTableCard">
                        <h2 class="docTableTitle">Verified Documents</h2>
                        <table class="docTable">
                            <thead>
                                <tr>
                                    <th>Citizen</th>
                                    <th>Type</th>
                                    <th>Submitted</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Yogesh Pant</td>
                                    <td>License</td>
                                    <td>Apr 8</td>
                                    <td class="docActionCell">
                                        <button class="buttonDocEdit">Edit</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>

                <!-- RIGHT COLUMN -->
                <div class="docRightColumn">

                    <!-- FILTER CARD -->
                    <div class="docSideCard">
                        <h3 class="docSideCardTitle">Filter</h3>
                        <div class="docFilterRow">
                            <span class="docFilterLabel">Total documents</span>
                            <input type="checkbox" class="docCheckbox" id="filterTotal">
                        </div>
                        <div class="docFilterRow">
                            <span class="docFilterLabel">Pending verification</span>
                            <input type="checkbox" class="docCheckbox" id="filterPending">
                        </div>
                    </div>

                    <!-- ACTIVITY CARD -->
                    <div class="docSideCard">
                        <h3 class="docSideCardTitle">Activity</h3>
                        <div class="docActivityRow">
                            <p class="docActivityText">Admin1 | Yogesh Pant License | 9h ago</p>
                            <a href="#" class="docActivityLink">View all</a>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </div>

    <!-- ACCEPT MODAL -->
    <div class="modalOverlay" id="acceptDocModal">
        <div class="modalBox" style="padding: 0; max-width: 520px; overflow: hidden;">
            <div class="modalHeaderSuccess">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="color: #6ee7b7;">
                    <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
                    <polyline points="22 4 12 14.01 9 11.01"></polyline>
                </svg>
                <h2>Confirm Approval</h2>
            </div>
            <form action="<%= request.getContextPath() %>/acceptDocument" method="POST">
                <input type="hidden" name="documentId" id="acceptDocId">
                <div class="modalBodyContent">
                    <p class="modalDescriptionText">
                        You are about to verify the document for
                        <strong id="acceptDocCitizen" style="color: #ffffff; font-weight: 700;">Citizen</strong>
                        (<span id="acceptDocType">Type</span>).
                        This will officially mark the document as verified.
                    </p>
                    <div class="docFormGroup">
                        <label class="docFormLabel">Approval Notes (Optional)</label>
                        <textarea class="docFormTextarea" name="approvalNotes" placeholder="Add any notes about this approval..." style="min-height: 90px;"></textarea>
                    </div>
                </div>
                <div class="modalFooterActions">
                    <button type="button" class="buttonModalCancel" onclick="closeAcceptModal()">Cancel</button>
                    <button type="submit" class="buttonModalAccept">Confirm Approval</button>
                </div>
            </form>
        </div>
    </div>

    <!-- REJECT MODAL -->
    <div class="modalOverlay" id="rejectDocModal">
        <div class="modalBox" style="padding: 0; max-width: 520px; overflow: hidden;">
            <div class="modalHeaderDanger">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="color: #ffbba6;">
                    <path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"></path>
                    <line x1="12" y1="9" x2="12" y2="13"></line>
                    <line x1="12" y1="17" x2="12.01" y2="17"></line>
                </svg>
                <h2>Confirm Rejection</h2>
            </div>
            <form action="<%= request.getContextPath() %>/rejectDocument" method="POST">
                <input type="hidden" name="documentId" id="rejectDocId">
                <div class="modalBodyContent">
                    <p class="modalDescriptionText">
                        You are about to reject the document for
                        <strong id="rejectDocCitizen" style="color: #ffffff; font-weight: 700;">Citizen</strong>
                        (<span id="rejectDocType">Type</span>).
                        Please provide a reason below.
                    </p>
                    <div class="docFormGroup">
                        <label class="docFormLabel">Reason for Rejection</label>
                        <textarea class="docFormTextarea" name="rejectionReason" placeholder="Provide a detailed explanation for this rejection..." required></textarea>
                    </div>
                </div>
                <div class="modalFooterActions">
                    <button type="button" class="buttonModalCancel" onclick="closeRejectModal()">Cancel</button>
                    <button type="submit" class="buttonModalDanger">Confirm Rejection</button>
                </div>
            </form>
        </div>
    </div>

    <!-- JAVASCRIPT -->
    <script>
        // ACCEPT MODAL
        var acceptModal = document.getElementById('acceptDocModal');
        var acceptIdInput = document.getElementById('acceptDocId');
        var acceptCitizenSpan = document.getElementById('acceptDocCitizen');
        var acceptTypeSpan = document.getElementById('acceptDocType');

        function openAcceptModal(docId, citizen, docType) {
            acceptIdInput.value = docId;
            acceptCitizenSpan.textContent = citizen;
            acceptTypeSpan.textContent = docType;
            acceptModal.style.display = 'flex';
        }

        function closeAcceptModal() {
            acceptModal.style.display = 'none';
        }

        //REJECT MODAL 
        var rejectModal = document.getElementById('rejectDocModal');
        var rejectIdInput = document.getElementById('rejectDocId');
        var rejectCitizenSpan = document.getElementById('rejectDocCitizen');
        var rejectTypeSpan = document.getElementById('rejectDocType');

        function openRejectModal(docId, citizen, docType) {
            rejectIdInput.value = docId;
            rejectCitizenSpan.textContent = citizen;
            rejectTypeSpan.textContent = docType;
            rejectModal.style.display = 'flex';
        }

        function closeRejectModal() {
            rejectModal.style.display = 'none';
        }
        
        //Close modals when clicking outside
        window.addEventListener('click', function(event) {
            if (event.target === acceptModal) {
                closeAcceptModal();
            }
            if (event.target === rejectModal) {
                closeRejectModal();
            }
        });
    </script>

</body>
</html>
