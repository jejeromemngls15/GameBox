<%@page import="java.text.NumberFormat"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Cart</title>
        <link href="stylesheets.css" rel="stylesheet" type="text/css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" rel="stylesheet">
    </head>
    <body class="cartBody">
        <header>
            <a href="homeShop.jsp" class="logo"> <img src="images/logo.png" class="logo"> </a>
            <input type="checkbox" id="nav-check">
            <label for="nav-check" class="nav-toggler">
                <span></span>
            </label>
            <nav>
                <ul class="nav-links">
                    <li class="homeUname">Hello <span>${username}</span>!</li>
                    <li>
                        <form action="homeShop.jsp" method="POST">
                            <input type="submit" name="view" value="Shop" class="navBtn">
                        </form>
                    </li>
                    <%
                        //checks if user is logged in
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

        <div class="small-container">

            <div class="cartBtn">

                <div class="empCart">
                    <form action ="removeItem" method="POST">
                        <input type="submit" name="empty" value="Empty Cart Contents" class="btn">
                    </form>
                </div>

                <form action="view_checkout" method="POST">
                    <input type="submit" name="checkout" value="Checkout" class="btn">
                </form>
            </div>

            <table>
                <tr>
                    <th>Product</th>
                    <th>Quantity</th>
                    <th>Total</th>
                </tr>

                <%
                    //for loop to display each item in the arraylist
                    List<Product> cart = (List<Product>) session.getAttribute("InCart");
                   
                    if (cart.isEmpty() || cart == null) {
                        response.sendRedirect("EmptyCart.jsp");
                    } else {
                        //loop to display each item in cart
                        for (int j = 0; j < cart.size(); j++) {
                %>

                <tr class="cart-items">
                    <td>
                        <div class="cart-info">
                            <img src="<%= cart.get(j).getImage()%>" >
                            <div>
                                <p><%= cart.get(j).getName()%></p>
                                <%
                                    NumberFormat numberFormat = NumberFormat.getInstance();
                                    String price = numberFormat.format(cart.get(j).getPrice());
                                %>
                                <p> ₱ <%= price%></p>
                                
                                <form action="removeItem" method="POST">
                                    <input type="text" hidden name="remove" value="<%= j%>">
                                    
                                    <input type="submit" name="submit" value="Remove Item" class="cart-remove">
                                </form>
                            </div>
                        </div>
                    </td>
                    <td class="quantTd">1</td>
                    <td>₱ <%= price%></td> 

                </tr>
                <%
                        }
                    }
                %> 

            </table>

        </div>

        <div class="total-price">
            <%
                //List<Product> cart = (List<Product>) session.getAttribute("InCart");
                //Iterator<Product> it = cart.iterator();
                //compute for total price of items in cart
                double total = 0;
                for (Product p : cart) {
                    total += p.getPrice();
                }
                NumberFormat numberFormat = NumberFormat.getInstance();
                String totalFormat = numberFormat.format(total);
            %>
            <table>
                <tr>
                    <td>Subtotal</td>
                    <td>₱ <%=totalFormat%></td>
                </tr>
                <tr>
                    <td>Shipping Fees</td>
                    <td>FREE</td>
                </tr>
                <tr>
                    <td>Total</td>
                    <td>₱ <%=totalFormat%></td>
                </tr>
            </table>

        </div> 

    </body>
</html>