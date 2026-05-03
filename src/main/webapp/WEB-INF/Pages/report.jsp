<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setAttribute("activePage", "Report"); %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Neighborly</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/report.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    </head>
    <body>
        <jsp:include page="/Components/sidebar.jsp" />
        
        <div class="mainContent">
            <jsp:include page="/Components/navbar.jsp" />
            
            <div class="contentArea">
                <div class="reportContainer">
                    <div class="reportHeader">
                        <h1>Report an issue</h1>
                        <p class="subtitle">Help us improve your neighborhood.</p>
                    </div>

                    <form action="${pageContext.request.contextPath}/submitReport" method="POST" enctype="multipart/form-data" class="reportForm">
                        
                        <div class="formGroup">
                            <label for="issueTitle">Title</label>
                            <input type="text" id="issueTitle" name="title" placeholder="e.g. Broken streetlight on Main St" required>
                        </div>

                        <div class="formGroup">
                            <label>Category</label>
                            <div class="categoryGrid">
                                <label class="categoryOption">
                                    <input type="radio" name="category" value="roads" required>
                                    <div class="categoryBtn">
                                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <rect x="3" y="14" width="18" height="8" rx="2" ry="2"></rect>
                                            <path d="M5 14v-4a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v4"></path>
                                        </svg>
                                        Roads & Footpaths
                                    </div>
                                </label>
                                <label class="categoryOption">
                                    <input type="radio" name="category" value="streetlights">
                                    <div class="categoryBtn">
                                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <line x1="12" y1="2" x2="12" y2="22"></line>
                                            <path d="M8 2h8"></path>
                                            <path d="M9 10h6"></path>
                                            <circle cx="12" cy="6" r="2"></circle>
                                        </svg>
                                        Streetlights
                                    </div>
                                </label>
                                <label class="categoryOption">
                                    <input type="radio" name="category" value="waste">
                                    <div class="categoryBtn">
                                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <polyline points="3 6 5 6 21 6"></polyline>
                                            <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                                        </svg>
                                        Waste & Garbage
                                    </div>
                                </label>
                                <label class="categoryOption">
                                    <input type="radio" name="category" value="parks">
                                    <div class="categoryBtn">
                                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M12 22v-6"></path>
                                            <path d="M12 8l4-4 4 4-2 2h-4v6"></path>
                                            <path d="M12 8L8 4 4 8l2 2h4v6"></path>
                                        </svg>
                                        Parks & Trees
                                    </div>
                                </label>
                                <label class="categoryOption">
                                    <input type="radio" name="category" value="water">
                                    <div class="categoryBtn">
                                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M12 2.69l5.66 5.66a8 8 0 1 1-11.31 0z"></path>
                                        </svg>
                                        Water & Drainage
                                    </div>
                                </label>
                                <label class="categoryOption">
                                    <input type="radio" name="category" value="safety">
                                    <div class="categoryBtn">
                                        <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path>
                                        </svg>
                                        Safety & Other
                                    </div>
                                </label>
                            </div>
                        </div>

                        <div class="formGroup">
                            <label for="issueLocation">Location</label>
                            <input type="text" id="issueLocation" name="location" placeholder="e.g. 123 Oak Avenue" required>
                        </div>

                        <div class="formGroup">
                            <label for="issueDescription">Description</label>
                            <textarea id="issueDescription" name="description" rows="3" placeholder="Describe the issue — when you noticed it, how severe it is..." required></textarea>
                        </div>

                        <div class="formGroup">
                            <label>Attach Photo</label>
                            <div class="fileUploadWrapper">
                                <input type="file" id="issuePhoto" name="photo" accept="image/*" class="fileInput">
                                <label for="issuePhoto" class="fileUploadLabel">
                                    <div class="uploadIcon">
                                        <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                            <rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect>
                                            <circle cx="8.5" cy="8.5" r="1.5"></circle>
                                            <polyline points="21 15 16 10 5 21"></polyline>
                                        </svg>
                                    </div>
                                    <span class="uploadText">Click to upload a photo</span>
                                    <span class="uploadHint">JPG, PNG or WEBP — up to 5MB</span>
                                </label>
                            </div>
                        </div>

                        <div class="formActions">
                            <button type="submit" class="btnPrimary">Submit report</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
        
        <script>
            // Simple script to show selected file name
            document.getElementById('issuePhoto').addEventListener('change', function(e) {
                const fileName = e.target.files[0] ? e.target.files[0].name : '';
                const uploadText = document.querySelector('.uploadText');
                if (fileName) {
                    uploadText.textContent = fileName;
                } else {
                    uploadText.textContent = 'Click to upload a photo';
                }
            });
        </script>
    </body>
</html>
