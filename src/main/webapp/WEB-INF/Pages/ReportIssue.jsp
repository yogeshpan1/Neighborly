<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Issue Management - Neighborly</title>
   </head>
<body>

    <div class="mainContent">


        <div class="dashboardBody">
            <div class="issuePageWrapper">
                
                <!-- Header -->
                <div class="issuePageHeader">
                    <h1 class="issuePageTitle">Issue Management</h1>
                    <p class="issuePageSubtitle">Manage community raised Issues</p>
                </div>

                <hr class="issueDivider">

                <!-- Stats Row -->
                <div class="issueStatsContainer">
                    <div class="issueStatCard">
                        <div class="statIconWrap">
                            <div class="statBars barsGreen">
                                <div class="bar h50"></div><div class="bar h80"></div><div class="bar h100"></div><div class="bar h60"></div>
                            </div>
                        </div>
                        <div class="statInfo" style="align-items: flex-start; text-align: left;">
                            <span class="statLabel">Total Posts</span>
                            <span class="statValue">3</span>
                        </div>
                    </div>

                    <div class="issueStatCard">
                        <div class="statIconWrap">
                            <div class="statBars barsOrange">
                                <div class="bar h60"></div><div class="bar h100"></div><div class="bar h80"></div>
                            </div>
                        </div>
                        <div class="statInfo" style="align-items: flex-start; text-align: left;">
                            <span class="statLabel">Resolved Posts</span>
                            <span class="statValue" style="color: #D35400;">8</span>
                            <span class="statTrend green" style="margin-top: 4px;">Excellent</span>
                        </div>
                    </div>

                    <div class="issueStatCard">
                        <div class="statIconWrap">
                            <div class="statBars barsBlue">
                                <div class="bar h70"></div><div class="bar h100"></div><div class="bar h50"></div>
                            </div>
                        </div>
                        <div class="statInfo" style="align-items: flex-start; text-align: left;">
                            <span class="statLabel">On Progress Posts</span>
                            <span class="statValue" style="color: #3b82f6;">14</span>
                            <span class="statTrend orange" style="margin-top: 4px;">In Progress</span>
                        </div>
                    </div>

                    <div class="issueStatCard">
                        <div class="statIconWrap">
                            <div class="statBars barsYellow">
                                <div class="bar h100"></div><div class="bar h60"></div>
                            </div>
                        </div>
                        <div class="statInfo" style="align-items: flex-start; text-align: left;">
                            <span class="statLabel">Pending Posts</span>
                            <span class="statValue" style="color: #D32F2F;">3</span>
                            <span class="statTrend orange" style="margin-top: 4px;">On track</span>
                        </div>
                    </div>
                </div>
                
                <h2 class="sectionTitle">Manage Issues</h2>

                <div class="issueList">

                    <div class="issueRow">
                        <div class="issueAvatar"></div>
                        <div class="issueDetails">
                            <div class="issueMeta">
                                <span class="reporterName">Prayush Shrestha</span>
                                <span class="metaDivider">|</span>
                                <span class="issueTitle">Issue with Light</span>
                            </div>
                            <p class="submittedTime">Submitted 2 days ago</p>
                        </div>
                        <span class="statusBadge completed">Completed</span>
                </div>

                    <div class="issueRow">
                        <div class="issueAvatar">
                        <div class="issueDetails">
                            <div class="issueMeta">
                                <span class="reporterName">Rikesh Adhikari</span>
      							</div>
                            <p class="submittedTime">Submitted 2 days ago</p>
                        </div>
                        <span class="statusBadge inProgress">In Progress</span>
                       </div>

                    <div class="issueRow">
                        <div class="issueAvatar">
                            </div>
                        <div class="issueDetails">
                            <div class="issueMeta">
                                <span class="reporterName">Yogesh Pant</span>
                                <span class="metaDivider">|</span>
                                <span class="issueTitle">Toka Energy Crisis</span>
                            </div>
                            <p class="submittedTime">Submitted 2 days ago</p>
                        </div>
                        <span class="statusBadge pending">Pending</span>
                         </div>

                    <div class="issueRow">
                        <div class="issueAvatar">
                           </div>
                        <div class="issueDetails">
                            <div class="issueMeta">
                                <span class="reporterName">Arjan Regmi</span>
                                <span class="metaDivider">|</span>
                                <span class="issueTitle">Shankamul Thieft Status</span>
                            </div>
                            <p class="submittedTime">Submitted 2 days ago</p>
                        </div>
                        <span class="statusBadge completed">Completed</span>
                        </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
