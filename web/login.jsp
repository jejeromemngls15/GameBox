<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LogIn Page</title>
        <link href="stylesheets.css" rel="stylesheet" type="text/css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet" type="text/css">
    </head>
    <body class="login">
        <div class="containerLogin">
            <div class="wrapper">
                <div class="title">
                    <img src="images/logo.png" class="logo loginLogo">
                    <div class="header loginHeader">
                        <h1>Log In</h1>
                    </div>
                </div>
                <form method="post" action="Login">
                    <div class="row">
                        <i class="fas fa-user"></i>
                        <input type="text" placeholder="Email or Phone" class="loginInput" name="uname" required>
                    </div>
                    <div class="row">
                        <i class="fas fa-lock"></i>
                        <input type="password" placeholder="Password" class="loginInput" name="pass" required>
                    </div>

                    <div class="row button">
                        <input type="submit" value="Login" class="loginBtn">
                        <div class="guest"><a href="homeShop.jsp" >Continue As Guest</a></div>
                    </div>
                </form>
            </div>
        </div>
    </body>

</html>
