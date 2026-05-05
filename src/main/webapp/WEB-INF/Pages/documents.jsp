<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Neighborly - Document Vault</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/documents.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <div class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <div class="docWrapper">
            <header class="docPageHeader">
                <h1 class="pageTitle">Document</h1>
            </header>

            <div class="docGrid">
                <!-- 1. National Identity Card -->
                <div class="docCard">
                    <div class="docIconContainer">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="4" width="18" height="16" rx="2"/><path d="M7 8h10M7 12h4m-4 4h5"/></svg>
                    </div>
                    <h3 class="docName">National Identity Card</h3>
                    <div class="docDetails">
                        <div class="detailRow"><span>Issued Date</span> <strong>Jan 12, 2021</strong></div>
                        <div class="detailRow"><span>Expired Date</span> <strong>Jan 12, 2031</strong></div>
                    </div>
                    <a href="#" class="viewLink">View Details</a>
                </div>

                <!-- 2. Passport -->
                <div class="docCard">
                    <div class="docIconContainer">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"/><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"/></svg>
                    </div>
                    <h3 class="docName">Passport</h3>
                    <div class="docDetails">
                        <div class="detailRow"><span>Issued Date</span> <strong>Mar 05, 2019</strong></div>
                        <div class="detailRow"><span>Expired Date</span> <strong>Mar 05, 2029</strong></div>
                    </div>
                    <a href="#" class="viewLink">View Details</a>
                </div>

                <!-- 3. Citizenship -->
                <div class="docCard">
                    <div class="docIconContainer">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="8.5" cy="7" r="4"/><polyline points="17 11 19 13 23 9"/></svg>
                    </div>
                    <h3 class="docName">Citizenship</h3>
                    <div class="docDetails">
                        <div class="detailRow"><span>Issued Date</span> <strong>Aug 15, 2023</strong></div>
                        <div class="detailRow"><span>Expired Date</span> <strong>Aug 15, 2028</strong></div>
                    </div>
                    <a href="#" class="viewLink">View Details</a>
                </div>

                <!-- 4. Driving License -->
                <div class="docCard">
                    <div class="docIconContainer">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="1" y="3" width="22" height="18" rx="2" ry="2"/><path d="M7 13a3 3 0 1 0 0-6 3 3 0 0 0 0 6zM13 8h7M13 12h7M13 16h7"/></svg>
                    </div>
                    <h3 class="docName">Driving License</h3>
                    <div class="docDetails">
                        <div class="detailRow"><span>Issued Date</span> <strong>Jan 12, 2021</strong></div>
                        <div class="detailRow"><span>Expired Date</span> <strong>Jan 12, 2025</strong></div>
                    </div>
                    <a href="#" class="viewLink">View Details</a>
                </div>

                <!-- 5. Voters ID -->
                <div class="docCard">
                    <div class="docIconContainer">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 11l3 3L22 4"/><path d="M21 12v7a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h11"/></svg>
                    </div>
                    <h3 class="docName">Voters ID</h3>
                    <div class="docDetails">
                        <div class="detailRow"><span>Issued Date</span> <strong>Mar 05, 2021</strong></div>
                        <div class="detailRow"><span>Expired Date</span> <strong>Mar 05, 2031</strong></div>
                    </div>
                    <a href="#" class="viewLink">View Details</a>
                </div>

                <!-- 6. Bluebook -->
                <div class="docCard">
                    <div class="docIconContainer">
                        <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 19.5A2.5 2.5 0 0 1 6.5 17H20"/><path d="M6.5 2H20v20H6.5A2.5 2.5 0 0 1 4 19.5v-15A2.5 2.5 0 0 1 6.5 2z"/><path d="M12 6v10"/></svg>
                    </div>
                    <h3 class="docName">Bluebook</h3>
                    <div class="docDetails">
                        <div class="detailRow"><span>Issued Date</span> <strong>Aug 10, 2024</strong></div>
                        <div class="detailRow"><span>Expired Date</span> <strong>Aug 10, 2025</strong></div>
                    </div>
                    <a href="#" class="viewLink">View Details</a>
                </div>
            </div>

            <!-- Floating Action Button -->
            <button class="fab">
                <svg viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"><line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg>
            </button>
        </div>
    </div>
</body>
</html>