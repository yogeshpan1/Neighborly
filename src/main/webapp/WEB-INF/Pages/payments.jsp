<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Neighborly | Payments</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/payments.css">
    <style>
        /* Ensuring the icons and text align perfectly */
        .paymentItemTitle {
            display: flex;
            align-items: center;
            gap: 10px;
        }
        .paymentItemTitle svg {
            flex-shrink: 0;
        }
    </style>
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <main class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <section class="paymentSection">
            <!-- Header Summary Cards -->
            <header class="paymentCardsHeader">
                <article class="paymentCard">
                    <div class="paymentCardBody">
                        <div class="paymentCardIcon">
                             <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#E86A33" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="5" width="20" height="14" rx="2"/><line x1="2" y1="10" x2="22" y2="10"/></svg>
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
                             <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#E86A33" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"/><line x1="12" y1="9" x2="12" y2="13"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg>
                        </div>
                        <div class="paymentCardText">
                            <p class="paymentCardLabel">Total Fines</p>
                            <h2 class="paymentCardValue">Rs.2,000</h2>
                        </div>
                    </div>
                    <a href="#" class="paymentCardLink">View all &gt;</a>
                </article>
            </header>

            <!-- Pending Payments Table -->
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
                        <span class="paymentItemTitle">
                            <!-- Orange House SVG -->
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#E86A33" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                                <polyline points="9 22 9 12 15 12 15 22"></polyline>
                            </svg>
                            <strong>Property Tax Clearance</strong>
                        </span>
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

            <!-- Recent Fines Table -->
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
                        <span class="paymentItemTitle">
                            <!-- Orange Traffic Light SVG -->
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="#E86A33" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                <rect x="6" y="2" width="12" height="20" rx="2" ry="2"></rect>
                                <circle cx="12" cy="7" r="1" fill="#E86A33"></circle>
                                <circle cx="12" cy="12" r="1" fill="#E86A33"></circle>
                                <circle cx="12" cy="17" r="1" fill="#E86A33"></circle>
                            </svg>
                            <strong>Traffic Violation</strong>
                        </span>
                        <span>5th Apr, 2025</span>
                        <span><strong>Rs.5,500</strong></span>
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