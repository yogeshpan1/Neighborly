<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Neighborly</title>
    <!-- citizen facing page styles -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/leftbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/navbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/notices.css">
</head>
<body>
    <!-- left sidebar -->
    <jsp:include page="/Components/leftbar.jsp" />
    <main class="mainContent">
        <!-- top navbar -->
        <jsp:include page="/Components/navbar.jsp" />
        <section class="noticesContainer">
            <div class="noticesList">
                <c:choose>
                    <!-- no notices posted yet -->
                    <c:when test="${empty notices}">
                        <p class="noNotices">No notices posted yet.</p>
                    </c:when>
                    <c:otherwise>
                        <!-- loop through all notices -->
                        <c:forEach var="notice" items="${notices}">
                            <!-- category class applied for colour coding -->
                            <article class="noticeCard notice--${fn:toLowerCase(notice.noticeCategory)}">
                                <div class="noticeContent">
                                    <div class="noticeHeader">
                                        <!-- category badge and post time -->
                                        <span class="noticeCategoryBadge">
                                            ${notice.noticeCategory}
                                        </span>
                                        <span class="noticeTime">
                                            ${notice.postTime}
                                        </span>
                                    </div>
                                    <h2 class="noticeTitle">${notice.noticeTitle}</h2>
                                    <p class="noticeDescription">${notice.noticeDescription}</p>
                                </div>
                            </article>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
            </div>
        </section>
    </main>
</body>
</html>
