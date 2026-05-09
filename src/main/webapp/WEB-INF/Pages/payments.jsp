<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Neighborly</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/payments.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <main class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <section class="paymentSection">
            <header class="paymentCardsHeader">
                <article class="paymentCard">
                    <div class="paymentCardBody">
                        <div class="paymentCardIcon">
                             <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#E86A33" stroke-width="2"><rect x="2" y="5" width="20" height="14" rx="2"/><line x1="2" y1="10" x2="22" y2="10"/></svg>
                        </div>
                        <div class="paymentCardText">
                            <p class="paymentCardLabel">Pending Payment</p>
                            <h2 class="paymentCardValue">Rs.8,500</h2>
                        </div>
                    </div>
                    <a href="#" class="paymentCardLink">View all &gt;</a>
                </article>

                <article class="paymentCard">
                    <div class="paymentCardBody">
                        <div class="paymentCardIcon">
                             <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#E86A33" stroke-width="2"><path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"/><line x1="12" y1="9" x2="12" y2="13"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg>
                        </div>
                        <div class="paymentCardText">
                            <p class="paymentCardLabel">Total Fines</p>
                            <h2 class="paymentCardValue">Rs.2,000</h2>
                        </div>
                    </div>
                    <a href="#" class="paymentCardLink">View all &gt;</a>
                </article>
            </header>

            <section class="paymentListSection">
                <header class="paymentListHeaderRow">
                    <h3>Pending Payment</h3>
                    <button class="paymentOutlineBtn">Make Payment</button>
                </header>
                
                <section class="paymentList">
                    <div class="paymentListRow headerRow fiveCols">
                        <span>Bill For</span>
                        <span>Due Date</span>
                        <span>Amount</span>
                        <span>Reference ID</span>
                        <span>Action</span>
                    </div>
                    
                    <article class="paymentListRow fiveCols">
                        <span><strong>🏠 Proper Tax Clearance</strong></span>
                        <span>11th Jan, 2025</span>
                        <span><strong>Rs.5,000</strong></span>
                        <span>PAY-2025-01400</span>
                        <span>
                            <button class="paymentActionBtn">Pay Now</button>
                            <span class="paymentActionDots">...</span>
                        </span>
                    </article>
                </section>
            </section>

            <section class="paymentListSection">
                <header class="paymentListHeaderRow">
                    <h3>Recent Fines</h3>
                </header>
                
                <section class="paymentList">
                    <div class="paymentListRow headerRow sixCols">
                        <span>Fine For</span>
                        <span>Issue Date</span>
                        <span>Amount</span>
                        <span>Status</span>
                        <span>Reference ID</span>
                        <span>Action</span>
                    </div>
                    
                    <article class="paymentListRow sixCols">
                        <span><strong>🚦 Traffic Violation</strong></span>
                        <span>5th Apr, 2025</span>
                        <span><strong>5,500</strong></span>
                        <span><span class="paymentBadgePending">Pending</span></span>
                        <span>FINE-2025-0234</span>
                        <span>
                            <button class="paymentDetailsBtn">View Details</button>
                            <span class="paymentActionDots">...</span>
                        </span>
                    </article>
                </section>
            </section>
        </section>
    </main>
</body>
</html>