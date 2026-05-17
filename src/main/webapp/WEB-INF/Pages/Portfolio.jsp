<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio | Neighborly</title>
    <link class="portfolioStyle" rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Portfolio.css">
</head>
<body>

    <jsp:include page="/Components/navbar.jsp" />

    <main class="portfolioContainer">
        
        <div class="mainLayout">
            
            <!-- Sidebar (Avatar & Contacts) -->
            <aside class="sidebar">
                <!-- Go Back Button -->
                <div class="backBtnBox">
                    <a href="${pageContext.request.contextPath}/aboutus" class="backBtn">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <line x1="19" y1="12" x2="5" y2="12"></line>
                            <polyline points="12 19 5 12 12 5"></polyline>
                        </svg>
                        Back to Team
                    </a>
                </div>

                <div class="avatarBox">
                    <img id="avatarImg" src="" alt="Photo" class="avatarImg">
                </div>
                </aside>
</div>
</main>
</body>
</html>
