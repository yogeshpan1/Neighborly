<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Neighborly</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/Polls.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <main class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <section class="pollsContainer">
            
            <div class="pollsList">
                
                <article class="pollCard">
                    <div class="pollContent">
                        <h2 class="pollTitle">Rebuild Singha Durbar?</h2>
                        <p class="pollDescription">Singha Durbar represents the heart of civic governance. Vote now to decide which primary feature our development team tackles next.</p>
                    </div>
                    
                    <form action="<%=request.getContextPath()%>/polls" method="POST" class="pollActions">
                        <input type="hidden" name="pollId" value="rebuild_singha_durbar">
                        <button type="submit" name="vote" value="Yes" class="pollBtn btnYes">Yes</button>
                        <button type="submit" name="vote" value="No" class="pollBtn btnNo">No</button>
                    </form>
                </article>

                <article class="pollCard">
                    <div class="pollContent">
                        <h2 class="pollTitle">Build Kathmandu Metro?</h2>
                        <p class="pollDescription">Do you support building a new metro rail network in Kathmandu, Bhaktapur and Lalitpur?</p>
                    </div>
                    
                    <form action="<%=request.getContextPath()%>/polls" method="POST" class="pollActions">
                        <input type="hidden" name="pollId" value="kathmandu_metro">
                        <button type="submit" name="vote" value="Yes" class="pollBtn btnYes">Yes</button>
                        <button type="submit" name="vote" value="No" class="pollBtn btnNo">No</button>
                    </form>
                </article>

                <article class="pollCard">
                    <div class="pollContent">
                        <h2 class="pollTitle">Weekly Car-Free Sundays?</h2>
                        <p class="pollDescription">Should the municipality mandate solar panel installation on all government buildings?</p>
                    </div>
                    
                    <form action="<%=request.getContextPath()%>/polls" method="POST" class="pollActions">
                        <input type="hidden" name="pollId" value="car_free_sundays">
                        <button type="submit" name="vote" value="Yes" class="pollBtn btnYes">Yes</button>
                        <button type="submit" name="vote" value="No" class="pollBtn btnNo">No</button>
                    </form>
                </article>

            </div>
        </section>
    </main>

</body>
</html>