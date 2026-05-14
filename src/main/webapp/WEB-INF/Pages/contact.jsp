<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Neighborly</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/contact.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />
    
    <main class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />
        
        <section class="contentArea">
            <div class="contactContainer">
                <div class="contactHeader">
                    <h1>Contact Us</h1>
                    <p>We're here to help. Reach out to us using the form below and we'll get back to you as soon as possible.</p>
                </div>

                <form action="contact" method="POST" class="contactForm">
                    <div class="formGroup">
                        <label for="fullName">Full Name</label>
                        <input type="text" id="fullName" name="fullName" placeholder="Enter your full name" required>
                    </div>

                    <div class="formGroup">
                        <label for="email">Email Address</label>
                        <input type="email" id="email" name="email" placeholder="Enter your email" required>
                    </div>

                    <div class="formGroup">
                        <label for="subject">Subject</label>
                        <input type="text" id="subject" name="subject" placeholder="Enter subject" required>
                    </div>

                    <div class="formGroup">
                        <label for="message">Message</label>
                        <textarea id="message" name="message" rows="6" placeholder="Type your message..." required></textarea>
                    </div>

                    <button type="submit" class="submitBtn">Send Message</button>
                </form>

                <div class="responseTime">
                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                        <circle cx="12" cy="12" r="10"></circle>
                        <polyline points="12 6 12 12 16 14"></polyline>
                    </svg>
                    <span>We aim to respond within 24-48 hours.</span>
                </div>
            </div>
        </section>
    </main>
</body>
</html>