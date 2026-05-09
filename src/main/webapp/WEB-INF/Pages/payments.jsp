<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Neighborly | Payments</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/sidebar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/navbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/payments.css">
</head>
<body>

    <jsp:include page="/Components/sidebar.jsp" />

    <main class="mainContent">
        <jsp:include page="/Components/navbar.jsp" />

        <div class="payment-wrapper">
            <div class="summary-cards">
                <div class="card">
                    <div class="card-body">
                        <div class="card-icon-container">
                             <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="#e67e22" stroke-width="2"><rect x="2" y="5" width="20" height="14" rx="2"/><line x1="2" y1="10" x2="22" y2="10"/></svg>
                        </div>
                        <div class="card-text">
                            <p class="label">Pending Payment</p>
                            <h2 class="value">Rs.8,500</h2>
                        </div>
                    </div>
                    <a href="#" class="view-all-link">View all &gt;</a>
                </div>

                <div class="card">
                    <div class="card-body">
                        <div class="card-icon-container warning">
                             <svg width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="#d35400" stroke-width="2"><path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"/><line x1="12" y1="9" x2="12" y2="13"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg>
                        </div>
                        <div class="card-text">
                            <p class="label">Total Fines</p>
                            <h2 class="value">Rs.2,000</h2>
                        </div>
                    </div>
                    <a href="#" class="view-all-link">View all &gt;</a>
                </div>
            </div>

            <div class="table-container">
                <div class="header-row">
                    <h3>Pending Payment</h3>
                    <button class="btn-outline">Make Payment</button>
                </div>
                <table class="custom-table">
                    <thead>
                        <tr>
                            <th>Bill For</th>
                            <th>Due Date</th>
                            <th>Amount</th>
                            <th>Reference ID</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong><span class="icon-small">🏠</span> Proper Tax Clearence</strong></td>
                            <td>11thJan,2025</td>
                            <td><strong>Rs.5,000</strong></td>
                            <td>PAY-2025-01400</td>
                            <td>
                                <button class="btn-pay">Pay Now</button>
                                <span class="dots">...</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>

            <div class="table-container">
                <div class="header-row">
                    <h3>Recent Fines</h3>
                </div>
                <table class="custom-table">
                    <thead>
                        <tr>
                            <th>Fine For</th>
                            <th>Issue Date</th>
                            <th>Amount</th>
                            <th>Status</th>
                            <th>Reference ID</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td><strong><span class="icon-small">🚦</span> Traffic Violation</strong></td>
                            <td>5thApr,2025</td>
                            <td><strong>5,500</strong></td>
                            <td><span class="badge-pending">Pending</span></td>
                            <td>FINE-2025-0234</td>
                            <td>
                                <button class="btn-details">View Details</button>
                                <span class="dots">...</span>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </main>
</body>
</html>