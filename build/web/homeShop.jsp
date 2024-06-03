
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Store Page</title>
        <link href="stylesheets.css" rel="stylesheet" type="text/css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet" type="text/css">


    </head>
    <body>
        <div class="container home">
            <header>
                <a href="homeShop.jsp" class="logo"> <img src="images/logo.png" class="logo"> </a>
                <input type="checkbox" id="nav-check">
                <label for="nav-check" class="nav-toggler">
                    <span></span>
                </label>
                <nav>
                    <ul class="nav-links">
                        <%
                            //if user is not logged in, user is considered as guest
                            //otherwise, entered credentials in login is displayed
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
                            //if user is logged in, login and logout button is present,
                            //otherwise, only logout button is present
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
                <button onclick="window.location.href = 'aboutUs.jsp';" class="btn abtBtn">About Us!</button>

            </header>
            <div class="header">
                <h1>Our Products</h1>
            </div>
            <div class="sub-container homeSCon">
                <div class="items">
                    <img src="images/xboxx.png" id="item-resize">
                    <div class="name itmName">Xbox Series X</div>
                    <div class="price">₱31,995.55</div>
                    <div class="desig">1TB - Black</div>
                    <div class="about">
                        <p>Xbox Series X is the next generation gaming console built for true 4K Ultra HD Blu-ray playback, HDR10+ visuals, and Dolby Atmos® 7.1 surround sound. 
                            With more power than any previous Xbox console, it’s the ultimate entertainment system for your living room.</p> <br>
                    </div>
                    <form action= "addtoCart" method="POST">
                        <input type="hidden" name="xboxX" value="1"/>
                        <button type ="submit" value="add" class="btn"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                    </form>
                </div>

                <div class="items">
                    <img src="images/xbox1.png" id="item-resize">
                    <div class="name itmName">Xbox One</div>
                    <div class="price">₱27,637.45</div>
                    <div class="desig">500GB - White</div>
                    <div class="about">
                        <p>Xbox One is an all-in-one games console that brings together powerful hardware, entertainment apps and more than 100 exclusive games and experiences into one box. 
                            With Kinect, it’s easy to control your TV and living room using natural voice commands or gestures.</p>
                    </div>
                    <form action= "addtoCart" method="POST">
                        <input type="hidden" name="xbox1" value="2"/>
                        <button type ="submit" value="add" class="btn"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                    </form>
                </div>
                <div class="items">
                    <img src="images/xbox360.png" id="item-resize">
                    <div class="name itmName">Xbox 360</div>
                    <div class="price">₱24,627.00</div>
                    <div class="desig">500GB - KINECT</div>
                    <div class="about">
                        <p>The Xbox 360 is an entertainment hub where gamers can play their favourite games, watch movies and TV shows, listen to music, and more. 
                            Play your favorite games like never before with Kinect!</p><br><br>
                    </div>
                    <form action= "addtoCart" method="POST">
                        <input type="hidden" name="xbox360" value="3"/>
                        <button type ="submit" value="add" class="btn"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                    </form>
                </div>

                <div class="items">
                    <img src="images/ps5.png" id="item-resize">
                    <div class="name itmName">PlayStation® 5</div>
                    <div class="price">₱35,080.00</div>
                    <div class="desig">825GB - Console</div>
                    <div class="about">
                        <p>The new PlayStation®5 will feature an upgraded processor, faster graphics, more memory, and improved connectivity options. 
                            PlayStation®5 will offer gamers the best gaming experience possible, including 4K Ultra HD Blu-ray™ compatibility, HDR support, and Dolby Atmos® surround sound.</p>
                        <br><br><br><br>
                    </div>
                    <form action= "addtoCart" method="POST">
                        <input type="hidden" name="ps5" value="4"/>
                        <button type ="submit" value="add" class="btn"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                    </form>
                </div>

                <div class="items">
                    <img src="images/ps4.png" id="item-resize">
                    <div class="name itmName">PlayStation® 4</div>
                    <div class="price">₱17,990.00</div>
                    <div class="desig">500GB - Slim</div>
                    <div class="about">
                        <p>PlayStation®4 redefines play. 
                            With powerful graphics, immersive gameplay, intelligent personalization, and revolutionary social capabilities, PlayStation®4 lets you enjoy your favorite games like never before.</p>
                        <br><br><br><br><br><br>
                    </div>
                    <form action= "addtoCart" method="POST">
                        <input type="hidden" name="ps4" value="5"/>
                        <button type ="submit" value="add" class="btn"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                    </form>
                </div>

                <div class="items">
                    <img src="images/psv.png" id="item-resize">
                    <div class="name itmName">PlayStation® Vita</div>
                    <div class="price">₱5,713.33</div>
                    <div class="desig">32GB - 2000</div>
                    <div class="about">
                        <p>PlayStation Vita is an advanced handheld entertainment system that brings together powerful hardware with rich gaming experiences. 
                            The PS Vita system includes a built-in 3G modem, allowing users to download games and applications directly to their device over Wi-Fi networks or through the PlayStation Store. 
                            With its intuitive interface, easy navigation and innovative touch screen controls, the PS Vita system offers gamers a whole new way to play.</p><br>
                    </div>
                    <form action= "addtoCart" method="POST">
                        <input type="hidden" name="psv" value="6"/>
                        <button type ="submit" value="add" class="btn"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                    </form>
                </div>

                <div class="items">
                    <img src="images/ninnswitch.png" id="item-resize">
                    <div class="name itmName">Nintendo Switch</div>
                    <div class="price">₱17,195.00</div>
                    <div class="desig">64GB - OLed</div>
                    <div class="about">
                        <p>Nintendo Switch is a hybrid console/handheld device that lets you play your favorite games anytime, anywhere. 
                            The system includes a powerful custom built processor, 8GB of RAM, two Joy-Con controllers, an NFC reader/writer, and a kickstand.</p>
                        <br>
                    </div>
                    <form action= "addtoCart" method="POST">
                        <input type="hidden" name="ninSwitch" value="7"/>
                        <button type ="submit" value="add" class="btn"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                    </form>
                </div>

                <div class="items">
                    <img src="images/wii.png" id="item-resize">
                    <div class="name itmName">Wii</div>
                    <div class="price">₱6,918.50</div>
                    <div class="desig">512MB - Regular</div>
                    <div class="about">
                        <p>Nintendo Wii U console with GamePad controller. 
                            The Wii U gamepad is an innovative new controller that brings together motion sensing controls and traditional button controls into a single device. 
                            With its unique design, it can be used as a standalone controller or connected to your TV via HDMI cable.</p>
                    </div>
                    <form action= "addtoCart" method="POST">
                        <input type="hidden" name="wii" value="8"/>
                        <button type ="submit" value="add" class="btn"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                    </form>
                </div>

                <div class="items">
                    <img src="images/steamdeck.png" id="item-resize">
                    <div class="name itmName">Steam Deck</div>
                    <div class="price">₱37,990.00</div>
                    <div class="desig">256GB - NVMe SSD</div>
                    <div class="about">
                        <p>Steam Deck is a handheld console that was developed and released by Valve Corporation. 
                            With Steam Deck, you can play games that can only be played using Steam on your PC anywhere and anytime you want.</p>
                        <br><br>
                    </div>
                    <form action= "addtoCart" method="POST">
                        <input type="hidden" name="steamDeck" value="9"/>
                        <button type ="submit" value="add" class="btn"><i class="fa-solid fa-cart-plus"></i> Add to Cart</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

