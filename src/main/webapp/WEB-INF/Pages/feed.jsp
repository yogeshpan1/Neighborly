<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Neighborly</title>
  <link rel="stylesheet" href="CSS/feed.css">
</head>
<body>

  <div class="layout">

    <!-- SIDEBAR -->
    <div class="sidebar">
      <div class="logo">neighborly</div>

      <div class="nav-label">MAIN</div>
      <a class="nav-item active" href="#"> Home</a>
      <a class="nav-item" href="#"> Feed</a>
      <a class="nav-item" href="#"> News</a>

      <div class="nav-label">SERVICES</div>
      <a class="nav-item" href="#"> Document vault</a>
      <a class="nav-item" href="#"> Applications</a>
      <a class="nav-item" href="#">Payments & fines</a>

      <div class="nav-label">COMMUNITY</div>
      <a class="nav-item" href="#"> Report issue</a>
      <a class="nav-item" href="#"> Polls</a>
      <a class="nav-item" href="#">Notices</a>

      <!-- User -->
      <div class="sidebar-user">
        <div class="avatar">PS</div>
        <div>
          <div class="user-name">Prayush Shrestha</div>
          <div class="user-role">Citizen</div>
        </div>
      </div>
    </div>

    <!-- MAIN CONTENT - FEED -->
    <div class="main">

      <div class="topbar">
        <span class="page-title">Feed</span>
        <span class="bell">
          <img src="/images/notification.jpg" class="bell-icon">
        </span>
      </div>

      <div class="content">
        <div class="feed-center">

          <!-- Composer -->
          <div class="feed-card composer">
            <div class="composer-top">
              <div class="composer-avatar">PS</div>
              <input type="text" class="composer-input" placeholder="Start a conversation with your neighbors..." />
            </div>
            <div class="composer-bottom">
              <button class="photo-btn">Add Photo</button>
              <button class="post-btn">Post</button>
            </div>
          </div>

          <!-- Post 1 -->
          <div class="feed-card post">
            <div class="post-header">
              <div class="post-avatar green-av">BP</div>
              <div>
                <div class="post-author">Prayush Shrestha</div>
                <div class="post-time">2h ago</div>
              </div>
            </div>
            <div class="post-title">Beautiful evening at Oak Ridge Park</div>
            <p class="post-body">Caught an incredible sunset at Oak Ridge Park today. It's so quiet and peaceful this time of year. We really are lucky to have such a great green space right in our backyard. Does anyone know if the city plans to install more benches near the pond area?</p>
            <div class="post-image">
              <img src="/images/nature.jpg" alt="Nature">
            </div>
            <div class="post-actions">
              <div class="vote">
                <button class="vote-btn">
                  <img src="/images/up.png" alt="up" class="vote-img">
                </button>
                <span>42</span>
                <button class="vote-btn">
                  <img src="/images/down.png" alt="down" class="vote-img">
                </button>
              </div>
              <button class="action-btn">12 Comments</button>
              <button class="action-btn">Repost</button>
              <button class="action-btn save-btn">Save</button>
            </div>
          </div>

          <!-- Post 2 -->
          <div class="feed-card post">
            <div class="post-header">
              <div class="post-avatar blue-av">AR</div>
              <div>
                <div class="post-author">Arjan Regmi</div>
                <div class="post-time">5h ago</div>
              </div>
            </div>
            <div class="post-title urgent">URGENT: Lost Golden Retriever</div>
            <div class="alert-box">
              Found near Main &amp; 4th — currently safe, no collar or tags
            </div>
            <div class="post-actions">
              <div class="vote">
                <button class="vote-btn">
                  <img src="/images/up.png" alt="up" class="vote-img"></button>
                <span>42</span>
                <button class="vote-btn"><img src="/images/down.png" alt="down" class="vote-img"></button>
              </div>
              <button class="action-btn">12 Comments</button>
              <button class="action-btn">Repost</button>
              <button class="action-btn save-btn">Save</button>
            </div>
          </div>

          <!-- Post 3 -->
          <div class="feed-card post">
            <div class="post-header">
              <div class="post-avatar teal-av">YP</div>
              <div>
                <div class="post-author">Yogesh Pant</div>
                <div class="post-time">Yesterday</div>
              </div>
            </div>
            <div class="post-title link-title">Thoughts on proposed KTM Street bike lanes?</div>
            <p class="post-body">The Metropolitan is discussing the proposal for protected bike lanes on Durbar Marg next Tuesday's meeting. This would mean losing about 20% of the current street parking.</p>
            <div class="post-actions">
              <div class="vote">
                <button class="vote-btn">
                  <img src="/images/up.png" alt="up" class="vote-img">
                </button>
                <span>42</span>
                <button class="vote-btn">
                  <img src="/images/down.png" alt="down" class="vote-img"></button>
              </div>
              <button class="action-btn">12 Comments</button>
              <button class="action-btn">Repost</button>
              <button class="action-btn save-btn">Save</button>
            </div>
          </div>

        </div>
      </div>
    </div>

  </div>

</body>
</html>
