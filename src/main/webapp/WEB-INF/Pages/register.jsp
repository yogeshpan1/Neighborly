<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Neighborly</title>
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/login.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/register.css">
    </head>

    <body>
        <div class="LoginBox">
            <div class="loginQuote">
                <div class="loginText">
                    <h1 class="loginHeader">
                        Join,<br>
                        <span class="loginHeader2">Participate,</span> and<br>
                        Grow Your<br>
                        Community
                    </h1>
                </div>
            </div>

            <div class="loginPanel">
                <a href="${pageContext.request.contextPath}/login" class="backLink">&lt; Back</a>
                
                <div class="loginForm">
                <h2>Create new account</h2>

                    <% if (request.getAttribute("errorMessage") !=null) { %>
                        <div class="errorMessage">
                            <%= request.getAttribute("errorMessage") %>
                        </div>
                        <% } %>

                            <form action="${pageContext.request.contextPath}/register" method="post">

                                <div class="formRow">
                                    <div class="formGroup">
                                        <div class="formLabel">
                                            <label for="first_name">FIRST NAME</label>
                                        </div>
                                        <input type="text" id="first_name" name="first_name" class="formControl"
                                            placeholder="First Name" required>
                                    </div>

                                    <div class="formGroup">
                                        <div class="formLabel">
                                            <label for="last_name">LAST NAME</label>
                                        </div>
                                        <input type="text" id="last_name" name="last_name" class="formControl"
                                            placeholder="Last Name" required>
                                    </div>
                                </div>

                                <div class="formGroup">
                                    <div class="formLabel">
                                        <label for="username">USERNAME</label>
                                    </div>
                                    <input type="text" id="username" name="username" class="formControl"
                                        placeholder="Choose a username" required>
                                </div>

                                <div class="formRow">
                                    <div class="formGroup">
                                        <div class="formLabel">
                                            <label for="dob">DATE OF BIRTH</label>
                                        </div>
                                        <input type="date" id="dob" name="dob" class="formControl" required>
                                    </div>

                                    <div class="formGroup">
                                        <div class="formLabel">
                                            <label for="gender">GENDER</label>
                                        </div>
                                        <select id="gender" name="gender" class="formControl" required>
                                            <option value="" disabled selected>Select</option>
                                            <option value="Male">Male</option>
                                            <option value="Female">Female</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="formRow">
                                    <div class="formGroup">
                                        <div class="formLabel">
                                            <label for="email">EMAIL</label>
                                        </div>
                                        <input type="email" id="email" name="email" class="formControl"
                                            placeholder="name@example.com" required>
                                    </div>

                                    <div class="formGroup">
                                        <div class="formLabel">
                                            <label for="number">NUMBER</label>
                                        </div>
                                        <input type="text" id="number" name="number" class="formControl"
                                            placeholder="Phone Number" required>
                                    </div>
                                </div>



                                <div class="formGroup">
                                    <div class="formLabel">
                                        <label for="password">CREATE PASSWORD</label>
                                    </div>
                                    <input type="password" id="password" name="password" class="formControl"
                                        placeholder="........" required>
                                </div>

                                <button type="submit" class="loginBtn loginBtnPrimary registerSubmitBtn">REGISTER</button>


                            </form>

                </div>
            </div>
        </div>
    </body>

</html>