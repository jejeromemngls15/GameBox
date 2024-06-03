package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;

public class addtoCart extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        //if user is not logged in, the user is redirected to login page
        if (session.getAttribute("username") == null) {
            response.sendRedirect("login.jsp");
        } 
        //if user is logged in
        else {
            List<Product> cart = (List<Product>) session.getAttribute("InCart");
            //checks if the user already added to the cart before
            if (cart == null) {
                cart = new ArrayList<Product>();
                session.setAttribute("InCart", cart);
            }
            //create new products
            Product xboxX = new Product("Xbox Series X", 31995.55, "images/xboxx.png");
            Product xbox360 = new Product("Xbox 360", 24627.00, "images/xbox360.png");
            Product xbox1 = new Product("Xbox One", 27637.45, "images/xbox1.png");
            Product ps5 = new Product("PlayStation 5", 35080.00, "images/ps5.png");
            Product ps4 = new Product("PlayStation 4", 17990.00, "images/ps4.png");
            Product psv = new Product("PS Vita", 5713.33, "images/psv.png");
            Product ninSwitch = new Product("Nintendo Switch", 17195.00, "images/ninnswitch.png");
            Product wii = new Product("Wii", 6918.50, "images/wii.png");
            Product steamDeck = new Product("Steam Deck", 37990.00, "images/steamdeck.png");

            //if else statements to add items to cart
            if ((request.getParameter("xboxX")) != null) {
                cart.add(xboxX);
                session.setAttribute("InCart", cart);
                RequestDispatcher view = request.getRequestDispatcher("homeShop.jsp");
                view.forward(request, response);
            } else if ((request.getParameter("xbox360")) != null) {
                cart.add(xbox360);
                session.setAttribute("InCart", cart);
                RequestDispatcher view = request.getRequestDispatcher("homeShop.jsp");
                view.forward(request, response);
            } else if ((request.getParameter("xbox1")) != null) {
                cart.add(xbox1);
                session.setAttribute("InCart", cart);
                RequestDispatcher view = request.getRequestDispatcher("homeShop.jsp");
                view.forward(request, response);
            } else if ((request.getParameter("ps5")) != null) {
                cart.add(ps5);
                session.setAttribute("InCart", cart);
                RequestDispatcher view = request.getRequestDispatcher("homeShop.jsp");
                view.forward(request, response);
            } else if ((request.getParameter("ps4")) != null) {
                cart.add(ps4);
                session.setAttribute("InCart", cart);
                RequestDispatcher view = request.getRequestDispatcher("homeShop.jsp");
                view.forward(request, response);
            } else if ((request.getParameter("psv")) != null) {
                cart.add(psv);
                session.setAttribute("InCart", cart);
                RequestDispatcher view = request.getRequestDispatcher("homeShop.jsp");
                view.forward(request, response);
            } else if ((request.getParameter("ninSwitch")) != null) {
                cart.add(ninSwitch);
                session.setAttribute("InCart", cart);
                RequestDispatcher view = request.getRequestDispatcher("homeShop.jsp");
                view.forward(request, response);
            } else if ((request.getParameter("wii")) != null) {
                cart.add(wii);
                session.setAttribute("InCart", cart);
                RequestDispatcher view = request.getRequestDispatcher("homeShop.jsp");
                view.forward(request, response);
            } else if ((request.getParameter("steamDeck")) != null) {
                cart.add(steamDeck);
                session.setAttribute("InCart", cart);
                RequestDispatcher view = request.getRequestDispatcher("homeShop.jsp");
                view.forward(request, response);
            }
        }

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
