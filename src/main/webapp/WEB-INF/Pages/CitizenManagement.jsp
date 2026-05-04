<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Citizen Management - Neighborly</title>
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
            <div class="twoColumnLayout">
                
                <!--Citizen List-->
                <div class="leftColumn">
                    <div class="pageHeader">
                        <h1 class="pageTitle">Citizen Management</h1>
                        <p class="pageSubtitle">Manage the Community</p>
                    </div>
                    
                    <hr class="divider">

                    <!-- STAT CARDS -->
                    <div class="statsFlex smallStats" style="margin-bottom: 24px;">
                        <div class="statCard statCardSmall">
                            <div class="statIconWrap">
                                <div class="statBars barsGreen">
                                    <div class="bar h40"></div><div class="bar h60"></div><div class="bar h80"></div><div class="bar h100"></div><div class="bar h60"></div>
                                </div>
                            </div>
                            <div class="statInfo">
                                <span class="statLabel">Total citizens</span>
                                <span class="statValue">1,342</span>
                                <span class="statTrend green">▲ +22 this week</span>
                            </div>
                        </div>
                        <div class="statCard statCardSmall">
                            <div class="statIconWrap">
                                 <div class="statBars barsBlue">
                                    <div class="bar h70"></div><div class="bar h50"></div><div class="bar h100"></div>
                                </div>
                            </div>
                            <div class="statInfo">
                                <span class="statLabel">Active Citizens</span>
                                <span class="statValue">1,300</span>
                                <span class="statTrend blue" style="color: #3b82f6; font-size: 11px; margin-top: 4px; font-weight: 600;">Good Standing</span>
                            </div>
                        </div>
                        <div class="statCard statCardSmall">
                            <div class="statIconWrap">
                                 <div class="statBars barsOrange">
                                    <div class="bar h50"></div><div class="bar h80"></div><div class="bar h100"></div><div class="bar h60"></div>
                                </div>
                            </div>
                            <div class="statInfo">
                                <span class="statLabel">Suspended</span>
                                <span class="statValue">42</span>
                                <span class="statTrend orange">Needs attention</span>
                            </div>
                        </div>
                    </div>

                    <div class="citizenList">
                        <!-- Citizen 1 -->
                        <div class="citizenCard">
                            <div class="citizenInfo">
                                <div class="avatarBox">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor"><path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg>
                                </div>
                                <div class="nameGroup">
                                    <h3>Arjan Regmi</h3>
                                    <p>ID: #1 &bull; Active</p>
                                </div>
                                <span class="roleTag">Resident</span>
                            </div>
                            <a class="buttonReview" href="<%= request.getContextPath() %>/citizenlist?name=Arjan+Regmi&username=Arjan204&email=arjan%40gmail.com&address=Kathmandu%2C+Nepal">Review</a>
                        </div>

                        <!-- Citizen 2 -->
                        <div class="citizenCard">
                            <div class="citizenInfo">
                                <div class="avatarBox">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor"><path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg>
                                </div>
                                <div class="nameGroup">
                                    <h3>Rikesh Adhikari</h3>
                                    <p>ID: #2 &bull; Active</p>
                                </div>
                                <span class="roleTag">Resident</span>
                            </div>
                            <a class="buttonReview" href="<%= request.getContextPath() %>/citizenlist?name=Rikesh+Adhikari&username=Rikesh99&email=rikesh%40gmail.com&address=Lalitpur%2C+Nepal">Review</a>
                        </div>

                        <!-- Citizen 3 -->
                        <div class="citizenCard">
                            <div class="citizenInfo">
                                <div class="avatarBox">
                                    <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor"><path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/></svg>
                                </div>
                                <div class="nameGroup">
                                    <h3>Yogesh Pant</h3>
                                    <p>ID: #3 &bull; Active</p>
                                </div>
                                <span class="roleTag">Resident</span>
                            </div>
                            <a class="buttonReview" href="<%= request.getContextPath() %>/citizenlist?name=Yogesh+Pant&username=YogeshP&email=yogesh%40gmail.com&address=Bhaktapur%2C+Nepal">Review</a>
                        </div>
                    </div>
                </div>

                <!--Citizen Details Preview-->
                <div class="rightColumn">
                    <% if (name == null || name.isEmpty()) { %>
                        <div class="emptyStatePanel">
                            <svg width="48" height="48" viewBox="0 0 24 24" fill="none" stroke="#323639" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="margin-bottom: 16px;">
                                <circle cx="12" cy="12" r="10"></circle>
                                <line x1="12" y1="16" x2="12" y2="12"></line>
                                <line x1="12" y1="8" x2="12.01" y2="8"></line>
                            </svg>
                            <h3 style="color: #ffffff; font-size: 18px; margin-bottom: 8px;">No Citizen Selected</h3>
                            <p style="color: #75787D; font-size: 14px;">Select a citizen from the list to review their details, issues, and fines.</p>
                        </div>
                    <% } else { %>
                        <div class="profilePanel">
                            <div class="profileHeader">
                                <div class="profileTitle">Citizen Profile</div>
                                <a href="<%= request.getContextPath() %>/citizenlist" class="closeProfileButton" title="Close Profile">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <line x1="18" y1="6" x2="6" y2="18"></line>
                                        <line x1="6" y1="6" x2="18" y2="18"></line>
                                    </svg>
                                </a>
                            </div>

                            <div class="profileSummary">
                                <div class="largeAvatar">
                                    <svg width="36" height="36" viewBox="0 0 24 24" fill="currentColor">
                                        <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/>
                                    </svg>
                                    <span class="statusDot"></span>
                                </div>
                                <h2 class="profileName" id="displayProfileName"><%= name %></h2>
                            </div>

                            <div class="profileDetails">
                                <div class="detailRow">
                                    <span class="detailLabel">Username :</span>
                                    <span class="detailValue"><%= username %></span>
                                </div>
                                <div class="detailRow">
                                    <span class="detailLabel">User Email :</span>
                                    <span class="detailValue"><%= email %></span>
                                </div>
                                <div class="detailRow">
                                    <span class="detailLabel">Address :</span>
                                    <span class="detailValue"><%= address %></span>
                                </div>
                            </div>

                            <div class="tabBar">
                                <span class="tabItem active" id="tabIssues" onclick="switchTab('issues')">Issues</span>
                                <span class="tabItem" id="tabFines" onclick="switchTab('fines')">Fines</span>
                            </div>

                            <div class="tabPanel active" id="panelIssues">
                                <h4 class="panelSectionLabel">Issues</h4>
                                <div class="recordCard">
                                    <div class="recordIconBox">
                                        <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z"/></svg>
                                    </div>
                                    <div class="recordInfo">
                                        <h4><%= name %> | <span class="mutedText">Shankamul Theft Status</span></h4>
                                        <p>Submitted 2 days ago</p>
                                    </div>
                                    <span class="badgeStatus badgeSuccess">Completed</span>
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor" style="color: #75787D;"><path d="M8.59 16.59L13.17 12 8.59 7.41 10 6l6 6-6 6-1.41-1.41z"/></svg>
                                </div>
                            </div>

                            <div class="tabPanel" id="panelFines">
                                <h4 class="panelSectionLabel">Fines</h4>
                                <div class="recordCard">
                                    <div class="recordIconBox">
                                        <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z"/></svg>
                                    </div>
                                    <div class="recordInfo">
                                        <h4><%= name %> | <span class="mutedText">Paid</span></h4>
                                        <p>NO License</p>
                                    </div>
                                    <span class="badgeStatus badgePaid">Paid</span>
                                </div>
                            </div>

                            <div class="suspendArea">
                                <button class="buttonSuspend" onclick="openSuspendModal()">Suspend User</button>
                            </div>
                        </div>
                    <% } %>
                </div>
            </div>
        </div>
    </div>

    <!-- SUSPENSION MODAL -->
    <div class="modalOverlay" id="suspendModal">
        <div class="modalBox">
            <div class="modalHeaderRed">
                <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm1 15h-2v-2h2v2zm0-4h-2V7h2v6z"/></svg>
                <h2>Confirm Suspension</h2>
            </div>
            <form action="<%= request.getContextPath() %>/suspendCitizen" method="POST">
                <input type="hidden" name="citizenUsername" value="<%= username %>">
                <div class="modalBody">
                    <p class="modalText">
                        You are about to suspend the account for <strong id="modalUserName"><%= name %></strong>. Please give your reason below.
                    </p>
                    <label class="labelArea">Reason of Suspension</label>
                    <textarea class="modalTextarea" name="suspensionReason" id="suspensionReason" placeholder="Provide a detailed explanation for this suspension..." required></textarea>
                </div>
                <div class="modalFooter">
                    <button type="button" class="buttonCancel" onclick="closeSuspendModal()">Cancel</button>
                    <button type="submit" class="buttonConfirmRed">Confirm Suspension</button>
                </div>
            </form>
        </div>
    </div>
     <script>
        // Tab switching
        function switchTab(tab) {
            document.querySelectorAll('.tabItem').forEach(t => t.classList.remove('active'));
            document.querySelectorAll('.tabPanel').forEach(p => p.classList.remove('active'));

            if (tab === 'issues') {
                document.getElementById('tabIssues').classList.add('active');
                document.getElementById('panelIssues').classList.add('active');
            } else {
                document.getElementById('tabFines').classList.add('active');
                document.getElementById('panelFines').classList.add('active');
            }
        }

        // Modal controls
        function openSuspendModal() {
            document.getElementById('suspendModal').style.display = 'flex';
            document.getElementById('suspensionReason').value = '';
        }

        function closeSuspendModal() {
            document.getElementById('suspendModal').style.display = 'none';
        }

        window.onclick = function(event) {
            var modal = document.getElementById('suspendModal');
            if (event.target === modal) {
                closeSuspendModal();
            }
        }
    </script>
</body>
</html>
