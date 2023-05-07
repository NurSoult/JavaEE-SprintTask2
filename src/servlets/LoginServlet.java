package servlets;

import db.DBConnection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import models.Items;
import models.Users;

import java.io.IOException;

@WebServlet(value = "/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        boolean isFounded = false;

        for (Users u : DBConnection.getUsers()) {
            if (email.equals(u.getEmail()) && password.equals(u.getPassword())) {
                isFounded = true;
                break;
            }
        }

        if (isFounded)
            request.getRequestDispatcher("/loginsuccess.jsp").forward(request, response);
        else
            request.getRequestDispatcher("/loginfail.jsp").forward(request, response);


    }
}
