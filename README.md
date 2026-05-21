<p align="center">
  <img src="src/main/webapp/Images/Logo.png" alt="Neighborly Logo" width="120"/>
</p>

<h1 align="center">Neighborly</h1>

<p align="center">
  A full-stack citizen portal web application built as a group project for the <b>Advanced Programming and Technologies (CS5054NI)</b> module.
</p>

<p align="center">
  <a href="#">🏠 Home</a> •
  <a href="#">📋 Feed</a> •
  <a href="#">📰 News</a> •
  <a href="#">🗳️ Polls</a> •
  <a href="#">🔔 Notices</a> •
  <a href="#">⚠️ Report Issue</a> •
  <a href="#">👤 About Us</a>
</p>

---

## ✨ Features

### 👨‍💼 Citizen Side
- 🔐 **User Authentication** – Register, Login with encrypted passwords, Remember Me via cookies
- 🏠 **Home Dashboard** – Service shortcuts, pending fines overview, application status, community polls
- 📋 **Community Feed** – Post updates, share thoughts, upvote and save community posts
- 📰 **News Page** – Stay informed with featured and regular news articles
- 🗳️ **Polls** – Vote on active community polls, view live vote counts
- 🔔 **Notices** – Browse admin-published notices with relative timestamps
- 📁 **Document Vault** – View official documents linked to your account
- 💳 **Payments & Fines** – View payment history and outstanding fines
- ⚠️ **Report Issues** – Submit community issues with optional photo evidence
- 📝 **Applications** – Apply for civic documents and track application status
- 👤 **Profile & Edit Profile** – View and update personal account details
- 📞 **Contact Us** – Send enquiries directly to administrators

### 🛠️ Admin Side
- 📊 **Admin Dashboard** – Live counts of citizens, issues, news, notices, and polls
- 👥 **Citizen Management** – View, suspend, and unsuspend citizen accounts
- ⚖️ **Fine Management** – Issue, mark paid, and delete fines
- 📰 **News Management** – Create, edit, and delete news articles
- 🔔 **Notice Management** – Publish and manage system notices
- 🗳️ **Poll Management** – Create, update, and deactivate polls
- 📁 **Document Management** – Issue and manage citizen documents
- ⚠️ **Issue Management** – Review reported issues and update their status
- 📩 **Contact Management** – View and delete citizen enquiries

---

## 🚀 Tech Stack

| Layer | Technology |
|---|---|
| **Frontend** | JSP, HTML, CSS (Flexbox, Media Queries) |
| **Backend** | Java, Jakarta Servlets, MVC Architecture |
| **Database** | MySQL (via XAMPP) |
| **Connectivity** | JDBC (MySQL Connector/J) |
| **Server** | Apache Tomcat 10 |
| **Build Tool** | Maven |
| **Security** | BCrypt password hashing, Session management, Filter-based auth |
| **Version Control** | Git & GitHub |

---

## 📂 Project Structure

<pre>
Neighborly/
├── src/main/java/com/Neighborly/
│   ├── controller/        # Servlets (one per feature)
│   ├── dao/               # Data Access Objects
│   ├── model/             # Entity classes
│   ├── service/           # Business logic layer
│   ├── filter/            # Authentication & Guest filters
│   └── utils/             # DBconfig, PasswordUtil, SessionUtil, CookieUtil, FileUploadUtil
├── src/main/webapp/
│   ├── WEB-INF/Pages/     # JSP views
│   ├── Components/        # Reusable JSP includes (sidebar, navbar, topbar)
│   ├── CSS/               # Stylesheets per page
│   └── Images/            # Static assets
└── pom.xml
</pre>

---

## ⚙️ Installation & Setup

1. **Clone this repository**
```bash
   git clone https://github.com/yogeshpan1/Neighborly.git
   cd Neighborly
```

2. **Set up the database**
   - Start XAMPP and ensure MySQL is running on port 3306
   - Import the SQL schema file into phpMyAdmin to create the Neighborly database

3. **Add MySQL Connector/J**
   - Download the MySQL Connector/J JAR from https://dev.mysql.com/downloads/connector/j/
   - Add the JAR to the project build path and copy it to `src/main/webapp/WEB-INF/lib/`

4. **Configure the database connection**
   - Open `src/main/java/com/Neighborly/utils/DBconfig.java`
   - Update the URL, username, and password to match your XAMPP MySQL setup

5. **Deploy to Apache Tomcat**
   - Open the project in Eclipse as a Dynamic Web Module
   - Add a Tomcat 10 server via Window > Preferences > Server > Runtime Environments
   - Right-click the project → Run As → Run on Server
   - Access the app at `http://localhost:8080/Neighborly`

---

## 📸 Screenshots

<p align="center">
  <img src="src/main/webapp/Images/readme/home.png" alt="Home Page" width="600"/>
</p>
<p align="center">
  <img src="src/main/webapp/Images/readme/feed.png" alt="Feed Page" width="600"/>
</p>
<p align="center">
  <img src="src/main/webapp/Images/readme/admin.png" alt="Admin Dashboard" width="600"/>
</p>
<p align="center">
  <img src="src/main/webapp/Images/readme/polls.png" alt="Polls Page" width="600"/>
</p>
<p align="center">
  <img src="src/main/webapp/Images/readme/notices.png" alt="Notices Page" width="600"/>
</p>

---

## 👥 Team Members

| Name | Role & Contributions |
|---|---|
| Yogesh Pant | Team Lead, Poll Management, Notice Management, Document Management, Citizen Management, About Us, Sidebar |
| Prayush Shrestha | Home Page, Feed Page, Payment & Fines, Profile, Edit Profile, Document Vault, Notices (citizen side) |
| Arjan Regmi | Authentication (Login, Register, Session, Filter, Cookies), Admin Dashboard, Fine Management, News Management, Issue Management, Contact Management (admin) |
| Rikesh Adhikari | News Page, Polls (citizen side), Report Issue, Application Page, Contact Us (citizen side) |

---

## 🎯 Project Goals

- Build a fully functional full-stack web application using Java EE technologies
- Apply the MVC architectural pattern in a real-world project
- Implement role-based access control with admin and citizen user roles
- Practice team-based development using Git branching and GitHub collaboration
- Gain practical experience with database design, JDBC, session management, and server-side validation

---

## 📜 License

This project is for educational purposes only — submitted as coursework for CS5054NI at Islington College (London Metropolitan University).
