<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Neighborly</title>
    
    <link rel="stylesheet" href="CSS/login.css">
</head>

<body>
    <div class="LoginBox">
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

        <div class="loginPanel">
            <div class="loginForm">
                <h2>Welcome back</h2>

                <% if (request.getAttribute("errorMessage") != null) { %>
                    <div class="errorMessage">
                        <%= request.getAttribute("errorMessage") %>
                    </div>
                <% } %>

                <form action="${pageContext.request.contextPath}/login" method="post">
                    <div class="formGroup">
                        <div class="formLabel">
                            <label for="username">USERNAME</label>
                        </div>
                        <input type="text" id="username" name="username" class="formControl" placeholder="Enter your username" required>
                    </div>

                    <div class="formGroup">
                        <div class="formLabel">
                            <label for="password">PASSWORD</label>
                        </div>
                        <input type="password" id="password" name="password" class="formControl" placeholder="........" required>
                        <a href="forgotPassword.jsp" class="forgotLink">Forgot password?</a>
                    </div>

                    <div class="checkboxGroup">
                        <input type="checkbox" id="keepSignedIn" name="keepSignedIn">
                        <label for="keepSignedIn">Keep me signed in</label>
                    </div>

                    <button type="submit" class="loginBtn loginBtnPrimary">SIGN IN</button>

                    <div class="loginDivider">
                        <span>NEW TO NEIGHBORLY?</span>
                    </div>

					<a href="${pageContext.request.contextPath}/register" class="loginBtn loginBtnSecondary">Create new account</a>
                </form>

            </div>
        </div>	
    </div>
</body>

</html>