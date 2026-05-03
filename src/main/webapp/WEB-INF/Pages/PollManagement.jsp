<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Poll Management - Neighborly</title>

<!-- Link to Admin CSS-->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/Admin-Side.css?v=<%=System.currentTimeMillis()%>">
<style>
.subHeader {
	display: flex;
	align-items: center;
	gap: 12px;
	font-size: 18px;
	font-weight: 700;
	color: #ffffff;
	margin-bottom: 24px;
	margin-top: 24px;
}

.pillBadge {
	font-size: 11px;
	padding: 4px 10px;
	background-color: #323639;
	border-radius: 12px;
	color: #CFD3D6;
	font-weight: 600;
}

.modalHeaderDanger {
	background-color: #7f1d1d;
	padding: 20px 24px;
	display: flex;
	align-items: center;
	gap: 12px;
	border-radius: 12px 12px 0 0;
}

.modalHeaderDanger h2 {
	color: white;
	font-size: 18px;
	font-weight: 600;
	margin: 0;
}

.btnCancelDark {
	background-color: #323639;
	color: white;
	border: none;
	border-radius: 6px;
	padding: 10px 20px;
	font-weight: 600;
	font-size: 14px;
	cursor: pointer;
	transition: background-color 0.2s;
}

.btnCancelDark:hover {
	background-color: #4a4d51;
}

.btnDangerBright {
	background-color: #ff3b3b;
	color: white;
	border: none;
	border-radius: 6px;
	padding: 10px 20px;
	font-weight: 600;
	font-size: 14px;
	cursor: pointer;
	transition: background-color 0.2s;
	box-shadow: 0 4px 12px rgba(255, 59, 59, 0.3);
}

.btnDangerBright:hover {
	background-color: #e63535;
}
</style>
</head>
<body>

	<!-- SIDEBAR COMPONENT -->
	<jsp:include page="/components/admin-sidebar.jsp" />

	<div class="mainContent">

		<!-- TOPBAR COMPONENT -->
		<%
		request.setAttribute("pageTitle", "Admin Dashboard");
		%>
		<jsp:include page="/components/admin-topbar.jsp" />

		<main class="dashboardBody">

			<div class="pollPageWrapper">

				<div class="pageHeader">
					<h1 class="pageTitle">Polls Management</h1>
					<button class="btn btnPrimary" onclick="openCreateModal()">
						<svg width="18" height="18" viewBox="0 0 24 24" fill="none"
							stroke="currentColor" stroke-width="2" stroke-linecap="round"
							stroke-linejoin="round">
							<line x1="12" y1="5" x2="12" y2="19"></line>
							<line x1="5" y1="12" x2="19" y2="12"></line></svg>
						Create New Poll
					</button>
				</div>

				<hr class="divider">

				<div class="pollsStatContainer">
					<!-- Card 1 -->
					<div class="statCardPoll">
						<div class="statIconWrap">
							<div class="statBars barsGreen">
								<div class="bar h50"></div>
								<div class="bar h80"></div>
								<div class="bar h100"></div>
								<div class="bar h60"></div>
							</div>
						</div>
						<div class="statInfo">
							<span class="statLabel">Total Polls</span> <span
								class="statValue">${totalPolls}</span>
						</div>
					</div>

					<!-- Card 2 -->
					<div class="statCardPoll">
						<div class="statIconWrap">
							<div class="statBars barsOrange">
								<div class="bar h60"></div>
								<div class="bar h100"></div>
								<div class="bar h80"></div>
							</div>
						</div>
						<div class="statInfo">
							<span class="statLabel">Active Polls</span> <span
								class="statValue">${activePolls}</span>
						</div>
					</div>

					<!-- Card 3 -->
					<div class="statCardPoll">
						<div class="statIconWrap">
							<div class="statBars barsBlue">
								<div class="bar h70"></div>
								<div class="bar h40"></div>
								<div class="bar h100"></div>
							</div>
						</div>
						<div class="statInfo">
							<span class="statLabel">Total Votes</span> <span
								class="statValue">8</span>
						</div>
					</div>
				</div>

				<hr class="divider">

				<div class="subHeader">
					<span class="pillBadge">Total Polls: ${totalPolls}</span>
				</div>

				<!-- LIST OF POLLS -->
				<div class="pollListContainer">
					<c:forEach var="p" items="${polls}">
						<div class="pollRow">
							<div class="pollIconBox">
								<div class="statBars barsBlue" style="height: 20px; gap: 3px;">
									<div class="bar h60" style="width: 4px;"></div>
									<div class="bar h100" style="width: 4px;"></div>
									<div class="bar h80" style="width: 4px;"></div>
								</div>
							</div>
							<div class="pollInfo">
								<h4>
									<c:out value="${p.question}" />
								</h4>
								<p>Created ${p.createdAt}</p>
							</div>
							<div class="pollActions">
								<button class="btn btnEdit" onclick="openEditForm(this)"
									data-pollid="${p.pollId}"
									data-question="<c:out value='${p.question}'/>"
									data-description="<c:out value='${p.description}'/>"
									data-option1="<c:out value='${p.option1}'/>"
									data-option2="<c:out value='${p.option2}'/>">
									<svg width="14" height="14" viewBox="0 0 24 24" fill="none"
										stroke="currentColor" stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round">
										<path
											d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path>
										<path
											d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
									Edit
								</button>
								<button class="btn btnDelete" onclick="openDeletePoll(this)"
									data-deletePollId="${p.pollId}"
									data-question="<c:out value='${p.question}'/>">
									<svg width="14" height="14" viewBox="0 0 24 24" fill="none"
										stroke="currentColor" stroke-width="2" stroke-linecap="round"
										stroke-linejoin="round">
										<polyline points="3 6 5 6 21 6"></polyline>
										<path
											d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
									Delete
								</button>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</main>
	</div>

	<div class="modalOverlay" id="createPollModal">
		<div class="modalBox">
			<div class="modalHeader">
				<h2 class="modalTitle">Create New Poll</h2>
				<p class="modalSubtitle">Set up a new civic issue poll and
					define choices.</p>
			</div>

			<form action="<%=request.getContextPath()%>/createpoll" method="POST"
				id="createPollForm">
				<div class="modalBody">
					<div class="formGroup">
						<label class="formLabel">Poll Title</label> <input type="text"
							class="formInput" id="createPollTitle" name="title"
							placeholder="e.g., Should we install new bike lanes?">
					</div>

					<div class="formGroup">
						<label class="formLabel">Brief Description</label>
						<textarea class="formInput" id="createPollDesc" name="description"
							placeholder="Provide some context for the citizens..."></textarea>
					</div>

					<div class="formGroup">
						<label class="formLabel">Option 1</label> <input type="text"
							class="formInput" name="option_1" placeholder="e.g., Yes">
					</div>
					<div class="formGroup">
						<label class="formLabel">Option 2</label> <input type="text"
							class="formInput" name="option_2" placeholder="e.g., No">
					</div>
				</div>

				<div class="modalFooter">
					<button type="button" class="btnGhost" onclick="closeCreateModal()">Cancel</button>
					<button type="submit" class="btn btnPrimary">Create Poll</button>
				</div>
			</form>
		</div>
	</div>

	<!-- THE 'DELETE' MODAL OVERLAY-->
	<div class="modalOverlay" id="deletePollModal">
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

			<form action="<%=request.getContextPath()%>/deletepoll" method="POST">
				<input type="hidden" name="pollId" id="deletePollId">

				<div class="modalBody" style="padding: 24px 28px;">
					<p
						style="color: #CFD3D6; font-size: 14px; margin-top: 0; margin-bottom: 24px; line-height: 1.5;">
						You are about to permanently delete the poll. <strong
							id="deletePollTitle" style="color: #ffffff; font-weight: 700;">Poll
							Title</strong>. For transparency please define the reason for deletion.
					</p>

					<div class="formGroup">
						<label
							style="font-size: 11px; text-transform: uppercase; letter-spacing: 0.5px; color: #75787D; font-weight: 700; margin-bottom: 2px;">Reason
							for Deletion</label>
						<textarea class="formInput" name="deletionReason"
							placeholder="Provide a detailed explanation for this deletion context."
							required style="min-height: 110px;"></textarea>
					</div>
				</div>

				<div class="modalFooter"
					style="padding: 18px 28px; border-top: 1px solid #323639; display: flex; justify-content: flex-end; gap: 14px;">
					<button type="button" class="btnCancelDark"
						onclick="closeDeleteModal()">Cancel</button>
					<button type="submit" class="btnDangerBright">Confirm
						Deletion</button>
				</div>
			</form>
		</div>
	</div>

	<!-- THE 'EDIT' MODAL OVERLAY -->
	<div class="modalOverlay" id="editPollModal">
		<div class="modalBox">
			<div class="modalHeader">
				<h2 class="modalTitle">Edit Poll</h2>
				<p class="modalSubtitle">Modify poll details and update
					available choices.</p>
			</div>
			<form action="<%=request.getContextPath()%>/updatepoll" method="POST"
				id="editPollForm">
				<input type="hidden" name="pollId" id="editPollId">
				<div class="modalBody">
					<div class="formGroup">
						<label class="formLabel">Poll Title</label> <input type="text"
							class="formInput" id="editPollTitle" name="title">
					</div>
					<div class="formGroup">
						<label class="formLabel">Brief Description</label>
						<textarea class="formInput" id="editPollDesc" name="description"></textarea>
					</div>
					<div class="formGroup">
						<label class="formLabel">Option 1</label> <input type="text"
							class="formInput" id="editOption1" name="option_1"
							placeholder="Option 1">
					</div>
					<div class="formGroup">
						<label class="formLabel">Option 2</label> <input type="text"
							class="formInput" id="editOption2" name="option_2"
							placeholder="Option 2">
					</div>
				</div>
				<div class="modalFooter">
					<button type="button" class="btnGhost" onclick="closeEditModal()">Cancel</button>
					<button type="submit" class="btn btnPrimary">Update Poll</button>
				</div>
			</form>
		</div>
	</div>

	<!-- JAVASCRIPT FOR MODAL CONTROLS-->
	<script>
    const editModal = document.getElementById('editPollModal');
    const createModal = document.getElementById('createPollModal');
    const deleteModal = document.getElementById('deletePollModal');
    const deleteTitleSpan = document.getElementById('deletePollTitle');
    const deleteIdInput = document.getElementById('deletePollId');

    // --- EDIT MODAL LOGIC ---
     function openEditForm(btn) {
        document.getElementById('editPollId').value = btn.getAttribute('data-pollid');
        document.getElementById('editPollTitle').value = btn.getAttribute('data-question');
        document.getElementById('editPollDesc').value = btn.getAttribute('data-description');
        document.getElementById('editOption1').value = btn.getAttribute('data-option1') || '';
        document.getElementById('editOption2').value = btn.getAttribute('data-option2') || '';
        editModal.style.display = 'flex';
    }
    function closeEditModal() { editModal.style.display = 'none'; }

    // --- CREATE MODAL LOGIC ---
    function openCreateModal() { createModal.style.display = 'flex'; }
    function closeCreateModal() { createModal.style.display = 'none'; }

    // --- DELETE MODAL LOGIC ---
	   function openDeletePoll(btn) 
    {
	    deleteTitleSpan.textContent = btn.getAttribute('data-question') || 'this poll';
	    deleteIdInput.value = btn.getAttribute('data-deletepollid');
	    deleteModal.style.display = 'flex';
	}
	    function closeDeleteModal() {
        deleteModal.style.display = 'none';
        deleteModal.querySelector('textarea[name="deletionReason"]').value = '';
    }

    // Close modals if user clicks on the dark background outside the boxes
    window.onclick = function(event) {
        if (event.target === editModal) { closeEditModal(); }
        if (event.target === createModal) { closeCreateModal(); }
        if (event.target === deleteModal) { closeDeleteModal(); }
    }

    // Helper to keep the 1, 2, 3 numbering correct when deleting options in EDIT form
    function renumberOptions() {
        const items = document.querySelectorAll('#editOptionsList .optionItem');
        items.forEach((item, index) => {
            item.querySelector('.optionNumber').textContent = index + 1;
            item.querySelector('input').name = 'option_' + (index + 1);
        });
    }

    // Adds a visual new option instantly in EDIT form
    function addNewOption() {
        const list = document.getElementById('editOptionsList');
        const nextNum = list.children.length + 1;
        const newOptionHTML = `
            <div class="optionItem">
                <span class="optionNumber">${nextNum}</span>
                <div class="optionInputWrap">
                    <input type="text" name="option_${nextNum}" value="New option text..." onfocus="this.select()">
                    <button type="button" class="btnIconDelete" onclick="this.parentElement.parentElement.remove(); renumberOptions();">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 6h18"></path><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                    </button>
                </div>
            </div>
        `;
        list.insertAdjacentHTML('beforeend', newOptionHTML);
    }

    // Helper to keep the 1, 2, 3 numbering correct when deleting options in CREATE form
    function renumberCreateOptions() {
        const items = document.querySelectorAll('#createOptionsList .optionItem');
        items.forEach((item, index) => {
            item.querySelector('.optionNumber').textContent = index + 1;
            item.querySelector('input').name = 'option_' + (index + 1);
        });
    }

    // Adds a visual new option instantly in CREATE form
    function addNewCreateOption() {
        const list = document.getElementById('createOptionsList');
        const nextNum = list.children.length + 1;
        const newOptionHTML = `
            <div class="optionItem">
                <span class="optionNumber">${nextNum}</span>
                <div class="optionInputWrap">
                    <input type="text" name="option_${nextNum}" placeholder="New option text...">
                    <button type="button" class="btnIconDelete" onclick="this.parentElement.parentElement.remove(); renumberCreateOptions();">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 6h18"></path><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                    </button>
                </div>
            </div>
        `;
        list.insertAdjacentHTML('beforeend', newOptionHTML);
    }
</script>

</body>