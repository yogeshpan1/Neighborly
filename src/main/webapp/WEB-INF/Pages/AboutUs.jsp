<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us | Neighborly</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/AboutUs.css">
</head>
<body>

    <main class="mainContent">
        <div class="aboutContainer">
            <h1 class="pageTitle">About Us</h1>
            
            <div class="teamGrid">
                <!-- Yogesh Pant -->
                <a href="${pageContext.request.contextPath}/portfolio?member=yogesh" class="memberCard">
                    <div class="memberImgBox">
                        <img src="" alt="Photo" class="memberImg"> <!-- Path to be added by user -->
                    </div>
                    <h3 class="memberName">Yogesh Pant</h3>
                    <p class="memberDesc">Marketing Intern at ING Skill Academy, focusing on student outreach.</p>
                    <span class="viewPortfolioBtn">View Portfolio</span>
                </a>

                <!-- Arjan Regmi -->
                <a href="${pageContext.request.contextPath}/portfolio?member=arjan" class="memberCard">
                    <div class="memberImgBox">
                        <img src="" alt="Photo" class="memberImg"> <!-- Path to be added by user -->
                    </div>
                    <h3 class="memberName">Arjan Regmi</h3>
                    <p class="memberDesc">Expert in system architecture and backend optimization.</p>
                    <span class="viewPortfolioBtn">View Portfolio</span>
                </a>

                <!-- Rikesh Adhikari -->
                <a href="${pageContext.request.contextPath}/portfolio?member=rikesh" class="memberCard">
                    <div class="memberImgBox">
                        <img src="" alt="Photo" class="memberImg"> <!-- Path to be added by user -->
                    </div>
                    <h3 class="memberName">Rikesh Adhikari</h3>
                    <p class="memberDesc">Frontend developer with a passion for high-performance web apps.</p>
                    <span class="viewPortfolioBtn">View Portfolio</span>
                </a>

                <!-- Prayush Shrestha -->
                <a href="${pageContext.request.contextPath}/portfolio?member=prayush" class="memberCard">
                    <div class="memberImgBox">
                        <img src="" alt="Photo" class="memberImg"> <!-- Path to be added by user -->
                    </div>
                    <h3 class="memberName">Prayush Shrestha</h3>
                    <p class="memberDesc">Full-stack developer focused on scalable community solutions.</p>
                    <span class="viewPortfolioBtn">View Portfolio</span>
                </a>
            </div>
        </div>
    </main>

</body>
</html>
