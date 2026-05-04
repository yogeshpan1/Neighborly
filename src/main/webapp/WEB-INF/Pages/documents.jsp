<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Neighborly</title>
    
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/navbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/documents.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />
    <jsp:include page="/Components/navbar.jsp" />

    <div class="main-content">
        <div class="dashboard-container">
            
            <!-- Top Featured Cards -->
            <div class="summary-row">
                <c:forEach var="doc" items="${featuredDocs}">
                    <div class="summary-box doc-summary">
                        <div class="box-header">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#a35b2a" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                                <circle cx="12" cy="7" r="4"></circle>
                            </svg>
                            <strong><c:out value="${doc.name}"/></strong>
                        </div>
                        <div class="doc-info">
                            <div class="info-row">
                                <span>Issued Date</span> 
                                <strong><c:out value="${doc.issued}"/></strong>
                            </div>
                            <div class="info-row">
                                <span>Expired Date</span> 
                                <strong><c:out value="${doc.expiry}"/></strong>
                            </div>
                        </div>
                        <a href="#" class="view-link">View Details</a>
                    </div>
                </c:forEach>
            </div>

            <!-- Icon Grid -->
            <div class="document-grid">
                <c:forEach var="item" items="${gridDocs}">
                    <div class="doc-item">
                        <div class="doc-circle">
                            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#a35b2a" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="3" y="4" width="18" height="16" rx="2"></rect>
                                <line x1="3" y1="10" x2="21" y2="10"></line>
                            </svg>
                        </div>
                        <p><c:out value="${item}"/></p>
                    </div>
                </c:forEach>
            </div>

            <!-- Floating Action Button -->
            <button class="fab-btn">
                <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="3" stroke-linecap="round" stroke-linejoin="round">
                    <line x1="12" y1="5" x2="12" y2="19"></line>
                    <line x1="5" y1="12" x2="19" y2="12"></line>
                </svg>
            </button>
        </div>
    </div>

</body>
</html>