<%@page import="java.text.NumberFormat"%>
<%@page import="java.util.Iterator"%>
<%@page import="model.Product"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="newcss.css">
        <title>Checkout page Page</title>
    </head>

      <img src="images/logo.png" class="logoCheckout">
      <div class="center">
            <h1>You Have Successfully Placed Your Order!</h1>
            <form action ="orderComp" method="POST">
                <input type="submit" value="Return to Landing Page" class="homeBtn" name="order">
            </form>
      </div>
    <body>
        <%
            List<Product> cart = (List<Product>) session.getAttribute("InCart");
            Iterator<Product> it = cart.iterator();

            //compute for total price of items in cart
            int total = 0;
            for (Product p : cart) {
                total += p.getPrice();
            }
            NumberFormat numberFormat = NumberFormat.getInstance();
            String totalFormat = numberFormat.format(total);
        %>
        <div class="clear"> </div>
        <div class="container">
            <div class="receipt_box">
                <div class="head">
                    <div class="logo">
                        <svg height="42" width="42" viewBox="0 0 64 64">

                        </svg>
                    </div>
                    <div class="number">
                        <div class="date"><%= new java.util.Date()%></div>
                    </div>
                </div>
                <div class="body">
                    <div class="info">
                        <div class="welcome">Hi, <span class="username">${username}</span></div>
                        <p>You've purchased 
                            <%
                                //prints the number of total items purchased
                                out.print(cart.size());
                            %>
                            items in our store</p>
                    </div>
                    <div class="cart">
                        <div class="title">Purchase Summary</div>
                        <div class="content">
                            <ul class="cart_list">
                                <li class="cart_item">
                                    <span class="index">                                    
                                        <%  
                                            for (int k = 1; k < cart.size() + 1; k++) {
                                                out.print(k);
                                        %>
                                        <br>
                                        <%
                                            }
                                        %>
                                    </span>
                                    <span class="name">
                                        <%
                                            //loop to display each product name in the cart
                                            for (int j = 0; j < cart.size(); j++) {
                                                out.print(cart.get(j).getName());
                                        %>
                                        <br>
                                        <%
                                            }
                                        %>
                                    </span>
                                    <span class="price">
                                        <%
                                            //loop to display each product price in the cart
                                            for (int i = 0; i < cart.size(); i++) {               
                                                String price = numberFormat.format(cart.get(i).getPrice());
                                                out.print("₱ " + price);
                                        %>
                                        <br>
                                        <%
                                            }
                                        %>
                                    </span>
                                </li>                               
                            </ul>
                            <div class="total">
                                <span>total</span>
                                <span class="total_price">
                                    <%
                                        //prints the subtotal price of purchase with format
                                        out.print("₱ " + totalFormat);
                                    %>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="foot">
                    <img src="https://i.ibb.co/c8CQvBq/barcode.png" alt="barcode" class="barcode" />
                </div>
            </div>
        </div>

    </body>
</html>