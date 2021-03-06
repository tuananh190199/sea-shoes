/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.userDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.user;
import org.apache.commons.codec.digest.DigestUtils;

/**
 *
 * @author admin
 */
@WebServlet(name = "LogIn", urlPatterns = {"/LogIn"})
public class LogIn extends HttpServlet {

    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try ( PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet LogIn</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet LogIn at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        user u =new user();
        String username=request.getParameter("usernamelog");
        String password=request.getParameter("passwordlog");
        String md5password= DigestUtils.md5Hex(password);
        u.setUsername(username);
        u.setPassword(md5password);
        userDAO ud = new userDAO();
        HttpSession ses =request.getSession();
        if(ud.checkLogin(u)==true&& u.getPosition().equals("customer")){ 
                Cookie ck1 = new Cookie("username", username);
                Cookie ck2 = new Cookie("password", md5password);
                ck1.setMaxAge(60*60*24*30);
                ck2.setMaxAge(60*60*24*30);
                response.addCookie(ck1);
                response.addCookie(ck2);
                ses.setAttribute("user", u);
                RequestDispatcher dis = request.getRequestDispatcher("/View/trangchu.jsp");
                dis.forward(request, response);        
        }
        else if(ud.checkLogin(u)==true&& u.getPosition().equals("admin")){
                Cookie ck1 = new Cookie("username", username);
                Cookie ck2 = new Cookie("password", md5password);
                ck1.setMaxAge(60*60*24*30);
                ck2.setMaxAge(60*60*24*30);
                response.addCookie(ck1);
                response.addCookie(ck2);
                ses.setAttribute("user", u);
                RequestDispatcher dis = request.getRequestDispatcher("/View/admin_page.jsp");
                dis.forward(request, response); 
        }
        else{
            RequestDispatcher dis = request.getRequestDispatcher("/View/signup.jsp");
            dis.forward(request, response);
        }
    }

    
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
