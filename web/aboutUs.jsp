<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us!</title>
        <link href="stylesheets.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="container abtUs">

            <header>
                <a href="homeShop.jsp" class="logo"> <img src="images/logo.png" class="logo"> </a>
                <input type="checkbox" id="nav-check">
                <label for="nav-check" class="nav-toggler">
                    <span></span>
                </label>
                <nav>
                    <ul class="nav-links">
                        <%
                            if (session.getAttribute("username") == null) {
                        %>
                        <li class="homeUname">Hello Guest!</li>
                            <%
                            } else {
                            %>
                        <li class="homeUname">Hello <span>${username}</span>!</li>
                            <%
                                }
                            %>
                        <li>
                            <form action="view_checkout" method="POST">
                                <input type="submit" name="view" value="View Cart" class="navBtn">
                            </form>
                        </li>

                        <%
                            if (session.getAttribute("username") == null) {
                        %>
                        <li>
                            <form action="login.jsp">
                                <input type="submit" value="Login" class="navBtn">
                            </form>
                        </li>
                        <%
                            }
                        %>
                        <li>
                            <form action="Logout">
                                <input type="submit" value="Logout" class="navBtn">
                            </form>
                        </li>
                    </ul>
                </nav>
                <div class="btn-container"><button onclick="window.location.href = 'homeShop.jsp';" class="btn">Home</button></div>

            </header>

            <div class="header">
                <h1>About the Website</h1>
            </div>
            <div class="sub-container">
                <p class="descrip">
                    We are University of Santo Tomas sophomores that are currently enrolled in the BS in Computer Science program. 
                    One of the requirements for our course, ICS2608 - Applications Development and Emerging Technologies 1, is to create and develop this responsive and functional website. 
                    Through this project,  we  have had the chance to demonstrate the skills that we have been gradually gaining throughout the course, especially through learning and mastering concepts like front-end development, using servers, and maintaining sessions.
                </p>
            </div>
            <div class="header">
                <h1>Our Team</h1>
            </div>
            <div class="sub-container">
                <div class="teams">
                    <img src="images/NatPic.jpg">
                    <div class="name devName">Nathaniel Ken Aquino</div>
                    <div class="desig">Developer</div>
                    <div class="about">
                        <p class="college">College of Information and Computing Sciences</p>
                        <p class="university">University of Santo Tomas</p>
                        <p class="email">nathanielken.aquino.cics@ust.edu.ph</p>
                    </div>
                </div>

                <div class="teams">
                    <img src="images/LenciPic.png">
                    <div class="name devName">Kristel Lenci Cruz</div>
                    <div class="desig">Developer</div>
                    <div class="about">
                        <p class="college">College of Information and Computing Sciences</p>
                        <p class="university">University of Santo Tomas</p>
                        <p class="email">kristellenci.cruz.cics@ust.edu.ph</p>
                    </div>
                </div>

                <div class="teams">
                    <img src="images/JeromePic.png">
                    <div class="name devName">Jerome Anthony Mangalus</div>
                    <div class="desig">Developer</div>
                    <div class="about">
                        <div class="about">
                            <p class="college">College of Information and Computing Sciences</p>
                            <p class="university">University of Santo Tomas</p>
                            <p class="email">jeromeanthony.mangalus.cics@ust.edu.ph</p>
                        </div>
                    </div>
                </div>

                <div class="teams">
                    <img src="images/LukePic.jpg">
                    <div class="name devName">Luke Terrel Santibañez</div>
                    <div class="desig">Developer, Leader</div>
                    <div class="about">
                        <p class="college">College of Information and Computing Sciences</p>
                        <p class="university">University of Santo Tomas</p>
                        <p class="email">luketerrel.santibanez.cics@ust.edu.ph</p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
