<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Neighborly</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/navbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/contact.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <main class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <section class="contentArea">
            <div class="contactContainer">

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
                        <textarea id="message" name="message" placeholder="Type your message..."></textarea>
                    </div>

                    <button type="submit" class="submitBtn">Send Message</button>
                </form>

                <div class="contactFooter">
                    <p>We're here to help. Reach out to us using the form below and we'll get back to you as soon as possible.</p>
                </div>
            </div>
        </section>
    </main>
</body>
</html>