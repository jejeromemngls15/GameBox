<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>No Items</title>
        <link rel="stylesheet" type="text/css" href="errorStyles.css">
    </head>
    <body>
        <div class="error-div">
            <img class="errPng" src="images/no-item.png">
            <h1 id="empty-cart">Empty Cart!</h1>
            <strong>No items found in cart</strong>
            <p class="error-msg">Please add items in the cart before viewing the cart or going to the checkout</p>
            <br>
            <button onclick="window.location.href = 'homeShop.jsp';" class="btn" >Back To Homepage</button>
            <br>
        </div>
    </body>
</html>