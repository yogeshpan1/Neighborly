<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Neighborly - Edit Profile</title>
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
                        <span class="display-username">Guest</span>
                        <span class="display-name">Guest Name</span>
                    </div>
                </div>
                <button type="button" class="btn-change-photo">Change photo</button>
            </div>

            <div class="input-group">
                <label for="fullName">Name</label>
                <input type="text" id="fullName" name="fullName" placeholder="Name" value="Guest Name">
                <p class="helper-text">Help people discover your account by using the name you're known by.</p>
            </div>

            <div class="input-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" placeholder="Username" value="Guest">
                <p class="helper-text">This is your unique handle on Neighborly.</p>
            </div>

            <div class="input-group">
                <label for="website">Website</label>
                <input type="text" id="website" name="website" placeholder="Website">
                <p class="helper-text">Editing your links is only available on mobile.</p>
            </div>

            <div class="input-group">
                <label for="bio">Bio</label>
                <textarea id="bio" name="bio" placeholder="Bio" maxlength="150"></textarea>
                <span class="char-count" id="charCounter">0 / 150</span>
            </div>

            <div class="toggle-group">
                <div class="toggle-text">
                    <label>Show Threads badge</label>
                </div>
                <input type="checkbox" name="showThreads" class="ios-switch">
            </div>

            <div class="input-group">
                <label for="gender">Gender</label>
                <select id="gender" name="gender">
                    <option value="male">Male</option>
                    <option value="female">Female</option>
                    <option value="prefer_not_to_say" selected>Prefer not to say</option>
                </select>
                <p class="helper-text">This won't be part of your public profile.</p>
            </div>

            <div class="form-footer">
                <button type="submit" class="btn-submit">Submit Changes</button>
            </div>
        </form>
    </div>

    <script>
        const bioInput = document.getElementById('bio');
        const charCountDisplay = document.getElementById('charCounter');

        bioInput.addEventListener('input', () => {
            const currentLength = bioInput.value.length;
            charCountDisplay.textContent = `${currentLength} / 150`;
        });
    </script>
</body>
</html>