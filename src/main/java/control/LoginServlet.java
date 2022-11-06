package control;

import dao.guest.LoginDAO;
import model.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setAttribute("message", "");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String url = "";
    String accountuser = request.getParameter("username");
    String password = request.getParameter("password");
    System.out.println(accountuser + " - " + password);

    LoginDAO dao = new LoginDAO();
    User user = dao.checkLogin(accountuser,password);

         if (null != user) {
                if (user.getRole() == "Admin") {
                    System.out.println("IS admin: " + user.getRole());
                    HttpSession session = request.getSession();
                    session.setAttribute("NAME", user);
                    url = "LoadServlet";
                } else if (user.getRole()=="User"){
                    System.out.println("IS admin: " + user.getRole());
                    HttpSession session = request.getSession();
                    session.setAttribute("NAME", user);
                    url = "UserHome";
                } else {
                    System.out.println("Is staff" + user.getRole());
                    HttpSession session = request.getSession();
                    session.setAttribute("NAME", user);
                    url = "LoadServlet";
                }
        } else {
            url = "login.jsp";
            request.setAttribute("alert", "danger");
            request.setAttribute("MESSAGE", "<span><i class=\"bi text-warning bi-exclamation-triangle-fill\"></i></span> LOGIN FAIL");
        }

        System.out.println("url " + url);
        RequestDispatcher rd = request.getRequestDispatcher(url);
        rd.forward(request, response);
    }
}
