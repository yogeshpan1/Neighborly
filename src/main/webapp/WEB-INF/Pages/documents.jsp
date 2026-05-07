<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Neighborly</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/documents.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <main class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <section class="docWrapper">
            <h1 class="pageTitle">Documents</h1>

            <div class="docGrid">
                <!-- 1. National Identity Card -->
                <article class="docCard">
                    <figure class="docIconContainer">
                        <svg viewBox="0 0 24 24" fill="none" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="3" y="4" width="18" height="16" rx="2"/>
                            <circle cx="9" cy="10" r="2"/>
                            <line x1="14" y1="9" x2="18" y2="9"/>
                            <line x1="14" y1="13" x2="18" y2="13"/>
                            <path d="M6 16c0-1.1.9-2 2-2h2c1.1 0 2 .9 2 2"/>
                        </svg>
                    </figure>
                    <h3 class="docName">National Identity Card</h3>
                    <dl class="docDetails">
                        <div class="detailRow"><dt>Issued Date</dt> <dd>Jan 12, 2021</dd></div>
                        <div class="detailRow"><dt>Expired Date</dt> <dd>Jan 12, 2031</dd></div>
                    </dl>
                    <a href="#" class="viewdetails">View Details</a>
                </article>

                <!-- 2. Passport -->
                <article class="docCard">
                    <figure class="docIconContainer">
                        <svg viewBox="0 0 24 24" fill="none" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <circle cx="12" cy="12" r="10"/>
                            <path d="M2 12h20M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"/>
                        </svg>
                    </figure>
                    <h3 class="docName">Passport</h3>
                    <dl class="docDetails">
                        <div class="detailRow"><dt>Issued Date</dt> <dd>Mar 05, 2019</dd></div>
                        <div class="detailRow"><dt>Expired Date</dt> <dd>Mar 05, 2029</dd></div>
                    </dl>
                    <a href="#" class="viewdetails">View Details</a>
                </article>

                <!-- 3. Citizenship -->
                <article class="docCard">
                    <figure class="docIconContainer">
                        <svg viewBox="0 0 24 24" fill="none" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="3" y="4" width="18" height="16" rx="2"/>
                            <circle cx="15" cy="10" r="2"/>
                            <path d="M7 8h4M7 12h4m-4 4h10"/>
                        </svg>
                    </figure>
                    <h3 class="docName">Citizenship</h3>
                    <dl class="docDetails">
                        <div class="detailRow"><dt>Issued Date</dt> <dd>Aug 15, 2023</dd></div>
                        <div class="detailRow"><dt>Expired Date</dt> <dd>Aug 15, 2028</dd></div>
                    </dl>
                    <a href="#" class="viewdetails">View Details</a>
                </article>

                <!-- 4. Driving License -->
                <article class="docCard">
                    <figure class="docIconContainer">
                        <svg viewBox="0 0 24 24" fill="none" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M7 10h10l1 4H6l1-4z"/>
                            <path d="M21 14v5a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-5"/>
                            <circle cx="7" cy="17" r="2"/>
                            <circle cx="17" cy="17" r="2"/>
                        </svg>
                    </figure>
                    <h3 class="docName">Driving License</h3>
                    <dl class="docDetails">
                        <div class="detailRow"><dt>Issued Date</dt> <dd>Jan 12, 2021</dd></div>
                        <div class="detailRow"><dt>Expired Date</dt> <dd>Jan 12, 2025</dd></div>
                    </dl>
                    <a href="#" class="viewdetails">View Details</a>
                </article>

                <!-- 5. Voters ID -->
                <article class="docCard">
                    <figure class="docIconContainer">
                        <svg viewBox="0 0 24 24" fill="none" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"/>
                            <rect x="8" y="2" width="8" height="4" rx="1"/>
                            <path d="M9 14l2 2 4-4"/>
                        </svg>
                    </figure>
                    <h3 class="docName">Voters ID</h3>
                    <dl class="docDetails">
                        <div class="detailRow"><dt>Issued Date</dt> <dd>Mar 05, 2021</dd></div>
                        <div class="detailRow"><dt>Expired Date</dt> <dd>Mar 05, 2031</dd></div>
                    </dl>
                    <a href="#" class="viewdetails">View Details</a>
                </article>

                <!-- 6. Bluebook -->
                <article class="docCard">
                    <figure class="docIconContainer">
                        <svg viewBox="0 0 24 24" fill="none" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/>
                            <polyline points="14 2 14 8 20 8"/>
                            <line x1="16" y1="13" x2="8" y2="13"/>
                            <line x1="16" y1="17" x2="8" y2="17"/>
                            <line x1="10" y1="9" x2="8" y2="9"/>
                        </svg>
                    </figure>
                    <h3 class="docName">Bluebook</h3>
                    <dl class="docDetails">
                        <div class="detailRow"><dt>Issued Date</dt> <dd>Aug 10, 2024</dd></div>
                        <div class="detailRow"><dt>Expired Date</dt> <dd>Aug 10, 2025</dd></div>
                    </dl>
                    <a href="#" class="viewdetails">View Details</a>
                </article>
            </div>

            <!-- Floating Action Button -->
            <button class="fab" aria-label="Add Document">
                <svg viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="3" stroke-linecap="round" stroke-linejoin="round">
                    <line x1="12" y1="5" x2="12" y2="19"></line>
                    <line x1="5" y1="12" x2="19" y2="12"></line>
                </svg>
            </button>
        </section>
    </main>
</body>
</html>