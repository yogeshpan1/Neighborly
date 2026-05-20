<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document Management - Neighborly</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/Admin-Side.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/DocumentManagement.css">
</head>
<body>
	<jsp:include page="/Components/admin-sidebar.jsp" />

	<div class="mainContent">
		<%
		request.setAttribute("pageTitle", "Admin Dashboard");
		%>
		<jsp:include page="/Components/admin-topbar.jsp" />

		<div class="dashboardBody">
			<div class="docPageHeader">
				<h1 class="docPageTitle">Document Management</h1>
			</div>

			<!-- STAT CARDS -->
			<div class="statsFlex" style="margin-bottom: 24px;">
				<div class="statCard">
					<div class="statIconWrap">
						<div class="statBars barsGreen">
							<div class="bar h40"></div>
							<div class="bar h60"></div>
							<div class="bar h80"></div>
							<div class="bar h100"></div>
							<div class="bar h60"></div>
						</div>
					</div>
					<div class="statInfo">
						<span class="statLabel">Total Documents</span> <span
							class="statValue">${totalDocuments}</span>
					</div>
				</div>
				<div class="statCard">
					<div class="statIconWrap">
						<div class="statBars barsOrange">
							<div class="bar h50"></div>
							<div class="bar h80"></div>
							<div class="bar h100"></div>
							<div class="bar h60"></div>
						</div>
					</div>
					<div class="statInfo">
						<span class="statLabel">Approved Documents</span> <span
							class="statValue">${approvedDocuments}</span>
					</div>
				</div>
				<div class="statCard">
					<div class="statIconWrap">
						<div class="statBars barsBlue">
							<div class="bar h70"></div>
							<div class="bar h50"></div>
							<div class="bar h100"></div>
						</div>
					</div>
					<div class="statInfo">
						<span class="statLabel">Pending Documents</span> <span
							class="statValue">${pendingDocuments}</span>
					</div>
				</div>
			</div>

			<hr class="docDivider">

			<!-- TWO COLUMN LAYOUT -->
			<div class="docTwoColumn">
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
							<c:forEach var="doc" items="${documents}">
								<c:if test="${doc.status == 'Pending'}">
									<tr>
										<td>${doc.firstName}${doc.lastName}</td>
										<td>${doc.documentType}</td>
										<td>${doc.submittedAt}</td>
										<td class="docActionCell">
											<form
												action="${pageContext.request.contextPath}/documentlist"
												method="GET" style="display: inline;">
												<input type="hidden" name="openDoc"
													value="${doc.documentId}">
												<button type="submit" class="buttonDocAccept">Accept</button>
											</form>
											<form
												action="${pageContext.request.contextPath}/documentlist"
												method="GET" style="display: inline;">
												<input type="hidden" name="deleteDoc"
													value="${doc.documentId}">
												<button type="submit" class="buttonDocReject">Reject</button>
											</form>
										</td>
									</tr>
								</c:if>
							</c:forEach>
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
							<c:forEach var="doc" items="${documents}">
								<c:if test="${doc.status == 'Approved'}">
									<tr>
										<td>${doc.firstName}${doc.lastName}</td>
										<td>${doc.documentType}</td>
										<td>${doc.submittedAt}</td>
										<td class="docActionCell">
											<form action="<%=request.getContextPath()%>/documentlist"
												method="GET">
												<input type="hidden" name="editDoc"
													value="${doc.documentId}">
												<button type="submit" class="buttonDocEdit">Edit</button>
											</form>
										</td>
									</tr>
								</c:if>
							</c:forEach>
						</tbody>
					</table>
				</div>

			</div>

		</div>
	</div>

	<div class="modalOverlay" id="acceptDocModal"
		style="${not empty viewDocument ? 'display:flex;' : ''}">
		<div class="modalBox">
			<div class="modalHeaderSuccess">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
					stroke="currentColor" stroke-width="2" stroke-linecap="round"
					stroke-linejoin="round" style="color: #6ee7b7;">
                <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path>
                <polyline points="22 4 12 14.01 9 11.01"></polyline>
            </svg>
				<h2>Confirm Approval</h2>
			</div>
			<form action="<%=request.getContextPath()%>/acceptdocument"
				method="POST">
				<input type="hidden" name="documentId"
					value="${viewDocument.documentId}">
				<div class="modalBodyContent">
					<div class="docFormGroup">
						<label class="docFormLabel">Full Name</label>
						<p style="color: #ffffff; font-size: 14px; margin: 0;">${viewDocument.firstName}
							${viewDocument.lastName}</p>
					</div>
					<div class="docFormGroup">
						<label class="docFormLabel">Date of Birth</label>
						<p style="color: #ffffff; font-size: 14px; margin: 0;">${viewDocument.dateOfBirth}</p>
					</div>
					<div class="docFormGroup">
						<label class="docFormLabel">Address</label>
						<p style="color: #ffffff; font-size: 14px; margin: 0;">${viewDocument.address}</p>
					</div>
					<div class="docFormGroup">
						<label class="docFormLabel">Phone</label>
						<p style="color: #ffffff; font-size: 14px; margin: 0;">${viewDocument.phone}</p>
					</div>
					<div class="docFormGroup">
						<label class="docFormLabel">Additional Info</label>
						<p style="color: #ffffff; font-size: 14px; margin: 0;">${viewDocument.additionalInfo}</p>
					</div>
				</div>
				<div class="modalFooterActions">
					<a href="<%=request.getContextPath()%>/documentlist"
						class="buttonModalCancel" style="text-decoration: none;">Cancel</a>
					<button type="submit" class="buttonModalAccept">Confirm
						Approval</button>
				</div>
			</form>
		</div>
	</div>

	<!-- REJECT MODAL -->
	<div class="modalOverlay" id="rejectDocModal"
		style="${not empty deleteDocument ? 'display:flex;' : ''}">
		<div class="modalBox">
			<div class="modalHeaderDanger">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
					stroke="currentColor" stroke-width="2" stroke-linecap="round"
					stroke-linejoin="round" style="color: #ffbba6;">
				<path
						d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"></path>
				<line x1="12" y1="9" x2="12" y2="13"></line>
				<line x1="12" y1="17" x2="12.01" y2="17"></line>
			</svg>
				<h2>Confirm Deletion</h2>
			</div>
			<form action="<%=request.getContextPath()%>/deletedocument"
				method="POST">
				<input type="hidden" name="documentId"
					value="${deleteDocument.documentId}">
				<div class="modalBodyContent">
					<p class="modalDescriptionText">
						You are about to delete the document for <strong
							style="color: #ffffff; font-weight: 700;">${deleteDocument.firstName}
							${deleteDocument.lastName}</strong> (${deleteDocument.documentType}). This
						action cannot be undone.
					</p>
				</div>
				<div class="modalFooterActions">
					<a href="<%=request.getContextPath()%>/documentlist"
						class="buttonModalCancel" style="text-decoration: none;">Cancel</a>
					<button type="submit" class="buttonModalDanger">Confirm
						Deletion</button>
				</div>
			</form>
		</div>
	</div>
	<!-- EDIT DOCUMENT MODAL -->
	<div class="modalOverlay" id="editDocModal">
		<div class="modalBox">
			<div class="modalHeaderEdit">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
					stroke="currentColor" stroke-width="2" stroke-linecap="round"
					stroke-linejoin="round" style="color: #93c5fd;">
                    <path
						d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
                    <path
						d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
                </svg>
				<h2>Edit Document</h2>
			</div>
			<form action="<%=request.getContextPath()%>/editDocument"
				method="POST">
				<input type="hidden" name="documentId" id="editDocId">
				<div class="modalBodyContent">
					<div class="docFormGroup">
						<label class="docFormLabel">Citizen Name</label> <input
							type="text" class="docFormInput" id="editDocCitizen"
							name="citizenName" required>
					</div>
					<div class="docFormGroup">
						<label class="docFormLabel">Document Type</label> <input
							type="text" class="docFormInput" id="editDocType"
							name="documentType" required>
					</div>
					<div class="docFormGroup">
						<label class="docFormLabel">Submitted Date</label> <input
							type="text" class="docFormInput" id="editDocDate"
							name="submittedDate" required>
					</div>
				</div>
				<div class="modalFooterActions">
					<a href="<%=request.getContextPath()%>/documentlist"
						class="buttonModalCancel" style="text-decoration: none;">Cancel</a>
					<button type="submit" class="buttonModalEdit">Save Changes</button>
				</div>
			</form>
		</div>
	</div>


</body>
</html>
