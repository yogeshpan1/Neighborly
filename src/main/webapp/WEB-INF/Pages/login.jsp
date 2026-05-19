<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Neighborly</title>
        <link rel="stylesheet" href="${pageContext.request.contextPath}/CSS/login.css">
        <style>
            .field-error {
                display: block;
                color: #e74c3c;
                font-size: 0.78rem;
                margin-top: 4px;
            }
            .input-error {
                outline: 2px solid #e74c3c;
                border-color: #e74c3c;
            }
        </style>
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

                    <form action="${pageContext.request.contextPath}/login" method="post">

                        <div class="formGroup">
                            <div class="formLabel">
                                <label for="username">USERNAME</label>
                            </div>
                            <input type="text" id="username" name="username"
                                   class="formControl ${not empty errors.general ? 'input-error' : ''}"
                                   placeholder="Enter your username"
                                   value="${not empty typedUser ? typedUser : ''}">
                        </div>

                        <div class="formGroup">
                            <div class="formLabel">
                                <label for="password">PASSWORD</label>
                            </div>
                            <input type="password" id="password" name="password"
                                   class="formControl ${not empty errors.general ? 'input-error' : ''}"
                                   placeholder="........">
                            <c:if test="${not empty errors.general}">
                                <span class="field-error">${errors.general}</span>
                            </c:if>
                            <a href="forgotPassword.jsp" class="forgotLink">Forgot password?</a>
                        </div>

                        <div class="checkboxGroup">
                            <input type="checkbox" id="keepSignedIn" name="keepSignedIn">
                            <label for="keepSignedIn">Keep me signed in</label>
                        </div>

                        <button type="submit" class="loginButton loginBtnPrimary">SIGN IN</button>

                        <div class="loginDivider">
                            <span>NEW TO NEIGHBORLY?</span>
                        </div>

                        <a href="${pageContext.request.contextPath}/register" class="loginButton loginBtnSecondary">Create new account</a>

                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
