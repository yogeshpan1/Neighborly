<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
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
                    <div class="avatarCircle">${user != null && not empty user.firstName ? user.firstName.substring(0,1).toUpperCase() : 'G'}</div>
                </div>
                
                <div class="profileInfoSection">
                    <h2 class="username">${user != null ? user.userName : 'Guest'}</h2>
                    
                    <div class="profileBio">
                        <span class="fullName">${user != null ? user.firstName : 'Guest'} ${user != null ? user.lastName : 'Name'}</span>
                    </div>

                    <div class="profileActionRow">
                        <button onclick="openEditModal()" class="edit-btn">Edit profile</button>
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

    <!-- Edit Profile Modal -->
    <div id="editProfileModal" class="modal">
        <div class="modal-content">
            <span class="close-btn" onclick="closeEditModal()">&times;</span>
            <h2>Edit profile</h2>
            
            <form action="editProfile" method="POST" enctype="multipart/form-data">
                <div class="preview-container">
                    <i class="fas fa-user preview-placeholder" id="placeholderIcon"></i>
                    <img id="imagePreview" src="#" alt="Preview">
                </div>

                <div class="file-input-wrapper">
                    <label for="profilePicture" class="custom-file-upload">
                        <i class="fas fa-camera"></i> Change Photo
                    </label>
                    <input type="file" id="profilePicture" name="profilePicture" accept="image/*" onchange="previewFile()">
                </div>

                <div class="input-group">
                    <label for="firstName">First Name</label>
                    <input type="text" id="firstName" name="firstName" placeholder="First Name" value="${user != null ? user.firstName : 'Guest'}">
                </div>

                <div class="input-group">
                    <label for="lastName">Last Name</label>
                    <input type="text" id="lastName" name="lastName" placeholder="Last Name" value="${user != null ? user.lastName : 'Name'}">
                </div>

                <div class="input-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" placeholder="Username" value="${user != null ? user.userName : 'Guest'}">
                    <p class="helper-text">This is your unique handle on Neighborly.</p>
                </div>

                <div class="input-group">
                    <label for="email">Email Address</label>
                    <input type="email" id="email" name="email" placeholder="Email" value="${user != null ? user.email : ''}">
                </div>

                <div class="input-group">
                    <label for="number">Phone Number</label>
                    <input type="tel" id="number" name="number" placeholder="Phone Number" value="${user != null ? user.number : ''}">
                </div>

                <div class="input-group">
                    <label for="dob">Date of Birth</label>
                    <input type="date" id="dob" name="dob" value="${user != null ? user.dob : ''}">
                </div>

                <div class="input-group">
                    <label for="gender">Gender</label>
                    <select id="gender" name="gender">
                        <option value="Male" ${user != null && user.gender == 'Male' ? 'selected' : ''}>Male</option>
                        <option value="Female" ${user != null && user.gender == 'Female' ? 'selected' : ''}>Female</option>
                        <option value="Other" ${user != null && user.gender == 'Other' ? 'selected' : ''}>Other</option>
                    </select>
                </div>

                <div class="form-footer">
                    <button type="submit" class="btn-submit">Save Changes</button>
                </div>
            </form>
        </div>
    </div>


    <script>
        const switchTab = (e, id) => {
            document.querySelectorAll(".tab-content, .tab").forEach(el => el.classList.remove("active-content", "active"));
            document.getElementById(id).classList.add("active-content");
            e.currentTarget.classList.add("active");
        };

        const modal = document.getElementById("editProfileModal");
        const toggleModal = (show) => {
            modal.classList.toggle("show", show);
            document.body.style.overflow = show ? "hidden" : "auto";
        };

        const openEditModal = () => toggleModal(true);
        const closeEditModal = () => toggleModal(false);
        window.onclick = (e) => e.target === modal && toggleModal(false);

        function previewFile() {
            const preview = document.getElementById('imagePreview');
            const file = document.getElementById('profilePicture').files[0];
            const reader = new FileReader();
            const placeholder = document.getElementById('placeholderIcon');

            reader.onloadend = function () {
                preview.src = reader.result;
                preview.style.display = 'block';
                placeholder.style.display = 'none';
            }

            if (file) {
                reader.readAsDataURL(file);
            }
        }
    </script>
</body>
</html>