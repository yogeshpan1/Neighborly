<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document Management - Neighborly</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css">
</head>
<body>
    <!-- SIDEBAR component -->
    <jsp:include page="/components/admin-sidebar.jsp" />

    <div class="mainContent">
        <!-- TOPBAR component -->
        <% request.setAttribute("pageTitle", "Admin Dashboard"); %>
        <jsp:include page="/components/admin-topbar.jsp" />

        <div class="dashboardBody">

            <!-- PAGE HEADER -->
            <div class="docPageHeader">
                <h1 class="docPageTitle">Document Management</h1>
            </div>

            <!-- STAT CARDS -->
            <div class="statsFlex" style="margin-bottom: 24px;">
                <div class="statCard">
                    <div class="statIconWrap">
                        <div class="statBars barsGreen">
                            <div class="bar h40"></div><div class="bar h60"></div><div class="bar h80"></div><div class="bar h100"></div><div class="bar h60"></div>
                        </div>
                    </div>
                    <div class="statInfo">
                        <span class="statLabel">Total Documents</span>
                        <span class="statValue">10</span>
                    </div>
                </div>
                <div class="statCard">
                    <div class="statIconWrap">
                        <div class="statBars barsOrange">
                            <div class="bar h50"></div><div class="bar h80"></div><div class="bar h100"></div><div class="bar h60"></div>
                        </div>
                    </div>
                    <div class="statInfo">
                        <span class="statLabel">Verified Documents</span>
                        <span class="statValue">8</span>
                    </div>
                </div>
                <div class="statCard">
                    <div class="statIconWrap">
                        <div class="statBars barsBlue">
                            <div class="bar h70"></div><div class="bar h50"></div><div class="bar h100"></div>
                        </div>
                    </div>
                    <div class="statInfo">
                        <span class="statLabel">Pending Documents</span>
                        <span class="statValue">14</span>
                    </div>
                </div>
            </div>

            <hr class="docDivider">

            <!-- TWO COLUMN LAYOUT -->
            <div class="docTwoColumn">

                <!-- LEFT COLUMN -->
                <div class="docLeftColumn">

                    <!-- PENDING DOCUMENTS TABLE -->
                    <div class="docTableCard">
                        <h2 class="docTableTitle">Pending Documents</h2>
                        <table class="docTable">
                            <thead>
                                <tr>
                                    <th>Citizen</th>
                                    <th>Type</th>
                                    <th>Submitted</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Arjun Sharma</td>
                                    <td>Passports</td>
                                    <td>Apr 8</td>
                                    <td class="docActionCell">
                                        <button class="buttonDocAccept">Accept</button>
                                        <button class="buttonDocReject">Reject</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Priya Thapa</td>
                                    <td>License</td>
                                    <td>Apr 8</td>
                                    <td class="docActionCell">
                                        <button class="buttonDocAccept">Accept</button>
                                        <button class="buttonDocReject">Reject</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Rohan KC</td>
                                    <td>Passports</td>
                                    <td>Apr 7</td>
                                    <td class="docActionCell">
                                        <button class="buttonDocAccept" >Accept</button>
                                        <button class="buttonDocReject" >Reject</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                    <!-- VERIFIED DOCUMENTS TABLE -->
                    <div class="docTableCard">
                        <h2 class="docTableTitle">Verified Documents</h2>
                        <table class="docTable">
                            <thead>
                                <tr>
                                    <th>Citizen</th>
                                    <th>Type</th>
                                    <th>Submitted</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Yogesh Pant</td>
                                    <td>License</td>
                                    <td>Apr 8</td>
                                    <td class="docActionCell">
                                        <button class="buttonDocEdit">Edit</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>

                </div>

                <!-- RIGHT COLUMN -->
                <div class="docRightColumn">

                    <!-- FILTER CARD -->
                    <div class="docSideCard">
                        <h3 class="docSideCardTitle">Filter</h3>
                        <div class="docFilterRow">
                            <span class="docFilterLabel">Total documents</span>
                            <input type="checkbox" class="docCheckbox" id="filterTotal">
                        </div>
                        <div class="docFilterRow">
                            <span class="docFilterLabel">Pending verification</span>
                            <input type="checkbox" class="docCheckbox" id="filterPending">
                        </div>
                    </div>

                    <!-- ACTIVITY CARD -->
                    <div class="docSideCard">
                        <h3 class="docSideCardTitle">Activity</h3>
                        <div class="docActivityRow">
                            <p class="docActivityText">Admin-1 | Yogesh Pant License | 9h ago</p>
                            <a href="#" class="docActivityLink">View all</a>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </div>

</body>
</html>
