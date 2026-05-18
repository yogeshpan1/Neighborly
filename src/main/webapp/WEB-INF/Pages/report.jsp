<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Neighborly</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/report.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/leftbar.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/navbar.css">
    </head>
    <body>
        <jsp:include page="/Components/leftbar.jsp" />
        
        <main class="mainContent">
            <jsp:include page="/Components/navbar.jsp" />
                       
            <div class="formWrapper">
            
				 <c:if test="${not empty errorMessage}">
				    <div class="alertError">${errorMessage}</div>
				</c:if>
				
				<c:if test="${not empty successMessage}">
				    <div class="alertSuccess">${successMessage}</div>
				</c:if>
				<form action="${pageContext.request.contextPath}/report" method="POST" class="reportForm">
                    
                    <fieldset class="formGroup">
                        <label for="issueTitle">Title</label>
                        <input type="text" id="issueTitle" name="title" placeholder="What is your Issue?">
                    </fieldset>

                    <fieldset class="formGroup">
                        <legend>Category</legend>
                        <div class="categoryGrid">
                            <label class="categoryOption">
                                <input type="radio" name="category" value="roads">
                                <span class="categoryBtn">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <rect x="3" y="14" width="18" height="8" rx="2" ry="2"></rect>
                                        <path d="M5 14v-4a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2v4"></path>
                                    </svg>
                                    Roads & Footpaths
                                </span>
                            </label>
                            <label class="categoryOption">
                                <input type="radio" name="category" value="streetlights">
                                <span class="categoryBtn">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <line x1="12" y1="2" x2="12" y2="22"></line>
                                        <path d="M8 2h8"></path>
                                        <path d="M9 10h6"></path>
                                        <circle cx="12" cy="6" r="2"></circle>
                                    </svg>
                                    Streetlights
                                </span>
                            </label>
                            <label class="categoryOption">
                                <input type="radio" name="category" value="waste">
                                <span class="categoryBtn">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <polyline points="3 6 5 6 21 6"></polyline>
                                        <path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path>
                                    </svg>
                                    Waste & Garbage
                                </span>
                            </label>
                            <label class="categoryOption">
                                <input type="radio" name="category" value="parks">
                                <span class="categoryBtn">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M12 22v-6"></path>
                                        <path d="M12 8l4-4 4 4-2 2h-4v6"></path>
                                        <path d="M12 8L8 4 4 8l2 2h4v6"></path>
                                    </svg>
                                    Parks & Trees
                                </span>
                            </label>
                            <label class="categoryOption">
                                <input type="radio" name="category" value="water">
                                <span class="categoryBtn">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M12 2.69l5.66 5.66a8 8 0 1 1-11.31 0z"></path>
                                    </svg>
                                    Water & Drainage
                                </span>
                            </label>
                            <label class="categoryOption">
                                <input type="radio" name="category" value="safety">
                                <span class="categoryBtn">
                                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                        <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path>
                                    </svg>
                                    Safety & Other
                                </span>
                            </label>
                        </div>
                    </fieldset>

                    <fieldset class="formGroup">
                        <label for="issueLocation">Location</label>
                        <input type="text" id="issueLocation" name="location" placeholder="Location">
                    </fieldset>

                    <fieldset class="formGroup">
                        <label for="issueDescription">Description</label>
                        <textarea id="issueDescription" name="description" rows="3" placeholder="Describe the issue"></textarea>
                    </fieldset>

                    <fieldset class="formGroup">
                        <legend>Attach Photo (Optional)</legend>
                        <input type="file" id="issuePhoto" name="photo" accept="image/*" class="fileInput">
                        <label for="issuePhoto" class="fileUploadLabel">
                            <span class="uploadIcon">
                                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <rect x="3" y="3" width="18" height="18" rx="2" ry="2"></rect>
                                    <circle cx="8.5" cy="8.5" r="1.5"></circle>
                                    <polyline points="21 15 16 10 5 21"></polyline>
                                </svg>
                            </span>
                            <span class="uploadText">Click to upload a photo</span>
                        </label>
                    </fieldset>

                    <button type="submit" class="btnPrimary">Submit report</button>
                </form>
            </div>
        </main>
    </body>
</html>
