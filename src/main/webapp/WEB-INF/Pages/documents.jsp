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
                <h1 class="pageTitle">Documents</h1>
            </header>

            <div class="docGrid">
                <!-- 1. National Identity Card -->
                <div class="docCard">
                    <div class="docIconContainer">
                        <svg viewBox="0 0 24 24" fill="none" stroke="#a34211" stroke-width="2"><rect x="3" y="4" width="18" height="16" rx="2"/><circle cx="9" cy="10" r="2"/><line x1="14" y1="9" x2="18" y2="9"/><line x1="14" y1="13" x2="18" y2="13"/><path d="M6 16c0-1.1.9-2 2-2h2a2 2 0 0 1 2 2"/></svg>
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
                        <svg viewBox="0 0 24 24" fill="none" stroke="#a34211" stroke-width="2"><circle cx="12" cy="12" r="10"/><line x1="2" y1="12" x2="22" y2="12"/><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"/></svg>
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
                        <svg viewBox="0 0 24 24" fill="none" stroke="#a34211" stroke-width="2"><rect x="3" y="4" width="18" height="16" rx="2"/><path d="M7 8h10M7 12h4m-4 4h10"/><circle cx="16" cy="12" r="2"/></svg>
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
                        <svg viewBox="0 0 24 24" fill="none" stroke="#a34211" stroke-width="2"><path d="M19 17h2c.6 0 1-.4 1-1v-3c0-.9-.7-1.7-1.5-1.9C18.7 10.6 16 10 16 10s-1.3-1.4-2.2-2.3c-.5-.4-1.1-.7-1.8-.7H5c-1.1 0-2 .9-2 2v7c0 1.1.9 2 2 2h2"/><circle cx="7" cy="17" r="2"/><circle cx="17" cy="17" r="2"/></svg>
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
                        <svg viewBox="0 0 24 24" fill="none" stroke="#a34211" stroke-width="2"><path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"/><rect x="8" y="2" width="8" height="4" rx="1"/><path d="M9 14l2 2 4-4"/></svg>
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
                        <svg viewBox="0 0 24 24" fill="none" stroke="#a34211" stroke-width="2"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/><line x1="16" y1="13" x2="8" y2="13"/><line x1="16" y1="17" x2="8" y2="17"/><line x1="10" y1="9" x2="8" y2="9"/></svg>
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