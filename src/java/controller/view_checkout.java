package controller;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Product;

public class view_checkout extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();

        //if else statements to check if user is logged in
        if (session.getAttribute("username") == null) {
            response.sendRedirect("login.jsp");
        } 
        //redirects user to another page if cart is empty
        else if (session.getAttribute("InCart") == null) {
            response.sendRedirect("EmptyCart.jsp");
        } 
        else {
            //when view cart button is pressed
            if (request.getParameter("view") != null) {
                response.sendRedirect("cart.jsp");
            }
            //when checkout button is pressed
            if (request.getParameter("checkout") != null) {
                List<Product> cart = (List<Product>) session.getAttribute("InCart");
                if (cart.size() > 15) {
                    response.sendRedirect("itemLimitErr.jsp");
                } 
                else {
                    response.sendRedirect("Checkout.jsp");
                }
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
