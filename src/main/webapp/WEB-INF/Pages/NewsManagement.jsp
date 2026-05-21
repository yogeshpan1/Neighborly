<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>News Management - Neighborly</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/Admin-Side.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/CSS/NewsManagement.css">
</head>
<body>
	<input type="checkbox" id="sidebarToggle" class="sidebarToggleInput" />

	<!-- sidebar -->
	<jsp:include page="/Components/admin-sidebar.jsp" />

	<div class="mainContent">
		<!-- topbar -->
		<%
		request.setAttribute("pageTitle", "Admin Dashboard");
		%>
		<jsp:include page="/Components/admin-topbar.jsp" />

		<div class="dashboardBody">

			<!-- page header with create news button -->
			<div class="newsPageHeader">
				<div>
					<h1 class="newsPageTitle">News Management</h1>
				</div>
				<!-- opens create news modal -->
				<form action="${pageContext.request.contextPath}/newslist"
					method="POST">
					<input type="hidden" name="openCreateNews" value="true">
					<button type="submit" class="buttonCreateNews">+ Create
						News</button>
				</form>
			</div>

			<hr class="newsDivider">

			<!-- top 3 news preview cards -->
			<div class="newsPreviewGrid">
				<!-- first news card -->
				<c:if test="${not empty newsList[0]}">
					<div class="newsPreviewCard">
						<c:choose>
							<c:when test="${not empty newsList[0].newsImage}">
								<img class="newsPreviewImage"
									src="${pageContext.request.contextPath}/newsimage/${newsList[0].newsImage}"
									alt="News Image">
							</c:when>
							<c:otherwise>
								<div class="newsPreviewImage previewBlue"></div>
							</c:otherwise>
						</c:choose>
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
				<!-- second news card -->
				<c:if test="${not empty newsList[1]}">
					<div class="newsPreviewCard">
						<c:choose>
							<c:when test="${not empty newsList[1].newsImage}">
								<img class="newsPreviewImage"
									src="${pageContext.request.contextPath}/newsimage/${newsList[1].newsImage}"
									alt="News Image">
							</c:when>
							<c:otherwise>
								<div class="newsPreviewImage previewYellow"></div>
							</c:otherwise>
						</c:choose>
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
				<!-- third news card -->
				<c:if test="${not empty newsList[2]}">
					<div class="newsPreviewCard">
						<c:choose>
							<c:when test="${not empty newsList[2].newsImage}">
								<img class="newsPreviewImage"
									src="${pageContext.request.contextPath}/newsimage/${newsList[2].newsImage}"
									alt="News Image">
							</c:when>
							<c:otherwise>
								<div class="newsPreviewImage previewPink"></div>
							</c:otherwise>
						</c:choose>
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
		</div>

		<!-- full news list -->
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
						<div class="newsMetaRow">
							<!-- category badge -->
							<c:choose>
								<c:when test="${n.newsCategory == 'featured'}">
									<span class="newsCategoryBadge featured">Featured</span>
								</c:when>
								<c:otherwise>
									<span class="newsCategoryBadge normal">Normal</span>
								</c:otherwise>
							</c:choose>
							<p>${n.postedAt}</p>
						</div>
					</div>
					<div class="newsActions">
						<!-- edit button opens edit modal -->
						<form action="${pageContext.request.contextPath}/newslist"
							method="POST">
							<input type="hidden" name="editNewsId" value="${n.newsId}">
							<button type="submit" class="buttonNewsEdit">Edit</button>
						</form>
						<!-- delete button submits to deletenews -->
						<form action="${pageContext.request.contextPath}/deletenews"
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

	<!-- create news modal -->
	<div class="modalOverlay" id="createNewsModal"
		style="${not empty openCreateNews ? 'display:flex;' : ''}">

		<div class="modalBox"
			style="padding: 0; max-width: 560px; overflow: hidden;">

			<div class="modalHeaderCreate">
				<h2>Create News</h2>
				<p class="modalSubtitle">Write and publish a new news article.</p>
			</div>

			<!-- multipart form for image upload -->
			<form action="${pageContext.request.contextPath}/createnews"
				method="POST" enctype="multipart/form-data">

				<div class="modalBodyContent">

					<div class="newsFormGroup">
						<label class="newsFormLabel">Title</label>
						<input type="text" class="newsFormInput" name="newsTitle"
							placeholder="e.g. Ward Committee Approves..." required>
					</div>

					<div class="newsFormGroup">
						<label class="newsFormLabel">Image</label>
						<input type="file" class="newsFormInput" name="newsImage" accept="image/*">
					</div>

					<div class="newsFormGroup">
						<label class="newsFormLabel">Category</label>
						<select class="newsFormInput" name="newsCategory" required>
							<option value="normal">Normal</option>
							<option value="featured">Featured</option>
						</select>
					</div>

					<div class="newsFormGroup">
						<label class="newsFormLabel">Content</label>
						<textarea class="newsFormTextarea" name="newsContent"
							placeholder="Write your news article here..." required></textarea>
					</div>

					<!-- show error if validation fails -->
					<c:if test="${not empty errorMessage}">
						<p class="error-message">${errorMessage}</p>
					</c:if>

				</div>

				<div class="modalFooterActions">
					<a href="${pageContext.request.contextPath}/newslist"
						class="buttonModalCancel" style="text-decoration: none;">Cancel</a>
					<button type="submit" class="buttonPostNews">Post News</button>
				</div>
			</form>
		</div>
	</div>

	<!-- edit news modal -->
	<div class="modalOverlay" id="editNewsModal"
		style="${not empty editNews ? 'display:flex;' : ''}">

		<div class="modalBox"
			style="padding: 0; max-width: 560px; overflow: hidden;">

			<div class="modalHeaderEdit">
				<svg width="24" height="24" viewBox="0 0 24 24" fill="none"
					stroke="currentColor" stroke-width="2" stroke-linecap="round"
					stroke-linejoin="round" style="color: #93c5fd;">
			        <path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
			        <path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path>
			    </svg>
				<h2>Edit News</h2>
			</div>

			<!-- multipart form to allow image replacement -->
			<form action="${pageContext.request.contextPath}/updatenews"
				method="POST" enctype="m
