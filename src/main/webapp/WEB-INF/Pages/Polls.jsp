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

        <div class="pollsContainer">
            <h1 class="pollPageTitle">Polls</h1>

            <!-- Gold Poll (Row Style) -->
            <article class="pollCard">
                <div class="pollHeader">
                    <div class="pollIconContainer">
                        <!-- Gold Bars SVG -->
                        <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="#E86A33" stroke-width="1.5">
                            <path d="M7 11h10l1 4H6l1-4zM10 5h4l1 3H9l1-3zM4 17h16l1 4H3l1-4z"/>
                        </svg>
                    </div>
                    <p class="pollQuestion">How much will Gold (NRP) go up by May 2026?</p>
                </div>
                
                <div class="pollOptionRow">
                    <div class="optionInfo">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#E86A33" stroke-width="2"><path d="M12 19V5M5 12l7-7 7 7"/></svg>
                        <span>NRP 210,000</span>
                    </div>
                    <div class="percentage">63%</div>
                    <div class="pollActions">
                        <button class="btnYes">Yes</button>
                        <button class="btnNo">No</button>
                    </div>
                </div>

                <div class="pollOptionRow">
                    <div class="optionInfo">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#8e8e8e" stroke-width="2"><path d="M12 5v14M5 12l7 7 7-7"/></svg>
                        <span>NRP 180,000</span>
                    </div>
                    <div class="percentage">37%</div>
                    <div class="pollActions">
                        <button class="btnYes">Yes</button>
                        <button class="btnNo">No</button>
                    </div>
                </div>
            </article>

            <!-- BTC Poll (Grid Style) -->
            <article class="pollCard">
                <div class="pollHeader alignCenter">
                    <div class="btcIcon">
                        <svg width="32" height="32" viewBox="0 0 24 24" fill="#ffffff"><path d="M24 12c0 6.627-5.373 12-12 12S0 18.627 0 12 5.373 0 12 0s12 5.373 12 12zm-9.311-1.391c.214-1.428-.873-2.196-2.358-2.708l.482-1.933-1.177-.293-.47 1.884c-.309-.077-.626-.15-.941-.221l.473-1.896-1.177-.293-.482 1.933c-.256-.058-.508-.115-.755-.175l.001-.005-1.624-.405-.313 1.257s.874.2.855.213c.477.12.563.438.549.69l-.551 2.207c.033.008.076.02.123.039l-.124-.031-.772 3.098c-.058.145-.207.363-.54.28.018.026-.855-.213-.855-.213l-.584 1.346 1.533.383c.285.071.564.146.839.215l-.487 1.954 1.177.293.482-1.933c.321.087.632.171.937.251l-.478 1.916 1.177.293.487-1.954c2.008.381 3.518.227 4.153-1.59.512-1.463-.025-2.307-1.082-2.857.77-.178 1.35-.686 1.505-1.737zm-2.695 3.797c-.364 1.461-2.827.672-3.625.474l.647-2.593c.798.198 3.354.59 2.978 2.119zm.365-3.818c-.331 1.33-2.384.654-3.048.489l.587-2.352c.664.166 2.799.477 2.461 1.863z"/></svg>
                    </div>
                    <p class="pollQuestion">BTC Up or Down by May 2026?</p>
                </div>

                <div class="btcOptionsGrid">
                    <div class="btcOption up">
                        <span class="label">Up</span>
                        <div class="values">
                            <p>+ Rs 1,500,000</p>
                            <p>+ Rs 5,000,000</p>
                        </div>
                    </div>
                    <div class="btcOption down">
                        <span class="label">Down</span>
                        <div class="values">
                            <p>Rs 800,000</p>
                        </div>
                    </div>
                </div>
            </article>

            <!-- Silver Poll (Row Style) -->
            <article class="pollCard">
                <div class="pollHeader">
                    <div class="pollIconContainer silver">
                        <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="#4a4a4a" stroke-width="1.5">
                            <path d="M7 11h10l1 4H6l1-4zM10 5h4l1 3H9l1-3zM4 17h16l1 4H3l1-4z"/>
                        </svg>
                    </div>
                    <p class="pollQuestion">How much will Silver (NRP) go up by May 2026?</p>
                </div>
                <!-- Rows repeated as per image... -->
                <div class="pollOptionRow">
                    <div class="optionInfo"><svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#4a4a4a" stroke-width="2"><path d="M12 19V5M5 12l7-7 7 7"/></svg><span>NRP 5,549</span></div>
                    <div class="percentage">58%</div>
                    <div class="pollActions"><button class="btnYes">Yes</button><button class="btnNo">No</button></div>
                </div>
                <div class="pollOptionRow">
                    <div class="optionInfo"><svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#8e8e8e" stroke-width="2"><path d="M12 5v14M5 12l7 7 7-7"/></svg><span>NRP 4,500</span></div>
                    <div class="percentage">42%</div>
                    <div class="pollActions"><button class="btnYes">Yes</button><button class="btnNo">No</button></div>
                </div>
            </article>
        </div>
    </main>
</body>
</html>