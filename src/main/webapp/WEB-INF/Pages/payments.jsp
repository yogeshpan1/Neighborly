<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
   
    <title>Neighborly</title>
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/sidebar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/navbar.css">
    <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/payments.css">
    <style>
        
    </style>
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <main class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <section class="paymentSection">
            <!-- Header Summary Cards -->
            
            <!-- Pending Payments Table -->
            <section class="paymentListSection">
                <header class="paymentListHeaderRow">
                    <h3>Pending Payment</h3>
                    
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