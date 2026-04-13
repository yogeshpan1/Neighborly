<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Poll Management - Neighborly</title>

    <!-- Link to our unified Admin CSS with cache buster -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css?v=<%= System.currentTimeMillis() %>">
    <style>
        .sub-header {
            display: flex;
            align-items: center;
            gap: 12px;
            font-size: 18px;
            font-weight: 700;
            color: #ffffff;
            margin-bottom: 24px;
            margin-top: 24px;
        }
        
        .pill-badge {
            font-size: 11px;
            padding: 4px 10px;
            background-color: #323639;
            border-radius: 12px;
            color: #CFD3D6;
            font-weight: 600;
        }

        .modal-header-danger {
            background-color: #7f1d1d;
            padding: 20px 24px;
            display: flex;
            align-items: center;
            gap: 12px;
            border-radius: 12px 12px 0 0;
        }
        
        .modal-header-danger h2 {
            color: white;
            font-size: 18px;
            font-weight: 600;
            margin: 0;
        }

        .btn-cancel-dark {
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
        .btn-cancel-dark:hover { background-color: #4a4d51; }

        .btn-danger-bright {
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
        .btn-danger-bright:hover { background-color: #e63535; }
    </style>
</head>
<body>

<!-- SIDEBAR COMPONENT -->
<jsp:include page="/components/admin-sidebar.jsp" />

<div class="main-content">

    <!-- TOPBAR COMPONENT -->
    <% request.setAttribute("pageTitle", "Admin Dashboard"); %>
    <jsp:include page="/components/admin-topbar.jsp" />

    <main class="dashboard-body">
        
        <!-- Wraps content to center it automatically -->
        <div class="poll-page-wrapper">
            
            <div class="page-header">
                <h1 class="page-title">Polls Management</h1>
                <button class="btn btn-primary" onclick="openCreateModal()">
                    <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg>
                    Create New Poll
                </button>
            </div>
            
            <hr class="divider">

            <!-- STAT CARDS (Now Centered and Spaced) -->
            <div class="polls-stat-container">
                <!-- Card 1 -->
                <div class="stat-card-poll">
                    <div class="stat-icon-wrap">
                        <div class="stat-bars bars-green">
                            <div class="bar h-50"></div><div class="bar h-80"></div><div class="bar h-100"></div><div class="bar h-60"></div>
                        </div>
                    </div>
                    <div class="stat-info">
                        <span class="stat-label">Total Polls</span>
                        <span class="stat-value">3</span>
                    </div>
                </div>

                <!-- Card 2 -->
                <div class="stat-card-poll">
                    <div class="stat-icon-wrap">
                        <div class="stat-bars bars-orange">
                            <div class="bar h-60"></div><div class="bar h-100"></div><div class="bar h-80"></div>
                        </div>
                    </div>
                    <div class="stat-info">
                        <span class="stat-label">Active Polls</span>
                        <span class="stat-value">2</span>
                    </div>
                </div>

                <!-- Card 3 -->
                <div class="stat-card-poll">
                    <div class="stat-icon-wrap">
                        <div class="stat-bars bars-blue">
                            <div class="bar h-70"></div><div class="bar h-40"></div><div class="bar h-100"></div>
                        </div>
                    </div>
                    <div class="stat-info">
                        <span class="stat-label">Total Votes</span>
                        <span class="stat-value">8</span>
                    </div>
                </div>
            </div>

            <hr class="divider">

            <div class="sub-header">
                Manage Polls
                <span class="pill-badge">Total: 3</span>
            </div>

            <!-- LIST OF POLLS (More spaced out and roomier) -->
            <div class="poll-list-container">
                
                <div class="poll-row">
                    <div class="poll-icon-box">
                        <div class="stat-bars bars-blue" style="height: 20px; gap: 3px;">
                            <div class="bar h-60" style="width: 4px;"></div>
                            <div class="bar h-100" style="width: 4px;"></div>
                            <div class="bar h-80" style="width: 4px;"></div>
                        </div>
                    </div>
                    <div class="poll-info">
                        <h4>Should the Singha Durbar be redeveloped as a National Heritage Site?</h4>
                        <p>Started 2 days ago &middot; 142 votes</p>
                    </div>
                    <div class="poll-actions">
                        <button class="btn btn-edit" onclick="openEditModal()">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
                            Edit
                        </button>
                        <button class="btn btn-delete" onclick="openDeleteModal('Should the Singha Durbar be redeveloped as a National Heritage Site?', '1')">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                            Delete
                        </button>
                    </div>
                </div>

                <div class="poll-row">
                    <div class="poll-icon-box">
                         <div class="stat-bars bars-blue" style="height: 20px; gap: 3px;">
                            <div class="bar h-60" style="width: 4px;"></div>
                            <div class="bar h-100" style="width: 4px;"></div>
                            <div class="bar h-80" style="width: 4px;"></div>
                        </div>
                    </div>
                    <div class="poll-info">
                        <h4>New Bike Lanes: Main St.</h4>
                        <p>Started 5 days ago &middot; 892 votes</p>
                    </div>
                    <div class="poll-actions">
                        <button class="btn btn-edit" onclick="openEditModal()">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
                            Edit
                        </button>
                        <button class="btn btn-delete" onclick="openDeleteModal('New Bike Lanes: Main St.', '2')">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                            Delete
                        </button>
                    </div>
                </div>

                <div class="poll-row">
                    <div class="poll-icon-box">
                         <div class="stat-bars bars-blue" style="height: 20px; gap: 3px;">
                            <div class="bar h-60" style="width: 4px;"></div>
                            <div class="bar h-100" style="width: 4px;"></div>
                            <div class="bar h-80" style="width: 4px;"></div>
                        </div>
                    </div>
                    <div class="poll-info">
                        <h4>Annual Winter Festival Location</h4>
                        <p>Started 12 hours ago &middot; 45 votes</p>
                    </div>
                    <div class="poll-actions">
                        <button class="btn btn-edit" onclick="openEditModal()">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
                            Edit
                        </button>
                        <button class="btn btn-delete" onclick="openDeleteModal('Annual Winter Festival Location', '3')">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                            Delete
                        </button>
                    </div>
                </div>

            </div>
        </div>
    </main>
</div>

<!-- ==========================================
     THE 'CREATE' MODAL OVERLAY
     ========================================== -->
<div class="modal-overlay" id="createPollModal">
    <div class="modal-box">
        <div class="modal-header">
            <h2 class="modal-title">Create New Poll</h2>
            <p class="modal-subtitle">Set up a new civic issue poll and define choices.</p>
        </div>
        
        <form action="<%= request.getContextPath() %>/createpoll" method="POST" id="createPollForm">
            <div class="modal-body">
                <div class="form-group">
                    <label class="form-label">Poll Title</label>
                    <input type="text" class="form-input" id="createPollTitle" name="title" placeholder="e.g., Should we install new bike lanes?">
                </div>
                
                <div class="form-group">
                    <label class="form-label">Brief Description</label>
                    <textarea class="form-input" id="createPollDesc" name="description" placeholder="Provide some context for the citizens..."></textarea>
                </div>

                <div class="form-group">
                    <label class="form-label">Poll Options</label>
                    <div class="options-list" id="createOptionsList">
                        <!-- Option 1 -->
                        <div class="option-item">
                            <span class="option-number">1</span>
                            <div class="option-input-wrap">
                                <input type="text" name="option_1" placeholder="First option (e.g., Yes)">
                                <button type="button" class="btn-icon-delete" onclick="this.parentElement.parentElement.remove(); renumberCreateOptions();">
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 6h18"></path><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                                </button>
                            </div>
                        </div>
                        <!-- Option 2 -->
                        <div class="option-item">
                            <span class="option-number">2</span>
                            <div class="option-input-wrap">
                                <input type="text" name="option_2" placeholder="Second option (e.g., No)">
                                <button type="button" class="btn-icon-delete" onclick="this.parentElement.parentElement.remove(); renumberCreateOptions();">
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 6h18"></path><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                                </button>
                            </div>
                        </div>
                    </div>
                    
                    <button type="button" class="btn-text-orange" onclick="addNewCreateOption()">
                        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg>
                        Add Option
                    </button>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn-ghost" onclick="closeCreateModal()">Cancel</button>
                <button type="submit" class="btn btn-primary">Create Poll</button>
            </div>
        </form>
    </div>
</div>

<!-- ==========================================
     THE 'DELETE' MODAL OVERLAY
     ========================================== -->
<div class="modal-overlay" id="deletePollModal">
    <div class="modal-box" style="padding: 0; max-width: 520px; overflow: hidden;">
        
        <div class="modal-header-danger">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="color: #ffbba6;">
                <path d="M10.29 3.86L1.82 18a2 2 0 0 0 1.71 3h16.94a2 2 0 0 0 1.71-3L13.71 3.86a2 2 0 0 0-3.42 0z"></path>
                <line x1="12" y1="9" x2="12" y2="13"></line>
                <line x1="12" y1="17" x2="12.01" y2="17"></line>
            </svg>
            <h2>Confirm Deletion</h2>
        </div>

        <form action="<%= request.getContextPath() %>/deletepoll" method="POST">
            <input type="hidden" name="pollId" id="deletePollId">
            
            <div class="modal-body" style="padding: 24px 28px;">
                <p style="color: #CFD3D6; font-size: 14px; margin-top: 0; margin-bottom: 24px; line-height: 1.5;">
                    You are about to permanently delete the poll: <br>
                    <strong id="deletePollTitle" style="color: #ffffff; font-weight: 700;">Poll Title</strong>. 
                    For transparency please define the reason for deletion.
                </p>

                <div class="form-group">
                    <label style="font-size: 11px; text-transform: uppercase; letter-spacing: 0.5px; color: #75787D; font-weight: 700; margin-bottom: 2px;">Reason for Deletion</label>
                    <textarea class="form-input" name="deletionReason" placeholder="Provide a detailed explanation for this deletion context." required style="min-height: 110px;"></textarea>
                </div>
            </div>

            <div class="modal-footer" style="padding: 18px 28px; border-top: 1px solid #323639; display: flex; justify-content: flex-end; gap: 14px;">
                <button type="button" class="btn-cancel-dark" onclick="closeDeleteModal()">Cancel</button>
                <button type="submit" class="btn-danger-bright">Confirm Deletion</button>
            </div>
        </form>
    </div>
</div>

<!-- ==========================================
     THE 'EDIT' MODAL OVERLAY (Hidden by default)
     ========================================== -->
<div class="modal-overlay" id="editPollModal">
    <div class="modal-box">
        <div class="modal-header">
            <h2 class="modal-title">Edit Poll</h2>
            <p class="modal-subtitle">Modify poll details and update available choices.</p>
        </div>
        
        <form action="<%= request.getContextPath() %>/updatepoll" method="POST" id="editPollForm">
            <!-- Hidden field for backend -->
            <input type="hidden" name="pollId" id="editPollId" value="1">

            <div class="modal-body">
                <div class="form-group">
                    <label class="form-label">Poll Title</label>
                    <input type="text" class="form-input" id="editPollTitle" name="title" value="Should the Singha Durbar be redeveloped as a National Heritage Site?">
                </div>
                
                <div class="form-group">
                    <label class="form-label">Brief Description</label>
                    <textarea class="form-input" id="editPollDesc" name="description">Should the Singha Durbar be redeveloped as a National Heritage Site?</textarea>
                </div>

                <div class="form-group">
                    <label class="form-label">Editable Options</label>
                    <div class="options-list" id="editOptionsList">
                        <!-- Option 1 -->
                        <div class="option-item">
                            <span class="option-number">1</span>
                            <div class="option-input-wrap">
                                <input type="text" name="option_1" value="Yes, preserve the heritage">
                                <button type="button" class="btn-icon-delete" onclick="this.parentElement.parentElement.remove(); renumberOptions();">
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M3 6h18"></path><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                                </button>
                            </div>
                        </div>
                        <!-- Option 2 -->
                        <div class="option-item">
                            <span class="option-number">2</span>
                            <div class="option-input-wrap">
                                <input type="text" name="option_2" value="No, leave it as it is">
                                <button type="button" class="btn-icon-delete" onclick="this.parentElement.parentElement.remove(); renumberOptions();">
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M3 6h18"></path><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                                </button>
                            </div>
                        </div>
                    </div>
                    
                    <button type="button" class="btn-text-orange" onclick="addNewOption()">
                        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><line x1="12" y1="5" x2="12" y2="19"></line><line x1="5" y1="12" x2="19" y2="12"></line></svg>
                        Add Option
                    </button>
                </div>
            </div>

            <div class="modal-footer">
                <button type="button" class="btn-ghost" onclick="closeEditModal()">Cancel</button>
                <button type="submit" class="btn btn-primary">Update Poll</button>
            </div>
        </form>
    </div>
</div>

<!-- ==========================================
     JAVASCRIPT FOR MODAL CONTROLS
     ========================================== -->
<script>
    const editModal = document.getElementById('editPollModal');
    const createModal = document.getElementById('createPollModal');
    const deleteModal = document.getElementById('deletePollModal');
    const deleteTitleSpan = document.getElementById('deletePollTitle');
    const deleteIdInput = document.getElementById('deletePollId');

    // --- EDIT MODAL LOGIC ---
    function openEditModal() { editModal.style.display = 'flex'; }
    function closeEditModal() { editModal.style.display = 'none'; }

    // --- CREATE MODAL LOGIC ---
    function openCreateModal() { createModal.style.display = 'flex'; }
    function closeCreateModal() { createModal.style.display = 'none'; }

    // --- DELETE MODAL LOGIC ---
    function openDeleteModal(pollTitle, pollId) {
        deleteTitleSpan.textContent = pollTitle;
        deleteIdInput.value = pollId;
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
        const items = document.querySelectorAll('#editOptionsList .option-item');
        items.forEach((item, index) => {
            item.querySelector('.option-number').textContent = index + 1;
            item.querySelector('input').name = 'option_' + (index + 1);
        });
    }

    // Adds a visual new option instantly in EDIT form
    function addNewOption() {
        const list = document.getElementById('editOptionsList');
        const nextNum = list.children.length + 1;
        const newOptionHTML = `
            <div class="option-item">
                <span class="option-number">${nextNum}</span>
                <div class="option-input-wrap">
                    <input type="text" name="option_${nextNum}" value="New option text..." onfocus="this.select()">
                    <button type="button" class="btn-icon-delete" onclick="this.parentElement.parentElement.remove(); renumberOptions();">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 6h18"></path><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                    </button>
                </div>
            </div>
        `;
        list.insertAdjacentHTML('beforeend', newOptionHTML);
    }

    // Helper to keep the 1, 2, 3 numbering correct when deleting options in CREATE form
    function renumberCreateOptions() {
        const items = document.querySelectorAll('#createOptionsList .option-item');
        items.forEach((item, index) => {
            item.querySelector('.option-number').textContent = index + 1;
            item.querySelector('input').name = 'option_' + (index + 1);
        });
    }

    // Adds a visual new option instantly in CREATE form
    function addNewCreateOption() {
        const list = document.getElementById('createOptionsList');
        const nextNum = list.children.length + 1;
        const newOptionHTML = `
            <div class="option-item">
                <span class="option-number">${nextNum}</span>
                <div class="option-input-wrap">
                    <input type="text" name="option_${nextNum}" placeholder="New option text...">
                    <button type="button" class="btn-icon-delete" onclick="this.parentElement.parentElement.remove(); renumberCreateOptions();">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 6h18"></path><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                    </button>
                </div>
            </div>
        `;
        list.insertAdjacentHTML('beforeend', newOptionHTML);
    }
</script>

</body>
</html>