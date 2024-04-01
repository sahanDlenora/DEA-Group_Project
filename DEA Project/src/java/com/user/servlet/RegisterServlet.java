package com.user.servlet;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
@WebServlet("/register")
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);

        try {

            String name = request.getParameter("fullname");
            String email = request.getParameter("email");
            String phn = request.getParameter("phnumber");
            String psw = request.getParameter("password");
            String check = request.getParameter("check");

            //System.out.println(name+" "+email+" "+phn+" "+psw+" "+check);
            User us = new User();

            us.setName(name);
            us.setEmail(email);
            us.setPhno(phn);
            us.setPassword(psw);
            
            HttpSession session=request.getSession();

            if (check != null) {
                UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());

                boolean f = dao.userRegister(us);

                if (f) {
                    //System.out.println("User register success.."); 
                    
                    session.setAttribute("succMsg","Registration Successfully..");
                    response.sendRedirect("register.jsp");
                } else {
                   // System.out.println("Something wrong on server..");
                   
                   session.setAttribute("failedMsg","Something wrong on server..");
                   response.sendRedirect("register.jsp");
                }
            }else{
                session.setAttribute("failedMsg","Please check agree Terms & Conditions ");
                response.sendRedirect("register.jsp");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}
