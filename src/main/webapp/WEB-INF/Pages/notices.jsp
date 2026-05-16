<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Neighborly</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/notices.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <main class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <section class="noticeContainer">
            <h1 class="noticePageTitle">Notices</h1>
            
            <div class="noticeList">
                <article class="noticeItem">
                    <p class="noticeText">Congratulations you have created an account</p>
                    <span class="noticeTime">2 mins ago</span>
                </article>
            </div>
        </section>
    </main>

</body>
</html>