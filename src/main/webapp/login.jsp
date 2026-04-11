<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Neighborly</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Playfair+Display:ital,wght@0,600;0,700;1,600;1,700&display=swap" rel="stylesheet">
    
    <!-- CSS -->
    <link rel="stylesheet" href="CSS/index.css">
</head>

<body>
    <div class="LoginBox">
        <!-- Left Side: Hero Section -->
        <div class="loginQuote">
            <div class="loginText">
                <h1 class="loginHeader">
                    Connect,<br>
                    <span class="loginHeader2">Contribute,</span> and<br>
                    Build Your<br>
                    Community
                </h1>
            </div>
        </div>

        <!-- Right Side: Login Form -->
        <div class="loginPanel">
            <div class="loginForm">
                <h2>Welcome back</h2>
                <p class="subtitle">Sign in to stay connected with your local neighborhood.</p>

                <% if (request.getAttribute("errorMessage") != null) { %>
                    <div class="error-message">
                        <%= request.getAttribute("errorMessage") %>
                    </div>
                <% } %>

                <form action="${pageContext.request.contextPath}/login" method="post">
                    <div class="form-group">
                        <div class="form-label">
                            <label for="username">USERNAME</label>
                        </div>
                        <input type="text" id="username" name="username" class="form-control" placeholder="Enter your username" required>
                    </div>

                    <div class="form-group">
                        <div class="form-label">
                            <label for="password">PASSWORD</label>
                            <a href="forgotPassword.jsp" class="forgot-link">Forgot password?</a>
                        </div>
                        <input type="password" id="password" name="password" class="form-control" placeholder="........" required>
                    </div>

                    <div class="checkbox-group">
                        <input type="checkbox" id="keep-signed-in" name="keepSignedIn">
                        <label for="keep-signed-in">Keep me signed in</label>
                    </div>

                    <button type="submit" class="btn btn-primary">SIGN IN</button>

                    <div class="divider">
                        <span>NEW TO NEIGHBORLY?</span>
                    </div>

                    <a href="${pageContext.request.contextPath}/register.jsp" class="btn btn-secondary" style="display: block; text-decoration: none;">Create new account</a>
                </form>

                <p class="terms">
                    By logging in, you agree to Neighborly's <a href="terms.jsp">Terms of Service</a><br>
                    and <a href="privacy.jsp">Privacy Policy</a>.
                </p>
            </div>
        </div>
    </div>
</body>

</html>
