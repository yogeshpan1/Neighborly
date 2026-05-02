<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Neighborly - Profile</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/profile.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <div class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <div class="profileWrapper">
            <header class="profileHeader">
                <div class="profileAvatarLarge">
                    <div class="avatarCircle">G</div>
                </div>
                
                <div class="profileInfoSection">
                    <h2 class="username">Guest</h2>
                    
                    <div class="profileBio">
                        <span class="fullName">Guest Name</span>
                    </div>

                    <div class="profileActionRow">
                        <button onclick="openEditModal()" class="edit-btn" style="border:none; cursor:pointer;">Edit profile</button>
                    </div>
                </div>
            </header>

            <div class="profileTabs">
                <div class="tab active" onclick="switchTab(event, 'postsTab')">
    POSTS
</div>
                <div class="tab" onclick="switchTab(event, 'savedTab')">
                    <span class="css-icon bookmark-icon"></span> SAVED
                </div>
            </div>

            <div id="postsTab" class="tab-content active-content">
                <div class="emptyState">
                    <div class="icon-circle">
                        <span class="plus-icon"></span>
                    </div>
                    <h2 class="emptyTitle">Share Posts</h2>
                    <p>When you share photos, they will appear on your profile.</p>
                </div>
            </div>

          <div id="savedTab" class="tab-content">
    <div class="emptyState">
        <div class="icon-circle">
            <span class="large-bookmark-icon"></span> 
        </div>
        <h2 class="emptyTitle">Save for later</h2>
        <p>Items you save will appear here.</p>
    </div>
</div>
        </div> 
        </div> 
    </div>

    <!-- Edit Profile Modal -->
    <div id="editProfileModal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeEditModal()">&times;</span>
            <h2>Edit profile</h2>
            
            <form action="editProfile" method="POST">
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
                    <span class="char-count" id="charCounter">0 / 250</span>
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
                    <button type="submit" class="btn-submit">Submit</button>
                </div>
            </form>
        </div>
    </div>


    <script>
        function switchTab(evt, tabId) {
            const contents = document.querySelectorAll(".tab-content");
            contents.forEach(content => content.classList.remove("active-content"));

            const tabs = document.querySelectorAll(".tab");
            tabs.forEach(tab => tab.classList.remove("active"));

            document.getElementById(tabId).classList.add("active-content");
            evt.currentTarget.classList.add("active");
        }

        /* Modal Logic */
        const modal = document.getElementById("editProfileModal");
        
        function openEditModal() {
            modal.classList.add("show");
            document.body.style.overflow = "hidden"; // Prevent scrolling
        }

        function closeEditModal() {
            modal.classList.remove("show");
            document.body.style.overflow = "auto";
        }

        // Close when clicking outside of modal content
        window.onclick = function(event) {
            if (event.target == modal) {
                closeEditModal();
            }
        }

        // Bio character counter
        const bioInput = document.getElementById('bio');
        const charCountDisplay = document.getElementById('charCounter');
        
        if(bioInput && charCountDisplay) {
            bioInput.addEventListener('input', () => {
                charCountDisplay.textContent = `${bioInput.value.length} / 250`;
            });
        }
    </script>
</body>
</html>