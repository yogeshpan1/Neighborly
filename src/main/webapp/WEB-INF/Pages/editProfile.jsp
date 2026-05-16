<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Neighborly</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/navbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/profile.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <main class="mainContent editProfileMain">
        <jsp:include page="/Components/navbar.jsp" />

        <div class="editProfileContainer">

            <a href="${pageContext.request.contextPath}/profile" class="back-link">
                <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                    <polyline points="15 18 9 12 15 6"/>
                </svg>
                Back
            </a>

            <div class="editProfileCard">
                <div class="cardHeader">
                    <h2>Update Profile</h2>
                    <p class="subtitle">Personalize Your Neighborly account</p>
                </div>

                <c:if test="${not empty message}">
                    <div class="alert alert-success">&#10003; ${message}</div>
                </c:if>
                <c:if test="${not empty error}">
                    <div class="alert alert-error">&#9888; ${error}</div>
                </c:if>

                <form action="${pageContext.request.contextPath}/editprofile" method="post" enctype="multipart/form-data">

                    <div class="preview-container">
                        <span class="preview-placeholder" id="placeholderIcon">
                            <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="#262626" stroke-width="1.2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"/>
                                <circle cx="12" cy="7" r="4"/>
                            </svg>
                        </span>
                        <img id="imagePreview" src="#" alt="Preview">
                    </div>

                    <div class="file-input-wrapper">
                        <label for="profilePic" class="custom-file-upload">
                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/>
                                <circle cx="12" cy="13" r="4"/>
                            </svg>
                            Change Photo
                        </label>
                        <input type="file" id="profilePic" name="profilePic" accept="image/*" onchange="previewFile()">
                    </div>

                    <div class="input-group">
                        <label>First Name</label>
                        <input type="text" name="firstName" value="${user.firstName}" required>
                    </div>

                    <div class="input-group">
                        <label>Last Name</label>
                        <input type="text" name="lastName" value="${user.lastName}" required>
                    </div>

                    <div class="input-group">
                        <label>Username</label>
                        <input type="text" name="username" value="${user.userName}" required>
                        <span class="hint-text">*This is unique handle on Neighborly</span>
                    </div>

                    <div class="input-group">
                        <label>Email Address</label>
                        <input type="email" name="email" value="${user.email}" required>
                    </div>

                    <div class="input-group">
                        <label>Phone Number</label>
                        <input type="text" name="number" value="${user.number}" required>
                    </div>

                    <div class="input-group">
                        <label>Date of Birth</label>
                        <input type="date" name="dob" value="${user.dob}" required>
                    </div>

                    <div class="input-group">
                        <label>Gender</label>
                        <select name="gender" required>
                            <option value="" disabled ${empty user.gender ? 'selected' : ''}>Select Gender</option>
                            <option value="Male" ${user.gender == 'Male' ? 'selected' : ''}>Male</option>
                            <option value="Female" ${user.gender == 'Female' ? 'selected' : ''}>Female</option>
                        </select>
                    </div>

                    <div class="btn-container">
                        <button type="submit" class="btn-submit">Save Change</button>
                    </div>
                </form>
            </div>
        </div>
    </main>

    <script>
        function previewFile() {
            const preview = document.getElementById('imagePreview');
            const file = document.querySelector('input[name=profilePic]').files[0];
            const reader = new FileReader();
            const placeholder = document.getElementById('placeholderIcon');
            reader.onloadend = function () {
                preview.src = reader.result;
                preview.style.display = 'block';
                placeholder.style.display = 'none';
            }
            if (file) { reader.readAsDataURL(file); }
        }
    </script>
</body>
</html>
