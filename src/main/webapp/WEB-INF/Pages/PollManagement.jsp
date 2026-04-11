<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Poll Management - Neighborly</title>

    <!-- Link to our unified Admin CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css">
    
    <style>
        /* Centers everything in a nice readable column instead of stretching on huge monitors */
        .poll-page-wrapper {
            max-width: 1040px;
            margin: 0 auto; 
            padding-top: 16px;
        }

        .page-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 24px;
        }
        
        .page-title {
            font-size: 32px;
            font-weight: 700;
            color: #ffffff;
            margin: 0;
        }
        
        .divider {
            border: 0;
            height: 1px;
            background-color: #323639;
            margin-bottom: 40px;
            width: 100%;
        }
        
        /* 
           FIX 1: STAT CARDS CENTERED
           Added 'justify-content: center' and increased the gap 
           so they command the center of the screen beautifully!
        */
        .polls-stat-container {
            display: flex;
            gap: 24px; 
            margin-bottom: 40px;
        }
        
        .stat-card-poll {
            flex: 1; /* Automatically stretches to fill the container, aligning perfectly with poll rows */
            background-color: #212224;
            border: 1px solid #323639;
            border-radius: 10px;
            padding: 24px 32px;
            display: flex;
            align-items: center;
            gap: 24px;
            height: 130px;
            transition: border-color 0.2s, transform 0.2s;
        }

        .stat-card-poll:hover {
            border-color: #CFD3D6;
            transform: translateY(-2px);
        }
        
        /* 
           FIX 2: MORE SPACING IN ROWS
           Increased the gap between rows and padding inside the rows 
        */
        .poll-list-container {
            display: flex;
            flex-direction: column;
            gap: 24px; /* Added more space between individual polls */
        }
        
        .poll-row {
            background-color: #212224;
            border: 1px solid #323639;
            border-radius: 8px;
            padding: 24px 32px; /* Made the rows taller and roomier inside */
            display: flex;
            align-items: center;
            gap: 28px;
            transition: border-color 0.2s, transform 0.2s;
        }
        
        .poll-row:hover {
            border-color: #75787D;
            transform: translateY(-2px);
            box-shadow: 0 4px 12px rgba(0,0,0,0.2); /* Added subtle shadow on hover */
        }
        
        .poll-info {
            flex: 1;
        }
        
        .poll-info h4 {
            font-size: 17px;
            font-weight: 600;
            color: #ffffff;
            margin-bottom: 8px;
        }
        
        .poll-info p {
            font-size: 14px;
            color: #75787D;
            margin: 0;
        }
        
        .poll-actions {
            display: flex;
            gap: 16px; /* Space between buttons */
        }
        
        .btn {
            display: flex;
            align-items: center;
            gap: 8px;
            padding: 10px 22px;
            border: none;
            border-radius: 6px;
            font-size: 13px;
            font-weight: 600;
            cursor: pointer;
            transition: opacity 0.2s, transform 0.1s;
        }
        
        .btn:hover {
            opacity: 0.9;
        }

        .btn:active {
            transform: scale(0.97);
        }
        
        .btn-edit {
            background-color: #323639;
            color: #ffffff;
        }
        
        .btn-delete {
            background-color: #7f1d1d;
            color: #ffffff;
            border: 1px solid #991b1b;
        }

        .btn-primary {
            background-color: #D35400;
            color: #ffffff;
            padding: 12px 24px;
            font-size: 14px;
            box-shadow: 0 4px 12px rgba(211, 84, 0, 0.3);
            transition: all 0.2s;
        }

        .btn-primary:hover {
            background-color: #e65c00;
            transform: translateY(-2px);
            box-shadow: 0 6px 16px rgba(211, 84, 0, 0.4);
            opacity: 1; /* override default btn opacity */
        }

        /* --- EDIT POLL MODAL STYLES --- */
        .modal-overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100vw;
            height: 100vh;
            background-color: rgba(0, 0, 0, 0.7); /* Standard dark overlay as requested (no blur) */
            display: none; /* hidden by default */
            align-items: center;
            justify-content: center;
            z-index: 1000;
        }

        .modal-box {
            background-color: #212224;
            border: 1px solid #323639;
            border-radius: 12px;
            width: 100%;
            max-width: 580px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.5);
            display: flex;
            flex-direction: column;
        }

        .modal-box * {
            box-sizing: border-box; /* Ensures padding doesn't stretch inputs past 100% */
        }

        .modal-header {
            padding: 24px 32px 20px 32px;
            border-bottom: 1px solid #323639;
        }

        .modal-title {
            font-size: 22px;
            font-weight: 700;
            color: #D35400; /* Orange title matching Figma */
            margin: 0 0 4px 0;
        }

        .modal-subtitle {
            font-size: 13px;
            color: #75787D;
            margin: 0;
        }

        .modal-body {
            padding: 24px 32px;
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .form-group {
            display: flex;
            flex-direction: column;
            gap: 8px;
        }

        .form-label {
            font-size: 13px;
            font-weight: 600;
            color: #CFD3D6;
        }

        .form-input {
            background-color: #13171A;
            border: 1px solid #323639;
            color: #ffffff;
            border-radius: 6px;
            padding: 12px 16px;
            font-size: 14px;
            width: 100%;
            outline: none;
            transition: border-color 0.2s;
        }

        .form-input:focus {
            border-color: #D35400;
        }

        textarea.form-input {
            resize: vertical;
            min-height: 80px;
            font-family: inherit;
        }

        /* Dynamic Options List in Modal */
        .options-list {
            display: flex;
            flex-direction: column;
            gap: 12px;
        }

        .option-item {
            display: flex;
            align-items: center;
            gap: 12px;
        }

        .option-number {
            font-size: 13px;
            color: #75787D;
            font-weight: 600;
            width: 16px;
        }

        .option-input-wrap {
            flex: 1;
            display: flex;
            background-color: #13171A;
            border: 1px solid #323639;
            border-radius: 6px;
            overflow: hidden;
        }

        .option-input-wrap input {
            flex: 1;
            background: transparent;
            border: none;
            color: #ffffff;
            padding: 12px 16px;
            font-size: 14px;
            outline: none;
        }

        .btn-icon-delete {
            background: transparent;
            border: none;
            color: #7f1d1d;
            cursor: pointer;
            padding: 0 16px;
            display: flex;
            align-items: center;
            justify-content: center;
            transition: color 0.2s;
        }

        .btn-icon-delete:hover {
            color: #ef4444;
        }

        .btn-text-orange {
            background: transparent;
            border: none;
            color: #D35400;
            font-size: 13px;
            font-weight: 600;
            cursor: pointer;
            display: inline-flex;
            align-items: center;
            gap: 6px;
            padding: 4px 0;
            align-self: flex-start;
        }

        .btn-text-orange:hover {
            color: #e65c00;
        }

        .modal-footer {
            padding: 20px 32px 24px 32px;
            border-top: 1px solid #323639;
            display: flex;
            justify-content: flex-end;
            gap: 16px;
            align-items: center;
        }

        .btn-ghost {
            background: transparent;
            border: none;
            color: #CFD3D6;
            font-weight: 600;
            font-size: 14px;
            cursor: pointer;
            padding: 10px 16px;
        }

        .btn-ghost:hover {
            color: #ffffff;
        }
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

            <!-- STAT CARDS -->
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

            <!-- LIST OF POLLS -->
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
                        <button class="btn btn-edit">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
                            Edit
                        </button>
                        <button class="btn btn-delete">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                            Delete
                        </button>
                    </div>
                </div>

                <div class="poll-row">
                    <div class="poll-info">
                        <h4>New Bike Lanes: Main St.</h4>
                        <p>Started 5 days ago &middot; 892 votes</p>
                    </div>
                    <div class="poll-actions">
                        <button class="btn btn-edit">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
                            Edit
                        </button>
                        <button class="btn btn-delete">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="3 6 5 6 21 6"></polyline><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                            Delete
                        </button>
                    </div>
                </div>

                <div class="poll-row">
                    <div class="poll-info">
                        <h4>Annual Winter Festival Location</h4>
                        <p>Started 12 hours ago &middot; 45 votes</p>
                    </div>
                    <div class="poll-actions">
                        <button class="btn btn-edit">
                            <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"></path><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"></path></svg>
                            Edit
                        </button>
                        <button class="btn btn-delete">
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
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M3 6h18"></path><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                                </button>
                            </div>
                        </div>
                        <!-- Option 2 -->
                        <div class="option-item">
                            <span class="option-number">2</span>
                            <div class="option-input-wrap">
                                <input type="text" name="option_2" placeholder="Second option (e.g., No)">
                                <button type="button" class="btn-icon-delete" onclick="this.parentElement.parentElement.remove(); renumberCreateOptions();">
                                    <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M3 6h18"></path><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
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
     THE 'EDIT' MODAL OVERLAY (Hidden by default)
     ========================================== -->
<div class="modal-overlay" id="editPollModal">
    <div class="modal-box">
        <div class="modal-header">
            <h2 class="modal-title">Edit Poll</h2>
            <p class="modal-subtitle">Modify poll details and update available choices.</p>
        </div>
        
        <form action="<%= request.getContextPath() %>/updatepoll" method="POST" id="editPollForm">
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

<!-- JAVASCRIPT FOR MODAL CONTROLS -->
<script>
    const editModal = document.getElementById('editPollModal');
    const createModal = document.getElementById('createPollModal');

    function openEditModal() { editModal.style.display = 'flex'; }
    function closeEditModal() { editModal.style.display = 'none'; }

    function openCreateModal() { createModal.style.display = 'flex'; }
    function closeCreateModal() { createModal.style.display = 'none'; }

    window.onclick = function(event) {
        if (event.target === editModal) { closeEditModal(); }
        if (event.target === createModal) { closeCreateModal(); }
    }

    document.querySelectorAll('.btn-edit').forEach(btn => {
        btn.onclick = function() { openEditModal(); }
    });

    function renumberOptions() {
        const items = document.querySelectorAll('#editOptionsList .option-item');
        items.forEach((item, index) => {
            item.querySelector('.option-number').textContent = index + 1;
            item.querySelector('input').name = 'option_' + (index + 1);
        });
    }

    function addNewOption() {
        const list = document.getElementById('editOptionsList');
        const nextNum = list.children.length + 1;
        const newHTML = `
            <div class="option-item">
                <span class="option-number">${nextNum}</span>
                <div class="option-input-wrap">
                    <input type="text" name="option_${nextNum}" value="New option text...">
                    <button type="button" class="btn-icon-delete" onclick="this.parentElement.parentElement.remove(); renumberOptions();">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M3 6h18"></path><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                    </button>
                </div>
            </div>`;
        list.insertAdjacentHTML('beforeend', newHTML);
    }

    function renumberCreateOptions() {
        const items = document.querySelectorAll('#createOptionsList .option-item');
        items.forEach((item, index) => {
            item.querySelector('.option-number').textContent = index + 1;
            item.querySelector('input').name = 'option_' + (index + 1);
        });
    }

    function addNewCreateOption() {
        const list = document.getElementById('createOptionsList');
        const nextNum = list.children.length + 1;
        const newHTML = `
            <div class="option-item">
                <span class="option-number">${nextNum}</span>
                <div class="option-input-wrap">
                    <input type="text" name="option_${nextNum}" placeholder="New option text...">
                    <button type="button" class="btn-icon-delete" onclick="this.parentElement.parentElement.remove(); renumberCreateOptions();">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M3 6h18"></path><path d="M19 6v14a2 2 0 0 1-2 2H7a2 2 0 0 1-2-2V6m3 0V4a2 2 0 0 1 2-2h4a2 2 0 0 1 2 2v2"></path></svg>
                    </button>
                </div>
            </div>`;
        list.insertAdjacentHTML('beforeend', newHTML);
    }
</script>

</body>
</html>
