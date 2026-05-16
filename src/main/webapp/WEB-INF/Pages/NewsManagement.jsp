<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>News Management - Neighborly</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/Admin-Side.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/NewsManagement.css">
</head>
<body>

	<!-- SIDEBAR component -->
	<jsp:include page="/components/admin-sidebar.jsp" />

	<div class="mainContent">
		<!-- TOPBAR component -->
		<%
		request.setAttribute("pageTitle", "Admin Dashboard");
		%>
		<jsp:include page="/components/admin-topbar.jsp" />

		<div class="dashboardBody">

			<!-- PAGE HEADER -->
			<div class="newsPageHeader">
				<div>
					<h1 class="newsPageTitle">News Management</h1>
				</div>
				<form action="<%=request.getContextPath()%>/newslist" method="POST">
					<input type="hidden" name="openCreateNews" value="true">
					<button type="submit" class="buttonCreateNews">+ Create
						News</button>
				</form>
			</div>

			<hr class="newsDivider">

			<!-- NEWS PREVIEW CARDS -->
			<div class="newsPreviewGrid">
				<c:if test="${not empty newsList[0]}">
					<div class="newsPreviewCard">
						<div class="newsPreviewImage previewBlue"></div>
						<div class="newsPreviewBody">
							<h3 class="newsPreviewTitle">
								<c:out value="${newsList[0].newsTitle}" />
							</h3>
							<p class="newsPreviewSnippet">
								<c:out value="${newsList[0].newsDescription}" />
							</p>
							<span class="newsPreviewTime">${newsList[0].postedAt}</span>
						</div>
					</div>
				</c:if>
				<c:if test="${not empty newsList[1]}">
					<div class="newsPreviewCard">
						<div class="newsPreviewImage previewYellow"></div>
						<div class="newsPreviewBody">
							<h3 class="newsPreviewTitle">
								<c:out value="${newsList[1].newsTitle}" />
							</h3>
							<p class="newsPreviewSnippet">
								<c:out value="${newsList[1].newsDescription}" />
							</p>
							<span class="newsPreviewTime">${newsList[1].postedAt}</span>
						</div>
					</div>
				</c:if>
				<c:if test="${not empty newsList[2]}">
					<div class="newsPreviewCard">
						<div class="newsPreviewImage previewPink"></div>
						<div class="newsPreviewBody">
							<h3 class="newsPreviewTitle">
								<c:out value="${newsList[2].newsTitle}" />
							</h3>
							<p class="newsPreviewSnippet">
								<c:out value="${newsList[2].newsDescription}" />
							</p>
							<span class="newsPreviewTime">${newsList[2].postedAt}</span>
						</div>
					</div>
				</c:if>
			</div>
			<!-- NEWS LIST SECTION -->
			<div class="newsListHeader">
				<h2 class="newsListTitle">News Application</h2>
				<span class="newsPillBadge">Total: ${totalNews} </span>
			</div>
			<div class="newsListContainer">
				<c:forEach var="n" items="${newsList}">
					<div class="newsRow">
						<div class="newsIconWrap">
							<svg width="22" height="22" viewBox="0 0 24 24" fill="none"
								stroke="#3b82f6" stroke-width="2" stroke-linecap="round"
								stroke-linejoin="round">
                    <path
									d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
                    <polyline points="14 2 14 8 20 8"></polyline>
                    <line x1="16" y1="13" x2="8" y2="13"></line>
                    <line x1="16" y1="17" x2="8" y2="17"></line>
                    <polyline points="10 9 9 9 8 9"></polyline>
                </svg>
						</div>
						<div class="newsInfo">
							<h4>
								<c:out value="${n.newsTitle}" />
							</h4>
							<p>${n.postedAt}</p>
						</div>
						<div class="newsActions">
							<form action="<%=request.getContextPath()%>/newslist"
								method="POST">
								<input type="hidden" name="editNewsId" value="${n.newsId}">
								<button type="submit" class="buttonNewsEdit">Edit</button>
							</form>
							<form action="<%=request.getContextPath()%>/deletenews"
								method="POST">
								<input type="hidden" name="newsId" value="${n.newsId}">
								<button type="submit" class="buttonNewsDelete">Delete</button>
							</form>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<!-- CREATE NEWS MODAL -->
	<div class="modalOverlay" id="createNewsModal"
		style="${not empty openCreateNews ? 'display:flex;' : ''}">

		<div class="modalBox"
			style="padding: 0; max-width: 560px; overflow: hidden;">

			<div class="modalHeaderCreate">
				<h2>Create News</h2>
				<p class="modalSubtitle">Write and publish a new news article.</p>
			</div>

			<form action="<%=request.getContextPath()%>/createnews" method="POST">

				<div class="modalBodyContent">

					<div class="newsFormGroup">

						<label class="newsFormLabel">Title</label> <input type="text"
							class="newsFormInput" name="newsTitle"
							placeholder="e.g. Ward Committee Approves..." required>
					</div>

					<div class="newsFormGroup">

						<label class="newsFormLabel">Content</label>
						<textarea class="newsFormTextarea" name="newsContent"
							placeholder="Write your news article here..." required></textarea>
					</div>

					<c:if test="${not empty errorMessage}">
						<p class="error-message">${errorMessage}</p>
					</c:if>

				</div>

				<div class="modalFooterActions">

					<a href="<%=request.getContextPath()%>/news"
						class="buttonModalCancel" style="text-decoration: none;">Cancel</a>

					<button type="submit" class="buttonPostNews">Post News</button>
				</div>
			</form>
		</div>
	</div>

	<!-- EDIT NEWS MODAL -->
	<div class="modalOverlay" id="editNewsModal"
		style="${not empty editNews ? 'display:flex;' : ''}">

		<div class="modalBox"
			style="padding: 0; max-width: 560px; overflow: hidden;">

			<div class="modalHeaderEdit">

				<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
					stroke="currentColor" stroke-width="2" stroke-linecap="round"
					stroke-linejoin="round" style="color: #93c5fd;">
			        
			        <path
						d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
			        
			        <path
						d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
			    </svg>

				<h2>Edit News</h2>


			</div>

			<form action="<%=request.getContextPath()%>/updatenews" method="POST">

				<input type="hidden" name="newsId" value="${editNews.newsId}">

				<div class="modalBodyContent">

					<div class="newsFormGroup">

						<label class="newsFormLabel">Title</label> <input type="text"
							class="newsFormInput" name="newsTitle"
							value="<c:out value='${editNews.newsTitle}'/>" required>

					</div>

					<div class="newsFormGroup">

						<label class="newsFormLabel">Content</label>

						<textarea class="newsFormTextarea" name="newsContent" required><c:out
								value="${editNews.newsDescription}" /></textarea>
					</div>
				</div>
				<div class="modalFooterActions">

					<a href="<%=request.getContextPath()%>/newslist"
						class="buttonModalCancel" style="text-decoration: none;">Cancel</a>
					<button type="submit" class="buttonModalSuccess">Save
						Changes</button>
				</div>
			</form>
		</div>
	</div>

	<!-- DELETE NEWS MODAL -->
	<div class="modalOverlay" id="deleteNewsModal"
		style="${not empty openDeleteNewsId ? 'display:flex;' : ''}">

		<div class="modalBox"
			style="padding: 0; max-width: 520px; overflow: hidden;">
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

			<form action="<%=request.getContextPath()%>/deletenews" method="POST">

				<input type="hidden" name="newsId" value="${openDeleteNewsId}">

				<div class="modalBodyContent">

					<p class="modalDescriptionText">

						You are about to permanently delete <strong
							style="color: #ffffff; font-weight: 700;">${deleteNewsTitle}</strong>.
						This action cannot be undone.
					</p>

					<div class="newsFormGroup">

						<label class="newsFormLabel">Reason for Deletion</label>

						<textarea class="newsFormTextarea" name="deleteReason"
							placeholder="Provide a reason for deleting this news..."
							style="min-height: 90px;" required>
						</textarea>

					</div>

				</div>

				<div class="modalFooterActions">

					<a href="<%=request.getContextPath()%>/newslist"
						class="buttonModalCancel" style="text-decoration: none;">Cancel</a>
					<button type="submit" class="buttonModalDanger">Confirm
						Delete</button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
