package controller;

import java.io.IOException;
import java.util.HashMap;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login extends HttpServlet {

    int loginAttempts = 3;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HashMap<String, String> hmap = new HashMap<>();
        // list of credentials 
        hmap.put("Luke", "pass");
        hmap.put("Jerome", "pass");
        hmap.put("Ken", "pass");
        hmap.put("Lenci", "pass");
        hmap.put("admin", "pass");

        String uname = request.getParameter("uname");
        String pass = request.getParameter("pass");

        String user_password = hmap.get(uname);
        
        //checks if user still has login attempts
        if (loginAttempts > 1) {
            //if username and password is not in hashmap, login attempt is decremented
            if (user_password == null) {
                --loginAttempts;
                response.sendRedirect("login.jsp");
            } 
            //if username and password is in the list of credentials
            //the atttempt is reset
            else if (user_password.equals(pass)) {
                HttpSession session = request.getSession();
                session.setAttribute("username", uname);
                session.setAttribute("password", pass);
                response.sendRedirect("homeShop.jsp");
                loginAttempts = 3;
            } 
            else {
                --loginAttempts;
                response.sendRedirect("login.jsp");
            }
        } 
        //if user runs out of attempts
        else {
            loginAttempts = 3;
            response.sendRedirect("loginTimeout.jsp");
            
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
