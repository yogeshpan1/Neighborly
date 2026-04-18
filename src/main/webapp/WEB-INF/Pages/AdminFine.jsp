<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Fine Management</title>
<link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/AdminFine.css">
<link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/Admin-Side.css">
</head>
<body>

<% request.setAttribute("pageTitle", "Fine Management"); %>
<jsp:include page="/components/admin-sidebar.jsp" />
<jsp:include page="/components/admin-topbar.jsp" />

<div class="main">

  <div class="header">
    <h1>Traffic Fine Management</h1>
    <p style = "padding-left: 5px; ">Issue and manage traffic fines for citizens.</p>
    <hr>
  </div>

  <div class="issue-stats">
    <div class="stat">
      <p>Total fines</p>
      <h2>142</h2>
    </div>
    <div class="stat">
      <p>Unpaid fines</p>
      <h2 class="unpaid">38</h2>
    </div>
    <div class="stat">
      <p>Paid fines</p>
      <h2 class="paid">104</h2>
    </div>
  </div>

  <section class="card">
    <div class="card-header">
      <h3>Issue new fine</h3>
    </div>
    <form>
      <div class="side">
        <div>
          <label>Citizen name or ID</label>
          <input type="text" class="form-design" placeholder="Search citizen...">
        </div>
        <div>
          <label>Violation type</label>
          <select class="form-design">
            <option>Select violation type</option>
            <option>Speeding</option>
            <option>No helmet</option>
            <option>No seatbelt</option>
            <option>Wrong parking</option>
            <option>No license</option>
            <option>Other</option>
          </select>
        </div>
      </div>
      <div class="side">
        <div>
          <label>Fine amount (NPR)</label>
          <input type="number" class="form-design" placeholder="e.g. 500">
        </div>
        <div>
          <label>Date of violation</label>
          <input type="date" class="form-design">
        </div>
      </div>
      <label>Reason / notes</label>
      <textarea class="form-design" placeholder="Describe the violation in detail..."></textarea>
      <button type="button" class="form-button">Issue fine</button>
    </form>
  </section>

  <section class="manage-listings">
    <div class="list-head">
      <h3>Unpaid fines</h3>
    </div>
    <div class="divider"></div>

    <div class="list-card">
      <div class="list-info">
        <h4>Arjan Regmi <span class="status-unpaid">Unpaid</span></h4>
        <div class="listing-meta">
          <span>NO LICENSE</span>
          <span>Apr 01, 2025</span>
          <span class="amount">NPR 500</span>
        </div>
      </div>
      <div class="list-actions">
        <button class="mark">Mark paid</button>
        <button class="delete">Delete</button>
      </div>
    </div>

    <div class="list-card">
      <div class="list-info">
        <h4>Rikesh Adhikari <span class="status-unpaid">Unpaid</span></h4>
        <div class="listing-meta">
          <span>WRONG PARKING</span>
          <span>Apr 05, 2025</span>
          <span class="amount">NPR 300</span>
        </div>
      </div>
      <div class="list-actions">
        <button class="mark">Mark paid</button>
        <button class="delete">Delete</button>
      </div>
    </div>

    <div class="list-card">
      <div class="list-info">
        <h4>Prayush Shrestha <span class="status-unpaid">Unpaid</span></h4>
        <div class="listing-meta">
          <span>NO HELMET</span>
          <span>Apr 07, 2025</span>
          <span class="amount">NPR 200</span>
        </div>
      </div>
      <div class="list-actions">
        <button class="mark">Mark paid</button>
        <button class="delete">Delete</button>
      </div>
    </div>
  </section>

  <section class="manage-listings">
    <div class="list-head">
      <h3>Paid fines</h3>
    </div>
    <div class="divider"></div>

    <div class="list-card">
      <div class="list-info">
        <h4>Yogesh Pant <span class="status-paid">Paid</span></h4>
        <div class="listing-meta">
          <span>NO HELMET</span>
          <span>Apr 04, 2025</span>
          <span class="amount">NPR 200</span>
        </div>
      </div>
      <div class="list-actions">
        <button class="delete">Delete</button>
      </div>
    </div>

    <div class="list-card">
      <div class="list-info">
        <h4>Suman Shrestha <span class="status-paid">Paid</span></h4>
        <div class="listing-meta">
          <span>SPEEDING</span>
          <span>Apr 06, 2025</span>
          <span class="amount">NPR 1,000</span>
        </div>
      </div>
      <div class="list-actions">
        <button class="delete">Delete</button>
      </div>
    </div>

    <div class="list-card">
      <div class="list-info">
        <h4>Aashish Karki <span class="status-paid">Paid</span></h4>
        <div class="listing-meta">
          <span>NO LICENSE</span>
          <span>Apr 08, 2025</span>
          <span class="amount">NPR 500</span>
        </div>
      </div>
      <div class="list-actions">
        <button class="delete">Delete</button>
      </div>
    </div>
  </section>

</div>
</body>
</html>