<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Neighborly</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/editProfile.css">
</head>
<body>
    <div class="edit-profile-container">
        <h2>Edit profile</h2>
        
        <form action="EditProfileServlet" method="POST">
            <div class="profile-card">
                <div class="user-info">
                    <img src="images/profile-pic.jpg" alt="Profile" class="avatar">
                    <div class="user-details">
                        <span class="username">Guest</span>
                        <span class="full-name">Guest Name</span>
                    </div>
                </div>
                <button type="button" class="btn-change-photo">Change photo</button>
            </div>

            <div class="input-group">
                <label>Website</label>
                <input type="text" name="website" placeholder="Website">
                <p class="helper-text">Editing your links is only available on mobile.</p>
            </div>

            <div class="input-group">
                <label>Bio</label>
                <textarea name="bio" placeholder="Bio" maxlength="150"></textarea>
                <span class="char-count">0 / 150</span>
            </div>

            <div class="toggle-group">
                <div class="toggle-text">
                    <label>Show Threads badge</label>
                </div>
                <input type="checkbox" name="showThreads" class="ios-switch">
            </div>

            <div class="input-group">
                <label>Gender</label>
                <select name="gender">
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="prefer_not_to_say">Prefer not to say</option>
                </select>
                <p class="helper-text">This won't be part of your public profile.</p>
            </div>

            <div class="form-footer">
                <button type="submit" class="btn-submit">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>