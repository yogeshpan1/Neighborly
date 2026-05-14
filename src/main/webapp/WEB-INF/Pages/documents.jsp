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

        <section class="documentTitleSection">
        <h1 class="pageHeader">Document</h1>
            <section class="documentsGrid">
                <article class="documentItem">
                    <div class="documentIcon">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="3" y="4" width="18" height="16" rx="2"/>
                            <circle cx="9" cy="10" r="2"/>
                            <line x1="14" y1="9" x2="18" y2="9"/>
                            <line x1="14" y1="13" x2="18" y2="13"/>
                            <path d="M6 16c0-1.1.9-2 2-2h2c1.1 0 2 .9 2 2"/>
                        </svg>
                    </div>
                    <h3 class="documentTitle">National Identity Card</h3>
                    <button class="documentViewDetailsBtn" onclick="openIdModal('National Identity Card')">View Details</button>
                </article>

                <article class="documentItem">
                    <div class="documentIcon">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <circle cx="12" cy="12" r="10"/>
                            <path d="M2 12h20M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"/>
                        </svg>
                    </div>
                    <h3 class="documentTitle">Passport</h3>
                    <button class="documentViewDetailsBtn" onclick="openIdModal('Passport')">View Details</button>
                </article>

                <article class="documentItem">
                    <div class="documentIcon">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <rect x="3" y="4" width="18" height="16" rx="2"/>
                            <circle cx="15" cy="10" r="2"/>
                            <path d="M7 8h4M7 12h4m-4 4h10"/>
                        </svg>
                    </div>
                    <h3 class="documentTitle">Citizenship</h3>
                    <button class="documentViewDetailsBtn" onclick="openIdModal('Citizenship')">View Details</button>
                </article>

                <article class="documentItem">
                    <div class="documentIcon">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M7 10h10l1 4H6l1-4z"/>
                            <path d="M21 14v5a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-5"/>
                            <circle cx="7" cy="17" r="2"/>
                            <circle cx="17" cy="17" r="2"/>
                        </svg>
                    </div>
                    <h3 class="documentTitle">Driving License</h3>
                    <button class="documentViewDetailsBtn" onclick="openIdModal('Driving License')">View Details</button>
                </article>

                <article class="documentItem">
                    <div class="documentIcon">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M16 4h2a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2H6a2 2 0 0 1-2-2V6a2 2 0 0 1 2-2h2"/>
                            <rect x="8" y="2" width="8" height="4" rx="1"/>
                            <path d="M9 14l2 2 4-4"/>
                        </svg>
                    </div>
                    <h3 class="documentTitle">Voters ID</h3>
                    <button class="documentViewDetailsBtn" onclick="openIdModal('Voters ID')">View Details</button>
                </article>

                <article class="documentItem">
                    <div class="documentIcon">
                        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/>
                            <polyline points="14 2 14 8 20 8"/>
                            <line x1="16" y1="13" x2="8" y2="13"/>
                            <line x1="16" y1="17" x2="8" y2="17"/>
                            <line x1="10" y1="9" x2="8" y2="9"/>
                        </svg>
                    </div>
                    <h3 class="documentTitle">Bluebook</h3>
                    <button class="documentViewDetailsBtn" onclick="openIdModal('Bluebook')">View Details</button>
                </article>
            </section>
        </section>
    </main>

    <section id="docModal" class="documentModal">
        <article class="documentModalContent">
            <span class="documentModalClose" onclick="closeDocModal()">&times;</span>
            <h2 id="modalTitle" class="documentModalTitle">Verification</h2>
            <form action="${pageContext.request.contextPath}/documents" method="POST">
                <input type="hidden" id="docType" name="docType">
                <fieldset class="documentFormGroup" style="border: none; padding: 0px; margin: 0px; margin-bottom: 20px;">
                    <label id="dynamicLabel">Document ID Number</label>
                    <input type="text" name="docId" class="documentInput" required placeholder="Enter ID here...">
                </fieldset>
                <button type="submit" class="documentVerifyAction">Verify</button>
            </form>
        </article>
    </section>

    <script>
        const labelMap = {
            'National Identity Card': 'National ID Number',
            'Passport': 'Passport Number',
            'Citizenship': 'Citizenship ID',
            'Driving License': 'License Number',
            'Voters ID': 'Voter Card ID',
            'Bluebook': 'Bluebook Number'
        };

        function openIdModal(title) {
            document.getElementById("modalTitle").innerText = title + " Verification";
            document.getElementById("docType").value = title;
            document.getElementById("dynamicLabel").innerText = labelMap[title] || "Document ID Number";
            document.getElementById("docModal").classList.add("active");
        }

        function closeDocModal() {
            document.getElementById("docModal").classList.remove("active");
        }

        window.addEventListener("click", function(e) {
            if (e.target === document.getElementById("docModal")) closeDocModal();
        });
    </script>
</body>
</html>