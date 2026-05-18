<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Portfolio | Neighborly</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/Portfolio.css">
</head>
<body>

    <main class="portfolioContainer">
        
        <div class="mainLayout">
            
            <!-- Sidebar (Avatar & Contacts) -->
            <aside class="sidebar">
                <!-- Go Back Button -->
                <div class="backBtnBox">
                    <a href="${pageContext.request.contextPath}/aboutus" class="backBtn">
                        <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                            <line x1="19" y1="12" x2="5" y2="12"></line>
                            <polyline points="12 19 5 12 12 5"></polyline>
                        </svg>
                        Back to Team
                    </a>
                </div>

                <div class="avatarBox">
                    <img id="avatarImg" src="" alt="Photo" class="avatarImg">
                </div>
                <h1 id="memberName" class="memberName"></h1>
                <div class="memberRole">Student</div>
                
                <div class="separator"></div>
                
                <ul class="contactList">
                    <li class="contactItem">
                        <div class="contactIcon">E</div>
                        <div>
                            <div class="contactLabel">Email</div>
                            <div id="memberEmail" class="contactValue"></div>
                        </div>
                    </li>
                    <li class="contactItem">
                        <div class="contactIcon">P</div>
                        <div>
                            <div class="contactLabel">Phone</div>
                            <div id="memberPhone" class="contactValue"></div>
                        </div>
                    </li>
                    <li class="contactItem">
                        <div class="contactIcon">B</div>
                        <div>
                            <div class="contactLabel">Birthday</div>
                            <div id="memberBirthday" class="contactValue"></div>
                        </div>
                    </li>
                    <li class="contactItem">
                        <div class="contactIcon">L</div>
                        <div>
                            <div class="contactLabel">Location</div>
                            <div id="memberLocation" class="contactValue"></div>
                        </div>
                    </li>
                </ul>
            </aside>

            <!-- Main Content -->
            <div class="contentArea">
                <nav class="tabNav">
                    <button class="tabBtn active" onclick="switchTab('about')">About</button>
                    <button class="tabBtn" onclick="switchTab('resume')">Resume</button>
                </nav>

                <!-- About Tab -->
                <article id="aboutTab" class="articlePage active">
                    <div id="aboutText" class="aboutText"></div>

                    <h3 class="subTitle">What i'm doing</h3>
                    <div class="serviceGrid">
                        <!-- Web Design -->
                        <div class="serviceItem">
                            <div class="serviceIconBox">
                                <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="#C05A14" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M12 19l7-7 3 3-7 7-3-3z"></path>
                                    <path d="M18 13l-1.5-7.5L2 2l3.5 14.5L13 18l5-5z"></path>
                                    <path d="M2 2l7.586 7.586"></path>
                                    <circle cx="11" cy="11" r="2"></circle>
                                </svg>
                            </div>
                            <div>
                                <h4 class="serviceItemTitle">Web Design</h4>
                                <p class="serviceItemText">Professional web design that makes your brand shine online.</p>
                            </div>
                        </div>
                        
                        <!-- Web Development -->
                        <div class="serviceItem">
                            <div class="serviceIconBox">
                                <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="#C05A14" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <polyline points="16 18 22 12 16 6"></polyline>
                                    <polyline points="8 6 2 12 8 18"></polyline>
                                </svg>
                            </div>
                            <div>
                                <h4 class="serviceItemTitle">Web Development</h4>
                                <p class="serviceItemText">High-quality development of sites at the professional level.</p>
                            </div>
                        </div>
                        
                        <!-- Application -->
                        <div class="serviceItem">
                            <div class="serviceIconBox">
                                <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="#C05A14" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <rect x="5" y="2" width="14" height="20" rx="2" ry="2"></rect>
                                    <line x1="12" y1="18" x2="12.01" y2="18"></line>
                                </svg>
                            </div>
                            <div>
                                <h4 class="serviceItemTitle">Application</h4>
                                <p class="serviceItemText">Professional development of applications for desktop and mobile.</p>
                            </div>
                        </div>
                        
                        <!-- Marketing -->
                        <div class="serviceItem">
                            <div class="serviceIconBox">
                                <svg width="40" height="40" viewBox="0 0 24 24" fill="none" stroke="#C05A14" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                                    <path d="M11 5L6 9H2V15H6L11 19V5Z"></path>
                                    <path d="M15.54 8.46a5 5 0 0 1 0 7.07"></path>
                                    <path d="M19.07 4.93a10 10 0 0 1 0 14.14"></path>
                                </svg>
                            </div>
                            <div>
                                <h4 class="serviceItemTitle">Marketing</h4>
                                <p class="serviceItemText">Professional marketing that gets you noticed, remembered and chosen.</p>
                            </div>
                        </div>
                    </div>
                </article>

                <!-- Resume Tab -->
                <article id="resumeTab" class="articlePage">
                    <div class="timelineSection">
                        <div class="timelineTitleBox">
                            <div class="timelineIcon">E</div>
                            <h3 class="subTitle" style="margin:0;">Education</h3>
                        </div>
                        <ol id="educationList" class="timelineList"></ol>
                    </div>
                    
                    <div class="timelineSection">
                        <div class="timelineTitleBox">
                            <div class="timelineIcon">X</div>
                            <h3 class="subTitle" style="margin:0;">Experience</h3>
                        </div>
                        <ol id="experienceList" class="timelineList"></ol>
                    </div>

                    <h3 class="subTitle">My Skills</h3>
                    <div id="skillsList" class="skillsSection"></div>
                </article>

            </div>
        </div>
    </main>

    <script>
        const teamData = {
            yogesh: {
                name: "Yogesh Pant",
                email: "yogeshpant911@gmail.com",
                phone: "+977 9765228806",
                birthday: "April 28, 2006",
                location: "Tokha, Kathmandu, Nepal",
                img: "", 
                about: "I'm Yogesh Pant, a second-year student at Islington College, Kathmandu. Currently, I'm working as a Marketing Intern at ING Skill Academy.",
                edu: [
                    { title: "Islington College", date: "2024 - 2027", text: "Pursuing BSc(Hons) Computing" },
                    { title: "Learning Realm International School", date: "2022 - 2024", text: "Completed Intermediates in Science with a biology major." },
                    { title: "Aishwarya Vidya Niketan", date: "2018 - 2022", text: "Completed Secondary Level Education." }
                ],
                exp: [
                    { title: "Sales & Outreach (Intern)", date: "April 2025 - June 2025", text: "Engaged with students and parents to promote the Skill Enrichment Programme (SEP)." },
                    { title: "Kavya School +2 - Admissions Officer (Intern)", date: "July 2025 - August 2025", text: "Worked with the admissions team to transition SEP graduates." },
                    { title: "Islington College - Admissions Officer (Intern)", date: "August 2025 - Present", text: "Focused on guiding prospective students toward bachelor's programs." }
                ],
                skills: [
                    { name: "Web Design", percent: "80%" },
                    { name: "Web Devlopment", percent: "90%" },
                    { name: "Application Building", percent: "75%" },
                    { name: "Sales", percent: "85%" }
                ]
            },
            arjan: {
                name: "Arjan Regmi",
                email: "arjanvlogs3@gmail.com",
                phone: "+977 9813860791",
                birthday: "May 15, 2006",
                location: "Baneshwor, Kathmandu, Nepal",
                img: "",
                about: "I'm Arjan Regmi, a passionate developer focused on system architecture and backend optimization.",
                edu: [{ title: "Islington College", date: "2024 - 2027", text: "Pursuing BSc(Hons) Computing" }],
                exp: [{ title: "Backend Intern", date: "2025", text: "Optimized server performance for community apps." }],
                skills: [
                    { name: "Backend Dev", percent: "85%" },
                    { name: "Database", percent: "80%" }
                ]
            },
            rikesh: {
                name: "Rikesh Adhikari",
                email: "rikeshadh24@gmail.com",
                phone: "+977 9841959546",
                birthday: "July 01, 2005",
                location: "Nakkhu, Lalitpur, Nepal",
                img: "",
                about: "I'm Rikesh Adhikari, specializing in high-performance frontend applications and user experiences.",
                edu: [{ title: "Islington College", date: "2024 - 2027", text: "Pursuing BSc(Hons) Computing" }],
                exp: [{ title: "Frontend Intern", date: "2025", text: "Developed interactive dashboards for Neighborly." }],
                skills: [
                    { name: "Frontend Dev", percent: "90%" },
                    { name: "CSS/JS", percent: "85%" }
                ]
            },
            prayush: {
                name: "Prayush Shrestha",
                email: "prayush@gmail.com",
                phone: "+977 9800000000",
                birthday: "October 12, 2005",
                location: "Kathmandu, Nepal",
                img: "",
                about: "I'm Prayush Shrestha, a full-stack developer with a drive for building scalable community-focused solutions.",
                edu: [{ title: "Islington College", date: "2024 - 2027", text: "Pursuing BSc(Hons) Computing" }],
                exp: [{ title: "Full Stack Intern", date: "2025", text: "Worked on end-to-end integration of community polls." }],
                skills: [
                    { name: "Full Stack", percent: "80%" },
                    { name: "React/Java", percent: "75%" }
                ]
            }
        };

        const urlParams = new URLSearchParams(window.location.search);
        const memberKey = urlParams.get('member') || 'yogesh';
        const data = teamData[memberKey] || teamData.yogesh;

        document.getElementById('memberName').textContent = data.name;
        document.getElementById('memberEmail').textContent = data.email;
        document.getElementById('memberPhone').textContent = data.phone;
        document.getElementById('memberBirthday').textContent = data.birthday;
        document.getElementById('memberLocation').textContent = data.location;
        document.getElementById('avatarImg').src = data.img; 
        document.getElementById('aboutText').innerHTML = "<p>" + data.about + "</p>";

        const eduList = document.getElementById('educationList');
        data.edu.forEach(item => {
            const li = document.createElement('li');
            li.className = 'timelineItem';
            li.innerHTML = '<h4 class="timelineItemTitle">' + item.title + '</h4><span class="timelineDate">' + item.date + '</span><p class="timelineText">' + item.text + '</p>';
            eduList.appendChild(li);
        });

        const expList = document.getElementById('experienceList');
        data.exp.forEach(item => {
            const li = document.createElement('li');
            li.className = 'timelineItem';
            li.innerHTML = '<h4 class="timelineItemTitle">' + item.title + '</h4><span class="timelineDate">' + item.date + '</span><p class="timelineText">' + item.text + '</p>';
            expList.appendChild(li);
        });

        const skillsBox = document.getElementById('skillsList');
        data.skills.forEach(skill => {
            const div = document.createElement('div');
            div.className = 'skillItem';
            div.innerHTML = '<div class="skillInfo"><span class="skillName">' + skill.name + '</span><span class="skillPercent">' + skill.percent + '</span></div>' +
                            '<div class="skillBarBg"><div class="skillBarFill" style="width: ' + skill.percent + '"></div></div>';
            skillsBox.appendChild(div);
        });

        function switchTab(tabName) {
            document.querySelectorAll('.tabBtn').forEach(btn => btn.classList.remove('active'));
            event.currentTarget.classList.add('active');
            document.querySelectorAll('.articlePage').forEach(art => art.classList.remove('active'));
            document.getElementById(tabName + 'Tab').classList.add('active');
        }
    </script>
</body>
</html>
